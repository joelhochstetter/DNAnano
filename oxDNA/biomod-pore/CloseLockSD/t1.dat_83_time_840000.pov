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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.456681, 14.958314, 14.820835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.329126, 15.202918, 15.110488>,  <4.252593, 15.349680, 15.284280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.329126, 15.202918, 15.110488>,  <4.456681, 14.958314, 14.820835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.329126, 15.202918, 15.110488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000547, 0.764138, -0.645052,
		-0.947792, -0.205304, -0.244010,
		-0.318889, 0.611509, 0.724131,
		4.233459, 15.386371, 15.327727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.981927, 15.356922, 14.498216>,  <4.456681, 14.958314, 14.820835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.981927, 15.356922, 14.498216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.135332, 15.562516, 14.805133>,  <4.227374, 15.685872, 14.989284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.135332, 15.562516, 14.805133>,  <3.981927, 15.356922, 14.498216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.135332, 15.562516, 14.805133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269264, 0.732495, -0.625258,
		-0.883412, 0.446398, 0.142523,
		0.383511, 0.513984, 0.767294,
		4.250385, 15.716711, 15.035321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.930225, 16.100931, 14.304781>,  <3.981927, 15.356922, 14.498216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.930225, 16.100931, 14.304781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.222280, 16.016714, 14.564803>,  <4.397512, 15.966184, 14.720817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.222280, 16.016714, 14.564803>,  <3.930225, 16.100931, 14.304781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.222280, 16.016714, 14.564803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551189, 0.743743, -0.378203,
		-0.403846, 0.634443, 0.659083,
		0.730137, -0.210543, 0.650055,
		4.441320, 15.953551, 14.759820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.557566, 16.307068, 14.271385>,  <3.930225, 16.100931, 14.304781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.557566, 16.307068, 14.271385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.876947, 16.410957, 14.488647>,  <5.068575, 16.473291, 14.619005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.876947, 16.410957, 14.488647>,  <4.557566, 16.307068, 14.271385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.876947, 16.410957, 14.488647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261462, 0.962236, -0.075766,
		-0.542322, -0.081518, 0.836207,
		0.798452, 0.259726, 0.543155,
		5.116482, 16.488874, 14.651594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.399592, 16.699146, 14.802008>,  <4.557566, 16.307068, 14.271385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.399592, 16.699146, 14.802008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.775483, 16.788225, 14.698223>,  <5.001018, 16.841673, 14.635953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.775483, 16.788225, 14.698223>,  <4.399592, 16.699146, 14.802008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.775483, 16.788225, 14.698223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283381, 0.931871, -0.226522,
		0.191337, 0.286395, 0.938812,
		0.939726, 0.222699, -0.259460,
		5.057401, 16.855036, 14.620385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.479554, 17.384945, 15.130409>,  <4.399592, 16.699146, 14.802008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.479554, 17.384945, 15.130409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.747978, 17.333958, 14.838264>,  <4.909033, 17.303366, 14.662977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.747978, 17.333958, 14.838264>,  <4.479554, 17.384945, 15.130409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.747978, 17.333958, 14.838264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114587, 0.955442, -0.272032,
		0.732493, 0.266240, 0.626554,
		0.671062, -0.127467, -0.730362,
		4.949296, 17.295717, 14.619156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.938001, 18.026337, 15.116728>,  <4.479554, 17.384945, 15.130409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.938001, 18.026337, 15.116728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.973502, 17.833168, 14.768267>,  <4.994803, 17.717266, 14.559190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.973502, 17.833168, 14.768267>,  <4.938001, 18.026337, 15.116728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.973502, 17.833168, 14.768267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218290, 0.843913, -0.490061,
		0.971840, 0.233658, -0.030517,
		0.088753, -0.482923, -0.871154,
		5.000128, 17.688292, 14.506921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.196443, 18.555868, 14.767346>,  <4.938001, 18.026337, 15.116728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.196443, 18.555868, 14.767346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.097777, 18.283073, 14.491940>,  <5.038577, 18.119396, 14.326696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.097777, 18.283073, 14.491940>,  <5.196443, 18.555868, 14.767346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.097777, 18.283073, 14.491940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122311, 0.726695, -0.675983,
		0.961351, -0.082528, -0.262665,
		-0.246665, -0.681984, -0.688515,
		5.023777, 18.078478, 14.285386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.524446, 18.624697, 14.154476>,  <5.196443, 18.555868, 14.767346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.524446, 18.624697, 14.154476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.194651, 18.427711, 14.042976>,  <4.996774, 18.309521, 13.976077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.194651, 18.427711, 14.042976>,  <5.524446, 18.624697, 14.154476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.194651, 18.427711, 14.042976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230731, 0.742346, -0.629036,
		0.516704, -0.454316, -0.725682,
		-0.824488, -0.492463, -0.278748,
		4.947304, 18.279972, 13.959352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.481718, 18.776892, 13.329960>,  <5.524446, 18.624697, 14.154476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.481718, 18.776892, 13.329960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.128001, 18.637218, 13.453959>,  <4.915771, 18.553415, 13.528359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.128001, 18.637218, 13.453959>,  <5.481718, 18.776892, 13.329960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.128001, 18.637218, 13.453959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457658, 0.779836, -0.427089,
		-0.092617, -0.519545, -0.849409,
		-0.884292, -0.349183, 0.309999,
		4.862714, 18.532463, 13.546959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.105889, 18.684525, 12.790293>,  <5.481718, 18.776892, 13.329960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.105889, 18.684525, 12.790293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.855178, 18.742079, 13.096612>,  <4.704751, 18.776611, 13.280403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.855178, 18.742079, 13.096612>,  <5.105889, 18.684525, 12.790293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.855178, 18.742079, 13.096612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405163, 0.779309, -0.478038,
		-0.665577, -0.609896, -0.430156,
		-0.626778, 0.143887, 0.765798,
		4.667145, 18.785246, 13.326351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.425699, 18.794762, 12.472322>,  <5.105889, 18.684525, 12.790293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.425699, 18.794762, 12.472322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.429491, 18.938171, 12.845711>,  <4.431767, 19.024218, 13.069744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.429491, 18.938171, 12.845711>,  <4.425699, 18.794762, 12.472322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.429491, 18.938171, 12.845711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406781, 0.854165, -0.323931,
		-0.913477, -0.376648, 0.153938,
		0.009480, 0.358522, 0.933473,
		4.432335, 19.045729, 13.125752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.873785, 19.287422, 12.476494>,  <4.425699, 18.794762, 12.472322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.873785, 19.287422, 12.476494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.068325, 19.396166, 12.808652>,  <4.185049, 19.461412, 13.007947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.068325, 19.396166, 12.808652>,  <3.873785, 19.287422, 12.476494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.068325, 19.396166, 12.808652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313108, 0.941476, -0.124845,
		-0.815737, -0.199286, 0.543008,
		0.486349, 0.271861, 0.830395,
		4.214230, 19.477724, 13.057771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.433731, 19.732002, 12.906577>,  <3.873785, 19.287422, 12.476494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.433731, 19.732002, 12.906577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.804025, 19.806124, 13.038440>,  <4.026202, 19.850595, 13.117558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.804025, 19.806124, 13.038440>,  <3.433731, 19.732002, 12.906577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.804025, 19.806124, 13.038440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135945, 0.976515, -0.167144,
		-0.352887, 0.109916, 0.929187,
		0.925737, 0.185302, 0.329657,
		4.081747, 19.861713, 13.137337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.480631, 20.247122, 13.544556>,  <3.433731, 19.732002, 12.906577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.480631, 20.247122, 13.544556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.825453, 20.258938, 13.342175>,  <4.032346, 20.266027, 13.220746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.825453, 20.258938, 13.342175>,  <3.480631, 20.247122, 13.544556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.825453, 20.258938, 13.342175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099831, 0.988639, -0.112371,
		0.496885, 0.147380, 0.855210,
		0.862055, 0.029542, -0.505953,
		4.084069, 20.267799, 13.190389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.696860, 20.864025, 13.746496>,  <3.480631, 20.247122, 13.544556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.696860, 20.864025, 13.746496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.944418, 20.801765, 13.438537>,  <4.092953, 20.764410, 13.253761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.944418, 20.801765, 13.438537>,  <3.696860, 20.864025, 13.746496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.944418, 20.801765, 13.438537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018344, 0.977038, -0.212274,
		0.785260, 0.145498, 0.601828,
		0.618894, -0.155651, -0.769898,
		4.130086, 20.755070, 13.207567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.247610, 21.379133, 13.834094>,  <3.696860, 20.864025, 13.746496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.247610, 21.379133, 13.834094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.253986, 21.258314, 13.452830>,  <4.257812, 21.185823, 13.224072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.253986, 21.258314, 13.452830>,  <4.247610, 21.379133, 13.834094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.253986, 21.258314, 13.452830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198741, 0.935218, -0.293036,
		0.979922, -0.184761, 0.074937,
		0.015940, -0.302046, -0.953160,
		4.258768, 21.167700, 13.166883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.862354, 21.573576, 13.533893>,  <4.247610, 21.379133, 13.834094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.862354, 21.573576, 13.533893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.622651, 21.550604, 13.214495>,  <4.478829, 21.536821, 13.022856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.622651, 21.550604, 13.214495>,  <4.862354, 21.573576, 13.533893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.622651, 21.550604, 13.214495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214521, 0.949427, -0.229281,
		0.771279, -0.308692, -0.556631,
		-0.599257, -0.057430, -0.798494,
		4.442874, 21.533375, 12.974947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.240275, 21.739717, 12.954450>,  <4.862354, 21.573576, 13.533893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.240275, 21.739717, 12.954450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.861334, 21.804079, 12.843719>,  <4.633970, 21.842697, 12.777280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.861334, 21.804079, 12.843719>,  <5.240275, 21.739717, 12.954450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.861334, 21.804079, 12.843719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251071, 0.909849, -0.330361,
		0.198714, -0.382471, -0.902346,
		-0.947352, 0.160905, -0.276827,
		4.577129, 21.852350, 12.760671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.268806, 22.106222, 12.318666>,  <5.240275, 21.739717, 12.954450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.268806, 22.106222, 12.318666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.883767, 22.177320, 12.400460>,  <4.652744, 22.219978, 12.449537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.883767, 22.177320, 12.400460>,  <5.268806, 22.106222, 12.318666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.883767, 22.177320, 12.400460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087094, 0.917672, -0.387676,
		-0.256558, -0.355366, -0.898829,
		-0.962597, 0.177744, 0.204486,
		4.594988, 22.230644, 12.461806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.979467, 22.326410, 11.682735>,  <5.268806, 22.106222, 12.318666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.979467, 22.326410, 11.682735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.735536, 22.461975, 11.969300>,  <4.589177, 22.543314, 12.141239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.735536, 22.461975, 11.969300>,  <4.979467, 22.326410, 11.682735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.735536, 22.461975, 11.969300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121557, 0.853257, -0.507125,
		-0.783155, -0.396345, -0.479143,
		-0.609829, 0.338914, 0.716412,
		4.552587, 22.563650, 12.184224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.507888, 22.681599, 11.379874>,  <4.979467, 22.326410, 11.682735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.507888, 22.681599, 11.379874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.491092, 22.816139, 11.756194>,  <4.481014, 22.896864, 11.981986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.491092, 22.816139, 11.756194>,  <4.507888, 22.681599, 11.379874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.491092, 22.816139, 11.756194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186777, 0.922387, -0.338107,
		-0.981504, -0.189917, 0.024092,
		-0.041990, 0.336353, 0.940799,
		4.478495, 22.917046, 12.038434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.881096, 23.116489, 11.521520>,  <4.507888, 22.681599, 11.379874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.881096, 23.116489, 11.521520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.115034, 23.226257, 11.826846>,  <4.255396, 23.292118, 12.010042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.115034, 23.226257, 11.826846>,  <3.881096, 23.116489, 11.521520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.115034, 23.226257, 11.826846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063381, 0.953617, -0.294275,
		-0.808667, 0.123725, 0.575109,
		0.584843, 0.274422, 0.763316,
		4.290486, 23.308584, 12.055840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.589094, 23.671906, 11.857657>,  <3.881096, 23.116489, 11.521520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.589094, 23.671906, 11.857657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.982118, 23.689137, 11.930011>,  <4.217932, 23.699476, 11.973423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.982118, 23.689137, 11.930011>,  <3.589094, 23.671906, 11.857657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.982118, 23.689137, 11.930011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026831, 0.995459, -0.091331,
		-0.183997, 0.084885, 0.979255,
		0.982561, 0.043079, 0.180884,
		4.276886, 23.702061, 11.984276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.629920, 24.337917, 12.077138>,  <3.589094, 23.671906, 11.857657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.629920, 24.337917, 12.077138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.013209, 24.237091, 12.023066>,  <4.243182, 24.176596, 11.990623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.013209, 24.237091, 12.023066>,  <3.629920, 24.337917, 12.077138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.013209, 24.237091, 12.023066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258748, 0.965343, 0.034103,
		0.121899, -0.067656, 0.990234,
		0.958222, -0.252064, -0.135180,
		4.300675, 24.161472, 11.982512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.994369, 24.619717, 12.679307>,  <3.629920, 24.337917, 12.077138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.994369, 24.619717, 12.679307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.227474, 24.558012, 12.360160>,  <4.367337, 24.520988, 12.168672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.227474, 24.558012, 12.360160>,  <3.994369, 24.619717, 12.679307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.227474, 24.558012, 12.360160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314156, 0.948250, 0.046123,
		0.749463, -0.277534, 0.601066,
		0.582762, -0.154261, -0.797867,
		4.402302, 24.511734, 12.120800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.213156, 25.055759, 13.280979>,  <3.994369, 24.619717, 12.679307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.213156, 25.055759, 13.280979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.604659, 24.994694, 13.226244>,  <4.839561, 24.958054, 13.193403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.604659, 24.994694, 13.226244>,  <4.213156, 25.055759, 13.280979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.604659, 24.994694, 13.226244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067478, -0.390378, 0.918179,
		-0.193591, -0.907909, -0.371784,
		0.978759, -0.152663, -0.136837,
		4.898287, 24.948895, 13.185192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.766151, 25.165327, 13.747696>,  <4.213156, 25.055759, 13.280979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.766151, 25.165327, 13.747696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.148409, 25.085770, 13.660810>,  <5.377764, 25.038034, 13.608680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.148409, 25.085770, 13.660810>,  <4.766151, 25.165327, 13.747696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.148409, 25.085770, 13.660810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264813, 0.903065, 0.338154,
		0.128899, -0.380676, 0.915680,
		0.955646, -0.198896, -0.217212,
		5.435103, 25.026100, 13.595647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.227623, 25.317844, 14.269593>,  <4.766151, 25.165327, 13.747696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.227623, 25.317844, 14.269593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.456930, 25.345629, 13.943026>,  <5.594514, 25.362299, 13.747086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.456930, 25.345629, 13.943026>,  <5.227623, 25.317844, 14.269593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.456930, 25.345629, 13.943026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431888, 0.821128, 0.373124,
		0.696303, -0.566501, 0.440726,
		0.573267, 0.069463, -0.816419,
		5.628911, 25.366468, 13.698100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.922645, 25.567678, 14.340875>,  <5.227623, 25.317844, 14.269593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.922645, 25.567678, 14.340875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.863219, 25.647636, 13.953479>,  <5.827564, 25.695612, 13.721042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.863219, 25.647636, 13.953479>,  <5.922645, 25.567678, 14.340875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.863219, 25.647636, 13.953479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416748, 0.900799, 0.121997,
		0.896800, -0.385491, -0.217133,
		-0.148564, 0.199897, -0.968489,
		5.818650, 25.707605, 13.662932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.550059, 25.716484, 13.978683>,  <5.922645, 25.567678, 14.340875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.550059, 25.716484, 13.978683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.245181, 25.904940, 13.801105>,  <6.062254, 26.018013, 13.694557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.245181, 25.904940, 13.801105>,  <6.550059, 25.716484, 13.978683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.245181, 25.904940, 13.801105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479524, 0.871613, 0.101724,
		0.434874, -0.135349, -0.890261,
		-0.762195, 0.471138, -0.443945,
		6.016522, 26.046282, 13.667921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.690329, 26.143818, 13.368906>,  <6.550059, 25.716484, 13.978683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.690329, 26.143818, 13.368906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.406759, 26.245850, 13.631922>,  <6.236617, 26.307070, 13.789731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.406759, 26.245850, 13.631922>,  <6.690329, 26.143818, 13.368906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.406759, 26.245850, 13.631922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531631, 0.805908, 0.260539,
		-0.463458, 0.534272, -0.706937,
		-0.708925, 0.255081, 0.657540,
		6.194082, 26.322374, 13.829184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.397380, 25.849218, 12.666807>,  <6.690329, 26.143818, 13.368906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.397380, 25.849218, 12.666807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.775171, 25.874552, 12.795775>,  <7.001845, 25.889751, 12.873157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.775171, 25.874552, 12.795775>,  <6.397380, 25.849218, 12.666807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.775171, 25.874552, 12.795775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102969, -0.874774, 0.473463,
		0.312030, -0.480374, -0.819682,
		0.944476, 0.063333, 0.322420,
		7.058514, 25.893551, 12.892502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.704499, 25.233265, 12.540311>,  <6.397380, 25.849218, 12.666807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.704499, 25.233265, 12.540311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.875320, 25.432779, 12.841997>,  <6.977813, 25.552488, 13.023008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.875320, 25.432779, 12.841997>,  <6.704499, 25.233265, 12.540311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.875320, 25.432779, 12.841997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183111, -0.769114, 0.612319,
		0.885492, -0.399598, -0.237120,
		0.427053, 0.498784, 0.754215,
		7.003437, 25.582415, 13.068261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.383322, 24.884159, 12.912975>,  <6.704499, 25.233265, 12.540311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.383322, 24.884159, 12.912975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.096484, 25.062805, 13.127007>,  <6.924381, 25.169992, 13.255425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.096484, 25.062805, 13.127007>,  <7.383322, 24.884159, 12.912975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.096484, 25.062805, 13.127007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247946, -0.880961, 0.403027,
		0.651381, 0.156338, 0.742470,
		-0.717095, 0.446616, 0.535078,
		6.881355, 25.196791, 13.287530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.669580, 24.944603, 13.684876>,  <7.383322, 24.884159, 12.912975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.669580, 24.944603, 13.684876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.281873, 24.876368, 13.613972>,  <7.049249, 24.835426, 13.571429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.281873, 24.876368, 13.613972>,  <7.669580, 24.944603, 13.684876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.281873, 24.876368, 13.613972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116977, -0.953454, 0.277926,
		-0.216421, 0.248649, 0.944106,
		-0.969267, -0.170587, -0.177261,
		6.991093, 24.825191, 13.560793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.688568, 24.290421, 14.034333>,  <7.669580, 24.944603, 13.684876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.688568, 24.290421, 14.034333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.314136, 24.321791, 13.897160>,  <7.089477, 24.340612, 13.814856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.314136, 24.321791, 13.897160>,  <7.688568, 24.290421, 14.034333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.314136, 24.321791, 13.897160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142033, -0.976103, 0.164466,
		-0.321840, 0.202661, 0.924850,
		-0.936080, 0.078428, -0.342934,
		7.033312, 24.345320, 13.794279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.190286, 24.028290, 14.496832>,  <7.688568, 24.290421, 14.034333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.190286, 24.028290, 14.496832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.055518, 23.970333, 14.124705>,  <6.974657, 23.935558, 13.901429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.055518, 23.970333, 14.124705>,  <7.190286, 24.028290, 14.496832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.055518, 23.970333, 14.124705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046535, -0.984318, 0.170157,
		-0.940382, 0.100621, 0.324894,
		-0.336920, -0.144894, -0.930317,
		6.954442, 23.926865, 13.845610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.800443, 23.357122, 14.552743>,  <7.190286, 24.028290, 14.496832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.800443, 23.357122, 14.552743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.859045, 23.424583, 14.162852>,  <6.894205, 23.465059, 13.928918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.859045, 23.424583, 14.162852>,  <6.800443, 23.357122, 14.552743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.859045, 23.424583, 14.162852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035926, -0.983802, -0.175623,
		-0.988558, 0.060748, -0.138071,
		0.146503, 0.168653, -0.974727,
		6.902996, 23.475180, 13.870434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.229378, 22.999540, 14.125177>,  <6.800443, 23.357122, 14.552743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.229378, 22.999540, 14.125177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.526041, 23.049398, 13.861539>,  <6.704039, 23.079313, 13.703356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.526041, 23.049398, 13.861539>,  <6.229378, 22.999540, 14.125177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.526041, 23.049398, 13.861539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036413, -0.973653, -0.225107,
		-0.669790, 0.190952, -0.717578,
		0.741657, 0.124645, -0.659097,
		6.748538, 23.086792, 13.663810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.049012, 22.609882, 13.573394>,  <6.229378, 22.999540, 14.125177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.049012, 22.609882, 13.573394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.427564, 22.653582, 13.451787>,  <6.654696, 22.679802, 13.378822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.427564, 22.653582, 13.451787>,  <6.049012, 22.609882, 13.573394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.427564, 22.653582, 13.451787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010352, -0.930344, -0.366541,
		-0.322885, 0.350035, -0.879330,
		0.946381, 0.109248, -0.304018,
		6.711479, 22.686356, 13.360581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.130032, 22.384098, 12.817088>,  <6.049012, 22.609882, 13.573394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.130032, 22.384098, 12.817088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.484984, 22.372108, 13.001112>,  <6.697956, 22.364916, 13.111526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.484984, 22.372108, 13.001112>,  <6.130032, 22.384098, 12.817088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.484984, 22.372108, 13.001112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117408, -0.950293, -0.288373,
		0.445836, 0.309912, -0.839753,
		0.887381, -0.029973, 0.460061,
		6.751199, 22.363117, 13.139131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.536184, 22.049818, 12.293589>,  <6.130032, 22.384098, 12.817088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.536184, 22.049818, 12.293589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.709056, 22.024883, 12.653440>,  <6.812780, 22.009922, 12.869351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.709056, 22.024883, 12.653440>,  <6.536184, 22.049818, 12.293589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.709056, 22.024883, 12.653440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173434, -0.973238, -0.150757,
		0.884952, 0.221181, -0.409803,
		0.432181, -0.062339, 0.899630,
		6.838711, 22.006182, 12.923329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.197312, 21.610596, 12.193704>,  <6.536184, 22.049818, 12.293589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.197312, 21.610596, 12.193704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.066873, 21.571518, 12.569813>,  <6.988609, 21.548071, 12.795479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.066873, 21.571518, 12.569813>,  <7.197312, 21.610596, 12.193704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.066873, 21.571518, 12.569813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204922, -0.978301, -0.030577,
		0.922858, 0.182711, 0.339043,
		-0.326099, -0.097695, 0.940274,
		6.969043, 21.542210, 12.851895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.746226, 21.080196, 12.381922>,  <7.197312, 21.610596, 12.193704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.746226, 21.080196, 12.381922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.464886, 21.098953, 12.665639>,  <7.296082, 21.110209, 12.835870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.464886, 21.098953, 12.665639>,  <7.746226, 21.080196, 12.381922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.464886, 21.098953, 12.665639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096748, -0.982222, 0.160875,
		0.704228, 0.181774, 0.686310,
		-0.703351, 0.046893, 0.709294,
		7.253880, 21.113022, 12.878428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.013885, 20.562572, 12.838622>,  <7.746226, 21.080196, 12.381922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.013885, 20.562572, 12.838622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.639748, 20.646767, 12.952348>,  <7.415267, 20.697283, 13.020583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.639748, 20.646767, 12.952348>,  <8.013885, 20.562572, 12.838622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.639748, 20.646767, 12.952348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007058, -0.792452, 0.609893,
		0.353679, 0.572465, 0.739727,
		-0.935340, 0.210485, 0.284314,
		7.359146, 20.709911, 13.037642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.017953, 20.556160, 13.557020>,  <8.013885, 20.562572, 12.838622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.017953, 20.556160, 13.557020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.649090, 20.477547, 13.423752>,  <7.427773, 20.430378, 13.343791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.649090, 20.477547, 13.423752>,  <8.017953, 20.556160, 13.557020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.649090, 20.477547, 13.423752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034308, -0.899473, 0.435628,
		-0.385293, 0.390286, 0.836197,
		-0.922156, -0.196533, -0.333171,
		7.372443, 20.418587, 13.323800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.676750, 20.243290, 14.092557>,  <8.017953, 20.556160, 13.557020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.676750, 20.243290, 14.092557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.453576, 20.127394, 13.781492>,  <7.319671, 20.057856, 13.594853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.453576, 20.127394, 13.781492>,  <7.676750, 20.243290, 14.092557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.453576, 20.127394, 13.781492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042416, -0.925892, 0.375398,
		-0.828799, 0.242434, 0.504299,
		-0.557936, -0.289739, -0.777662,
		7.286195, 20.040472, 13.548194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.011067, 19.851902, 14.310435>,  <7.676750, 20.243290, 14.092557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.011067, 19.851902, 14.310435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.106859, 19.751196, 13.935359>,  <7.164334, 19.690773, 13.710313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.106859, 19.751196, 13.935359>,  <7.011067, 19.851902, 14.310435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.106859, 19.751196, 13.935359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043210, -0.967601, 0.248760,
		-0.969940, -0.019055, -0.242598,
		0.239478, -0.251765, -0.937691,
		7.178703, 19.675667, 13.654052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.623064, 19.281723, 14.198652>,  <7.011067, 19.851902, 14.310435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.623064, 19.281723, 14.198652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.898116, 19.239435, 13.911324>,  <7.063147, 19.214062, 13.738926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.898116, 19.239435, 13.911324>,  <6.623064, 19.281723, 14.198652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.898116, 19.239435, 13.911324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102871, -0.965176, 0.240527,
		-0.718737, -0.239288, -0.652808,
		0.687630, -0.105720, -0.718323,
		7.104405, 19.207720, 13.695827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.398779, 18.753483, 13.608432>,  <6.623064, 19.281723, 14.198652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.398779, 18.753483, 13.608432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.796054, 18.790327, 13.636987>,  <7.034419, 18.812433, 13.654119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.796054, 18.790327, 13.636987>,  <6.398779, 18.753483, 13.608432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.796054, 18.790327, 13.636987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074436, -0.972758, 0.219547,
		0.089665, -0.212738, -0.972986,
		0.993186, 0.092111, 0.071387,
		7.094010, 18.817961, 13.658402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.454188, 18.107197, 13.627200>,  <6.398779, 18.753483, 13.608432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.454188, 18.107197, 13.627200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.827214, 18.247671, 13.660648>,  <7.051030, 18.331955, 13.680717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.827214, 18.247671, 13.660648>,  <6.454188, 18.107197, 13.627200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.827214, 18.247671, 13.660648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332921, -0.926200, 0.176966,
		0.139598, -0.137193, -0.980658,
		0.932564, 0.351185, 0.083621,
		7.106984, 18.353027, 13.685735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.813083, 17.719006, 13.098444>,  <6.454188, 18.107197, 13.627200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.813083, 17.719006, 13.098444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.080783, 17.847282, 13.366551>,  <7.241404, 17.924248, 13.527416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.080783, 17.847282, 13.366551>,  <6.813083, 17.719006, 13.098444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.080783, 17.847282, 13.366551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380613, -0.922692, 0.061428,
		0.638151, 0.214003, -0.739572,
		0.669251, 0.320691, 0.670269,
		7.281559, 17.943489, 13.567632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.389797, 17.416117, 12.873407>,  <6.813083, 17.719006, 13.098444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.389797, 17.416117, 12.873407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.466873, 17.504827, 13.255754>,  <7.513119, 17.558054, 13.485163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.466873, 17.504827, 13.255754>,  <7.389797, 17.416117, 12.873407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.466873, 17.504827, 13.255754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185673, -0.964767, 0.186415,
		0.963533, 0.141559, -0.227080,
		0.192690, 0.221779, 0.955868,
		7.524680, 17.571362, 13.542515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.053044, 17.209774, 12.984125>,  <7.389797, 17.416117, 12.873407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.053044, 17.209774, 12.984125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.854784, 17.224703, 13.331213>,  <7.735828, 17.233660, 13.539466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.854784, 17.224703, 13.331213>,  <8.053044, 17.209774, 12.984125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.854784, 17.224703, 13.331213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228025, -0.958437, 0.171473,
		0.838055, 0.282852, 0.466539,
		-0.495650, 0.037322, 0.867720,
		7.706089, 17.235899, 13.591529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.418701, 16.690178, 13.457256>,  <8.053044, 17.209774, 12.984125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.418701, 16.690178, 13.457256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.052423, 16.763304, 13.600410>,  <7.832657, 16.807178, 13.686303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.052423, 16.763304, 13.600410>,  <8.418701, 16.690178, 13.457256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.052423, 16.763304, 13.600410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117581, -0.973447, 0.196407,
		0.384289, 0.137768, 0.912876,
		-0.915695, 0.182814, 0.357886,
		7.777715, 16.818148, 13.707776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.287209, 16.640829, 14.193914>,  <8.418701, 16.690178, 13.457256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.287209, 16.640829, 14.193914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.993283, 16.502262, 13.960662>,  <7.816927, 16.419123, 13.820710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.993283, 16.502262, 13.960662>,  <8.287209, 16.640829, 14.193914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.993283, 16.502262, 13.960662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211301, -0.933870, 0.288513,
		-0.644515, 0.088787, 0.759419,
		-0.734815, -0.346416, -0.583132,
		7.772839, 16.398336, 13.785722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.997344, 16.052450, 14.484103>,  <8.287209, 16.640829, 14.193914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.997344, 16.052450, 14.484103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.890757, 16.007048, 14.101249>,  <7.826805, 15.979807, 13.871536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.890757, 16.007048, 14.101249>,  <7.997344, 16.052450, 14.484103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.890757, 16.007048, 14.101249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176201, -0.982044, 0.067403,
		-0.947601, -0.150687, 0.281682,
		-0.266467, -0.113504, -0.957137,
		7.810817, 15.972997, 13.814108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.322978, 15.464163, 14.196695>,  <7.997344, 16.052450, 14.484103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.322978, 15.464163, 14.196695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.422477, 15.115261, 14.028268>,  <8.482176, 14.905920, 13.927212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.422477, 15.115261, 14.028268>,  <8.322978, 15.464163, 14.196695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.422477, 15.115261, 14.028268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929549, 0.092836, 0.356820,
		-0.272147, -0.480162, 0.833895,
		0.248747, -0.872253, -0.421069,
		8.497101, 14.853585, 13.901947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.883939, 15.374684, 14.646533>,  <8.322978, 15.464163, 14.196695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.883939, 15.374684, 14.646533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.971484, 15.058899, 14.417152>,  <9.024012, 14.869428, 14.279524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.971484, 15.058899, 14.417152>,  <8.883939, 15.374684, 14.646533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.971484, 15.058899, 14.417152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873893, -0.102845, 0.475116,
		-0.434063, -0.605120, 0.667397,
		0.218863, -0.789464, -0.573451,
		9.037144, 14.822060, 14.245117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.235331, 14.897736, 15.072030>,  <8.883939, 15.374684, 14.646533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.235331, 14.897736, 15.072030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.336878, 14.790451, 14.700307>,  <9.397806, 14.726080, 14.477273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.336878, 14.790451, 14.700307>,  <9.235331, 14.897736, 15.072030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.336878, 14.790451, 14.700307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859448, -0.378222, 0.343943,
		-0.443734, -0.886008, 0.134497,
		0.253867, -0.268212, -0.929308,
		9.413038, 14.709988, 14.421515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.360089, 14.156716, 15.090451>,  <9.235331, 14.897736, 15.072030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.360089, 14.156716, 15.090451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.556775, 14.325500, 14.785777>,  <9.674787, 14.426771, 14.602973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.556775, 14.325500, 14.785777>,  <9.360089, 14.156716, 15.090451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.556775, 14.325500, 14.785777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849649, -0.423935, 0.313648,
		-0.190558, -0.801391, -0.566975,
		0.491715, 0.421961, -0.761685,
		9.704289, 14.452088, 14.557271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.890719, 13.682269, 14.922709>,  <9.360089, 14.156716, 15.090451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.890719, 13.682269, 14.922709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.978831, 14.058781, 14.820360>,  <10.031698, 14.284688, 14.758950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.978831, 14.058781, 14.820360>,  <9.890719, 13.682269, 14.922709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.978831, 14.058781, 14.820360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926109, -0.119455, 0.357844,
		0.306266, -0.315792, -0.898040,
		0.220280, 0.941279, -0.255873,
		10.044915, 14.341165, 14.743598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.559858, 13.623331, 14.560804>,  <9.890719, 13.682269, 14.922709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.559858, 13.623331, 14.560804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.521422, 13.996480, 14.699667>,  <10.498361, 14.220369, 14.782985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.521422, 13.996480, 14.699667>,  <10.559858, 13.623331, 14.560804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.521422, 13.996480, 14.699667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954459, -0.012612, 0.298076,
		0.282445, 0.359988, -0.889176,
		-0.096089, 0.932872, 0.347156,
		10.492596, 14.276341, 14.803814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.568726, 12.934810, 14.577245>,  <10.559858, 13.623331, 14.560804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.568726, 12.934810, 14.577245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.952008, 12.842007, 14.510296>,  <11.181978, 12.786325, 14.470127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.952008, 12.842007, 14.510296>,  <10.568726, 12.934810, 14.577245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.952008, 12.842007, 14.510296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132281, -0.159429, 0.978307,
		-0.253659, -0.959560, -0.122076,
		0.958206, -0.232008, -0.167372,
		11.239470, 12.772405, 14.460084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.683993, 12.524606, 15.047266>,  <10.568726, 12.934810, 14.577245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.683993, 12.524606, 15.047266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.040628, 12.674090, 14.944963>,  <11.254609, 12.763782, 14.883580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.040628, 12.674090, 14.944963>,  <10.683993, 12.524606, 15.047266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.040628, 12.674090, 14.944963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208992, 0.161471, 0.964494,
		0.401741, -0.913382, 0.065862,
		0.891587, 0.373712, -0.255759,
		11.308105, 12.786203, 14.868235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.214298, 12.105764, 15.309964>,  <10.683993, 12.524606, 15.047266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.214298, 12.105764, 15.309964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.353578, 12.478556, 15.269620>,  <11.437145, 12.702230, 15.245413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.353578, 12.478556, 15.269620>,  <11.214298, 12.105764, 15.309964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.353578, 12.478556, 15.269620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217206, 0.024455, 0.975820,
		0.911910, -0.361687, -0.193916,
		0.348199, 0.931979, -0.100862,
		11.458037, 12.758149, 15.239362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.885529, 12.094865, 15.597258>,  <11.214298, 12.105764, 15.309964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.885529, 12.094865, 15.597258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.744008, 12.468993, 15.597773>,  <11.659096, 12.693470, 15.598082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.744008, 12.468993, 15.597773>,  <11.885529, 12.094865, 15.597258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.744008, 12.468993, 15.597773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251148, 0.093675, 0.963405,
		0.900971, 0.341177, -0.268046,
		-0.353801, 0.935320, 0.001287,
		11.637868, 12.749589, 15.598159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.310659, 12.330723, 16.150356>,  <11.885529, 12.094865, 15.597258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.310659, 12.330723, 16.150356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.049977, 12.629896, 16.099957>,  <11.893568, 12.809401, 16.069717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.049977, 12.629896, 16.099957>,  <12.310659, 12.330723, 16.150356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.049977, 12.629896, 16.099957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033722, 0.194529, 0.980317,
		0.757722, 0.634629, -0.151997,
		-0.651705, 0.747934, -0.125998,
		11.854465, 12.854277, 16.062157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.565592, 12.952130, 16.407694>,  <12.310659, 12.330723, 16.150356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.565592, 12.952130, 16.407694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.183954, 13.071491, 16.417997>,  <11.954972, 13.143107, 16.424179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.183954, 13.071491, 16.417997>,  <12.565592, 12.952130, 16.407694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.183954, 13.071491, 16.417997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079582, 0.169661, 0.982284,
		0.288745, 0.939240, -0.185620,
		-0.954093, 0.298402, 0.025758,
		11.897726, 13.161012, 16.425724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.609686, 13.470293, 16.848999>,  <12.565592, 12.952130, 16.407694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.609686, 13.470293, 16.848999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.219748, 13.381305, 16.854473>,  <11.985786, 13.327912, 16.857758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.219748, 13.381305, 16.854473>,  <12.609686, 13.470293, 16.848999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.219748, 13.381305, 16.854473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025763, -0.051482, 0.998342,
		-0.221397, 0.973579, 0.055918,
		-0.974843, -0.222470, 0.013684,
		11.927296, 13.314564, 16.858578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.197306, 13.965930, 17.326643>,  <12.609686, 13.470293, 16.848999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.197306, 13.965930, 17.326643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.955972, 13.648619, 17.293909>,  <11.811172, 13.458232, 17.274269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.955972, 13.648619, 17.293909>,  <12.197306, 13.965930, 17.326643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.955972, 13.648619, 17.293909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028506, -0.124001, 0.991872,
		-0.796979, 0.596098, 0.097427,
		-0.603334, -0.793279, -0.081834,
		11.774971, 13.410635, 17.269360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.761752, 14.089274, 17.712996>,  <12.197306, 13.965930, 17.326643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.761752, 14.089274, 17.712996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.729477, 13.692677, 17.672138>,  <11.710112, 13.454720, 17.647625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.729477, 13.692677, 17.672138>,  <11.761752, 14.089274, 17.712996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.729477, 13.692677, 17.672138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015713, -0.103729, 0.994482,
		-0.996616, 0.078638, 0.023949,
		-0.080689, -0.991492, -0.102142,
		11.705271, 13.395230, 17.641495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.052232, 13.921092, 18.019156>,  <11.761752, 14.089274, 17.712996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.052232, 13.921092, 18.019156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.323468, 13.627213, 18.011017>,  <11.486210, 13.450886, 18.006134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.323468, 13.627213, 18.011017>,  <11.052232, 13.921092, 18.019156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.323468, 13.627213, 18.011017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097147, -0.117031, 0.988365,
		-0.728530, -0.668224, -0.150732,
		0.678090, -0.734697, -0.020344,
		11.526896, 13.406804, 18.004913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.734229, 13.313371, 18.359398>,  <11.052232, 13.921092, 18.019156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.734229, 13.313371, 18.359398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.126356, 13.237344, 18.380753>,  <11.361632, 13.191728, 18.393566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.126356, 13.237344, 18.380753>,  <10.734229, 13.313371, 18.359398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.126356, 13.237344, 18.380753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104574, -0.270560, 0.957006,
		-0.167449, -0.943754, -0.285111,
		0.980319, -0.190065, 0.053387,
		11.420452, 13.180324, 18.396769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.754886, 12.712548, 18.744738>,  <10.734229, 13.313371, 18.359398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.754886, 12.712548, 18.744738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.121961, 12.871077, 18.755896>,  <11.342206, 12.966193, 18.762590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.121961, 12.871077, 18.755896>,  <10.754886, 12.712548, 18.744738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.121961, 12.871077, 18.755896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041746, -0.166006, 0.985241,
		0.395102, -0.902979, -0.168887,
		0.917688, 0.396321, 0.027894,
		11.397267, 12.989973, 18.764263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.084488, 12.218097, 19.081970>,  <10.754886, 12.712548, 18.744738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.084488, 12.218097, 19.081970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.295867, 12.554599, 19.127640>,  <11.422694, 12.756500, 19.155041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.295867, 12.554599, 19.127640>,  <11.084488, 12.218097, 19.081970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.295867, 12.554599, 19.127640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019798, -0.146660, 0.988989,
		0.848736, -0.520368, -0.094157,
		0.528447, 0.841254, 0.114173,
		11.454401, 12.806975, 19.161892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.616140, 11.996494, 19.539989>,  <11.084488, 12.218097, 19.081970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.616140, 11.996494, 19.539989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.533898, 12.387065, 19.566278>,  <11.484552, 12.621408, 19.582052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.533898, 12.387065, 19.566278>,  <11.616140, 11.996494, 19.539989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.533898, 12.387065, 19.566278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239779, -0.014847, 0.970714,
		0.948806, 0.215344, -0.231073,
		-0.205606, 0.976426, 0.065722,
		11.472217, 12.679993, 19.585995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.118640, 12.218782, 19.804792>,  <11.616140, 11.996494, 19.539989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.118640, 12.218782, 19.804792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.873101, 12.523085, 19.889120>,  <11.725778, 12.705666, 19.939716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.873101, 12.523085, 19.889120>,  <12.118640, 12.218782, 19.804792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.873101, 12.523085, 19.889120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211852, -0.098510, 0.972324,
		0.760468, 0.641521, -0.100697,
		-0.613847, 0.760754, 0.210821,
		11.688948, 12.751311, 19.952366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.518267, 12.615771, 20.350637>,  <12.118640, 12.218782, 19.804792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.518267, 12.615771, 20.350637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.127230, 12.696778, 20.373619>,  <11.892608, 12.745382, 20.387407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.127230, 12.696778, 20.373619>,  <12.518267, 12.615771, 20.350637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.127230, 12.696778, 20.373619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028649, -0.142391, 0.989396,
		0.208551, 0.968871, 0.133398,
		-0.977592, 0.202518, 0.057453,
		11.833952, 12.757534, 20.390856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.456497, 13.181470, 20.873013>,  <12.518267, 12.615771, 20.350637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.456497, 13.181470, 20.873013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.101729, 12.998515, 20.847174>,  <11.888869, 12.888742, 20.831671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.101729, 12.998515, 20.847174>,  <12.456497, 13.181470, 20.873013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.101729, 12.998515, 20.847174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041416, -0.060542, 0.997306,
		-0.460065, 0.887205, 0.034752,
		-0.886919, -0.457386, -0.064598,
		11.835653, 12.861300, 20.827795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.209362, 13.269804, 21.482752>,  <12.456497, 13.181470, 20.873013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.209362, 13.269804, 21.482752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.934206, 13.006244, 21.360992>,  <11.769113, 12.848107, 21.287937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.934206, 13.006244, 21.360992>,  <12.209362, 13.269804, 21.482752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.934206, 13.006244, 21.360992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099738, -0.329599, 0.938838,
		-0.718930, 0.676177, 0.161010,
		-0.687889, -0.658900, -0.304399,
		11.727839, 12.808574, 21.269672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.600706, 13.405666, 21.899109>,  <12.209362, 13.269804, 21.482752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.600706, 13.405666, 21.899109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.594483, 13.026726, 21.771183>,  <11.590750, 12.799361, 21.694427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.594483, 13.026726, 21.771183>,  <11.600706, 13.405666, 21.899109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.594483, 13.026726, 21.771183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251886, -0.305827, 0.918163,
		-0.967632, 0.094840, -0.233867,
		-0.015556, -0.947352, -0.319816,
		11.589816, 12.742520, 21.675238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.027368, 13.076082, 22.267170>,  <11.600706, 13.405666, 21.899109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.027368, 13.076082, 22.267170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.239470, 12.761699, 22.139988>,  <11.366733, 12.573069, 22.063679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.239470, 12.761699, 22.139988>,  <11.027368, 13.076082, 22.267170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.239470, 12.761699, 22.139988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215523, -0.487653, 0.846017,
		-0.819986, -0.380080, -0.427974,
		0.530257, -0.785960, -0.317953,
		11.398548, 12.525910, 22.044601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.651962, 12.495524, 22.532423>,  <11.027368, 13.076082, 22.267170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.651962, 12.495524, 22.532423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.017193, 12.350124, 22.458494>,  <11.236331, 12.262884, 22.414137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.017193, 12.350124, 22.458494>,  <10.651962, 12.495524, 22.532423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.017193, 12.350124, 22.458494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036958, -0.377603, 0.925230,
		-0.406115, -0.851634, -0.331345,
		0.913074, -0.363504, -0.184825,
		11.291116, 12.241075, 22.403048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.656649, 11.757119, 22.688517>,  <10.651962, 12.495524, 22.532423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.656649, 11.757119, 22.688517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.034472, 11.887839, 22.701248>,  <11.261166, 11.966271, 22.708887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.034472, 11.887839, 22.701248>,  <10.656649, 11.757119, 22.688517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.034472, 11.887839, 22.701248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093760, -0.361352, 0.927703,
		0.314677, -0.873284, -0.371959,
		0.944557, 0.326802, 0.031830,
		11.317839, 11.985880, 22.710796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.011199, 11.147591, 22.834980>,  <10.656649, 11.757119, 22.688517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.011199, 11.147591, 22.834980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.203723, 11.480830, 22.944004>,  <11.319237, 11.680774, 23.009418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.203723, 11.480830, 22.944004>,  <11.011199, 11.147591, 22.834980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.203723, 11.480830, 22.944004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050417, -0.336740, 0.940247,
		0.875100, -0.438807, -0.204079,
		0.481309, 0.833099, 0.272558,
		11.348116, 11.730760, 23.025772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.502239, 10.927110, 23.361286>,  <11.011199, 11.147591, 22.834980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.502239, 10.927110, 23.361286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.501112, 11.323634, 23.413887>,  <11.500436, 11.561549, 23.445448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.501112, 11.323634, 23.413887>,  <11.502239, 10.927110, 23.361286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.501112, 11.323634, 23.413887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004148, -0.131490, 0.991309,
		0.999987, 0.003339, -0.003741,
		-0.002818, 0.991312, 0.131502,
		11.500267, 11.621028, 23.453339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.022718, 10.970334, 23.811214>,  <11.502239, 10.927110, 23.361286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.022718, 10.970334, 23.811214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.818667, 11.313889, 23.829464>,  <11.696237, 11.520021, 23.840414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.818667, 11.313889, 23.829464>,  <12.022718, 10.970334, 23.811214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.818667, 11.313889, 23.829464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187495, -0.162818, 0.968677,
		0.839413, 0.485596, 0.244095,
		-0.510129, 0.858887, 0.045625,
		11.665628, 11.571555, 23.843151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.150717, 11.234139, 24.422192>,  <12.022718, 10.970334, 23.811214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.150717, 11.234139, 24.422192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.836675, 11.466385, 24.335938>,  <11.648250, 11.605732, 24.284185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.836675, 11.466385, 24.335938>,  <12.150717, 11.234139, 24.422192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.836675, 11.466385, 24.335938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230005, 0.049945, 0.971907,
		0.575072, 0.812646, 0.094332,
		-0.785105, 0.580613, -0.215634,
		11.601143, 11.640569, 24.271248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.160399, 11.866901, 24.858240>,  <12.150717, 11.234139, 24.422192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.160399, 11.866901, 24.858240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.781934, 11.801160, 24.746696>,  <11.554854, 11.761715, 24.679770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.781934, 11.801160, 24.746696>,  <12.160399, 11.866901, 24.858240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.781934, 11.801160, 24.746696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285378, 0.016998, 0.958264,
		-0.152755, 0.986255, -0.062986,
		-0.946164, -0.164354, -0.278859,
		11.498085, 11.751854, 24.663038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.852646, 12.247967, 25.315344>,  <12.160399, 11.866901, 24.858240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.852646, 12.247967, 25.315344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.582020, 12.001874, 25.153481>,  <11.419643, 11.854218, 25.056362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.582020, 12.001874, 25.153481>,  <11.852646, 12.247967, 25.315344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.582020, 12.001874, 25.153481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403349, -0.150136, 0.902645,
		-0.616090, 0.773917, -0.146577,
		-0.676566, -0.615233, -0.404656,
		11.379050, 11.817305, 25.032084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.124750, 12.510798, 25.563198>,  <11.852646, 12.247967, 25.315344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.124750, 12.510798, 25.563198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.109043, 12.121347, 25.473301>,  <11.099619, 11.887677, 25.419363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.109043, 12.121347, 25.473301>,  <11.124750, 12.510798, 25.563198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.109043, 12.121347, 25.473301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326503, -0.200068, 0.923780,
		-0.944380, 0.109655, -0.310035,
		-0.039269, -0.973627, -0.224743,
		11.097262, 11.829260, 25.405878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.718417, 12.324163, 26.052023>,  <11.124750, 12.510798, 25.563198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.718417, 12.324163, 26.052023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.841256, 11.971531, 25.908632>,  <10.914959, 11.759952, 25.822598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.841256, 11.971531, 25.908632>,  <10.718417, 12.324163, 26.052023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.841256, 11.971531, 25.908632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202113, -0.428503, 0.880645,
		-0.929969, -0.197990, -0.309771,
		0.307097, -0.881581, -0.358478,
		10.933385, 11.707056, 25.801088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.136371, 11.834561, 26.097820>,  <10.718417, 12.324163, 26.052023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.136371, 11.834561, 26.097820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.471552, 11.616337, 26.092186>,  <10.672661, 11.485402, 26.088804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.471552, 11.616337, 26.092186>,  <10.136371, 11.834561, 26.097820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.471552, 11.616337, 26.092186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208208, -0.343445, 0.915803,
		-0.504466, -0.764466, -0.401381,
		0.837952, -0.545562, -0.014088,
		10.722938, 11.452668, 26.087959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.885171, 11.125901, 26.127869>,  <10.136371, 11.834561, 26.097820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.885171, 11.125901, 26.127869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.259954, 11.149474, 26.265644>,  <10.484824, 11.163618, 26.348309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.259954, 11.149474, 26.265644>,  <9.885171, 11.125901, 26.127869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.259954, 11.149474, 26.265644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283724, -0.447092, 0.848298,
		0.203987, -0.892545, -0.402186,
		0.936958, 0.058932, 0.344437,
		10.541042, 11.167153, 26.368975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.007451, 10.504302, 26.445650>,  <9.885171, 11.125901, 26.127869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.007451, 10.504302, 26.445650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.286628, 10.732408, 26.618937>,  <10.454134, 10.869271, 26.722908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.286628, 10.732408, 26.618937>,  <10.007451, 10.504302, 26.445650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.286628, 10.732408, 26.618937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182686, -0.443137, 0.877642,
		0.692462, -0.691685, -0.205105,
		0.697941, 0.570264, 0.433216,
		10.496010, 10.903487, 26.748901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.397262, 10.082389, 26.975376>,  <10.007451, 10.504302, 26.445650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.397262, 10.082389, 26.975376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.493027, 10.453999, 27.088228>,  <10.550486, 10.676965, 27.155939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.493027, 10.453999, 27.088228>,  <10.397262, 10.082389, 26.975376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.493027, 10.453999, 27.088228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098873, -0.265740, 0.958961,
		0.965871, -0.257481, 0.028234,
		0.239412, 0.929024, 0.282128,
		10.564850, 10.732706, 27.172867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.821877, 9.868260, 27.516247>,  <10.397262, 10.082389, 26.975376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.821877, 9.868260, 27.516247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.736453, 10.256197, 27.563236>,  <10.685199, 10.488959, 27.591431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.736453, 10.256197, 27.563236>,  <10.821877, 9.868260, 27.516247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.736453, 10.256197, 27.563236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126265, -0.091838, 0.987736,
		0.968736, 0.225773, -0.102844,
		-0.213559, 0.969841, 0.117474,
		10.672385, 10.547150, 27.598478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.290204, 10.119993, 27.959133>,  <10.821877, 9.868260, 27.516247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.290204, 10.119993, 27.959133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.001589, 10.393688, 28.001463>,  <10.828420, 10.557905, 28.026861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.001589, 10.393688, 28.001463>,  <11.290204, 10.119993, 27.959133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.001589, 10.393688, 28.001463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096107, -0.052388, 0.993992,
		0.685671, 0.727374, -0.027960,
		-0.721539, 0.684238, 0.105826,
		10.785127, 10.598960, 28.033211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.574769, 10.616962, 28.525379>,  <11.290204, 10.119993, 27.959133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.574769, 10.616962, 28.525379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.175870, 10.617801, 28.495737>,  <10.936530, 10.618303, 28.477953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.175870, 10.617801, 28.495737>,  <11.574769, 10.616962, 28.525379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.175870, 10.617801, 28.495737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074086, 0.007527, 0.997223,
		0.002647, 0.999970, -0.007351,
		-0.997248, 0.002095, -0.074104,
		10.876696, 10.618429, 28.473505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.362894, 10.803023, 29.110289>,  <11.574769, 10.616962, 28.525379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.362894, 10.803023, 29.110289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.003527, 10.658241, 29.010822>,  <10.787907, 10.571372, 28.951143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.003527, 10.658241, 29.010822>,  <11.362894, 10.803023, 29.110289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.003527, 10.658241, 29.010822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232799, -0.087578, 0.968574,
		-0.372359, 0.928072, -0.005581,
		-0.898417, -0.361956, -0.248664,
		10.734001, 10.549654, 28.936222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.971466, 11.288096, 29.493874>,  <11.362894, 10.803023, 29.110289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.971466, 11.288096, 29.493874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.772819, 10.959821, 29.380850>,  <10.653630, 10.762856, 29.313036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.772819, 10.959821, 29.380850>,  <10.971466, 11.288096, 29.493874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.772819, 10.959821, 29.380850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358812, -0.102306, 0.927786,
		-0.790331, 0.562142, -0.243666,
		-0.496619, -0.820688, -0.282559,
		10.623833, 10.713614, 29.296082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.354478, 11.278806, 29.867172>,  <10.971466, 11.288096, 29.493874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.354478, 11.278806, 29.867172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.422768, 10.902154, 29.751114>,  <10.463741, 10.676163, 29.681479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.422768, 10.902154, 29.751114>,  <10.354478, 11.278806, 29.867172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.422768, 10.902154, 29.751114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234982, -0.324883, 0.916098,
		-0.956889, -0.088222, -0.276731,
		0.170725, -0.941631, -0.290146,
		10.473985, 10.619665, 29.664070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.840145, 10.810340, 30.076508>,  <10.354478, 11.278806, 29.867172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.840145, 10.810340, 30.076508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.217797, 10.679166, 30.089638>,  <10.444388, 10.600462, 30.097515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.217797, 10.679166, 30.089638>,  <9.840145, 10.810340, 30.076508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.217797, 10.679166, 30.089638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126384, -0.268271, 0.955017,
		-0.304381, -0.905807, -0.294728,
		0.944129, -0.327938, 0.032823,
		10.501037, 10.580786, 30.099485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.898232, 10.020881, 30.284718>,  <9.840145, 10.810340, 30.076508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.898232, 10.020881, 30.284718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.223770, 10.228000, 30.390198>,  <10.419093, 10.352271, 30.453485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.223770, 10.228000, 30.390198>,  <9.898232, 10.020881, 30.284718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.223770, 10.228000, 30.390198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098808, -0.323889, 0.940922,
		0.572616, -0.791823, -0.212433,
		0.813848, 0.517797, 0.263702,
		10.467924, 10.383339, 30.469309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.347219, 9.516548, 30.631147>,  <9.898232, 10.020881, 30.284718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.347219, 9.516548, 30.631147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.372081, 9.895855, 30.755680>,  <10.386997, 10.123439, 30.830400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.372081, 9.895855, 30.755680>,  <10.347219, 9.516548, 30.631147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.372081, 9.895855, 30.755680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364127, -0.268892, 0.891689,
		0.929273, -0.168786, 0.328577,
		0.062153, 0.948266, 0.311334,
		10.390727, 10.180335, 30.849081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.633905, 9.581505, 31.329351>,  <10.347219, 9.516548, 30.631147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.633905, 9.581505, 31.329351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.368903, 9.878804, 31.292112>,  <10.209902, 10.057184, 31.269770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.368903, 9.878804, 31.292112>,  <10.633905, 9.581505, 31.329351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.368903, 9.878804, 31.292112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384544, -0.230816, 0.893784,
		0.642816, 0.627937, 0.438728,
		-0.662506, 0.743249, -0.093097,
		10.170152, 10.101779, 31.264183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.613448, 9.809099, 32.002209>,  <10.633905, 9.581505, 31.329351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.613448, 9.809099, 32.002209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.274984, 9.908301, 31.813524>,  <10.071906, 9.967823, 31.700314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.274984, 9.908301, 31.813524>,  <10.613448, 9.809099, 32.002209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.274984, 9.908301, 31.813524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529623, -0.292860, 0.796073,
		0.059286, 0.923432, 0.379155,
		-0.846159, 0.248005, -0.471708,
		10.021137, 9.982703, 31.672012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.365454, 9.724329, 31.727423>,  <10.613448, 9.809099, 32.002209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.365454, 9.724329, 31.727423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.615975, 9.993157, 31.569403>,  <11.766289, 10.154454, 31.474590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.615975, 9.993157, 31.569403>,  <11.365454, 9.724329, 31.727423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.615975, 9.993157, 31.569403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364504, -0.700398, -0.613661,
		-0.689116, 0.240341, -0.683634,
		0.626304, 0.672071, -0.395050,
		11.803866, 10.194778, 31.450888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.318204, 9.914341, 31.006380>,  <11.365454, 9.724329, 31.727423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.318204, 9.914341, 31.006380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.698900, 9.960097, 31.120296>,  <11.927318, 9.987551, 31.188646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.698900, 9.960097, 31.120296>,  <11.318204, 9.914341, 31.006380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.698900, 9.960097, 31.120296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260379, -0.792164, -0.551977,
		0.162460, 0.599492, -0.783719,
		0.951740, 0.114390, 0.284790,
		11.984423, 9.994414, 31.205734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.731668, 9.590644, 30.455654>,  <11.318204, 9.914341, 31.006380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.731668, 9.590644, 30.455654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.924912, 9.521685, 30.799021>,  <12.040859, 9.480309, 31.005041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.924912, 9.521685, 30.799021>,  <11.731668, 9.590644, 30.455654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.924912, 9.521685, 30.799021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134065, -0.983427, -0.122054,
		0.865233, -0.056118, -0.498219,
		0.483113, -0.172399, 0.858418,
		12.069846, 9.469965, 31.056545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.255230, 9.077032, 30.332436>,  <11.731668, 9.590644, 30.455654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.255230, 9.077032, 30.332436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.134103, 9.061562, 30.713341>,  <12.061426, 9.052279, 30.941883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.134103, 9.061562, 30.713341>,  <12.255230, 9.077032, 30.332436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.134103, 9.061562, 30.713341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089949, -0.993556, -0.068956,
		0.948794, -0.106536, 0.297389,
		-0.302819, -0.038675, 0.952263,
		12.043257, 9.049959, 30.999020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.648508, 8.551180, 30.763990>,  <12.255230, 9.077032, 30.332436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.648508, 8.551180, 30.763990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.271446, 8.580080, 30.894333>,  <12.045209, 8.597420, 30.972538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.271446, 8.580080, 30.894333>,  <12.648508, 8.551180, 30.763990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.271446, 8.580080, 30.894333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076874, -0.997040, -0.001318,
		0.324798, -0.026292, 0.945418,
		-0.942654, 0.072251, 0.325858,
		11.988650, 8.601755, 30.992090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.722162, 8.452220, 30.051573>,  <12.648508, 8.551180, 30.763990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.722162, 8.452220, 30.051573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.333783, 8.502222, 29.969955>,  <12.100756, 8.532224, 29.920984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.333783, 8.502222, 29.969955>,  <12.722162, 8.452220, 30.051573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.333783, 8.502222, 29.969955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224983, 0.186448, -0.956358,
		-0.081507, -0.974480, -0.209156,
		-0.970948, 0.125006, -0.204044,
		12.042499, 8.539723, 29.908743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.470183, 7.963056, 29.532492>,  <12.722162, 8.452220, 30.051573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.470183, 7.963056, 29.532492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.297347, 8.323731, 29.538895>,  <12.193645, 8.540136, 29.542736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.297347, 8.323731, 29.538895>,  <12.470183, 7.963056, 29.532492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.297347, 8.323731, 29.538895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289104, 0.155308, -0.944615,
		-0.854235, -0.403531, -0.327789,
		-0.432090, 0.901688, 0.016007,
		12.167720, 8.594238, 29.543697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.158033, 7.997988, 28.973911>,  <12.470183, 7.963056, 29.532492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.158033, 7.997988, 28.973911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.192542, 8.380290, 29.086401>,  <12.213247, 8.609672, 29.153894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.192542, 8.380290, 29.086401>,  <12.158033, 7.997988, 28.973911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.192542, 8.380290, 29.086401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244966, 0.253262, -0.935869,
		-0.965686, 0.149630, -0.212278,
		0.086272, 0.955756, 0.281226,
		12.218424, 8.667017, 29.170769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.829331, 8.506836, 28.367920>,  <12.158033, 7.997988, 28.973911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.829331, 8.506836, 28.367920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.067734, 8.736776, 28.592178>,  <12.210775, 8.874741, 28.726732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.067734, 8.736776, 28.592178>,  <11.829331, 8.506836, 28.367920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.067734, 8.736776, 28.592178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286768, 0.499782, -0.817302,
		-0.750027, 0.647892, 0.133025,
		0.596007, 0.574851, 0.560645,
		12.246535, 8.909231, 28.760372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.768489, 9.308537, 28.296064>,  <11.829331, 8.506836, 28.367920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.768489, 9.308537, 28.296064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.137260, 9.204875, 28.411224>,  <12.358523, 9.142678, 28.480320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.137260, 9.204875, 28.411224>,  <11.768489, 9.308537, 28.296064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.137260, 9.204875, 28.411224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377410, 0.433587, -0.818269,
		0.087228, 0.863042, 0.497544,
		0.921929, -0.259154, 0.287900,
		12.413839, 9.127129, 28.497595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.147891, 9.859070, 27.979916>,  <11.768489, 9.308537, 28.296064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.147891, 9.859070, 27.979916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.441936, 9.622542, 28.112551>,  <12.618363, 9.480626, 28.192131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.441936, 9.622542, 28.112551>,  <12.147891, 9.859070, 27.979916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.441936, 9.622542, 28.112551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624570, 0.400480, -0.670469,
		0.263667, 0.699970, 0.663718,
		0.735113, -0.591319, 0.331587,
		12.662471, 9.445147, 28.212027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.738530, 10.203970, 27.825447>,  <12.147891, 9.859070, 27.979916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.738530, 10.203970, 27.825447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.913163, 9.847201, 27.872561>,  <13.017942, 9.633141, 27.900829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.913163, 9.847201, 27.872561>,  <12.738530, 10.203970, 27.825447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.913163, 9.847201, 27.872561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684903, 0.244614, -0.686347,
		0.583356, 0.380316, 0.717673,
		0.436582, -0.891921, 0.117783,
		13.044138, 9.579625, 27.907896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.501818, 10.267497, 27.800228>,  <12.738530, 10.203970, 27.825447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.501818, 10.267497, 27.800228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.433961, 9.883759, 27.710005>,  <13.393247, 9.653516, 27.655870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.433961, 9.883759, 27.710005>,  <13.501818, 10.267497, 27.800228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.433961, 9.883759, 27.710005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756640, 0.019859, -0.653530,
		0.631441, -0.281532, 0.722511,
		-0.169642, -0.959346, -0.225558,
		13.383068, 9.595955, 27.642338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.201694, 10.005416, 27.724865>,  <13.501818, 10.267497, 27.800228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.201694, 10.005416, 27.724865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.947645, 9.762811, 27.533546>,  <13.795217, 9.617248, 27.418756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.947645, 9.762811, 27.533546>,  <14.201694, 10.005416, 27.724865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.947645, 9.762811, 27.533546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639415, -0.065452, -0.766071,
		0.433326, -0.792376, 0.429382,
		-0.635120, -0.606512, -0.478295,
		13.757109, 9.580857, 27.390059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.572145, 9.284643, 27.605371>,  <14.201694, 10.005416, 27.724865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.572145, 9.284643, 27.605371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.274777, 9.332833, 27.342216>,  <14.096357, 9.361747, 27.184324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.274777, 9.332833, 27.342216>,  <14.572145, 9.284643, 27.605371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.274777, 9.332833, 27.342216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613283, -0.269678, -0.742400,
		-0.266846, -0.955387, 0.126609,
		-0.743422, 0.120460, -0.657885,
		14.051752, 9.368976, 27.144850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.657768, 8.783224, 27.097805>,  <14.572145, 9.284643, 27.605371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.657768, 8.783224, 27.097805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.428641, 9.057509, 26.918171>,  <14.291165, 9.222080, 26.810390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.428641, 9.057509, 26.918171>,  <14.657768, 8.783224, 27.097805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.428641, 9.057509, 26.918171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403939, -0.240586, -0.882582,
		-0.713243, -0.686960, -0.139175,
		-0.572816, 0.685714, -0.449086,
		14.256797, 9.263224, 26.783445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.535828, 8.431906, 26.541609>,  <14.657768, 8.783224, 27.097805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.535828, 8.431906, 26.541609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.439986, 8.811970, 26.461823>,  <14.382482, 9.040009, 26.413952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.439986, 8.811970, 26.461823>,  <14.535828, 8.431906, 26.541609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.439986, 8.811970, 26.461823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539136, -0.040644, -0.841238,
		-0.807418, -0.309102, -0.502527,
		-0.239603, 0.950160, -0.199464,
		14.368105, 9.097018, 26.401983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.245202, 8.489790, 25.822191>,  <14.535828, 8.431906, 26.541609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.245202, 8.489790, 25.822191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.350931, 8.863680, 25.917204>,  <14.414369, 9.088014, 25.974211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.350931, 8.863680, 25.917204>,  <14.245202, 8.489790, 25.822191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.350931, 8.863680, 25.917204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361101, 0.132457, -0.923072,
		-0.894282, 0.329762, -0.302519,
		0.264323, 0.934726, 0.237531,
		14.430228, 9.144097, 25.988462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.114351, 8.801907, 25.229290>,  <14.245202, 8.489790, 25.822191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.114351, 8.801907, 25.229290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.370754, 9.043936, 25.418179>,  <14.524596, 9.189154, 25.531511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.370754, 9.043936, 25.418179>,  <14.114351, 8.801907, 25.229290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.370754, 9.043936, 25.418179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541887, 0.078950, -0.836735,
		-0.543568, 0.792245, -0.277274,
		0.641008, 0.605074, 0.472222,
		14.563057, 9.225458, 25.559845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.095414, 9.385869, 24.840057>,  <14.114351, 8.801907, 25.229290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.095414, 9.385869, 24.840057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.425703, 9.421592, 25.062841>,  <14.623877, 9.443026, 25.196512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.425703, 9.421592, 25.062841>,  <14.095414, 9.385869, 24.840057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.425703, 9.421592, 25.062841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551866, 0.076429, -0.830423,
		-0.116731, 0.993067, 0.013824,
		0.825723, 0.089307, 0.556962,
		14.673420, 9.448384, 25.229931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.577213, 10.060286, 24.847090>,  <14.095414, 9.385869, 24.840057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.577213, 10.060286, 24.847090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.755360, 9.703481, 24.877983>,  <14.862247, 9.489398, 24.896519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.755360, 9.703481, 24.877983>,  <14.577213, 10.060286, 24.847090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.755360, 9.703481, 24.877983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456436, 0.151987, -0.876679,
		0.770269, 0.425695, 0.474836,
		0.445367, -0.892011, 0.077232,
		14.888969, 9.435878, 24.901152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.278841, 10.126473, 24.785868>,  <14.577213, 10.060286, 24.847090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.278841, 10.126473, 24.785868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.198177, 9.751503, 24.672329>,  <15.149779, 9.526521, 24.604206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.198177, 9.751503, 24.672329>,  <15.278841, 10.126473, 24.785868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.198177, 9.751503, 24.672329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518469, 0.143700, -0.842935,
		0.830977, -0.317150, 0.457048,
		-0.201659, -0.937425, -0.283845,
		15.137679, 9.470276, 24.587175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.823180, 9.850709, 24.321293>,  <15.278841, 10.126473, 24.785868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.823180, 9.850709, 24.321293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.518278, 9.599232, 24.259699>,  <15.335337, 9.448345, 24.222742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.518278, 9.599232, 24.259699>,  <15.823180, 9.850709, 24.321293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.518278, 9.599232, 24.259699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226719, -0.036501, -0.973276,
		0.606272, -0.776796, 0.170360,
		-0.762255, -0.628693, -0.153985,
		15.289601, 9.410624, 24.213503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.138231, 9.278491, 23.920734>,  <15.823180, 9.850709, 24.321293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.138231, 9.278491, 23.920734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.742496, 9.243220, 23.874367>,  <15.505054, 9.222058, 23.846546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.742496, 9.243220, 23.874367>,  <16.138231, 9.278491, 23.920734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.742496, 9.243220, 23.874367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100188, 0.165639, -0.981084,
		0.105706, -0.982237, -0.155039,
		-0.989337, -0.088173, -0.115917,
		15.445694, 9.216767, 23.839592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.034170, 8.838187, 23.394627>,  <16.138231, 9.278491, 23.920734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.034170, 8.838187, 23.394627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.702599, 9.061883, 23.399147>,  <15.503655, 9.196100, 23.401859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.702599, 9.061883, 23.399147>,  <16.034170, 8.838187, 23.394627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.702599, 9.061883, 23.399147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017030, -0.005035, -0.999842,
		-0.559095, -0.828990, 0.013698,
		-0.828929, 0.559241, 0.011302,
		15.453920, 9.229655, 23.402538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.747592, 8.702925, 22.820175>,  <16.034170, 8.838187, 23.394627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.747592, 8.702925, 22.820175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.539960, 9.032451, 22.911289>,  <15.415380, 9.230166, 22.965958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.539960, 9.032451, 22.911289>,  <15.747592, 8.702925, 22.820175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.539960, 9.032451, 22.911289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221192, 0.127951, -0.966800,
		-0.825609, -0.552231, 0.115805,
		-0.519079, 0.823814, 0.227787,
		15.384236, 9.279595, 22.979626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.100063, 8.684234, 22.532820>,  <15.747592, 8.702925, 22.820175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.100063, 8.684234, 22.532820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.178829, 9.073677, 22.578968>,  <15.226089, 9.307343, 22.606657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.178829, 9.073677, 22.578968>,  <15.100063, 8.684234, 22.532820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.178829, 9.073677, 22.578968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114964, 0.139790, -0.983485,
		-0.973657, 0.180399, 0.139457,
		0.196915, 0.973609, 0.115369,
		15.237904, 9.365760, 22.613579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.663010, 9.030816, 21.994877>,  <15.100063, 8.684234, 22.532820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.663010, 9.030816, 21.994877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.898395, 9.328699, 22.120811>,  <15.039625, 9.507429, 22.196373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.898395, 9.328699, 22.120811>,  <14.663010, 9.030816, 21.994877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.898395, 9.328699, 22.120811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062894, 0.430380, -0.900454,
		-0.806075, 0.510082, 0.300100,
		0.588462, 0.744708, 0.314837,
		15.074933, 9.552112, 22.215263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.267866, 9.738245, 22.028793>,  <14.663010, 9.030816, 21.994877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.267866, 9.738245, 22.028793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.655254, 9.806973, 21.956633>,  <14.887687, 9.848210, 21.913336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.655254, 9.806973, 21.956633>,  <14.267866, 9.738245, 22.028793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.655254, 9.806973, 21.956633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239963, 0.448722, -0.860852,
		-0.066962, 0.876999, 0.475804,
		0.968470, 0.171820, -0.180400,
		14.945795, 9.858520, 21.902512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.214678, 10.306293, 21.700876>,  <14.267866, 9.738245, 22.028793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.214678, 10.306293, 21.700876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.592208, 10.203424, 21.617872>,  <14.818726, 10.141704, 21.568069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.592208, 10.203424, 21.617872>,  <14.214678, 10.306293, 21.700876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.592208, 10.203424, 21.617872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055591, 0.495442, -0.866861,
		0.325739, 0.829700, 0.453314,
		0.943824, -0.257170, -0.207508,
		14.875355, 10.126273, 21.555620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.591671, 10.978041, 21.499037>,  <14.214678, 10.306293, 21.700876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.591671, 10.978041, 21.499037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.810006, 10.671363, 21.363840>,  <14.941007, 10.487356, 21.282722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.810006, 10.671363, 21.363840>,  <14.591671, 10.978041, 21.499037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.810006, 10.671363, 21.363840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148865, 0.485705, -0.861353,
		0.824561, 0.419843, 0.379250,
		0.545837, -0.766696, -0.337994,
		14.973757, 10.441354, 21.262442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.284359, 11.284672, 21.160267>,  <14.591671, 10.978041, 21.499037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.284359, 11.284672, 21.160267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.207064, 10.929222, 20.993891>,  <15.160686, 10.715952, 20.894066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.207064, 10.929222, 20.993891>,  <15.284359, 11.284672, 21.160267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.207064, 10.929222, 20.993891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061372, 0.412152, -0.909046,
		0.979231, -0.201190, -0.025107,
		-0.193238, -0.888625, -0.415939,
		15.149092, 10.662635, 20.869108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.649864, 11.293239, 20.601383>,  <15.284359, 11.284672, 21.160267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.649864, 11.293239, 20.601383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.372833, 11.015101, 20.524616>,  <15.206614, 10.848219, 20.478556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.372833, 11.015101, 20.524616>,  <15.649864, 11.293239, 20.601383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.372833, 11.015101, 20.524616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064490, 0.324680, -0.943623,
		0.718455, -0.641154, -0.269709,
		-0.692577, -0.695344, -0.191920,
		15.165060, 10.806499, 20.467041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.822556, 10.980882, 19.937140>,  <15.649864, 11.293239, 20.601383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.822556, 10.980882, 19.937140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.446527, 10.860619, 20.001474>,  <15.220909, 10.788461, 20.040075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.446527, 10.860619, 20.001474>,  <15.822556, 10.980882, 19.937140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.446527, 10.860619, 20.001474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227555, 0.201908, -0.952603,
		0.253935, -0.932114, -0.258224,
		-0.940072, -0.300660, 0.160836,
		15.164505, 10.770421, 20.049725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.642948, 10.582051, 19.326309>,  <15.822556, 10.980882, 19.937140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.642948, 10.582051, 19.326309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.300941, 10.689159, 19.503958>,  <15.095737, 10.753425, 19.610546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.300941, 10.689159, 19.503958>,  <15.642948, 10.582051, 19.326309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.300941, 10.689159, 19.503958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379199, 0.261387, -0.887629,
		-0.353768, -0.927349, -0.121952,
		-0.855018, 0.267771, 0.444121,
		15.044436, 10.769490, 19.637194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.142486, 10.092212, 19.228516>,  <15.642948, 10.582051, 19.326309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.142486, 10.092212, 19.228516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.939305, 10.431741, 19.287149>,  <14.817397, 10.635458, 19.322330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.939305, 10.431741, 19.287149>,  <15.142486, 10.092212, 19.228516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.939305, 10.431741, 19.287149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347085, -0.045940, -0.936708,
		-0.788364, -0.526679, 0.317949,
		-0.507951, 0.848822, 0.146585,
		14.786920, 10.686387, 19.331125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.430907, 9.878780, 19.044016>,  <15.142486, 10.092212, 19.228516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.430907, 9.878780, 19.044016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.502512, 10.271942, 19.026806>,  <14.545475, 10.507839, 19.016479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.502512, 10.271942, 19.026806>,  <14.430907, 9.878780, 19.044016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.502512, 10.271942, 19.026806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463499, 0.045681, -0.884919,
		-0.867826, 0.178353, 0.463754,
		0.179013, 0.982905, -0.043023,
		14.556216, 10.566813, 19.013899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.820801, 10.108350, 18.670101>,  <14.430907, 9.878780, 19.044016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.820801, 10.108350, 18.670101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.121756, 10.371460, 18.655989>,  <14.302329, 10.529325, 18.647522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.121756, 10.371460, 18.655989>,  <13.820801, 10.108350, 18.670101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.121756, 10.371460, 18.655989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150013, 0.118949, -0.981503,
		-0.641411, 0.743763, 0.188171,
		0.752388, 0.657775, -0.035279,
		14.347472, 10.568792, 18.645405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.600318, 10.585766, 18.200626>,  <13.820801, 10.108350, 18.670101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.600318, 10.585766, 18.200626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.992151, 10.664266, 18.218081>,  <14.227251, 10.711366, 18.228552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.992151, 10.664266, 18.218081>,  <13.600318, 10.585766, 18.200626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.992151, 10.664266, 18.218081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027019, 0.343586, -0.938732,
		-0.199218, 0.918387, 0.341874,
		0.979583, 0.196249, 0.043634,
		14.286026, 10.723141, 18.231171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.710528, 11.204076, 17.877638>,  <13.600318, 10.585766, 18.200626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.710528, 11.204076, 17.877638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.074550, 11.038663, 17.866352>,  <14.292962, 10.939415, 17.859581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.074550, 11.038663, 17.866352>,  <13.710528, 11.204076, 17.877638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.074550, 11.038663, 17.866352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078406, 0.238588, -0.967951,
		0.407010, 0.878673, 0.249551,
		0.910052, -0.413532, -0.028214,
		14.347566, 10.914603, 17.857887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.119998, 11.683393, 17.520699>,  <13.710528, 11.204076, 17.877638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.119998, 11.683393, 17.520699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.289874, 11.322291, 17.493355>,  <14.391800, 11.105630, 17.476948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.289874, 11.322291, 17.493355>,  <14.119998, 11.683393, 17.520699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.289874, 11.322291, 17.493355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070624, 0.108314, -0.991605,
		0.902580, 0.416297, 0.109756,
		0.424690, -0.902754, -0.068362,
		14.417281, 11.051465, 17.472847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.652780, 11.782628, 17.020390>,  <14.119998, 11.683393, 17.520699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.652780, 11.782628, 17.020390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.580164, 11.390141, 17.046488>,  <14.536594, 11.154650, 17.062147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.580164, 11.390141, 17.046488>,  <14.652780, 11.782628, 17.020390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.580164, 11.390141, 17.046488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121318, -0.088187, -0.988688,
		0.975872, -0.171570, 0.135049,
		-0.181539, -0.981217, 0.065245,
		14.525702, 11.095777, 17.066061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.184556, 11.474214, 16.588549>,  <14.652780, 11.782628, 17.020390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.184556, 11.474214, 16.588549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.912857, 11.187682, 16.652420>,  <14.749838, 11.015763, 16.690742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.912857, 11.187682, 16.652420>,  <15.184556, 11.474214, 16.588549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.912857, 11.187682, 16.652420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164665, -0.360775, -0.918002,
		0.715199, -0.597256, 0.363009,
		-0.679246, -0.716329, 0.159679,
		14.709084, 10.972783, 16.700323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.470989, 10.875908, 16.310711>,  <15.184556, 11.474214, 16.588549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.470989, 10.875908, 16.310711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.076805, 10.808680, 16.320658>,  <14.840295, 10.768342, 16.326626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.076805, 10.808680, 16.320658>,  <15.470989, 10.875908, 16.310711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.076805, 10.808680, 16.320658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062918, -0.496958, -0.865491,
		0.157822, -0.851343, 0.500308,
		-0.985461, -0.168072, 0.024866,
		14.781167, 10.758258, 16.328117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.155436, 10.100128, 16.481581>,  <15.470989, 10.875908, 16.310711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.155436, 10.100128, 16.481581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.958110, 10.323869, 16.215118>,  <14.839714, 10.458114, 16.055241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.958110, 10.323869, 16.215118>,  <15.155436, 10.100128, 16.481581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.958110, 10.323869, 16.215118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163841, -0.692371, -0.702693,
		-0.854282, -0.455793, 0.249911,
		-0.493314, 0.559353, -0.666158,
		14.810116, 10.491674, 16.015270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.373599, 9.979787, 15.743244>,  <15.155436, 10.100128, 16.481581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.373599, 9.979787, 15.743244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.025518, 10.087909, 15.908015>,  <14.816669, 10.152781, 16.006878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.025518, 10.087909, 15.908015>,  <15.373599, 9.979787, 15.743244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.025518, 10.087909, 15.908015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026788, 0.860790, -0.508254,
		-0.491966, -0.431249, -0.756302,
		-0.870202, 0.270304, 0.411927,
		14.764458, 10.169000, 16.031593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.915612, 9.828600, 16.150295>,  <15.373599, 9.979787, 15.743244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.915612, 9.828600, 16.150295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.142971, 10.129363, 16.016693>,  <16.279387, 10.309821, 15.936532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.142971, 10.129363, 16.016693>,  <15.915612, 9.828600, 16.150295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.142971, 10.129363, 16.016693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774316, -0.351635, 0.526106,
		0.278136, -0.557662, -0.782082,
		0.568397, 0.751908, -0.334004,
		16.313490, 10.354936, 15.916492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.563541, 9.568406, 15.972929>,  <15.915612, 9.828600, 16.150295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.563541, 9.568406, 15.972929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.595976, 9.959397, 16.050861>,  <16.615437, 10.193993, 16.097620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.595976, 9.959397, 16.050861>,  <16.563541, 9.568406, 15.972929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.595976, 9.959397, 16.050861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685205, -0.196627, 0.701307,
		0.723822, 0.076632, -0.685718,
		0.081088, 0.977479, 0.194832,
		16.620302, 10.252641, 16.109310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.304031, 9.640950, 16.121704>,  <16.563541, 9.568406, 15.972929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.304031, 9.640950, 16.121704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.126133, 9.962079, 16.280539>,  <17.019394, 10.154757, 16.375839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.126133, 9.962079, 16.280539>,  <17.304031, 9.640950, 16.121704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.126133, 9.962079, 16.280539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786151, 0.137485, 0.602548,
		0.429146, 0.580149, -0.692286,
		-0.444747, 0.802823, 0.397084,
		16.992708, 10.202926, 16.399664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.875553, 10.021665, 16.431074>,  <17.304031, 9.640950, 16.121704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.875553, 10.021665, 16.431074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.566132, 10.236148, 16.566185>,  <17.380478, 10.364838, 16.647251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.566132, 10.236148, 16.566185>,  <17.875553, 10.021665, 16.431074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.566132, 10.236148, 16.566185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516211, 0.223959, 0.826661,
		0.367614, 0.813833, -0.450041,
		-0.773554, 0.536208, 0.337779,
		17.334064, 10.397010, 16.667519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.181803, 10.588867, 16.658415>,  <17.875553, 10.021665, 16.431074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.181803, 10.588867, 16.658415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.853153, 10.504529, 16.870256>,  <17.655964, 10.453926, 16.997362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.853153, 10.504529, 16.870256>,  <18.181803, 10.588867, 16.658415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.853153, 10.504529, 16.870256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522276, 0.093816, 0.847600,
		-0.228398, 0.973007, 0.033038,
		-0.821622, -0.210845, 0.529606,
		17.606667, 10.441276, 17.029139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.287096, 11.007307, 17.303665>,  <18.181803, 10.588867, 16.658415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.287096, 11.007307, 17.303665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.008577, 10.734365, 17.392714>,  <17.841465, 10.570600, 17.446142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.008577, 10.734365, 17.392714>,  <18.287096, 11.007307, 17.303665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.008577, 10.734365, 17.392714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320938, -0.018560, 0.946918,
		-0.642003, 0.730785, 0.231917,
		-0.696298, -0.682356, 0.222621,
		17.799688, 10.529657, 17.459499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.850006, 11.273718, 17.801741>,  <18.287096, 11.007307, 17.303665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.850006, 11.273718, 17.801741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.823298, 10.876490, 17.840422>,  <17.807272, 10.638152, 17.863630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.823298, 10.876490, 17.840422>,  <17.850006, 11.273718, 17.801741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.823298, 10.876490, 17.840422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326162, 0.069872, 0.942728,
		-0.942953, 0.094487, 0.319237,
		-0.066770, -0.993071, 0.096704,
		17.803267, 10.578568, 17.869432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.604122, 11.189652, 18.539976>,  <17.850006, 11.273718, 17.801741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.604122, 11.189652, 18.539976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.734371, 10.824563, 18.441261>,  <17.812521, 10.605509, 18.382032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.734371, 10.824563, 18.441261>,  <17.604122, 11.189652, 18.539976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.734371, 10.824563, 18.441261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267001, -0.161623, 0.950047,
		-0.907017, -0.375249, 0.191071,
		0.325622, -0.912725, -0.246787,
		17.832058, 10.550746, 18.367226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.244877, 10.805686, 19.047533>,  <17.604122, 11.189652, 18.539976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.244877, 10.805686, 19.047533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.530901, 10.568225, 18.899876>,  <17.702515, 10.425749, 18.811281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.530901, 10.568225, 18.899876>,  <17.244877, 10.805686, 19.047533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.530901, 10.568225, 18.899876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037028, -0.495149, 0.868019,
		-0.698083, -0.634353, -0.332079,
		0.715059, -0.593652, -0.369144,
		17.745419, 10.390129, 18.789133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.027170, 10.066983, 19.137276>,  <17.244877, 10.805686, 19.047533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.027170, 10.066983, 19.137276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.423281, 10.119477, 19.118828>,  <17.660948, 10.150974, 19.107759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.423281, 10.119477, 19.118828>,  <17.027170, 10.066983, 19.137276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.423281, 10.119477, 19.118828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104045, -0.478755, 0.871762,
		0.092328, -0.868084, -0.487755,
		0.990278, 0.131236, -0.046118,
		17.720364, 10.158848, 19.104992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.208349, 9.456559, 19.474339>,  <17.027170, 10.066983, 19.137276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.208349, 9.456559, 19.474339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.547504, 9.667986, 19.490839>,  <17.750998, 9.794842, 19.500740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.547504, 9.667986, 19.490839>,  <17.208349, 9.456559, 19.474339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.547504, 9.667986, 19.490839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210834, -0.407550, 0.888511,
		0.486449, -0.744662, -0.456997,
		0.847890, 0.528566, 0.041252,
		17.801870, 9.826555, 19.503214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.748663, 9.031141, 19.728260>,  <17.208349, 9.456559, 19.474339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.748663, 9.031141, 19.728260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.887991, 9.400445, 19.793089>,  <17.971588, 9.622027, 19.831985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.887991, 9.400445, 19.793089>,  <17.748663, 9.031141, 19.728260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.887991, 9.400445, 19.793089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218157, -0.247995, 0.943878,
		0.911636, -0.293416, -0.287797,
		0.348321, 0.923258, 0.162070,
		17.992487, 9.677423, 19.841709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.395029, 9.029479, 20.101040>,  <17.748663, 9.031141, 19.728260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.395029, 9.029479, 20.101040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.242380, 9.392262, 20.172359>,  <18.150791, 9.609933, 20.215151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.242380, 9.392262, 20.172359>,  <18.395029, 9.029479, 20.101040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.242380, 9.392262, 20.172359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166128, -0.122456, 0.978471,
		0.909266, 0.403028, -0.103939,
		-0.381623, 0.906958, 0.178299,
		18.127893, 9.664350, 20.225849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.910288, 9.277389, 20.593365>,  <18.395029, 9.029479, 20.101040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.910288, 9.277389, 20.593365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.565773, 9.480017, 20.609207>,  <18.359064, 9.601593, 20.618713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.565773, 9.480017, 20.609207>,  <18.910288, 9.277389, 20.593365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.565773, 9.480017, 20.609207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052586, -0.166392, 0.984657,
		0.505387, 0.845991, 0.169950,
		-0.861289, 0.506570, 0.039605,
		18.307386, 9.631988, 20.621088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.068279, 9.764938, 21.207689>,  <18.910288, 9.277389, 20.593365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.068279, 9.764938, 21.207689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.672661, 9.775187, 21.149542>,  <18.435289, 9.781336, 21.114653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.672661, 9.775187, 21.149542>,  <19.068279, 9.764938, 21.207689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.672661, 9.775187, 21.149542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145281, 0.005336, 0.989376,
		0.026124, 0.999657, -0.001555,
		-0.989046, 0.025620, -0.145370,
		18.375948, 9.782872, 21.105930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.700445, 10.465090, 21.497688>,  <19.068279, 9.764938, 21.207689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.700445, 10.465090, 21.497688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.434273, 10.167251, 21.476624>,  <18.274569, 9.988547, 21.463985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.434273, 10.167251, 21.476624>,  <18.700445, 10.465090, 21.497688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.434273, 10.167251, 21.476624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155253, 0.069051, 0.985458,
		-0.730134, 0.663932, -0.161550,
		-0.665433, -0.744598, -0.052661,
		18.234644, 9.943871, 21.460825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.380947, 10.739349, 22.030397>,  <18.700445, 10.465090, 21.497688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.380947, 10.739349, 22.030397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.170406, 10.404222, 21.972418>,  <18.044081, 10.203145, 21.937630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.170406, 10.404222, 21.972418>,  <18.380947, 10.739349, 22.030397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.170406, 10.404222, 21.972418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179607, -0.057073, 0.982082,
		-0.831079, 0.542957, -0.120437,
		-0.526354, -0.837819, -0.144951,
		18.012501, 10.152876, 21.928932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.648403, 10.828930, 22.263092>,  <18.380947, 10.739349, 22.030397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.648403, 10.828930, 22.263092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.721733, 10.436016, 22.278643>,  <17.765730, 10.200268, 22.287973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.721733, 10.436016, 22.278643>,  <17.648403, 10.828930, 22.263092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.721733, 10.436016, 22.278643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250149, -0.008368, 0.968171,
		-0.950693, -0.187213, -0.247252,
		0.183324, -0.982284, 0.038876,
		17.776730, 10.141331, 22.290306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.043337, 10.480457, 22.536551>,  <17.648403, 10.828930, 22.263092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.043337, 10.480457, 22.536551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.355556, 10.240199, 22.605795>,  <17.542889, 10.096045, 22.647341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.355556, 10.240199, 22.605795>,  <17.043337, 10.480457, 22.536551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.355556, 10.240199, 22.605795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367366, -0.216721, 0.904475,
		-0.505751, -0.769583, -0.389818,
		0.780550, -0.600645, 0.173111,
		17.589722, 10.060005, 22.657728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.797672, 9.922142, 22.909977>,  <17.043337, 10.480457, 22.536551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.797672, 9.922142, 22.909977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.189205, 9.937217, 22.990442>,  <17.424126, 9.946261, 23.038721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.189205, 9.937217, 22.990442>,  <16.797672, 9.922142, 22.909977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.189205, 9.937217, 22.990442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194592, -0.133126, 0.971808,
		0.063406, -0.990382, -0.122974,
		0.978833, 0.037689, 0.201161,
		17.482855, 9.948524, 23.050791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.834938, 9.435811, 23.492880>,  <16.797672, 9.922142, 22.909977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.834938, 9.435811, 23.492880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.191771, 9.614754, 23.467382>,  <17.405870, 9.722119, 23.452084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.191771, 9.614754, 23.467382>,  <16.834938, 9.435811, 23.492880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.191771, 9.614754, 23.467382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061275, 0.020001, 0.997920,
		0.447702, -0.894132, -0.009569,
		0.892081, 0.447357, -0.063743,
		17.459394, 9.748960, 23.448259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.167633, 9.186817, 24.107866>,  <16.834938, 9.435811, 23.492880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.167633, 9.186817, 24.107866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.340698, 9.528643, 23.992960>,  <17.444538, 9.733738, 23.924015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.340698, 9.528643, 23.992960>,  <17.167633, 9.186817, 24.107866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.340698, 9.528643, 23.992960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105892, 0.268260, 0.957509,
		0.895315, -0.444699, 0.025575,
		0.432664, 0.854564, -0.287268,
		17.470497, 9.785011, 23.906780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.556557, 9.243003, 24.621429>,  <17.167633, 9.186817, 24.107866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.556557, 9.243003, 24.621429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.530071, 9.600167, 24.443295>,  <17.514179, 9.814466, 24.336412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.530071, 9.600167, 24.443295>,  <17.556557, 9.243003, 24.621429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.530071, 9.600167, 24.443295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022838, 0.444845, 0.895317,
		0.997544, 0.069455, -0.009064,
		-0.066216, 0.892911, -0.445338,
		17.510206, 9.868040, 24.309692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.115610, 9.615108, 24.845907>,  <17.556557, 9.243003, 24.621429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.115610, 9.615108, 24.845907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.841269, 9.886688, 24.741117>,  <17.676662, 10.049636, 24.678244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.841269, 9.886688, 24.741117>,  <18.115610, 9.615108, 24.845907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.841269, 9.886688, 24.741117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070938, 0.295895, 0.952583,
		0.724272, 0.671919, -0.154778,
		-0.685856, 0.678949, -0.261972,
		17.635511, 10.090373, 24.662525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.285120, 10.198949, 25.302971>,  <18.115610, 9.615108, 24.845907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.285120, 10.198949, 25.302971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.911146, 10.252863, 25.171684>,  <17.686762, 10.285212, 25.092913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.911146, 10.252863, 25.171684>,  <18.285120, 10.198949, 25.302971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.911146, 10.252863, 25.171684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276336, 0.303622, 0.911840,
		0.222556, 0.943211, -0.246622,
		-0.934937, 0.134785, -0.328217,
		17.630665, 10.293299, 25.073219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.096766, 10.875983, 25.630154>,  <18.285120, 10.198949, 25.302971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.096766, 10.875983, 25.630154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.757071, 10.683413, 25.543409>,  <17.553253, 10.567870, 25.491364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.757071, 10.683413, 25.543409>,  <18.096766, 10.875983, 25.630154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.757071, 10.683413, 25.543409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384539, 0.282455, 0.878834,
		-0.361840, 0.829728, -0.424998,
		-0.849236, -0.481426, -0.216859,
		17.502300, 10.538985, 25.478352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.527075, 11.390373, 25.670536>,  <18.096766, 10.875983, 25.630154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.527075, 11.390373, 25.670536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.375252, 11.022990, 25.715025>,  <17.284157, 10.802561, 25.741718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.375252, 11.022990, 25.715025>,  <17.527075, 11.390373, 25.670536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.375252, 11.022990, 25.715025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403057, 0.272371, 0.873704,
		-0.832754, 0.286793, -0.473572,
		-0.379559, -0.918458, 0.111224,
		17.261385, 10.747453, 25.748392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.099953, 11.494300, 26.177929>,  <17.527075, 11.390373, 25.670536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.099953, 11.494300, 26.177929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.043898, 11.098704, 26.158905>,  <17.010265, 10.861347, 26.147491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.043898, 11.098704, 26.158905>,  <17.099953, 11.494300, 26.177929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.043898, 11.098704, 26.158905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405066, 0.013436, 0.914189,
		-0.903484, 0.147377, -0.402489,
		-0.140138, -0.988989, -0.047558,
		17.001856, 10.802008, 26.144638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.390854, 11.349549, 26.374514>,  <17.099953, 11.494300, 26.177929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.390854, 11.349549, 26.374514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.580553, 11.000562, 26.421656>,  <16.694372, 10.791169, 26.449942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.580553, 11.000562, 26.421656>,  <16.390854, 11.349549, 26.374514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.580553, 11.000562, 26.421656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419217, -0.106072, 0.901668,
		-0.774176, -0.477020, -0.416058,
		0.474246, -0.872468, 0.117856,
		16.722826, 10.738821, 26.457012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.896375, 10.842430, 26.491539>,  <16.390854, 11.349549, 26.374514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.896375, 10.842430, 26.491539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.242857, 10.747598, 26.667486>,  <16.450747, 10.690699, 26.773054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.242857, 10.747598, 26.667486>,  <15.896375, 10.842430, 26.491539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.242857, 10.747598, 26.667486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458226, -0.025786, 0.888462,
		-0.199296, -0.971147, -0.130973,
		0.866205, -0.237082, 0.439866,
		16.502718, 10.676474, 26.799446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.681668, 10.464646, 27.095455>,  <15.896375, 10.842430, 26.491539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.681668, 10.464646, 27.095455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.062668, 10.545193, 27.186844>,  <16.291267, 10.593520, 27.241678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.062668, 10.545193, 27.186844>,  <15.681668, 10.464646, 27.095455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.062668, 10.545193, 27.186844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264767, 0.176824, 0.947962,
		0.150472, -0.963427, 0.221736,
		0.952500, 0.201350, 0.228476,
		16.348417, 10.605602, 27.255386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.848735, 10.047272, 27.620996>,  <15.681668, 10.464646, 27.095455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.848735, 10.047272, 27.620996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.117302, 10.339165, 27.672670>,  <16.278442, 10.514300, 27.703674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.117302, 10.339165, 27.672670>,  <15.848735, 10.047272, 27.620996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.117302, 10.339165, 27.672670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360495, 0.169304, 0.917267,
		0.647489, -0.662439, 0.376739,
		0.671417, 0.729733, 0.129184,
		16.318727, 10.558084, 27.711426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.105320, 9.902902, 28.292030>,  <15.848735, 10.047272, 27.620996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.105320, 9.902902, 28.292030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.209053, 10.276220, 28.192669>,  <16.271294, 10.500212, 28.133051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.209053, 10.276220, 28.192669>,  <16.105320, 9.902902, 28.292030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.209053, 10.276220, 28.192669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211014, 0.305745, 0.928436,
		0.942454, -0.188357, 0.276228,
		0.259332, 0.933296, -0.248404,
		16.286852, 10.556210, 28.118147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.684095, 10.008740, 28.700968>,  <16.105320, 9.902902, 28.292030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.684095, 10.008740, 28.700968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.531155, 10.363317, 28.596640>,  <16.439390, 10.576064, 28.534042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.531155, 10.363317, 28.596640>,  <16.684095, 10.008740, 28.700968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.531155, 10.363317, 28.596640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125645, 0.329521, 0.935751,
		0.915435, 0.325014, -0.237369,
		-0.382350, 0.886443, -0.260819,
		16.416451, 10.629251, 28.518394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.063103, 10.466960, 29.089170>,  <16.684095, 10.008740, 28.700968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.063103, 10.466960, 29.089170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.759295, 10.709288, 28.994417>,  <16.577009, 10.854684, 28.937565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.759295, 10.709288, 28.994417>,  <17.063103, 10.466960, 29.089170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.759295, 10.709288, 28.994417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037827, 0.322410, 0.945844,
		0.649383, 0.727348, -0.221961,
		-0.759520, 0.605819, -0.236881,
		16.531439, 10.891033, 28.923353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.122734, 11.209541, 29.393225>,  <17.063103, 10.466960, 29.089170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.122734, 11.209541, 29.393225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.734438, 11.157795, 29.312300>,  <16.501461, 11.126747, 29.263744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.734438, 11.157795, 29.312300>,  <17.122734, 11.209541, 29.393225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.734438, 11.157795, 29.312300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234860, 0.335804, 0.912182,
		-0.050068, 0.933006, -0.356361,
		-0.970739, -0.129366, -0.202313,
		16.443216, 11.118985, 29.251606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.845484, 11.757293, 29.772793>,  <17.122734, 11.209541, 29.393225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.845484, 11.757293, 29.772793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.547140, 11.497828, 29.712214>,  <16.368134, 11.342150, 29.675865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.547140, 11.497828, 29.712214>,  <16.845484, 11.757293, 29.772793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.547140, 11.497828, 29.712214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491024, 0.381781, 0.783032,
		-0.450102, 0.658395, -0.603262,
		-0.745858, -0.648660, -0.151448,
		16.323383, 11.303230, 29.666779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.460903, 12.194637, 30.361509>,  <16.845484, 11.757293, 29.772793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.460903, 12.194637, 30.361509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.090658, 12.341369, 30.398769>,  <15.868511, 12.429408, 30.421125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.090658, 12.341369, 30.398769>,  <16.460903, 12.194637, 30.361509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.090658, 12.341369, 30.398769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109416, 0.494979, -0.861988,
		-0.362311, -0.787675, -0.498296,
		-0.925613, 0.366829, 0.093152,
		15.812974, 12.451418, 30.426716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.944241, 12.105734, 29.803661>,  <16.460903, 12.194637, 30.361509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.944241, 12.105734, 29.803661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.891652, 12.442601, 30.012838>,  <15.860099, 12.644721, 30.138344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.891652, 12.442601, 30.012838>,  <15.944241, 12.105734, 29.803661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.891652, 12.442601, 30.012838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025727, 0.530242, -0.847456,
		-0.990986, -0.097961, -0.091378,
		-0.131470, 0.842168, 0.522943,
		15.852211, 12.695251, 30.169722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.381429, 12.496096, 29.496574>,  <15.944241, 12.105734, 29.803661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.381429, 12.496096, 29.496574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.604006, 12.763284, 29.694235>,  <15.737553, 12.923596, 29.812832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.604006, 12.763284, 29.694235>,  <15.381429, 12.496096, 29.496574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.604006, 12.763284, 29.694235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070619, 0.630597, -0.772891,
		-0.827879, 0.395173, 0.398063,
		0.556443, 0.667971, 0.494151,
		15.770939, 12.963675, 29.842480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.113677, 13.154447, 29.272221>,  <15.381429, 12.496096, 29.496574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.113677, 13.154447, 29.272221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.468964, 13.222773, 29.442818>,  <15.682136, 13.263768, 29.545176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.468964, 13.222773, 29.442818>,  <15.113677, 13.154447, 29.272221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.468964, 13.222773, 29.442818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190910, 0.707143, -0.680810,
		-0.417882, 0.686128, 0.595485,
		0.888216, 0.170814, 0.426491,
		15.735429, 13.274017, 29.570765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.147426, 13.843616, 29.339115>,  <15.113677, 13.154447, 29.272221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.147426, 13.843616, 29.339115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.522662, 13.709648, 29.374475>,  <15.747804, 13.629268, 29.395691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.522662, 13.709648, 29.374475>,  <15.147426, 13.843616, 29.339115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.522662, 13.709648, 29.374475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303634, 0.672245, -0.675198,
		0.166710, 0.660239, 0.732320,
		0.938091, -0.334919, 0.088401,
		15.804090, 13.609173, 29.400995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.604820, 14.447767, 29.262554>,  <15.147426, 13.843616, 29.339115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.604820, 14.447767, 29.262554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.835181, 14.133014, 29.173876>,  <15.973398, 13.944161, 29.120668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.835181, 14.133014, 29.173876>,  <15.604820, 14.447767, 29.262554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.835181, 14.133014, 29.173876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325589, 0.469516, -0.820699,
		0.749885, 0.400461, 0.526596,
		0.575903, -0.786883, -0.221698,
		16.007952, 13.896949, 29.107367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.326271, 14.728444, 29.149841>,  <15.604820, 14.447767, 29.262554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.326271, 14.728444, 29.149841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.307693, 14.378281, 28.957382>,  <16.296547, 14.168182, 28.841908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.307693, 14.378281, 28.957382>,  <16.326271, 14.728444, 29.149841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.307693, 14.378281, 28.957382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348352, 0.437235, -0.829142,
		0.936213, -0.206118, 0.284643,
		-0.046445, -0.875409, -0.481146,
		16.293760, 14.115658, 28.813038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.792019, 14.809022, 28.608864>,  <16.326271, 14.728444, 29.149841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.792019, 14.809022, 28.608864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.605087, 14.472049, 28.501600>,  <16.492928, 14.269865, 28.437243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.605087, 14.472049, 28.501600>,  <16.792019, 14.809022, 28.608864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.605087, 14.472049, 28.501600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391299, 0.074896, -0.917211,
		0.792773, -0.533570, 0.294642,
		-0.467328, -0.842434, -0.268161,
		16.464890, 14.219318, 28.421152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.212795, 14.207177, 28.313932>,  <16.792019, 14.809022, 28.608864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.212795, 14.207177, 28.313932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.852757, 14.122587, 28.161564>,  <16.636732, 14.071833, 28.070143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.852757, 14.122587, 28.161564>,  <17.212795, 14.207177, 28.313932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.852757, 14.122587, 28.161564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382947, 0.032961, -0.923182,
		0.207787, -0.976827, 0.051316,
		-0.900098, -0.211477, -0.380922,
		16.582727, 14.059145, 28.047287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.250671, 13.638550, 27.794888>,  <17.212795, 14.207177, 28.313932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.250671, 13.638550, 27.794888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.890030, 13.772407, 27.685249>,  <16.673645, 13.852720, 27.619467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.890030, 13.772407, 27.685249>,  <17.250671, 13.638550, 27.794888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.890030, 13.772407, 27.685249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244542, -0.128360, -0.961105,
		-0.356809, -0.933562, 0.033896,
		-0.901602, 0.334642, -0.274095,
		16.619549, 13.872799, 27.603022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.974596, 13.183985, 27.256332>,  <17.250671, 13.638550, 27.794888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.974596, 13.183985, 27.256332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.772146, 13.528112, 27.232038>,  <16.650677, 13.734589, 27.217463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.772146, 13.528112, 27.232038>,  <16.974596, 13.183985, 27.256332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.772146, 13.528112, 27.232038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012940, -0.062836, -0.997940,
		-0.862363, -0.505868, 0.020670,
		-0.506124, 0.860319, -0.060733,
		16.620308, 13.786208, 27.213818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.488802, 13.000545, 26.849854>,  <16.974596, 13.183985, 27.256332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.488802, 13.000545, 26.849854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.511602, 13.398006, 26.811069>,  <16.525282, 13.636483, 26.787798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.511602, 13.398006, 26.811069>,  <16.488802, 13.000545, 26.849854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.511602, 13.398006, 26.811069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041870, -0.094655, -0.994629,
		-0.997496, 0.060753, 0.036209,
		0.057000, 0.993654, -0.096962,
		16.528702, 13.696103, 26.781981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.919792, 13.198114, 26.536608>,  <16.488802, 13.000545, 26.849854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.919792, 13.198114, 26.536608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.171404, 13.500636, 26.464689>,  <16.322371, 13.682149, 26.421539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.171404, 13.500636, 26.464689>,  <15.919792, 13.198114, 26.536608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.171404, 13.500636, 26.464689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192825, -0.072259, -0.978569,
		-0.753088, 0.650218, 0.100381,
		0.629029, 0.756304, -0.179795,
		16.360113, 13.727528, 26.410751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.647063, 13.659197, 25.937260>,  <15.919792, 13.198114, 26.536608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.647063, 13.659197, 25.937260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.046337, 13.651512, 25.960094>,  <16.285902, 13.646901, 25.973795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.046337, 13.651512, 25.960094>,  <15.647063, 13.659197, 25.937260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.046337, 13.651512, 25.960094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055788, -0.062497, -0.996485,
		0.022713, 0.997860, -0.061312,
		0.998184, -0.019212, 0.057088,
		16.345793, 13.645748, 25.977221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.902300, 14.128081, 25.425467>,  <15.647063, 13.659197, 25.937260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.902300, 14.128081, 25.425467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.171507, 13.845804, 25.514051>,  <16.333031, 13.676438, 25.567204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.171507, 13.845804, 25.514051>,  <15.902300, 14.128081, 25.425467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.171507, 13.845804, 25.514051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272003, -0.042293, -0.961366,
		0.687795, 0.707255, 0.163486,
		0.673017, -0.705692, 0.221465,
		16.373411, 13.634096, 25.580490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.556179, 14.319232, 25.065344>,  <15.902300, 14.128081, 25.425467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.556179, 14.319232, 25.065344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.562067, 13.923379, 25.122492>,  <16.565599, 13.685867, 25.156780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.562067, 13.923379, 25.122492>,  <16.556179, 14.319232, 25.065344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.562067, 13.923379, 25.122492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363065, -0.127845, -0.922952,
		0.931648, 0.065456, 0.357419,
		0.014719, -0.989632, 0.142871,
		16.566483, 13.626490, 25.165354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.955105, 14.133506, 24.482393>,  <16.556179, 14.319232, 25.065344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.955105, 14.133506, 24.482393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.829575, 13.776442, 24.611805>,  <16.754257, 13.562202, 24.689451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.829575, 13.776442, 24.611805>,  <16.955105, 14.133506, 24.482393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.829575, 13.776442, 24.611805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164965, -0.386821, -0.907280,
		0.935041, -0.231355, 0.268651,
		-0.313824, -0.892661, 0.323528,
		16.735428, 13.508643, 24.708862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.543266, 13.682912, 24.355333>,  <16.955105, 14.133506, 24.482393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.543266, 13.682912, 24.355333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.210909, 13.461970, 24.382235>,  <17.011496, 13.329405, 24.398375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.210909, 13.461970, 24.382235>,  <17.543266, 13.682912, 24.355333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.210909, 13.461970, 24.382235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241013, -0.466189, -0.851223,
		0.501529, -0.691066, 0.520478,
		-0.830892, -0.552355, 0.067251,
		16.961641, 13.296264, 24.402411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.779684, 13.049731, 24.119167>,  <17.543266, 13.682912, 24.355333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.779684, 13.049731, 24.119167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.380733, 13.034971, 24.094263>,  <17.141363, 13.026115, 24.079321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.380733, 13.034971, 24.094263>,  <17.779684, 13.049731, 24.119167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.380733, 13.034971, 24.094263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071607, -0.628015, -0.774899,
		-0.010505, -0.777325, 0.629011,
		-0.997378, -0.036901, -0.062260,
		17.081520, 13.023901, 24.075584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.594444, 12.310254, 24.030773>,  <17.779684, 13.049731, 24.119167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.594444, 12.310254, 24.030773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.296375, 12.543247, 23.900892>,  <17.117535, 12.683043, 23.822964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.296375, 12.543247, 23.900892>,  <17.594444, 12.310254, 24.030773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.296375, 12.543247, 23.900892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049406, -0.437346, -0.897935,
		-0.665039, -0.685159, 0.297120,
		-0.745173, 0.582482, -0.324703,
		17.072823, 12.717992, 23.803482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.242983, 11.843596, 23.719336>,  <17.594444, 12.310254, 24.030773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.242983, 11.843596, 23.719336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.115318, 12.196583, 23.581127>,  <17.038719, 12.408376, 23.498201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.115318, 12.196583, 23.581127>,  <17.242983, 11.843596, 23.719336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.115318, 12.196583, 23.581127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001864, -0.364004, -0.931396,
		-0.947699, -0.297909, 0.114530,
		-0.319160, 0.882469, -0.345521,
		17.019569, 12.461324, 23.477470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.867212, 11.631791, 23.193146>,  <17.242983, 11.843596, 23.719336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.867212, 11.631791, 23.193146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.950172, 12.006652, 23.080910>,  <16.999949, 12.231568, 23.013569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.950172, 12.006652, 23.080910>,  <16.867212, 11.631791, 23.193146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.950172, 12.006652, 23.080910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028377, -0.292468, -0.955854,
		-0.977844, 0.190283, -0.087251,
		0.207401, 0.937153, -0.280589,
		17.012392, 12.287798, 22.996733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.594112, 11.691221, 22.591505>,  <16.867212, 11.631791, 23.193146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.594112, 11.691221, 22.591505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.850843, 11.997725, 22.603527>,  <17.004883, 12.181626, 22.610741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.850843, 11.997725, 22.603527>,  <16.594112, 11.691221, 22.591505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.850843, 11.997725, 22.603527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118934, -0.060750, -0.991042,
		-0.757568, 0.639655, -0.130125,
		0.641830, 0.766258, 0.030055,
		17.043392, 12.227602, 22.612543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.506544, 12.025126, 21.918207>,  <16.594112, 11.691221, 22.591505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.506544, 12.025126, 21.918207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.860289, 12.165216, 22.041653>,  <17.072536, 12.249270, 22.115721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.860289, 12.165216, 22.041653>,  <16.506544, 12.025126, 21.918207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.860289, 12.165216, 22.041653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360535, -0.092520, -0.928146,
		-0.296508, 0.932085, -0.208090,
		0.884363, 0.350226, 0.308616,
		17.125597, 12.270285, 22.134237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.742517, 12.629050, 21.477468>,  <16.506544, 12.025126, 21.918207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.742517, 12.629050, 21.477468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.065359, 12.449376, 21.630733>,  <17.259064, 12.341572, 21.722692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.065359, 12.449376, 21.630733>,  <16.742517, 12.629050, 21.477468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.065359, 12.449376, 21.630733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422607, -0.013664, -0.906210,
		0.412293, 0.893333, 0.178801,
		0.807105, -0.449186, 0.383163,
		17.307491, 12.314620, 21.745682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.358452, 13.079103, 21.249781>,  <16.742517, 12.629050, 21.477468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.358452, 13.079103, 21.249781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.515654, 12.722122, 21.338398>,  <17.609974, 12.507935, 21.391569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.515654, 12.722122, 21.338398>,  <17.358452, 13.079103, 21.249781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.515654, 12.722122, 21.338398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624185, 0.081994, -0.776962,
		0.675234, 0.443632, 0.589278,
		0.393003, -0.892450, 0.221543,
		17.633554, 12.454387, 21.404861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.042738, 13.234883, 21.022797>,  <17.358452, 13.079103, 21.249781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.042738, 13.234883, 21.022797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.038992, 12.836401, 21.057404>,  <18.036743, 12.597311, 21.078167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.038992, 12.836401, 21.057404>,  <18.042738, 13.234883, 21.022797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.038992, 12.836401, 21.057404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755557, -0.063725, -0.651976,
		0.655016, 0.059260, 0.753288,
		-0.009367, -0.996207, 0.086515,
		18.036182, 12.537539, 21.083359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.709173, 12.992532, 21.218102>,  <18.042738, 13.234883, 21.022797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.709173, 12.992532, 21.218102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.545597, 12.682552, 21.025345>,  <18.447451, 12.496565, 20.909691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.545597, 12.682552, 21.025345>,  <18.709173, 12.992532, 21.218102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.545597, 12.682552, 21.025345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732485, 0.036204, -0.679820,
		0.544273, -0.630985, 0.552833,
		-0.408942, -0.774950, -0.481892,
		18.422915, 12.450068, 20.880777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.266310, 12.604099, 21.021076>,  <18.709173, 12.992532, 21.218102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.266310, 12.604099, 21.021076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.968990, 12.483429, 20.782246>,  <18.790600, 12.411027, 20.638947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.968990, 12.483429, 20.782246>,  <19.266310, 12.604099, 21.021076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.968990, 12.483429, 20.782246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567368, 0.188563, -0.801584,
		0.354406, -0.934577, 0.031004,
		-0.743297, -0.301677, -0.597077,
		18.746002, 12.392926, 20.603123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.645670, 12.271716, 20.486858>,  <19.266310, 12.604099, 21.021076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.645670, 12.271716, 20.486858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.284595, 12.319087, 20.321386>,  <19.067951, 12.347509, 20.222103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.284595, 12.319087, 20.321386>,  <19.645670, 12.271716, 20.486858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.284595, 12.319087, 20.321386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430256, 0.261935, -0.863869,
		0.006050, -0.957792, -0.287400,
		-0.902687, 0.118429, -0.413680,
		19.013790, 12.354615, 20.197283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.679123, 11.950916, 19.879810>,  <19.645670, 12.271716, 20.486858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.679123, 11.950916, 19.879810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.378016, 12.211105, 19.839357>,  <19.197351, 12.367219, 19.815086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.378016, 12.211105, 19.839357>,  <19.679123, 11.950916, 19.879810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.378016, 12.211105, 19.839357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330007, 0.239961, -0.912970,
		-0.569593, -0.720628, -0.395295,
		-0.752767, 0.650472, -0.101132,
		19.152185, 12.406247, 19.809017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.573086, 11.910978, 19.228260>,  <19.679123, 11.950916, 19.879810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.573086, 11.910978, 19.228260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.391907, 12.249813, 19.339457>,  <19.283199, 12.453115, 19.406176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.391907, 12.249813, 19.339457>,  <19.573086, 11.910978, 19.228260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.391907, 12.249813, 19.339457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297223, 0.437452, -0.848702,
		-0.840534, -0.301792, -0.449917,
		-0.452948, 0.847088, 0.277994,
		19.256021, 12.503940, 19.422855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.272184, 12.168158, 18.642111>,  <19.573086, 11.910978, 19.228260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.272184, 12.168158, 18.642111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.305262, 12.492563, 18.873772>,  <19.325108, 12.687206, 19.012768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.305262, 12.492563, 18.873772>,  <19.272184, 12.168158, 18.642111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.305262, 12.492563, 18.873772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258437, 0.543812, -0.798423,
		-0.962482, 0.215698, -0.164627,
		0.082692, 0.811013, 0.579154,
		19.330069, 12.735868, 19.047518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.990551, 12.686184, 18.243719>,  <19.272184, 12.168158, 18.642111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.990551, 12.686184, 18.243719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.180363, 12.899047, 18.524185>,  <19.294250, 13.026765, 18.692465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.180363, 12.899047, 18.524185>,  <18.990551, 12.686184, 18.243719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.180363, 12.899047, 18.524185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229701, 0.694098, -0.682251,
		-0.849740, 0.484807, 0.207134,
		0.474531, 0.532157, 0.701163,
		19.322721, 13.058694, 18.734533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.793531, 13.454288, 18.096588>,  <18.990551, 12.686184, 18.243719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.793531, 13.454288, 18.096588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.134329, 13.451406, 18.305990>,  <19.338806, 13.449678, 18.431631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.134329, 13.451406, 18.305990>,  <18.793531, 13.454288, 18.096588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.134329, 13.451406, 18.305990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375969, 0.704280, -0.602193,
		-0.364357, 0.709885, 0.602750,
		0.851993, -0.007202, 0.523504,
		19.389927, 13.449246, 18.463041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.843052, 14.087247, 18.217999>,  <18.793531, 13.454288, 18.096588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.843052, 14.087247, 18.217999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.197969, 13.905533, 18.249836>,  <19.410919, 13.796504, 18.268938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.197969, 13.905533, 18.249836>,  <18.843052, 14.087247, 18.217999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.197969, 13.905533, 18.249836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407231, 0.690685, -0.597594,
		0.216503, 0.562654, 0.797839,
		0.887294, -0.454285, 0.079595,
		19.464157, 13.769247, 18.273714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.287127, 14.614500, 18.245991>,  <18.843052, 14.087247, 18.217999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.287127, 14.614500, 18.245991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.517868, 14.295094, 18.177153>,  <19.656313, 14.103451, 18.135851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.517868, 14.295094, 18.177153>,  <19.287127, 14.614500, 18.245991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.517868, 14.295094, 18.177153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555624, 0.538005, -0.633903,
		0.598768, 0.270049, 0.754023,
		0.576853, -0.798514, -0.172094,
		19.690924, 14.055540, 18.125525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.848145, 14.939094, 18.317221>,  <19.287127, 14.614500, 18.245991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.848145, 14.939094, 18.317221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.920109, 14.606540, 18.106913>,  <19.963287, 14.407007, 17.980728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.920109, 14.606540, 18.106913>,  <19.848145, 14.939094, 18.317221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.920109, 14.606540, 18.106913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608681, 0.513966, -0.604438,
		0.772748, -0.211280, 0.598516,
		0.179911, -0.831384, -0.525769,
		19.974083, 14.357124, 17.949183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.426794, 15.148736, 17.995962>,  <19.848145, 14.939094, 18.317221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.426794, 15.148736, 17.995962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.385916, 14.816804, 17.776531>,  <20.361389, 14.617644, 17.644873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.385916, 14.816804, 17.776531>,  <20.426794, 15.148736, 17.995962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.385916, 14.816804, 17.776531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552106, 0.411417, -0.725199,
		0.827487, -0.376985, 0.416110,
		-0.102194, -0.829830, -0.548578,
		20.355257, 14.567855, 17.611958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.117670, 14.970697, 17.764324>,  <20.426794, 15.148736, 17.995962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.117670, 14.970697, 17.764324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.837133, 14.796249, 17.538786>,  <20.668812, 14.691581, 17.403463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.837133, 14.796249, 17.538786>,  <21.117670, 14.970697, 17.764324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.837133, 14.796249, 17.538786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413524, 0.395368, -0.820172,
		0.580619, -0.808383, -0.096942,
		-0.701341, -0.436120, -0.563844,
		20.626730, 14.665414, 17.369633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.500410, 14.890865, 17.174660>,  <21.117670, 14.970697, 17.764324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.500410, 14.890865, 17.174660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.114195, 14.864437, 17.073965>,  <20.882465, 14.848580, 17.013548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.114195, 14.864437, 17.073965>,  <21.500410, 14.890865, 17.174660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.114195, 14.864437, 17.073965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180823, 0.525372, -0.831437,
		0.187188, -0.848304, -0.495319,
		-0.965538, -0.066070, -0.251737,
		20.824533, 14.844616, 16.998444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.456463, 14.713486, 16.475042>,  <21.500410, 14.890865, 17.174660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.456463, 14.713486, 16.475042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.124374, 14.917299, 16.565474>,  <20.925121, 15.039587, 16.619732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.124374, 14.917299, 16.565474>,  <21.456463, 14.713486, 16.475042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.124374, 14.917299, 16.565474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107006, 0.543701, -0.832430,
		-0.547070, -0.666907, -0.505914,
		-0.830219, 0.509534, 0.226079,
		20.875309, 15.070159, 16.633297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.948048, 14.839112, 15.878527>,  <21.456463, 14.713486, 16.475042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.948048, 14.839112, 15.878527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.933565, 15.123383, 16.159561>,  <20.924875, 15.293944, 16.328182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.933565, 15.123383, 16.159561>,  <20.948048, 14.839112, 15.878527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.933565, 15.123383, 16.159561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426977, 0.646648, -0.632090,
		-0.903538, 0.277104, -0.326853,
		-0.036204, 0.710676, 0.702587,
		20.922705, 15.336585, 16.370337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.565777, 15.376683, 15.642844>,  <20.948048, 14.839112, 15.878527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.565777, 15.376683, 15.642844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.819904, 15.534669, 15.908286>,  <20.972382, 15.629460, 16.067551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.819904, 15.534669, 15.908286>,  <20.565777, 15.376683, 15.642844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.819904, 15.534669, 15.908286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298506, 0.666923, -0.682721,
		-0.712224, 0.631836, 0.305809,
		0.635319, 0.394965, 0.663605,
		21.010500, 15.653158, 16.107368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.443745, 16.118019, 15.582075>,  <20.565777, 15.376683, 15.642844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.443745, 16.118019, 15.582075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.820021, 16.084427, 15.713558>,  <21.045786, 16.064272, 15.792448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.820021, 16.084427, 15.713558>,  <20.443745, 16.118019, 15.582075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.820021, 16.084427, 15.713558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282196, 0.731509, -0.620693,
		-0.188327, 0.676640, 0.711823,
		0.940690, -0.083980, 0.328708,
		21.102228, 16.059233, 15.812171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.514175, 16.658884, 15.845194>,  <20.443745, 16.118019, 15.582075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.514175, 16.658884, 15.845194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.895634, 16.551701, 15.790408>,  <21.124508, 16.487391, 15.757537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.895634, 16.551701, 15.790408>,  <20.514175, 16.658884, 15.845194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.895634, 16.551701, 15.790408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211350, 0.920362, -0.329036,
		0.214226, 0.284836, 0.934332,
		0.953645, -0.267959, -0.136965,
		21.181726, 16.471313, 15.749318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.897398, 17.154551, 16.214783>,  <20.514175, 16.658884, 15.845194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.897398, 17.154551, 16.214783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.067705, 17.002296, 15.886433>,  <21.169889, 16.910944, 15.689423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.067705, 17.002296, 15.886433>,  <20.897398, 17.154551, 16.214783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.067705, 17.002296, 15.886433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145156, 0.924196, -0.353258,
		0.893113, 0.031251, 0.448747,
		0.425770, -0.380637, -0.820875,
		21.195436, 16.888105, 15.640170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.180092, 17.689926, 16.175413>,  <20.897398, 17.154551, 16.214783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.180092, 17.689926, 16.175413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.239605, 17.513138, 15.821571>,  <21.275312, 17.407064, 15.609266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.239605, 17.513138, 15.821571>,  <21.180092, 17.689926, 16.175413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.239605, 17.513138, 15.821571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441247, 0.830240, -0.340593,
		0.884966, -0.339655, 0.318543,
		0.148783, -0.441969, -0.884605,
		21.284241, 17.380547, 15.556190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.830494, 17.828043, 15.962577>,  <21.180092, 17.689926, 16.175413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.830494, 17.828043, 15.962577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.676464, 17.731810, 15.606186>,  <21.584047, 17.674070, 15.392351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.676464, 17.731810, 15.606186>,  <21.830494, 17.828043, 15.962577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.676464, 17.731810, 15.606186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468899, 0.780528, -0.413413,
		0.794894, -0.576971, -0.187747,
		-0.385069, -0.240585, -0.890977,
		21.560942, 17.659636, 15.338893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.362356, 17.736685, 15.496773>,  <21.830494, 17.828043, 15.962577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.362356, 17.736685, 15.496773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.056479, 17.826653, 15.255225>,  <21.872952, 17.880632, 15.110296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.056479, 17.826653, 15.255225>,  <22.362356, 17.736685, 15.496773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.056479, 17.826653, 15.255225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549023, 0.718024, -0.427803,
		0.337371, -0.658675, -0.672553,
		-0.764693, 0.224919, -0.603868,
		21.827070, 17.894129, 15.074064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.691530, 17.796650, 14.837736>,  <22.362356, 17.736685, 15.496773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.691530, 17.796650, 14.837736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.335384, 17.976063, 14.806568>,  <22.121696, 18.083712, 14.787868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.335384, 17.976063, 14.806568>,  <22.691530, 17.796650, 14.837736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.335384, 17.976063, 14.806568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444627, 0.819994, -0.360441,
		-0.097776, -0.355568, -0.929522,
		-0.890363, 0.448533, -0.077920,
		22.068275, 18.110622, 14.783192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.622505, 18.010588, 14.092268>,  <22.691530, 17.796650, 14.837736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.622505, 18.010588, 14.092268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.387003, 18.254715, 14.304259>,  <22.245701, 18.401192, 14.431454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.387003, 18.254715, 14.304259>,  <22.622505, 18.010588, 14.092268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.387003, 18.254715, 14.304259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390297, 0.788813, -0.474808,
		-0.707838, -0.072698, -0.702624,
		-0.588757, 0.610319, 0.529978,
		22.210377, 18.437811, 14.463253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.266294, 18.328035, 13.606379>,  <22.622505, 18.010588, 14.092268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.266294, 18.328035, 13.606379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.230333, 18.579018, 13.915756>,  <22.208757, 18.729607, 14.101382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.230333, 18.579018, 13.915756>,  <22.266294, 18.328035, 13.606379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.230333, 18.579018, 13.915756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049827, 0.778449, -0.625727,
		-0.994704, -0.017716, -0.101248,
		-0.089901, 0.627458, 0.773443,
		22.203363, 18.767256, 14.147789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.790369, 18.791405, 13.367917>,  <22.266294, 18.328035, 13.606379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.790369, 18.791405, 13.367917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.942135, 19.000454, 13.673310>,  <22.033194, 19.125883, 13.856546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.942135, 19.000454, 13.673310>,  <21.790369, 18.791405, 13.367917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.942135, 19.000454, 13.673310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047072, 0.835021, -0.548201,
		-0.924029, 0.172057, 0.341420,
		0.379414, 0.522625, 0.763484,
		22.055960, 19.157242, 13.902355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.427074, 19.445993, 13.315628>,  <21.790369, 18.791405, 13.367917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.427074, 19.445993, 13.315628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.735643, 19.527563, 13.556733>,  <21.920784, 19.576504, 13.701396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.735643, 19.527563, 13.556733>,  <21.427074, 19.445993, 13.315628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.735643, 19.527563, 13.556733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121376, 0.882711, -0.453970,
		-0.624641, 0.423364, 0.656191,
		0.771422, 0.203922, 0.602764,
		21.967070, 19.588739, 13.737562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.272211, 20.142490, 13.501807>,  <21.427074, 19.445993, 13.315628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.272211, 20.142490, 13.501807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.655396, 20.031225, 13.529911>,  <21.885305, 19.964466, 13.546773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.655396, 20.031225, 13.529911>,  <21.272211, 20.142490, 13.501807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.655396, 20.031225, 13.529911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258631, 0.731274, -0.631149,
		0.124184, 0.622787, 0.772473,
		0.957961, -0.278164, 0.070260,
		21.942783, 19.947777, 13.550989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.666084, 20.648897, 13.637444>,  <21.272211, 20.142490, 13.501807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.666084, 20.648897, 13.637444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.938848, 20.406252, 13.473971>,  <22.102507, 20.260666, 13.375888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.938848, 20.406252, 13.473971>,  <21.666084, 20.648897, 13.637444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.938848, 20.406252, 13.473971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392739, 0.775025, -0.495069,
		0.617053, 0.177088, 0.766737,
		0.681911, -0.606611, -0.408682,
		22.143421, 20.224268, 13.351367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.298845, 21.077082, 13.682898>,  <21.666084, 20.648897, 13.637444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.298845, 21.077082, 13.682898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.364204, 20.793465, 13.408508>,  <22.403419, 20.623295, 13.243875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.364204, 20.793465, 13.408508>,  <22.298845, 21.077082, 13.682898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.364204, 20.793465, 13.408508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501902, 0.658358, -0.560945,
		0.849350, -0.252634, 0.463444,
		0.163398, -0.709042, -0.685974,
		22.413223, 20.580751, 13.202716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.969803, 21.098234, 13.430208>,  <22.298845, 21.077082, 13.682898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.969803, 21.098234, 13.430208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.778728, 20.919285, 13.127771>,  <22.664083, 20.811914, 12.946309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.778728, 20.919285, 13.127771>,  <22.969803, 21.098234, 13.430208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.778728, 20.919285, 13.127771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431285, 0.630374, -0.645463,
		0.765383, -0.634418, -0.108175,
		-0.477684, -0.447373, -0.756093,
		22.635424, 20.785072, 12.900944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.404390, 21.231529, 12.856812>,  <22.969803, 21.098234, 13.430208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.404390, 21.231529, 12.856812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.067329, 21.105627, 12.682058>,  <22.865093, 21.030085, 12.577207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.067329, 21.105627, 12.682058>,  <23.404390, 21.231529, 12.856812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.067329, 21.105627, 12.682058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148029, 0.644679, -0.749985,
		0.517711, -0.696647, -0.496646,
		-0.842652, -0.314757, -0.436881,
		22.814533, 21.011200, 12.550994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.573509, 21.082029, 12.205136>,  <23.404390, 21.231529, 12.856812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.573509, 21.082029, 12.205136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.177986, 21.139477, 12.188961>,  <22.940672, 21.173944, 12.179256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.177986, 21.139477, 12.188961>,  <23.573509, 21.082029, 12.205136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.177986, 21.139477, 12.188961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110525, 0.523007, -0.845132,
		-0.100228, -0.840141, -0.533027,
		-0.988807, 0.143618, -0.040437,
		22.881344, 21.182562, 12.176830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.393929, 20.894005, 11.530747>,  <23.573509, 21.082029, 12.205136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.393929, 20.894005, 11.530747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.110416, 21.137117, 11.673985>,  <22.940310, 21.282986, 11.759928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.110416, 21.137117, 11.673985>,  <23.393929, 20.894005, 11.530747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.110416, 21.137117, 11.673985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051345, 0.550728, -0.833104,
		-0.703559, -0.572101, -0.421552,
		-0.708780, 0.607782, 0.358095,
		22.897783, 21.319452, 11.781414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.872570, 20.980659, 10.991424>,  <23.393929, 20.894005, 11.530747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.872570, 20.980659, 10.991424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.825199, 21.305691, 11.219701>,  <22.796776, 21.500710, 11.356668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.825199, 21.305691, 11.219701>,  <22.872570, 20.980659, 10.991424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.825199, 21.305691, 11.219701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238161, 0.534717, -0.810776,
		-0.963978, -0.231937, 0.130198,
		-0.118430, 0.812578, 0.570694,
		22.789671, 21.549463, 11.390909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.206173, 21.255167, 10.806833>,  <22.872570, 20.980659, 10.991424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.206173, 21.255167, 10.806833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.403185, 21.551584, 10.989380>,  <22.521391, 21.729435, 11.098907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.403185, 21.551584, 10.989380>,  <22.206173, 21.255167, 10.806833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.403185, 21.551584, 10.989380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231654, 0.617093, -0.752019,
		-0.838899, 0.264671, 0.475602,
		0.492528, 0.741043, 0.456367,
		22.550943, 21.773897, 11.126290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.793194, 21.823395, 10.628372>,  <22.206173, 21.255167, 10.806833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.793194, 21.823395, 10.628372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.149254, 21.968184, 10.739088>,  <22.362890, 22.055056, 10.805517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.149254, 21.968184, 10.739088>,  <21.793194, 21.823395, 10.628372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.149254, 21.968184, 10.739088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104921, 0.753930, -0.648523,
		-0.443426, 0.548241, 0.709088,
		0.890149, 0.361970, 0.276790,
		22.416298, 22.076775, 10.822125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.710463, 22.505003, 10.801497>,  <21.793194, 21.823395, 10.628372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.710463, 22.505003, 10.801497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.099684, 22.495537, 10.709751>,  <22.333216, 22.489857, 10.654704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.099684, 22.495537, 10.709751>,  <21.710463, 22.505003, 10.801497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.099684, 22.495537, 10.709751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151123, 0.685840, -0.711888,
		0.174153, 0.727367, 0.663783,
		0.973053, -0.023665, -0.229363,
		22.391600, 22.488438, 10.640943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.846088, 23.188969, 10.676870>,  <21.710463, 22.505003, 10.801497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.846088, 23.188969, 10.676870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.142996, 22.988783, 10.498624>,  <22.321140, 22.868671, 10.391676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.142996, 22.988783, 10.498624>,  <21.846088, 23.188969, 10.676870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.142996, 22.988783, 10.498624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198305, 0.471159, -0.859468,
		0.640088, 0.726324, 0.250483,
		0.742269, -0.500463, -0.445617,
		22.365677, 22.838644, 10.364939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.353060, 23.708433, 10.434167>,  <21.846088, 23.188969, 10.676870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.353060, 23.708433, 10.434167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.386745, 23.358145, 10.243999>,  <22.406958, 23.147972, 10.129899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.386745, 23.358145, 10.243999>,  <22.353060, 23.708433, 10.434167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.386745, 23.358145, 10.243999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061150, 0.471673, -0.879651,
		0.994569, 0.103152, -0.013828,
		0.084215, -0.875719, -0.475419,
		22.412010, 23.095428, 10.101374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.631258, 23.933683, 9.792717>,  <22.353060, 23.708433, 10.434167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.631258, 23.933683, 9.792717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.525492, 23.555874, 9.714784>,  <22.462032, 23.329187, 9.668024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.525492, 23.555874, 9.714784>,  <22.631258, 23.933683, 9.792717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.525492, 23.555874, 9.714784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107737, 0.229688, -0.967283,
		0.958372, -0.234775, -0.162493,
		-0.264416, -0.944523, -0.194832,
		22.446167, 23.272516, 9.656334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.076406, 23.781397, 9.238947>,  <22.631258, 23.933683, 9.792717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.076406, 23.781397, 9.238947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.744596, 23.558043, 9.235037>,  <22.545511, 23.424030, 9.232691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.744596, 23.558043, 9.235037>,  <23.076406, 23.781397, 9.238947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.744596, 23.558043, 9.235037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230360, 0.358056, -0.904837,
		0.508749, -0.748332, -0.425645,
		-0.829523, -0.558387, -0.009775,
		22.495739, 23.390526, 9.232104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.998028, 23.041983, 8.790807>,  <23.076406, 23.781397, 9.238947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.998028, 23.041983, 8.790807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.693981, 23.298786, 8.830893>,  <22.511553, 23.452869, 8.854944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.693981, 23.298786, 8.830893>,  <22.998028, 23.041983, 8.790807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.693981, 23.298786, 8.830893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108344, 0.026845, -0.993751,
		-0.640689, -0.766226, 0.049153,
		-0.760118, 0.642010, 0.100215,
		22.465946, 23.491388, 8.860957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.767080, 23.187412, 8.939197>,  <22.998028, 23.041983, 8.790807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.767080, 23.187412, 8.939197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.111576, 23.380724, 9.002069>,  <24.318274, 23.496710, 9.039791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.111576, 23.380724, 9.002069>,  <23.767080, 23.187412, 8.939197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.111576, 23.380724, 9.002069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505129, -0.847999, -0.160443,
		0.055749, 0.217576, -0.974450,
		0.861241, 0.483278, 0.157179,
		24.369949, 23.525707, 9.049222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.270618, 23.302790, 8.462906>,  <23.767080, 23.187412, 8.939197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.270618, 23.302790, 8.462906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.438889, 23.257551, 8.822959>,  <24.539850, 23.230408, 9.038991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.438889, 23.257551, 8.822959>,  <24.270618, 23.302790, 8.462906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.438889, 23.257551, 8.822959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334634, -0.902889, -0.269835,
		0.843239, 0.414729, -0.341977,
		0.420676, -0.113098, 0.900133,
		24.565092, 23.223621, 9.092999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.644278, 22.594814, 8.344236>,  <24.270618, 23.302790, 8.462906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.644278, 22.594814, 8.344236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.706568, 22.643250, 8.736377>,  <24.743942, 22.672310, 8.971661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.706568, 22.643250, 8.736377>,  <24.644278, 22.594814, 8.344236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.706568, 22.643250, 8.736377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199179, -0.975922, 0.088900,
		0.967511, 0.181421, -0.176095,
		0.155727, 0.121086, 0.980350,
		24.753286, 22.679575, 9.030482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.251087, 22.229551, 8.531446>,  <24.644278, 22.594814, 8.344236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.251087, 22.229551, 8.531446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.048553, 22.241999, 8.876155>,  <24.927032, 22.249468, 9.082981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.048553, 22.241999, 8.876155>,  <25.251087, 22.229551, 8.531446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.048553, 22.241999, 8.876155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270565, -0.943152, 0.193027,
		0.818791, 0.330902, 0.469133,
		-0.506337, 0.031118, 0.861774,
		24.896652, 22.251333, 9.134687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.538240, 21.648088, 8.595908>,  <25.251087, 22.229551, 8.531446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.538240, 21.648088, 8.595908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.273857, 21.713943, 8.888764>,  <25.115227, 21.753456, 9.064478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.273857, 21.713943, 8.888764>,  <25.538240, 21.648088, 8.595908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.273857, 21.713943, 8.888764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131093, -0.935303, 0.328668,
		0.738884, 0.313214, 0.596613,
		-0.660958, 0.164635, 0.732141,
		25.075569, 21.763334, 9.108407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.777174, 21.328140, 9.232642>,  <25.538240, 21.648088, 8.595908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.777174, 21.328140, 9.232642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.382929, 21.374973, 9.281404>,  <25.146381, 21.403074, 9.310662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.382929, 21.374973, 9.281404>,  <25.777174, 21.328140, 9.232642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.382929, 21.374973, 9.281404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073478, -0.946308, 0.314804,
		0.152219, 0.301317, 0.941296,
		-0.985612, 0.117083, 0.121906,
		25.087246, 21.410099, 9.317976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.509724, 20.887045, 9.835041>,  <25.777174, 21.328140, 9.232642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.509724, 20.887045, 9.835041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.182167, 20.960974, 9.617690>,  <24.985634, 21.005331, 9.487280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.182167, 20.960974, 9.617690>,  <25.509724, 20.887045, 9.835041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.182167, 20.960974, 9.617690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438037, -0.812998, 0.383612,
		-0.370865, 0.552155, 0.746715,
		-0.818891, 0.184821, -0.543377,
		24.936501, 21.016420, 9.454677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.791721, 21.079140, 10.226119>,  <25.509724, 20.887045, 9.835041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.791721, 21.079140, 10.226119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.743330, 20.840006, 9.909144>,  <24.714294, 20.696526, 9.718960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.743330, 20.840006, 9.909144>,  <24.791721, 21.079140, 10.226119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.743330, 20.840006, 9.909144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400395, -0.701089, 0.590048,
		-0.908321, 0.388671, -0.154555,
		-0.120978, -0.597837, -0.792436,
		24.707037, 20.660654, 9.671413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.088947, 20.865320, 10.152850>,  <24.791721, 21.079140, 10.226119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.088947, 20.865320, 10.152850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.305420, 20.583166, 9.969741>,  <24.435303, 20.413874, 9.859875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.305420, 20.583166, 9.969741>,  <24.088947, 20.865320, 10.152850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.305420, 20.583166, 9.969741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430429, -0.700026, 0.569819,
		-0.722398, -0.111332, -0.682456,
		0.541176, -0.705385, -0.457778,
		24.467773, 20.371552, 9.832409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.723240, 20.299999, 10.302433>,  <24.088947, 20.865320, 10.152850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.723240, 20.299999, 10.302433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.059820, 20.130480, 10.168353>,  <24.261768, 20.028769, 10.087905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.059820, 20.130480, 10.168353>,  <23.723240, 20.299999, 10.302433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.059820, 20.130480, 10.168353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210102, -0.828156, 0.519630,
		-0.497814, -0.366818, -0.785892,
		0.841450, -0.423797, -0.335198,
		24.312256, 20.003342, 10.067794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.439217, 19.590134, 10.083566>,  <23.723240, 20.299999, 10.302433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.439217, 19.590134, 10.083566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.823244, 19.632648, 10.187082>,  <24.053659, 19.658157, 10.249192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.823244, 19.632648, 10.187082>,  <23.439217, 19.590134, 10.083566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.823244, 19.632648, 10.187082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084747, -0.771074, 0.631081,
		0.266625, -0.627812, -0.731275,
		0.960067, 0.106288, 0.258793,
		24.111265, 19.664536, 10.264720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.691248, 18.967333, 10.235909>,  <23.439217, 19.590134, 10.083566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.691248, 18.967333, 10.235909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.997929, 19.170031, 10.393580>,  <24.181938, 19.291649, 10.488183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.997929, 19.170031, 10.393580>,  <23.691248, 18.967333, 10.235909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.997929, 19.170031, 10.393580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088672, -0.691684, 0.716736,
		0.635849, -0.514571, -0.575251,
		0.766703, 0.506744, 0.394179,
		24.227940, 19.322054, 10.511834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.098101, 18.522900, 10.424994>,  <23.691248, 18.967333, 10.235909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.098101, 18.522900, 10.424994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.280130, 18.818300, 10.624001>,  <24.389349, 18.995541, 10.743404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.280130, 18.818300, 10.624001>,  <24.098101, 18.522900, 10.424994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.280130, 18.818300, 10.624001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296914, -0.652593, 0.697112,
		0.839494, -0.169518, -0.516249,
		0.455074, 0.738503, 0.497515,
		24.416653, 19.039850, 10.773255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.740658, 18.286224, 10.604383>,  <24.098101, 18.522900, 10.424994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.740658, 18.286224, 10.604383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.628342, 18.563459, 10.869950>,  <24.560951, 18.729799, 11.029291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.628342, 18.563459, 10.869950>,  <24.740658, 18.286224, 10.604383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.628342, 18.563459, 10.869950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217854, -0.627667, 0.747378,
		0.934717, 0.354496, 0.025252,
		-0.280793, 0.693086, 0.663919,
		24.544104, 18.771385, 11.069126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.283148, 18.313578, 11.256765>,  <24.740658, 18.286224, 10.604383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.283148, 18.313578, 11.256765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.938290, 18.473001, 11.381894>,  <24.731375, 18.568655, 11.456971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.938290, 18.473001, 11.381894>,  <25.283148, 18.313578, 11.256765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.938290, 18.473001, 11.381894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015128, -0.637389, 0.770394,
		0.506437, 0.659459, 0.555550,
		-0.862144, 0.398560, 0.312821,
		24.679646, 18.592569, 11.475740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.375195, 18.328894, 11.965884>,  <25.283148, 18.313578, 11.256765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.375195, 18.328894, 11.965884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.980865, 18.369402, 11.912372>,  <24.744268, 18.393707, 11.880264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.980865, 18.369402, 11.912372>,  <25.375195, 18.328894, 11.965884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.980865, 18.369402, 11.912372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167106, -0.520623, 0.837274,
		0.015142, 0.847759, 0.530164,
		-0.985823, 0.101271, -0.133782,
		24.685120, 18.399784, 11.872237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.151173, 18.497978, 12.628585>,  <25.375195, 18.328894, 11.965884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.151173, 18.497978, 12.628585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.799681, 18.415558, 12.456364>,  <24.588785, 18.366106, 12.353031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.799681, 18.415558, 12.456364>,  <25.151173, 18.497978, 12.628585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.799681, 18.415558, 12.456364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252104, -0.565593, 0.785206,
		-0.405312, 0.798528, 0.445057,
		-0.878730, -0.206053, -0.430553,
		24.536062, 18.353743, 12.327198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.645039, 18.720095, 13.118785>,  <25.151173, 18.497978, 12.628585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.645039, 18.720095, 13.118785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.474169, 18.458851, 12.868673>,  <24.371647, 18.302105, 12.718607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.474169, 18.458851, 12.868673>,  <24.645039, 18.720095, 13.118785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.474169, 18.458851, 12.868673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431764, -0.460263, 0.775718,
		-0.794420, 0.601338, -0.085377,
		-0.427173, -0.653108, -0.625278,
		24.346016, 18.262918, 12.681090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.947359, 18.601963, 13.409428>,  <24.645039, 18.720095, 13.118785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.947359, 18.601963, 13.409428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.025553, 18.288208, 13.173962>,  <24.072468, 18.099955, 13.032682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.025553, 18.288208, 13.173962>,  <23.947359, 18.601963, 13.409428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.025553, 18.288208, 13.173962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215089, -0.619922, 0.754608,
		-0.956830, -0.020897, -0.289896,
		0.195482, -0.784385, -0.588665,
		24.084198, 18.052893, 12.997362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.492783, 18.116056, 13.582104>,  <23.947359, 18.601963, 13.409428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.492783, 18.116056, 13.582104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.736305, 17.867216, 13.385189>,  <23.882420, 17.717913, 13.267040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.736305, 17.867216, 13.385189>,  <23.492783, 18.116056, 13.582104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.736305, 17.867216, 13.385189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241879, -0.736555, 0.631649,
		-0.755545, -0.265479, -0.598893,
		0.608807, -0.622099, -0.492287,
		23.918947, 17.680586, 13.237503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.149481, 17.506842, 13.478432>,  <23.492783, 18.116056, 13.582104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.149481, 17.506842, 13.478432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.534796, 17.399736, 13.470651>,  <23.765985, 17.335472, 13.465981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.534796, 17.399736, 13.470651>,  <23.149481, 17.506842, 13.478432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.534796, 17.399736, 13.470651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231451, -0.864996, 0.445209,
		-0.136038, -0.424362, -0.895215,
		0.963288, -0.267764, -0.019453,
		23.823782, 17.319407, 13.464815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.068665, 16.781797, 13.338232>,  <23.149481, 17.506842, 13.478432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.068665, 16.781797, 13.338232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.435829, 16.811354, 13.494171>,  <23.656128, 16.829088, 13.587734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.435829, 16.811354, 13.494171>,  <23.068665, 16.781797, 13.338232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.435829, 16.811354, 13.494171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209600, -0.743945, 0.634519,
		0.336911, -0.664143, -0.667386,
		0.917910, 0.073892, 0.389848,
		23.711203, 16.833521, 13.611125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.300627, 16.174562, 13.479456>,  <23.068665, 16.781797, 13.338232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.300627, 16.174562, 13.479456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.535494, 16.388140, 13.722813>,  <23.676414, 16.516287, 13.868827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.535494, 16.388140, 13.722813>,  <23.300627, 16.174562, 13.479456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.535494, 16.388140, 13.722813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199105, -0.633237, 0.747909,
		0.784596, -0.560282, -0.265506,
		0.587168, 0.533943, 0.608391,
		23.711643, 16.548323, 13.905330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.656157, 15.682793, 13.913972>,  <23.300627, 16.174562, 13.479456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.656157, 15.682793, 13.913972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.703770, 16.033064, 14.101171>,  <23.732338, 16.243227, 14.213490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.703770, 16.033064, 14.101171>,  <23.656157, 15.682793, 13.913972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.703770, 16.033064, 14.101171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150901, -0.449916, 0.880230,
		0.981356, -0.175397, 0.078586,
		0.119032, 0.875678, 0.467996,
		23.739479, 16.295767, 14.241570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.055189, 15.522705, 14.325321>,  <23.656157, 15.682793, 13.913972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.055189, 15.522705, 14.325321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.879103, 15.843055, 14.487708>,  <23.773451, 16.035265, 14.585140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.879103, 15.843055, 14.487708>,  <24.055189, 15.522705, 14.325321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.879103, 15.843055, 14.487708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233836, -0.538789, 0.809338,
		0.866909, 0.261353, 0.424457,
		-0.440215, 0.800875, 0.405967,
		23.747038, 16.083317, 14.609498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.200312, 15.474473, 14.958644>,  <24.055189, 15.522705, 14.325321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.200312, 15.474473, 14.958644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.894354, 15.731421, 14.977804>,  <23.710779, 15.885591, 14.989301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.894354, 15.731421, 14.977804>,  <24.200312, 15.474473, 14.958644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.894354, 15.731421, 14.977804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338133, -0.463695, 0.818934,
		0.548271, 0.610202, 0.571885,
		-0.764895, 0.642371, 0.047901,
		23.664885, 15.924132, 14.992174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.158348, 15.745283, 15.644907>,  <24.200312, 15.474473, 14.958644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.158348, 15.745283, 15.644907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.795504, 15.823932, 15.496050>,  <23.577797, 15.871121, 15.406735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.795504, 15.823932, 15.496050>,  <24.158348, 15.745283, 15.644907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.795504, 15.823932, 15.496050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420266, -0.374876, 0.826344,
		0.022970, 0.905984, 0.422688,
		-0.907110, 0.196623, -0.372144,
		23.523371, 15.882918, 15.384407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.713037, 15.359808, 15.531488>,  <24.158348, 15.745283, 15.644907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.713037, 15.359808, 15.531488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.488106, 15.099540, 15.735612>,  <24.353148, 14.943379, 15.858086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.488106, 15.099540, 15.735612>,  <24.713037, 15.359808, 15.531488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.488106, 15.099540, 15.735612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648384, -0.729955, -0.216250,
		0.513209, 0.209272, 0.832359,
		-0.562329, -0.650670, 0.510308,
		24.319407, 14.904339, 15.888704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.991814, 15.015027, 16.074345>,  <24.713037, 15.359808, 15.531488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.991814, 15.015027, 16.074345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.744230, 14.769991, 15.877724>,  <24.595680, 14.622970, 15.759751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.744230, 14.769991, 15.877724>,  <24.991814, 15.015027, 16.074345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.744230, 14.769991, 15.877724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780407, -0.550293, -0.296888,
		-0.088628, -0.567373, 0.818678,
		-0.618958, -0.612590, -0.491553,
		24.558542, 14.586214, 15.730258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.426472, 14.573481, 15.681142>,  <24.991814, 15.015027, 16.074345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.426472, 14.573481, 15.681142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.363718, 14.907074, 15.469535>,  <25.326065, 15.107230, 15.342571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.363718, 14.907074, 15.469535>,  <25.426472, 14.573481, 15.681142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.363718, 14.907074, 15.469535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979760, 0.198859, 0.022938,
		0.124330, -0.514710, -0.848301,
		-0.156886, 0.833983, -0.529016,
		25.316652, 15.157269, 15.310830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.941559, 14.607709, 15.118235>,  <25.426472, 14.573481, 15.681142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.941559, 14.607709, 15.118235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.801100, 14.969945, 15.213396>,  <25.716824, 15.187286, 15.270494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.801100, 14.969945, 15.213396>,  <25.941559, 14.607709, 15.118235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.801100, 14.969945, 15.213396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936171, 0.335053, 0.106408,
		0.016652, 0.260085, -0.965442,
		-0.351150, 0.905591, 0.237905,
		25.695755, 15.241622, 15.284767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.243698, 15.137089, 14.585241>,  <25.941559, 14.607709, 15.118235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.243698, 15.137089, 14.585241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.131420, 15.281594, 14.940926>,  <26.064053, 15.368298, 15.154336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.131420, 15.281594, 14.940926>,  <26.243698, 15.137089, 14.585241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.131420, 15.281594, 14.940926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942325, 0.279700, 0.183827,
		-0.182302, 0.889526, -0.418939,
		-0.280696, 0.361265, 0.889212,
		26.047211, 15.389974, 15.207689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.487438, 14.440561, 14.697910>,  <26.243698, 15.137089, 14.585241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.487438, 14.440561, 14.697910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.682709, 14.759833, 14.839100>,  <26.799871, 14.951397, 14.923814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.682709, 14.759833, 14.839100>,  <26.487438, 14.440561, 14.697910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.682709, 14.759833, 14.839100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872744, 0.446047, 0.198393,
		0.000909, -0.404908, 0.914357,
		0.488177, 0.798180, 0.352975,
		26.829163, 14.999288, 14.944992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<12.803162, 15.183959, 24.127380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.428673, 15.046393, 24.156261>,  <12.203979, 14.963854, 24.173590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.428673, 15.046393, 24.156261>,  <12.803162, 15.183959, 24.127380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.428673, 15.046393, 24.156261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167347, 0.255656, -0.952174,
		0.309011, -0.903527, -0.296904,
		-0.936220, -0.343918, 0.072202,
		12.147806, 14.943219, 24.177923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.760974, 14.541330, 23.721258>,  <12.803162, 15.183959, 24.127380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.760974, 14.541330, 23.721258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.388707, 14.687052, 23.734785>,  <12.165347, 14.774485, 23.742901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.388707, 14.687052, 23.734785>,  <12.760974, 14.541330, 23.721258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.388707, 14.687052, 23.734785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097897, -0.158889, -0.982431,
		-0.352530, -0.917626, 0.183537,
		-0.930666, 0.364304, 0.033820,
		12.109508, 14.796343, 23.744930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.309380, 14.101586, 23.242626>,  <12.760974, 14.541330, 23.721258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.309380, 14.101586, 23.242626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.103645, 14.437508, 23.312130>,  <11.980205, 14.639060, 23.353832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.103645, 14.437508, 23.312130>,  <12.309380, 14.101586, 23.242626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.103645, 14.437508, 23.312130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314904, 0.003513, -0.949117,
		-0.797681, -0.542880, 0.262651,
		-0.514335, 0.839803, 0.173757,
		11.949345, 14.689448, 23.364258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.684734, 13.985357, 23.015324>,  <12.309380, 14.101586, 23.242626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.684734, 13.985357, 23.015324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.721167, 14.383002, 22.991854>,  <11.743026, 14.621590, 22.977772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.721167, 14.383002, 22.991854>,  <11.684734, 13.985357, 23.015324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.721167, 14.383002, 22.991854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012645, -0.057759, -0.998250,
		-0.995763, 0.091663, 0.007309,
		0.091080, 0.994114, -0.058674,
		11.748490, 14.681236, 22.974251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.163139, 14.218997, 22.550219>,  <11.684734, 13.985357, 23.015324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.163139, 14.218997, 22.550219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.410447, 14.533356, 22.546024>,  <11.558832, 14.721971, 22.543509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.410447, 14.533356, 22.546024>,  <11.163139, 14.218997, 22.550219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.410447, 14.533356, 22.546024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075394, 0.046023, -0.996091,
		-0.782342, 0.616643, 0.087706,
		0.618270, 0.785896, -0.010486,
		11.595928, 14.769125, 22.542879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.797650, 14.836744, 22.068340>,  <11.163139, 14.218997, 22.550219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.797650, 14.836744, 22.068340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.192982, 14.887267, 22.102406>,  <11.430181, 14.917581, 22.122845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.192982, 14.887267, 22.102406>,  <10.797650, 14.836744, 22.068340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.192982, 14.887267, 22.102406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066512, 0.145174, -0.987168,
		-0.137049, 0.981311, 0.135079,
		0.988329, 0.126306, 0.085165,
		11.489480, 14.925159, 22.127954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.958298, 15.246802, 21.454178>,  <10.797650, 14.836744, 22.068340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.958298, 15.246802, 21.454178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.325484, 15.103568, 21.522429>,  <11.545796, 15.017628, 21.563379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.325484, 15.103568, 21.522429>,  <10.958298, 15.246802, 21.454178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.325484, 15.103568, 21.522429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233451, 0.139951, -0.962244,
		0.320687, 0.923140, 0.212066,
		0.917965, -0.358086, 0.170627,
		11.600874, 14.996142, 21.573616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.420872, 15.585935, 20.921762>,  <10.958298, 15.246802, 21.454178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.420872, 15.585935, 20.921762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.661966, 15.287725, 21.035536>,  <11.806623, 15.108800, 21.103800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.661966, 15.287725, 21.035536>,  <11.420872, 15.585935, 20.921762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.661966, 15.287725, 21.035536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382549, -0.042844, -0.922941,
		0.700260, 0.665102, 0.259376,
		0.602737, -0.745523, 0.284436,
		11.842788, 15.064069, 21.120867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.099654, 15.815492, 20.718281>,  <11.420872, 15.585935, 20.921762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.099654, 15.815492, 20.718281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.087364, 15.417454, 20.755896>,  <12.079990, 15.178631, 20.778463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.087364, 15.417454, 20.755896>,  <12.099654, 15.815492, 20.718281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.087364, 15.417454, 20.755896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567388, -0.094816, -0.817973,
		0.822877, 0.028223, 0.567518,
		-0.030724, -0.995095, 0.094035,
		12.078147, 15.118925, 20.784105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.795410, 15.633546, 20.761658>,  <12.099654, 15.815492, 20.718281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.795410, 15.633546, 20.761658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.588094, 15.321804, 20.620815>,  <12.463704, 15.134759, 20.536310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.588094, 15.321804, 20.620815>,  <12.795410, 15.633546, 20.761658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.588094, 15.321804, 20.620815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577650, -0.015427, -0.816138,
		0.630630, -0.626392, 0.458191,
		-0.518291, -0.779356, -0.352107,
		12.432607, 15.087997, 20.515182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.333471, 15.274107, 20.452078>,  <12.795410, 15.633546, 20.761658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.333471, 15.274107, 20.452078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.998972, 15.109577, 20.307024>,  <12.798272, 15.010859, 20.219992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.998972, 15.109577, 20.307024>,  <13.333471, 15.274107, 20.452078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.998972, 15.109577, 20.307024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420231, -0.055872, -0.905695,
		0.352273, -0.909775, 0.219574,
		-0.836248, -0.411324, -0.362634,
		12.748097, 14.986180, 20.198235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.597554, 14.697060, 20.138798>,  <13.333471, 15.274107, 20.452078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.597554, 14.697060, 20.138798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.249749, 14.750935, 19.948721>,  <13.041066, 14.783259, 19.834675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.249749, 14.750935, 19.948721>,  <13.597554, 14.697060, 20.138798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.249749, 14.750935, 19.948721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475963, -0.028513, -0.879003,
		-0.131941, -0.990478, -0.039315,
		-0.869512, 0.134689, -0.475193,
		12.988895, 14.791341, 19.806164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.716888, 14.260390, 19.536303>,  <13.597554, 14.697060, 20.138798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.716888, 14.260390, 19.536303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.408399, 14.497396, 19.443230>,  <13.223305, 14.639599, 19.387386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.408399, 14.497396, 19.443230>,  <13.716888, 14.260390, 19.536303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.408399, 14.497396, 19.443230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374973, 0.127482, -0.918229,
		-0.514400, -0.795410, -0.320493,
		-0.771225, 0.592513, -0.232681,
		13.177031, 14.675149, 19.373425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.409769, 13.941739, 18.937660>,  <13.716888, 14.260390, 19.536303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.409769, 13.941739, 18.937660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.303203, 14.327250, 18.942591>,  <13.239263, 14.558558, 18.945549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.303203, 14.327250, 18.942591>,  <13.409769, 13.941739, 18.937660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.303203, 14.327250, 18.942591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605429, 0.177283, -0.775904,
		-0.749986, -0.199249, -0.630731,
		-0.266416, 0.963780, 0.012329,
		13.223278, 14.616385, 18.946289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.188670, 14.092666, 18.336525>,  <13.409769, 13.941739, 18.937660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.188670, 14.092666, 18.336525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.316212, 14.438879, 18.491022>,  <13.392736, 14.646607, 18.583721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.316212, 14.438879, 18.491022>,  <13.188670, 14.092666, 18.336525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.316212, 14.438879, 18.491022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521833, 0.179874, -0.833868,
		-0.791216, 0.467437, -0.394310,
		0.318854, 0.865533, 0.386243,
		13.411868, 14.698539, 18.606895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.046211, 14.557631, 17.819475>,  <13.188670, 14.092666, 18.336525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.046211, 14.557631, 17.819475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.347246, 14.697122, 18.042904>,  <13.527867, 14.780815, 18.176962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.347246, 14.697122, 18.042904>,  <13.046211, 14.557631, 17.819475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.347246, 14.697122, 18.042904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570875, 0.077256, -0.817394,
		-0.328198, 0.934036, -0.140937,
		0.752587, 0.348725, 0.558573,
		13.573022, 14.801739, 18.210476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.298776, 15.118828, 17.393042>,  <13.046211, 14.557631, 17.819475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.298776, 15.118828, 17.393042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.580983, 15.038772, 17.664978>,  <13.750308, 14.990738, 17.828140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.580983, 15.038772, 17.664978>,  <13.298776, 15.118828, 17.393042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.580983, 15.038772, 17.664978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707369, 0.140302, -0.692780,
		0.043270, 0.969669, 0.240559,
		0.705519, -0.200141, 0.679843,
		13.792639, 14.978729, 17.868931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.697817, 15.708611, 17.379036>,  <13.298776, 15.118828, 17.393042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.697817, 15.708611, 17.379036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.909943, 15.396630, 17.511969>,  <14.037218, 15.209442, 17.591728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.909943, 15.396630, 17.511969>,  <13.697817, 15.708611, 17.379036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.909943, 15.396630, 17.511969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735637, 0.228473, -0.637682,
		0.421432, 0.582646, 0.694924,
		0.530314, -0.779951, 0.332330,
		14.069036, 15.162645, 17.611668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.390889, 15.981033, 17.432676>,  <13.697817, 15.708611, 17.379036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.390889, 15.981033, 17.432676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.472180, 15.589966, 17.454081>,  <14.520955, 15.355326, 17.466923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.472180, 15.589966, 17.454081>,  <14.390889, 15.981033, 17.432676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.472180, 15.589966, 17.454081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694539, 0.105421, -0.711689,
		0.690155, 0.181800, 0.700453,
		0.203228, -0.977668, 0.053511,
		14.533149, 15.296665, 17.470133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.096879, 15.966806, 17.458164>,  <14.390889, 15.981033, 17.432676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.096879, 15.966806, 17.458164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.997311, 15.601099, 17.330318>,  <14.937570, 15.381675, 17.253611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.997311, 15.601099, 17.330318>,  <15.096879, 15.966806, 17.458164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.997311, 15.601099, 17.330318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816554, -0.020643, -0.576900,
		0.520843, -0.404584, 0.751688,
		-0.248921, -0.914268, -0.319613,
		14.922634, 15.326818, 17.234434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.647239, 15.633925, 17.310610>,  <15.096879, 15.966806, 17.458164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.647239, 15.633925, 17.310610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.410192, 15.417303, 17.072107>,  <15.267963, 15.287330, 16.929007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.410192, 15.417303, 17.072107>,  <15.647239, 15.633925, 17.310610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.410192, 15.417303, 17.072107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676952, 0.066294, -0.733036,
		0.436508, -0.838047, 0.327321,
		-0.592619, -0.541556, -0.596255,
		15.232406, 15.254836, 16.893230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.091730, 15.177056, 16.944639>,  <15.647239, 15.633925, 17.310610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.091730, 15.177056, 16.944639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.763065, 15.162283, 16.717127>,  <15.565867, 15.153419, 16.580620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.763065, 15.162283, 16.717127>,  <16.091730, 15.177056, 16.944639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.763065, 15.162283, 16.717127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569850, -0.032076, -0.821122,
		0.012083, -0.998803, 0.047402,
		-0.821660, -0.036934, -0.568781,
		15.516567, 15.151203, 16.546494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.762980, 14.925079, 16.749470>,  <16.091730, 15.177056, 16.944639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.762980, 14.925079, 16.749470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.136583, 15.045712, 16.826069>,  <17.360746, 15.118091, 16.872028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.136583, 15.045712, 16.826069>,  <16.762980, 14.925079, 16.749470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.136583, 15.045712, 16.826069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179822, -0.066295, 0.981463,
		0.308686, -0.951133, -0.007689,
		0.934011, 0.301581, 0.191499,
		17.416786, 15.136186, 16.883518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.006037, 14.492411, 17.233513>,  <16.762980, 14.925079, 16.749470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.006037, 14.492411, 17.233513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.191217, 14.842541, 17.289343>,  <17.302326, 15.052619, 17.322840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.191217, 14.842541, 17.289343>,  <17.006037, 14.492411, 17.233513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.191217, 14.842541, 17.289343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209951, -0.044695, 0.976690,
		0.861160, -0.481463, 0.163084,
		0.462951, 0.875326, 0.139573,
		17.330103, 15.105139, 17.331215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.443909, 14.409732, 17.769772>,  <17.006037, 14.492411, 17.233513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.443909, 14.409732, 17.769772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.420519, 14.809037, 17.772591>,  <17.406485, 15.048620, 17.774282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.420519, 14.809037, 17.772591>,  <17.443909, 14.409732, 17.769772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.420519, 14.809037, 17.772591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235290, -0.020644, 0.971706,
		0.970165, 0.055162, 0.236088,
		-0.058475, 0.998264, 0.007049,
		17.402977, 15.108517, 17.774706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.661932, 14.568684, 18.467621>,  <17.443909, 14.409732, 17.769772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.661932, 14.568684, 18.467621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.485956, 14.910763, 18.358009>,  <17.380371, 15.116010, 18.292242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.485956, 14.910763, 18.358009>,  <17.661932, 14.568684, 18.467621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.485956, 14.910763, 18.358009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394576, 0.090033, 0.914442,
		0.806700, 0.510423, 0.297832,
		-0.439937, 0.855197, -0.274031,
		17.353975, 15.167322, 18.275801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.774870, 15.092381, 18.982462>,  <17.661932, 14.568684, 18.467621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.774870, 15.092381, 18.982462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.443977, 15.212765, 18.792679>,  <17.245441, 15.284995, 18.678810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.443977, 15.212765, 18.792679>,  <17.774870, 15.092381, 18.982462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.443977, 15.212765, 18.792679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421769, 0.225282, 0.878271,
		0.371210, 0.926645, -0.059426,
		-0.827233, 0.300959, -0.474457,
		17.195807, 15.303052, 18.650341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.639753, 15.795928, 19.192663>,  <17.774870, 15.092381, 18.982462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.639753, 15.795928, 19.192663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.287172, 15.648372, 19.074709>,  <17.075623, 15.559837, 19.003937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.287172, 15.648372, 19.074709>,  <17.639753, 15.795928, 19.192663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.287172, 15.648372, 19.074709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427223, 0.356693, 0.830813,
		-0.201296, 0.858306, -0.472008,
		-0.881454, -0.368892, -0.294887,
		17.022736, 15.537704, 18.986242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.180889, 16.311100, 19.438484>,  <17.639753, 15.795928, 19.192663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.180889, 16.311100, 19.438484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.936884, 16.006777, 19.349894>,  <16.790480, 15.824183, 19.296740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.936884, 16.006777, 19.349894>,  <17.180889, 16.311100, 19.438484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.936884, 16.006777, 19.349894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642105, 0.310841, 0.700771,
		-0.464309, 0.569691, -0.678137,
		-0.610015, -0.760809, -0.221475,
		16.753880, 15.778534, 19.283451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.553165, 16.593910, 19.398539>,  <17.180889, 16.311100, 19.438484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.553165, 16.593910, 19.398539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.481951, 16.205250, 19.460766>,  <16.439222, 15.972054, 19.498102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.481951, 16.205250, 19.460766>,  <16.553165, 16.593910, 19.398539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.481951, 16.205250, 19.460766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445190, 0.220520, 0.867857,
		-0.877559, 0.085253, -0.471829,
		-0.178035, -0.971650, 0.155566,
		16.428539, 15.913755, 19.507435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.933466, 16.560146, 19.832142>,  <16.553165, 16.593910, 19.398539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.933466, 16.560146, 19.832142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.063391, 16.183418, 19.866713>,  <16.141346, 15.957381, 19.887455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.063391, 16.183418, 19.866713>,  <15.933466, 16.560146, 19.832142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.063391, 16.183418, 19.866713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461732, -0.078161, 0.883569,
		-0.825409, -0.326900, -0.460257,
		0.324813, -0.941821, 0.086426,
		16.160835, 15.900872, 19.892641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.341479, 16.136278, 20.038982>,  <15.933466, 16.560146, 19.832142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.341479, 16.136278, 20.038982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.674923, 15.950650, 20.158804>,  <15.874990, 15.839272, 20.230696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.674923, 15.950650, 20.158804>,  <15.341479, 16.136278, 20.038982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.674923, 15.950650, 20.158804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385490, -0.100390, 0.917234,
		-0.395591, -0.880090, -0.262582,
		0.833610, -0.464073, 0.299553,
		15.925006, 15.811429, 20.248671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.159725, 15.480536, 20.206964>,  <15.341479, 16.136278, 20.038982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.159725, 15.480536, 20.206964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.490838, 15.538926, 20.423655>,  <15.689506, 15.573960, 20.553669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.490838, 15.538926, 20.423655>,  <15.159725, 15.480536, 20.206964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.490838, 15.538926, 20.423655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549532, 0.016313, 0.835313,
		0.113102, -0.989153, 0.093724,
		0.827782, 0.145980, 0.541726,
		15.739173, 15.582719, 20.586172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.993290, 15.120643, 20.785492>,  <15.159725, 15.480536, 20.206964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.993290, 15.120643, 20.785492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.304476, 15.355247, 20.875628>,  <15.491187, 15.496009, 20.929708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.304476, 15.355247, 20.875628>,  <14.993290, 15.120643, 20.785492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.304476, 15.355247, 20.875628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286014, 0.011252, 0.958159,
		0.559434, -0.809864, 0.176504,
		0.777965, 0.586510, 0.225338,
		15.537866, 15.531199, 20.943230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.347473, 14.775521, 21.347021>,  <14.993290, 15.120643, 20.785492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.347473, 14.775521, 21.347021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.427891, 15.167297, 21.353701>,  <15.476141, 15.402363, 21.357708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.427891, 15.167297, 21.353701>,  <15.347473, 14.775521, 21.347021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.427891, 15.167297, 21.353701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190962, 0.022468, 0.981340,
		0.960789, -0.200480, 0.191553,
		0.201043, 0.979440, 0.016697,
		15.488204, 15.461129, 21.358709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.952549, 14.799965, 21.805748>,  <15.347473, 14.775521, 21.347021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.952549, 14.799965, 21.805748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.766554, 15.153119, 21.779526>,  <15.654957, 15.365012, 21.763792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.766554, 15.153119, 21.779526>,  <15.952549, 14.799965, 21.805748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.766554, 15.153119, 21.779526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119572, 0.010739, 0.992767,
		0.877205, 0.469464, 0.100575,
		-0.464989, 0.882886, -0.065556,
		15.627057, 15.417985, 21.759859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.335749, 15.256612, 22.372458>,  <15.952549, 14.799965, 21.805748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.335749, 15.256612, 22.372458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.995974, 15.452526, 22.293905>,  <15.792109, 15.570075, 22.246775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.995974, 15.452526, 22.293905>,  <16.335749, 15.256612, 22.372458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.995974, 15.452526, 22.293905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135651, 0.156967, 0.978243,
		0.509954, 0.857597, -0.066893,
		-0.849438, 0.489785, -0.196380,
		15.741142, 15.599462, 22.234991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.403439, 15.790614, 22.815079>,  <16.335749, 15.256612, 22.372458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.403439, 15.790614, 22.815079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.028463, 15.710074, 22.701468>,  <15.803478, 15.661751, 22.633301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.028463, 15.710074, 22.701468>,  <16.403439, 15.790614, 22.815079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.028463, 15.710074, 22.701468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283303, -0.033029, 0.958461,
		-0.202367, 0.978962, -0.026081,
		-0.937436, -0.201350, -0.284027,
		15.747232, 15.649670, 22.616259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.929781, 16.173771, 23.270586>,  <16.403439, 15.790614, 22.815079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.929781, 16.173771, 23.270586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.661489, 15.924425, 23.109821>,  <15.500513, 15.774817, 23.013363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.661489, 15.924425, 23.109821>,  <15.929781, 16.173771, 23.270586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.661489, 15.924425, 23.109821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465547, -0.068009, 0.882406,
		-0.577396, 0.778966, -0.244591,
		-0.670731, -0.623367, -0.401913,
		15.460269, 15.737415, 22.989246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.281849, 16.463196, 23.316717>,  <15.929781, 16.173771, 23.270586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.281849, 16.463196, 23.316717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.229642, 16.067976, 23.283913>,  <15.198318, 15.830844, 23.264231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.229642, 16.067976, 23.283913>,  <15.281849, 16.463196, 23.316717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.229642, 16.067976, 23.283913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346389, -0.032061, 0.937543,
		-0.928967, 0.150774, -0.338064,
		-0.130518, -0.988048, -0.082009,
		15.190487, 15.771562, 23.259310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<14.516427, 16.346487, 23.539417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.704376, 15.994481, 23.567114>,  <14.817146, 15.783278, 23.583733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.704376, 15.994481, 23.567114>,  <14.516427, 16.346487, 23.539417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.704376, 15.994481, 23.567114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551053, -0.231138, 0.801820,
		-0.689608, -0.414911, -0.593540,
		0.469873, -0.880014, 0.069243,
		14.845338, 15.730477, 23.587887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.009206, 15.696537, 23.679119>,  <14.516427, 16.346487, 23.539417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.009206, 15.696537, 23.679119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.368441, 15.559553, 23.789507>,  <14.583982, 15.477363, 23.855740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.368441, 15.559553, 23.789507>,  <14.009206, 15.696537, 23.679119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.368441, 15.559553, 23.789507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386271, -0.314105, 0.867256,
		-0.210312, -0.885473, -0.414374,
		0.898089, -0.342455, 0.275973,
		14.637867, 15.456816, 23.872297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.882506, 15.066892, 23.924017>,  <14.009206, 15.696537, 23.679119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.882506, 15.066892, 23.924017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.239159, 15.149137, 24.085369>,  <14.453150, 15.198485, 24.182180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.239159, 15.149137, 24.085369>,  <13.882506, 15.066892, 23.924017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.239159, 15.149137, 24.085369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314055, -0.360884, 0.878141,
		0.326133, -0.909662, -0.257201,
		0.891631, 0.205616, 0.403380,
		14.506648, 15.210822, 24.206383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.091383, 14.444597, 24.257179>,  <13.882506, 15.066892, 23.924017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.091383, 14.444597, 24.257179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.303787, 14.727705, 24.443552>,  <14.431230, 14.897570, 24.555376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.303787, 14.727705, 24.443552>,  <14.091383, 14.444597, 24.257179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.303787, 14.727705, 24.443552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329192, -0.334360, 0.883083,
		0.780807, -0.622307, 0.055443,
		0.531011, 0.707769, 0.465930,
		14.463091, 14.940036, 24.583330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.465510, 14.150287, 24.900293>,  <14.091383, 14.444597, 24.257179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.465510, 14.150287, 24.900293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.455321, 14.548333, 24.938438>,  <14.449207, 14.787161, 24.961325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.455321, 14.548333, 24.938438>,  <14.465510, 14.150287, 24.900293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.455321, 14.548333, 24.938438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434609, -0.096929, 0.895388,
		0.900259, -0.018636, 0.434956,
		-0.025474, 0.995117, 0.095361,
		14.447680, 14.846869, 24.967047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.572420, 14.301563, 25.619970>,  <14.465510, 14.150287, 24.900293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.572420, 14.301563, 25.619970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.420480, 14.649664, 25.494511>,  <14.329316, 14.858524, 25.419235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.420480, 14.649664, 25.494511>,  <14.572420, 14.301563, 25.619970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.420480, 14.649664, 25.494511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312024, 0.198654, 0.929073,
		0.870836, 0.450774, 0.196081,
		-0.379850, 0.870252, -0.313648,
		14.306525, 14.910740, 25.400415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.829162, 14.888596, 26.087921>,  <14.572420, 14.301563, 25.619970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.829162, 14.888596, 26.087921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.484351, 14.986316, 25.910278>,  <14.277465, 15.044948, 25.803694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.484351, 14.986316, 25.910278>,  <14.829162, 14.888596, 26.087921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.484351, 14.986316, 25.910278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356491, 0.330630, 0.873841,
		0.360314, 0.911593, -0.197921,
		-0.862025, 0.244300, -0.444105,
		14.225743, 15.059606, 25.777046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.762928, 15.534912, 26.354258>,  <14.829162, 14.888596, 26.087921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.762928, 15.534912, 26.354258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.405555, 15.408697, 26.226376>,  <14.191131, 15.332968, 26.149647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.405555, 15.408697, 26.226376>,  <14.762928, 15.534912, 26.354258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.405555, 15.408697, 26.226376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397592, 0.224292, 0.889727,
		-0.209035, 0.922024, -0.325845,
		-0.893434, -0.315537, -0.319705,
		14.137525, 15.314036, 26.130465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.238810, 16.036852, 26.429188>,  <14.762928, 15.534912, 26.354258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.238810, 16.036852, 26.429188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.031866, 15.694677, 26.419628>,  <13.907700, 15.489373, 26.413893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.031866, 15.694677, 26.419628>,  <14.238810, 16.036852, 26.429188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.031866, 15.694677, 26.419628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450797, 0.248689, 0.857284,
		-0.727407, 0.454297, -0.514289,
		-0.517360, -0.855434, -0.023897,
		13.876658, 15.438047, 26.412458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.626301, 16.242180, 26.628368>,  <14.238810, 16.036852, 26.429188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.626301, 16.242180, 26.628368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.657773, 15.853022, 26.715347>,  <13.676657, 15.619527, 26.767534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.657773, 15.853022, 26.715347>,  <13.626301, 16.242180, 26.628368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.657773, 15.853022, 26.715347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429506, 0.163757, 0.888093,
		-0.899630, -0.163271, -0.404980,
		0.078681, -0.972896, 0.217446,
		13.681377, 15.561152, 26.780581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.068789, 16.056118, 27.105225>,  <13.626301, 16.242180, 26.628368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.068789, 16.056118, 27.105225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.304211, 15.734869, 27.142326>,  <13.445463, 15.542120, 27.164587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.304211, 15.734869, 27.142326>,  <13.068789, 16.056118, 27.105225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.304211, 15.734869, 27.142326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324559, -0.129639, 0.936939,
		-0.740451, -0.581542, -0.336959,
		0.588552, -0.803121, 0.092753,
		13.480777, 15.493933, 27.170153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.603299, 15.583571, 27.341696>,  <13.068789, 16.056118, 27.105225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.603299, 15.583571, 27.341696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.976125, 15.483060, 27.446091>,  <13.199821, 15.422753, 27.508728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.976125, 15.483060, 27.446091>,  <12.603299, 15.583571, 27.341696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.976125, 15.483060, 27.446091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301799, -0.139984, 0.943039,
		-0.200433, -0.957738, -0.206310,
		0.932064, -0.251280, 0.260987,
		13.255744, 15.407677, 27.524387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.550906, 15.006684, 27.781921>,  <12.603299, 15.583571, 27.341696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.550906, 15.006684, 27.781921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.920808, 15.141634, 27.852358>,  <13.142749, 15.222604, 27.894619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.920808, 15.141634, 27.852358>,  <12.550906, 15.006684, 27.781921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.920808, 15.141634, 27.852358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097285, -0.237761, 0.966440,
		0.367919, -0.910850, -0.187049,
		0.924754, 0.337375, 0.176089,
		13.198235, 15.242846, 27.905184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.776361, 14.508302, 28.214815>,  <12.550906, 15.006684, 27.781921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.776361, 14.508302, 28.214815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.028838, 14.815419, 28.258799>,  <13.180325, 14.999689, 28.285189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.028838, 14.815419, 28.258799>,  <12.776361, 14.508302, 28.214815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.028838, 14.815419, 28.258799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044934, -0.105331, 0.993421,
		0.774324, -0.631981, -0.031984,
		0.631192, 0.767793, 0.109958,
		13.218196, 15.045757, 28.291786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.341295, 14.273696, 28.649097>,  <12.776361, 14.508302, 28.214815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.341295, 14.273696, 28.649097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.322932, 14.672508, 28.673826>,  <13.311914, 14.911796, 28.688663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.322932, 14.672508, 28.673826>,  <13.341295, 14.273696, 28.649097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.322932, 14.672508, 28.673826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032741, -0.063357, 0.997454,
		0.998409, 0.043766, 0.035552,
		-0.045907, 0.997031, 0.061823,
		13.309160, 14.971618, 28.692373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.943509, 14.356623, 29.041309>,  <13.341295, 14.273696, 28.649097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.943509, 14.356623, 29.041309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.685487, 14.660810, 29.071217>,  <13.530674, 14.843323, 29.089161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.685487, 14.660810, 29.071217>,  <13.943509, 14.356623, 29.041309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.685487, 14.660810, 29.071217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036931, -0.066705, 0.997089,
		0.763243, 0.645939, 0.014943,
		-0.645055, 0.760469, 0.074768,
		13.491970, 14.888951, 29.093647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.251187, 14.783796, 29.560049>,  <13.943509, 14.356623, 29.041309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.251187, 14.783796, 29.560049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.874296, 14.913353, 29.525875>,  <13.648161, 14.991087, 29.505371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.874296, 14.913353, 29.525875>,  <14.251187, 14.783796, 29.560049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.874296, 14.913353, 29.525875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113658, -0.069213, 0.991106,
		0.315099, 0.943559, 0.102028,
		-0.942228, 0.323893, -0.085434,
		13.591628, 15.010521, 29.500244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.064406, 15.213876, 30.198490>,  <14.251187, 14.783796, 29.560049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.064406, 15.213876, 30.198490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.706390, 15.115588, 30.049614>,  <13.491581, 15.056616, 29.960289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.706390, 15.115588, 30.049614>,  <14.064406, 15.213876, 30.198490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.706390, 15.115588, 30.049614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360129, -0.094073, 0.928147,
		-0.263077, 0.964765, -0.004292,
		-0.895040, -0.245720, -0.372189,
		13.437879, 15.041872, 29.937958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.666429, 15.583346, 30.626335>,  <14.064406, 15.213876, 30.198490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.666429, 15.583346, 30.626335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.464873, 15.277148, 30.466278>,  <13.343940, 15.093430, 30.370245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.464873, 15.277148, 30.466278>,  <13.666429, 15.583346, 30.626335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.464873, 15.277148, 30.466278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309469, -0.272505, 0.911027,
		-0.806428, 0.582887, -0.099585,
		-0.503888, -0.765496, -0.400141,
		13.313706, 15.047500, 30.346235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.955591, 15.525727, 30.881529>,  <13.666429, 15.583346, 30.626335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.955591, 15.525727, 30.881529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.008374, 15.157024, 30.735680>,  <13.040044, 14.935802, 30.648170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.008374, 15.157024, 30.735680>,  <12.955591, 15.525727, 30.881529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.008374, 15.157024, 30.735680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209343, -0.385457, 0.898664,
		-0.968898, -0.042253, -0.243827,
		0.131957, -0.921757, -0.364624,
		13.047961, 14.880497, 30.626293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.633467, 15.216949, 31.337111>,  <12.955591, 15.525727, 30.881529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.633467, 15.216949, 31.337111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.839294, 14.923505, 31.159557>,  <12.962791, 14.747438, 31.053024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.839294, 14.923505, 31.159557>,  <12.633467, 15.216949, 31.337111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.839294, 14.923505, 31.159557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028319, -0.531939, 0.846309,
		-0.856981, -0.422914, -0.294494,
		0.514568, -0.733611, -0.443885,
		12.993666, 14.703422, 31.026392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.321311, 14.527352, 31.548857>,  <12.633467, 15.216949, 31.337111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.321311, 14.527352, 31.548857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.687015, 14.431196, 31.418415>,  <12.906437, 14.373503, 31.340149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.687015, 14.431196, 31.418415>,  <12.321311, 14.527352, 31.548857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.687015, 14.431196, 31.418415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146297, -0.554726, 0.819071,
		-0.377795, -0.796550, -0.471994,
		0.914258, -0.240389, -0.326105,
		12.961292, 14.359079, 31.320583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.606062, 13.750029, 31.512346>,  <12.321311, 14.527352, 31.548857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.606062, 13.750029, 31.512346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.851311, 14.035111, 31.648659>,  <12.998460, 14.206161, 31.730446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.851311, 14.035111, 31.648659>,  <12.606062, 13.750029, 31.512346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.851311, 14.035111, 31.648659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061654, -0.473227, 0.878780,
		0.787578, -0.517789, -0.334087,
		0.613122, 0.712706, 0.340779,
		13.035248, 14.248923, 31.750893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.355442, 13.046670, 31.390137>,  <12.606062, 13.750029, 31.512346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.355442, 13.046670, 31.390137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.263365, 12.684285, 31.532259>,  <12.208118, 12.466854, 31.617533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.263365, 12.684285, 31.532259>,  <12.355442, 13.046670, 31.390137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.263365, 12.684285, 31.532259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102288, -0.340564, -0.934641,
		0.967754, -0.251491, -0.014274,
		-0.230193, -0.905962, 0.355307,
		12.194307, 12.412497, 31.638851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.730720, 12.599227, 30.944878>,  <12.355442, 13.046670, 31.390137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.730720, 12.599227, 30.944878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.396263, 12.468858, 31.121351>,  <12.195589, 12.390636, 31.227236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.396263, 12.468858, 31.121351>,  <12.730720, 12.599227, 30.944878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.396263, 12.468858, 31.121351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416257, -0.146770, -0.897323,
		0.357210, -0.933934, -0.012947,
		-0.836141, -0.325922, 0.441185,
		12.145421, 12.371081, 31.253706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.581449, 12.116329, 30.513657>,  <12.730720, 12.599227, 30.944878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.581449, 12.116329, 30.513657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.251788, 12.226161, 30.711802>,  <12.053992, 12.292060, 30.830688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.251788, 12.226161, 30.711802>,  <12.581449, 12.116329, 30.513657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.251788, 12.226161, 30.711802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460718, 0.183684, -0.868331,
		-0.329417, -0.943857, -0.024878,
		-0.824150, 0.274581, 0.495361,
		12.004543, 12.308536, 30.860411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.916670, 11.644158, 30.374575>,  <12.581449, 12.116329, 30.513657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.916670, 11.644158, 30.374575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.799827, 12.002936, 30.507339>,  <11.729721, 12.218203, 30.586998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.799827, 12.002936, 30.507339>,  <11.916670, 11.644158, 30.374575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.799827, 12.002936, 30.507339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586084, 0.106364, -0.803239,
		-0.755763, -0.429159, 0.494615,
		-0.292108, 0.896944, 0.331910,
		11.712194, 12.272019, 30.606913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.302210, 11.622022, 30.199249>,  <11.916670, 11.644158, 30.374575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.302210, 11.622022, 30.199249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.390808, 12.007330, 30.259977>,  <11.443967, 12.238515, 30.296413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.390808, 12.007330, 30.259977>,  <11.302210, 11.622022, 30.199249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.390808, 12.007330, 30.259977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495238, 0.245230, -0.833428,
		-0.840047, 0.109416, 0.531366,
		0.221497, 0.963271, 0.151818,
		11.457257, 12.296311, 30.305523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.633159, 12.089719, 29.943071>,  <11.302210, 11.622022, 30.199249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.633159, 12.089719, 29.943071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.924608, 12.362263, 29.970947>,  <11.099478, 12.525789, 29.987673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.924608, 12.362263, 29.970947>,  <10.633159, 12.089719, 29.943071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.924608, 12.362263, 29.970947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319032, 0.427665, -0.845767,
		-0.606075, 0.594013, 0.528982,
		0.728623, 0.681360, 0.069688,
		11.143195, 12.566670, 29.991854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.346547, 12.665195, 29.589378>,  <10.633159, 12.089719, 29.943071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.346547, 12.665195, 29.589378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.735394, 12.753762, 29.620274>,  <10.968701, 12.806903, 29.638811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.735394, 12.753762, 29.620274>,  <10.346547, 12.665195, 29.589378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.735394, 12.753762, 29.620274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050253, 0.518411, -0.853654,
		-0.229057, 0.825969, 0.515082,
		0.972115, 0.221420, 0.077238,
		11.027028, 12.820189, 29.643446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.459206, 13.385688, 29.568935>,  <10.346547, 12.665195, 29.589378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.459206, 13.385688, 29.568935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.783814, 13.186542, 29.446583>,  <10.978580, 13.067054, 29.373171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.783814, 13.186542, 29.446583>,  <10.459206, 13.385688, 29.568935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.783814, 13.186542, 29.446583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055461, 0.586745, -0.807870,
		0.581684, 0.638640, 0.503769,
		0.811522, -0.497865, -0.305880,
		11.027271, 13.037182, 29.354818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.853653, 13.816231, 29.119818>,  <10.459206, 13.385688, 29.568935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.853653, 13.816231, 29.119818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.041064, 13.476024, 29.024233>,  <11.153511, 13.271899, 28.966881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.041064, 13.476024, 29.024233>,  <10.853653, 13.816231, 29.119818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.041064, 13.476024, 29.024233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159437, 0.347452, -0.924044,
		0.868943, 0.394840, 0.298395,
		0.468527, -0.850517, -0.238964,
		11.181623, 13.220869, 28.952543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.502212, 13.928718, 28.751690>,  <10.853653, 13.816231, 29.119818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.502212, 13.928718, 28.751690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.430472, 13.551418, 28.639893>,  <11.387429, 13.325039, 28.572813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.430472, 13.551418, 28.639893>,  <11.502212, 13.928718, 28.751690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.430472, 13.551418, 28.639893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239598, 0.233667, -0.942334,
		0.954163, -0.235972, 0.184093,
		-0.179348, -0.943248, -0.279495,
		11.376668, 13.268444, 28.556044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.055097, 13.736285, 28.414396>,  <11.502212, 13.928718, 28.751690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.055097, 13.736285, 28.414396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.777043, 13.472089, 28.300879>,  <11.610211, 13.313571, 28.232767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.777043, 13.472089, 28.300879>,  <12.055097, 13.736285, 28.414396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.777043, 13.472089, 28.300879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256307, 0.141118, -0.956239,
		0.671637, -0.737452, 0.071193,
		-0.695134, -0.660493, -0.283794,
		11.568503, 13.273941, 28.215740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.398626, 13.255692, 28.054434>,  <12.055097, 13.736285, 28.414396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.398626, 13.255692, 28.054434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.017507, 13.293398, 27.938995>,  <11.788835, 13.316021, 27.869732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.017507, 13.293398, 27.938995>,  <12.398626, 13.255692, 28.054434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.017507, 13.293398, 27.938995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301309, 0.177029, -0.936949,
		-0.037231, -0.979681, -0.197076,
		-0.952799, 0.094264, -0.288596,
		11.731667, 13.321677, 27.852417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.387352, 13.000279, 27.373022>,  <12.398626, 13.255692, 28.054434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.387352, 13.000279, 27.373022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.034288, 13.187634, 27.388649>,  <11.822450, 13.300046, 27.398026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.034288, 13.187634, 27.388649>,  <12.387352, 13.000279, 27.373022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.034288, 13.187634, 27.388649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121472, 0.307625, -0.943722,
		-0.454044, -0.828240, -0.328425,
		-0.882660, 0.468386, 0.039067,
		11.769490, 13.328149, 27.400370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.156630, 12.970235, 26.684809>,  <12.387352, 13.000279, 27.373022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.156630, 12.970235, 26.684809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.955947, 13.272786, 26.852705>,  <11.835538, 13.454317, 26.953444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.955947, 13.272786, 26.852705>,  <12.156630, 12.970235, 26.684809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.955947, 13.272786, 26.852705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047364, 0.460483, -0.886404,
		-0.863741, -0.464595, -0.195202,
		-0.501706, 0.756378, 0.419743,
		11.805435, 13.499700, 26.978628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.614977, 13.029816, 26.250980>,  <12.156630, 12.970235, 26.684809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.614977, 13.029816, 26.250980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.581030, 13.382856, 26.435940>,  <11.560662, 13.594681, 26.546915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.581030, 13.382856, 26.435940>,  <11.614977, 13.029816, 26.250980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.581030, 13.382856, 26.435940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012480, 0.464977, -0.885235,
		-0.996314, -0.069356, -0.050475,
		-0.084867, 0.882602, 0.462398,
		11.555570, 13.647637, 26.574659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.085242, 13.366385, 25.943733>,  <11.614977, 13.029816, 26.250980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.085242, 13.366385, 25.943733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.317645, 13.655289, 26.093813>,  <11.457087, 13.828630, 26.183861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.317645, 13.655289, 26.093813>,  <11.085242, 13.366385, 25.943733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.317645, 13.655289, 26.093813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024715, 0.445118, -0.895131,
		-0.813523, 0.529350, 0.240766,
		0.581007, 0.722259, 0.375197,
		11.491947, 13.871966, 26.206371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.733634, 13.973365, 25.788481>,  <11.085242, 13.366385, 25.943733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.733634, 13.973365, 25.788481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.110929, 14.090887, 25.850422>,  <11.337307, 14.161401, 25.887587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.110929, 14.090887, 25.850422>,  <10.733634, 13.973365, 25.788481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.110929, 14.090887, 25.850422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008871, 0.488382, -0.872585,
		-0.331998, 0.821682, 0.463267,
		0.943238, 0.293806, 0.154852,
		11.393901, 14.179029, 25.896877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.801584, 14.702699, 25.538404>,  <10.733634, 13.973365, 25.788481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.801584, 14.702699, 25.538404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.182788, 14.588288, 25.578329>,  <11.411510, 14.519642, 25.602283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.182788, 14.588288, 25.578329>,  <10.801584, 14.702699, 25.538404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.182788, 14.588288, 25.578329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205233, 0.367229, -0.907206,
		0.222830, 0.885060, 0.408675,
		0.953009, -0.286026, 0.099814,
		11.468691, 14.502481, 25.608273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.204536, 15.297706, 25.505074>,  <10.801584, 14.702699, 25.538404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.204536, 15.297706, 25.505074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.405068, 14.976306, 25.376663>,  <11.525388, 14.783466, 25.299618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.405068, 14.976306, 25.376663>,  <11.204536, 15.297706, 25.505074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.405068, 14.976306, 25.376663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337027, 0.523050, -0.782836,
		0.796921, 0.284265, 0.533021,
		0.501329, -0.803500, -0.321024,
		11.555467, 14.735256, 25.280355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.848096, 15.595561, 25.278587>,  <11.204536, 15.297706, 25.505074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.848096, 15.595561, 25.278587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.797494, 15.225833, 25.134571>,  <11.767133, 15.003996, 25.048161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.797494, 15.225833, 25.134571>,  <11.848096, 15.595561, 25.278587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.797494, 15.225833, 25.134571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454491, 0.268612, -0.849285,
		0.881723, -0.271074, 0.386114,
		-0.126504, -0.924319, -0.360043,
		11.759542, 14.948537, 25.026558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.472835, 15.500697, 24.870100>,  <11.848096, 15.595561, 25.278587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.472835, 15.500697, 24.870100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.180929, 15.248076, 24.765343>,  <12.005786, 15.096504, 24.702488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.180929, 15.248076, 24.765343>,  <12.472835, 15.500697, 24.870100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.180929, 15.248076, 24.765343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173427, 0.199532, -0.964422,
		0.661338, -0.749220, -0.036083,
		-0.729764, -0.631551, -0.261893,
		11.962000, 15.058611, 24.686775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<19.768629, 25.124752, 7.422027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.895712, 25.424364, 7.654583>,  <19.971962, 25.604132, 7.794118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.895712, 25.424364, 7.654583>,  <19.768629, 25.124752, 7.422027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.895712, 25.424364, 7.654583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207581, -0.653232, 0.728147,
		0.925187, -0.110653, -0.363022,
		0.317709, 0.749028, 0.581393,
		19.991024, 25.649073, 7.829001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.259571, 24.617933, 7.236139>,  <19.768629, 25.124752, 7.422027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.259571, 24.617933, 7.236139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.558653, 24.883514, 7.231926>,  <20.738102, 25.042862, 7.229398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.558653, 24.883514, 7.231926>,  <20.259571, 24.617933, 7.236139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.558653, 24.883514, 7.231926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571614, -0.635483, 0.519056,
		0.337934, -0.394121, -0.854675,
		0.747702, 0.663951, -0.010534,
		20.782963, 25.082699, 7.228766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.948935, 24.295183, 6.921023>,  <20.259571, 24.617933, 7.236139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.948935, 24.295183, 6.921023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.020813, 24.595007, 7.175855>,  <21.063940, 24.774900, 7.328754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.020813, 24.595007, 7.175855>,  <20.948935, 24.295183, 6.921023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.020813, 24.595007, 7.175855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549636, -0.613608, 0.566909,
		0.815849, 0.248290, -0.522248,
		0.179697, 0.749558, 0.637080,
		21.074722, 24.819874, 7.366979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.614487, 24.296057, 7.198234>,  <20.948935, 24.295183, 6.921023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.614487, 24.296057, 7.198234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.405710, 24.491085, 7.478191>,  <21.280445, 24.608103, 7.646166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.405710, 24.491085, 7.478191>,  <21.614487, 24.296057, 7.198234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.405710, 24.491085, 7.478191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251440, -0.696122, 0.672452,
		0.815081, 0.526961, 0.240739,
		-0.521940, 0.487572, 0.699895,
		21.249128, 24.637356, 7.688160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.979338, 24.548738, 7.825351>,  <21.614487, 24.296057, 7.198234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.979338, 24.548738, 7.825351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.604599, 24.490942, 7.952748>,  <21.379755, 24.456264, 8.029186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.604599, 24.490942, 7.952748>,  <21.979338, 24.548738, 7.825351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.604599, 24.490942, 7.952748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342806, -0.559764, 0.754420,
		0.069274, 0.815958, 0.573946,
		-0.936849, -0.144490, 0.318492,
		21.323544, 24.447596, 8.048295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.016205, 24.722282, 8.479375>,  <21.979338, 24.548738, 7.825351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.016205, 24.722282, 8.479375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.733868, 24.453495, 8.389712>,  <21.564465, 24.292223, 8.335915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.733868, 24.453495, 8.389712>,  <22.016205, 24.722282, 8.479375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.733868, 24.453495, 8.389712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404571, -0.642167, 0.651109,
		-0.581470, 0.368894, 0.725128,
		-0.705843, -0.671966, -0.224157,
		21.522114, 24.251905, 8.322465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.708626, 24.346844, 9.138208>,  <22.016205, 24.722282, 8.479375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.708626, 24.346844, 9.138208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.669142, 24.117636, 8.812778>,  <21.645452, 23.980110, 8.617520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.669142, 24.117636, 8.812778>,  <21.708626, 24.346844, 9.138208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.669142, 24.117636, 8.812778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398079, -0.772040, 0.495467,
		-0.912025, -0.274961, 0.304314,
		-0.098709, -0.573019, -0.813576,
		21.639528, 23.945730, 8.568706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.330460, 23.759262, 9.324903>,  <21.708626, 24.346844, 9.138208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.330460, 23.759262, 9.324903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.565685, 23.703049, 9.006297>,  <21.706820, 23.669321, 8.815134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.565685, 23.703049, 9.006297>,  <21.330460, 23.759262, 9.324903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.565685, 23.703049, 9.006297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410532, -0.796642, 0.443650,
		-0.696883, -0.587888, -0.410782,
		0.588062, -0.140533, -0.796513,
		21.742104, 23.660889, 8.767344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.320625, 23.006865, 9.018654>,  <21.330460, 23.759262, 9.324903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.320625, 23.006865, 9.018654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.681906, 23.168697, 8.961321>,  <21.898674, 23.265797, 8.926921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.681906, 23.168697, 8.961321>,  <21.320625, 23.006865, 9.018654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.681906, 23.168697, 8.961321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414368, -0.734816, 0.536977,
		0.111928, -0.544390, -0.831331,
		0.903200, 0.404580, -0.143331,
		21.952866, 23.290071, 8.918322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.723660, 22.482349, 8.891515>,  <21.320625, 23.006865, 9.018654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.723660, 22.482349, 8.891515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.953655, 22.775230, 9.037539>,  <22.091654, 22.950958, 9.125153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.953655, 22.775230, 9.037539>,  <21.723660, 22.482349, 8.891515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.953655, 22.775230, 9.037539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338688, -0.619185, 0.708449,
		0.744766, -0.283711, -0.604013,
		0.574990, 0.732201, 0.365059,
		22.126152, 22.994890, 9.147057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.149590, 22.121267, 9.271523>,  <21.723660, 22.482349, 8.891515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.149590, 22.121267, 9.271523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.198257, 22.495325, 9.404609>,  <22.227457, 22.719761, 9.484460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.198257, 22.495325, 9.404609>,  <22.149590, 22.121267, 9.271523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.198257, 22.495325, 9.404609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399492, -0.352992, 0.846051,
		0.908627, 0.029979, -0.416531,
		0.121668, 0.935146, 0.332715,
		22.234758, 22.775869, 9.504423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.813715, 22.037453, 9.519472>,  <22.149590, 22.121267, 9.271523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.813715, 22.037453, 9.519472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.682888, 22.374826, 9.689950>,  <22.604391, 22.577251, 9.792236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.682888, 22.374826, 9.689950>,  <22.813715, 22.037453, 9.519472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.682888, 22.374826, 9.689950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462346, -0.250513, 0.850576,
		0.824174, 0.475246, -0.308025,
		-0.327068, 0.843436, 0.426194,
		22.584768, 22.627857, 9.817808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.373272, 22.282530, 9.798579>,  <22.813715, 22.037453, 9.519472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.373272, 22.282530, 9.798579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.063400, 22.457947, 9.980812>,  <22.877478, 22.563196, 10.090152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.063400, 22.457947, 9.980812>,  <23.373272, 22.282530, 9.798579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.063400, 22.457947, 9.980812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353453, -0.297113, 0.887014,
		0.524353, 0.848177, 0.075162,
		-0.774677, 0.438542, 0.455583,
		22.830997, 22.589510, 10.117487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.649391, 22.418032, 10.418018>,  <23.373272, 22.282530, 9.798579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.649391, 22.418032, 10.418018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.256470, 22.433971, 10.491220>,  <23.020716, 22.443535, 10.535140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.256470, 22.433971, 10.491220>,  <23.649391, 22.418032, 10.418018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.256470, 22.433971, 10.491220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174707, -0.157163, 0.971997,
		0.067492, 0.986769, 0.147420,
		-0.982305, 0.039847, 0.183003,
		22.961779, 22.445925, 10.546121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.600311, 22.553492, 11.199370>,  <23.649391, 22.418032, 10.418018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.600311, 22.553492, 11.199370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.250500, 22.408688, 11.070282>,  <23.040613, 22.321804, 10.992829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.250500, 22.408688, 11.070282>,  <23.600311, 22.553492, 11.199370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.250500, 22.408688, 11.070282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115921, -0.490114, 0.863916,
		-0.470918, 0.792929, 0.386653,
		-0.874528, -0.362012, -0.322720,
		22.988142, 22.300083, 10.973466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.127533, 22.684475, 11.830305>,  <23.600311, 22.553492, 11.199370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.127533, 22.684475, 11.830305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.931631, 22.414906, 11.609047>,  <22.814091, 22.253164, 11.476293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.931631, 22.414906, 11.609047>,  <23.127533, 22.684475, 11.830305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.931631, 22.414906, 11.609047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103270, -0.585135, 0.804334,
		-0.865722, 0.451050, 0.216977,
		-0.489755, -0.673922, -0.553144,
		22.784704, 22.212729, 11.443104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.584122, 22.527163, 12.204480>,  <23.127533, 22.684475, 11.830305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.584122, 22.527163, 12.204480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.633863, 22.228437, 11.943159>,  <22.663710, 22.049202, 11.786366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.633863, 22.228437, 11.943159>,  <22.584122, 22.527163, 12.204480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.633863, 22.228437, 11.943159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234036, -0.661914, 0.712107,
		-0.964242, 0.064341, -0.257094,
		0.124357, -0.746813, -0.653304,
		22.671171, 22.004393, 11.747168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.021334, 22.104380, 12.246226>,  <22.584122, 22.527163, 12.204480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.021334, 22.104380, 12.246226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.310476, 21.860701, 12.115778>,  <22.483963, 21.714493, 12.037509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.310476, 21.860701, 12.115778>,  <22.021334, 22.104380, 12.246226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.310476, 21.860701, 12.115778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237354, -0.662148, 0.710791,
		-0.648945, -0.436400, -0.623237,
		0.722864, -0.609192, -0.326116,
		22.527334, 21.677942, 12.017941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.648611, 21.474836, 12.237279>,  <22.021334, 22.104380, 12.246226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.648611, 21.474836, 12.237279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.039738, 21.392576, 12.221378>,  <22.274414, 21.343220, 12.211838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.039738, 21.392576, 12.221378>,  <21.648611, 21.474836, 12.237279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.039738, 21.392576, 12.221378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151903, -0.826913, 0.541425,
		-0.144216, -0.523376, -0.839809,
		0.977818, -0.205652, -0.039751,
		22.333082, 21.330881, 12.209453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.699726, 20.698734, 11.991140>,  <21.648611, 21.474836, 12.237279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.699726, 20.698734, 11.991140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.039654, 20.805201, 12.173112>,  <22.243610, 20.869081, 12.282295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.039654, 20.805201, 12.173112>,  <21.699726, 20.698734, 11.991140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.039654, 20.805201, 12.173112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014102, -0.874297, 0.485186,
		0.526884, -0.405905, -0.746749,
		0.849820, 0.266167, 0.454929,
		22.294600, 20.885052, 12.309590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.215126, 20.084074, 11.843582>,  <21.699726, 20.698734, 11.991140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.215126, 20.084074, 11.843582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.316681, 20.300920, 12.163995>,  <22.377615, 20.431028, 12.356242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.316681, 20.300920, 12.163995>,  <22.215126, 20.084074, 11.843582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.316681, 20.300920, 12.163995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073208, -0.815021, 0.574788,
		0.964459, -0.204574, -0.167237,
		0.253889, 0.542116, 0.801031,
		22.392847, 20.463554, 12.404305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.497076, 19.604572, 12.253381>,  <22.215126, 20.084074, 11.843582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.497076, 19.604572, 12.253381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.465082, 19.903078, 12.517713>,  <22.445885, 20.082182, 12.676311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.465082, 19.903078, 12.517713>,  <22.497076, 19.604572, 12.253381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.465082, 19.903078, 12.517713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108146, -0.652542, 0.749995,
		0.990912, 0.131456, -0.028511,
		-0.079986, 0.746263, 0.660829,
		22.441086, 20.126957, 12.715961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.921150, 19.389027, 12.802818>,  <22.497076, 19.604572, 12.253381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.921150, 19.389027, 12.802818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.690914, 19.664097, 12.979816>,  <22.552773, 19.829140, 13.086015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.690914, 19.664097, 12.979816>,  <22.921150, 19.389027, 12.802818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.690914, 19.664097, 12.979816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060712, -0.575562, 0.815501,
		0.815483, 0.442528, 0.373037,
		-0.575588, 0.687675, 0.442494,
		22.518238, 19.870399, 13.112565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.187328, 19.536009, 13.526823>,  <22.921150, 19.389027, 12.802818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.187328, 19.536009, 13.526823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.807692, 19.660969, 13.542974>,  <22.579910, 19.735945, 13.552664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.807692, 19.660969, 13.542974>,  <23.187328, 19.536009, 13.526823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.807692, 19.660969, 13.542974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103151, -0.429341, 0.897233,
		0.297633, 0.847391, 0.439708,
		-0.949092, 0.312402, 0.040377,
		22.522964, 19.754690, 13.555086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.083214, 19.721340, 14.342743>,  <23.187328, 19.536009, 13.526823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.083214, 19.721340, 14.342743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.716581, 19.698950, 14.184381>,  <22.496601, 19.685514, 14.089363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.716581, 19.698950, 14.184381>,  <23.083214, 19.721340, 14.342743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.716581, 19.698950, 14.184381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225004, -0.746290, 0.626438,
		-0.330528, 0.663263, 0.671442,
		-0.916583, -0.055978, -0.395906,
		22.441607, 19.682156, 14.065609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.595709, 19.798576, 14.900464>,  <23.083214, 19.721340, 14.342743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.595709, 19.798576, 14.900464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.440783, 19.592260, 14.594799>,  <22.347826, 19.468472, 14.411400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.440783, 19.592260, 14.594799>,  <22.595709, 19.798576, 14.900464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.440783, 19.592260, 14.594799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282366, -0.722662, 0.630895,
		-0.877642, 0.460130, 0.134257,
		-0.387316, -0.515791, -0.764164,
		22.324587, 19.437523, 14.365550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.969521, 19.459223, 15.182528>,  <22.595709, 19.798576, 14.900464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.969521, 19.459223, 15.182528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.040516, 19.266146, 14.839482>,  <22.083113, 19.150299, 14.633655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.040516, 19.266146, 14.839482>,  <21.969521, 19.459223, 15.182528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.040516, 19.266146, 14.839482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424248, -0.823847, 0.375885,
		-0.887981, 0.297127, -0.351006,
		0.177490, -0.482692, -0.857616,
		22.093763, 19.121338, 14.582197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.304823, 19.162529, 15.090922>,  <21.969521, 19.459223, 15.182528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.304823, 19.162529, 15.090922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.568058, 18.932789, 14.896174>,  <21.725998, 18.794945, 14.779325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.568058, 18.932789, 14.896174>,  <21.304823, 19.162529, 15.090922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.568058, 18.932789, 14.896174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411043, -0.815813, 0.406807,
		-0.630845, -0.067590, -0.772959,
		0.658086, -0.574352, -0.486870,
		21.765484, 18.760483, 14.750113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.880369, 18.642172, 15.022728>,  <21.304823, 19.162529, 15.090922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.880369, 18.642172, 15.022728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.221849, 18.472651, 14.901676>,  <21.426737, 18.370937, 14.829045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.221849, 18.472651, 14.901676>,  <20.880369, 18.642172, 15.022728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.221849, 18.472651, 14.901676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359654, -0.900092, 0.245935,
		-0.376623, -0.101113, -0.920832,
		0.853701, -0.423806, -0.302629,
		21.477959, 18.345509, 14.810887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.696623, 18.152336, 14.512181>,  <20.880369, 18.642172, 15.022728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.696623, 18.152336, 14.512181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.046576, 18.074219, 14.689469>,  <21.256548, 18.027349, 14.795842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.046576, 18.074219, 14.689469>,  <20.696623, 18.152336, 14.512181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.046576, 18.074219, 14.689469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303646, -0.934095, 0.187791,
		0.377336, -0.298877, -0.876522,
		0.874881, -0.195292, 0.443220,
		21.309040, 18.015631, 14.822435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.008833, 17.505911, 14.189336>,  <20.696623, 18.152336, 14.512181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.008833, 17.505911, 14.189336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.158251, 17.573517, 14.554170>,  <21.247902, 17.614080, 14.773069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.158251, 17.573517, 14.554170>,  <21.008833, 17.505911, 14.189336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.158251, 17.573517, 14.554170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302360, -0.907374, 0.291977,
		0.876950, -0.384844, -0.287842,
		0.373546, 0.169017, 0.912084,
		21.270315, 17.624222, 14.827795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.461109, 16.913677, 14.306056>,  <21.008833, 17.505911, 14.189336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.461109, 16.913677, 14.306056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.320108, 17.057665, 14.651580>,  <21.235508, 17.144056, 14.858894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.320108, 17.057665, 14.651580>,  <21.461109, 16.913677, 14.306056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.320108, 17.057665, 14.651580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324474, -0.912811, 0.247978,
		0.877758, -0.192871, 0.438567,
		-0.352501, 0.359968, 0.863809,
		21.214357, 17.165655, 14.910723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.685894, 16.580446, 14.835384>,  <21.461109, 16.913677, 14.306056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.685894, 16.580446, 14.835384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.355413, 16.743292, 14.991152>,  <21.157125, 16.841000, 15.084613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.355413, 16.743292, 14.991152>,  <21.685894, 16.580446, 14.835384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.355413, 16.743292, 14.991152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201590, -0.859100, 0.470436,
		0.526071, 0.310172, 0.791860,
		-0.826203, 0.407113, 0.389420,
		21.107553, 16.865425, 15.107978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.352060, 16.200766, 14.934252>,  <21.685894, 16.580446, 14.835384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.352060, 16.200766, 14.934252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.710522, 16.109730, 15.086628>,  <22.925598, 16.055107, 15.178054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.710522, 16.109730, 15.086628>,  <22.352060, 16.200766, 14.934252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.710522, 16.109730, 15.086628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429805, 0.658684, -0.617578,
		-0.110365, 0.717173, 0.688100,
		0.896151, -0.227591, 0.380940,
		22.979366, 16.041452, 15.200910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.653202, 16.838572, 14.884120>,  <22.352060, 16.200766, 14.934252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.653202, 16.838572, 14.884120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.956650, 16.583824, 14.939113>,  <23.138718, 16.430977, 14.972108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.956650, 16.583824, 14.939113>,  <22.653202, 16.838572, 14.884120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.956650, 16.583824, 14.939113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585815, 0.574381, -0.571758,
		0.285167, 0.514284, 0.808821,
		0.758617, -0.636866, 0.137481,
		23.184235, 16.392765, 14.980357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.239832, 17.169611, 15.150616>,  <22.653202, 16.838572, 14.884120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.239832, 17.169611, 15.150616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.396830, 16.841032, 14.985125>,  <23.491028, 16.643885, 14.885830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.396830, 16.841032, 14.985125>,  <23.239832, 17.169611, 15.150616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.396830, 16.841032, 14.985125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664003, 0.564331, -0.490542,
		0.636434, -0.082181, 0.766941,
		0.392495, -0.821448, -0.413728,
		23.514578, 16.594597, 14.861007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.960234, 17.429874, 14.868378>,  <23.239832, 17.169611, 15.150616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.960234, 17.429874, 14.868378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.926413, 17.078880, 14.679542>,  <23.906120, 16.868284, 14.566240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.926413, 17.078880, 14.679542>,  <23.960234, 17.429874, 14.868378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.926413, 17.078880, 14.679542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508804, 0.369340, -0.777629,
		0.856720, -0.305950, 0.415241,
		-0.084551, -0.877487, -0.472089,
		23.901047, 16.815634, 14.537915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.566048, 17.421385, 14.494761>,  <23.960234, 17.429874, 14.868378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.566048, 17.421385, 14.494761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.311449, 17.161222, 14.328942>,  <24.158689, 17.005125, 14.229451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.311449, 17.161222, 14.328942>,  <24.566048, 17.421385, 14.494761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.311449, 17.161222, 14.328942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234603, 0.348747, -0.907379,
		0.734736, -0.674795, -0.069388,
		-0.636494, -0.650405, -0.414546,
		24.120501, 16.966101, 14.204578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.954145, 17.122356, 13.962725>,  <24.566048, 17.421385, 14.494761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.954145, 17.122356, 13.962725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.583740, 17.017639, 13.853937>,  <24.361498, 16.954809, 13.788665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.583740, 17.017639, 13.853937>,  <24.954145, 17.122356, 13.962725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.583740, 17.017639, 13.853937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188077, 0.304716, -0.933689,
		0.327311, -0.915756, -0.232932,
		-0.926010, -0.261798, -0.271970,
		24.305937, 16.939100, 13.772346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.021687, 16.908981, 13.375311>,  <24.954145, 17.122356, 13.962725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.021687, 16.908981, 13.375311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.637100, 17.016983, 13.396023>,  <24.406349, 17.081783, 13.408450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.637100, 17.016983, 13.396023>,  <25.021687, 16.908981, 13.375311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.637100, 17.016983, 13.396023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074176, 0.436128, -0.896822,
		-0.264727, -0.858424, -0.439351,
		-0.961466, 0.270002, 0.051781,
		24.348660, 17.097984, 13.411557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.747694, 16.884207, 12.721483>,  <25.021687, 16.908981, 13.375311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.747694, 16.884207, 12.721483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.466545, 17.133003, 12.859522>,  <24.297855, 17.282282, 12.942346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.466545, 17.133003, 12.859522>,  <24.747694, 16.884207, 12.721483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.466545, 17.133003, 12.859522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043123, 0.447002, -0.893493,
		-0.710005, -0.642895, -0.287364,
		-0.702875, 0.621993, 0.345097,
		24.255682, 17.319601, 12.963051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.346279, 17.106903, 12.169127>,  <24.747694, 16.884207, 12.721483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.346279, 17.106903, 12.169127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.214174, 17.384876, 12.424626>,  <24.134911, 17.551659, 12.577926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.214174, 17.384876, 12.424626>,  <24.346279, 17.106903, 12.169127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.214174, 17.384876, 12.424626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010115, 0.679285, -0.733805,
		-0.943835, -0.235888, -0.231372,
		-0.330263, 0.694930, 0.638747,
		24.115095, 17.593355, 12.616250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.804823, 17.454159, 11.840997>,  <24.346279, 17.106903, 12.169127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.804823, 17.454159, 11.840997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.958532, 17.701082, 12.115592>,  <24.050758, 17.849236, 12.280349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.958532, 17.701082, 12.115592>,  <23.804823, 17.454159, 11.840997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.958532, 17.701082, 12.115592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102095, 0.710605, -0.696144,
		-0.917557, 0.337596, 0.210042,
		0.384273, 0.617308, 0.686488,
		24.073814, 17.886274, 12.321538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.381927, 18.055750, 11.843108>,  <23.804823, 17.454159, 11.840997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.381927, 18.055750, 11.843108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.745394, 18.151171, 11.980175>,  <23.963474, 18.208424, 12.062415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.745394, 18.151171, 11.980175>,  <23.381927, 18.055750, 11.843108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.745394, 18.151171, 11.980175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091623, 0.686779, -0.721069,
		-0.407349, 0.686606, 0.602195,
		0.908665, 0.238552, 0.342667,
		24.017994, 18.222736, 12.082975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.417648, 18.783947, 11.770970>,  <23.381927, 18.055750, 11.843108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.417648, 18.783947, 11.770970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.799076, 18.665655, 11.793784>,  <24.027933, 18.594681, 11.807472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.799076, 18.665655, 11.793784>,  <23.417648, 18.783947, 11.770970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.799076, 18.665655, 11.793784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267630, 0.745157, -0.610832,
		0.138142, 0.597733, 0.789704,
		0.953568, -0.295730, 0.057033,
		24.085146, 18.576937, 11.810894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.674051, 19.499403, 11.834147>,  <23.417648, 18.783947, 11.770970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.674051, 19.499403, 11.834147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.981670, 19.259584, 11.745507>,  <24.166243, 19.115694, 11.692323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.981670, 19.259584, 11.745507>,  <23.674051, 19.499403, 11.834147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.981670, 19.259584, 11.745507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214776, 0.568916, -0.793855,
		0.602026, 0.562919, 0.566293,
		0.769049, -0.599547, -0.221601,
		24.212385, 19.079720, 11.679027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.211290, 19.899220, 11.696045>,  <23.674051, 19.499403, 11.834147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.211290, 19.899220, 11.696045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.333927, 19.553091, 11.537440>,  <24.407509, 19.345413, 11.442278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.333927, 19.553091, 11.537440>,  <24.211290, 19.899220, 11.696045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.333927, 19.553091, 11.537440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263650, 0.477477, -0.838156,
		0.914598, 0.152432, 0.374532,
		0.306593, -0.865321, -0.396511,
		24.425905, 19.293495, 11.418488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.935923, 19.924772, 11.528880>,  <24.211290, 19.899220, 11.696045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.935923, 19.924772, 11.528880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.758625, 19.658672, 11.288555>,  <24.652246, 19.499012, 11.144361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.758625, 19.658672, 11.288555>,  <24.935923, 19.924772, 11.528880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.758625, 19.658672, 11.288555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157750, 0.601900, -0.782835,
		0.882411, -0.441765, -0.161845,
		-0.443244, -0.665252, -0.600812,
		24.625652, 19.459097, 11.108312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.207523, 20.064375, 10.833753>,  <24.935923, 19.924772, 11.528880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.207523, 20.064375, 10.833753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.906439, 19.810608, 10.763394>,  <24.725788, 19.658348, 10.721180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.906439, 19.810608, 10.763394>,  <25.207523, 20.064375, 10.833753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.906439, 19.810608, 10.763394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215074, 0.489477, -0.845077,
		0.622231, -0.598267, -0.504881,
		-0.752710, -0.634420, -0.175896,
		24.680626, 19.620281, 10.710626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.417061, 19.825897, 10.307836>,  <25.207523, 20.064375, 10.833753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.417061, 19.825897, 10.307836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.017605, 19.805637, 10.312720>,  <24.777931, 19.793482, 10.315651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.017605, 19.805637, 10.312720>,  <25.417061, 19.825897, 10.307836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.017605, 19.805637, 10.312720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037465, 0.535192, -0.843899,
		0.036207, -0.843210, -0.536363,
		-0.998642, -0.050650, 0.012213,
		24.718012, 19.790442, 10.316384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.384703, 19.462763, 9.649228>,  <25.417061, 19.825897, 10.307836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.384703, 19.462763, 9.649228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.039310, 19.627649, 9.765487>,  <24.832075, 19.726582, 9.835242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.039310, 19.627649, 9.765487>,  <25.384703, 19.462763, 9.649228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.039310, 19.627649, 9.765487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071094, 0.669964, -0.738981,
		-0.499343, -0.617434, -0.607809,
		-0.863482, 0.412217, 0.290646,
		24.780266, 19.751314, 9.852680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.042952, 19.435236, 9.060104>,  <25.384703, 19.462763, 9.649228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.042952, 19.435236, 9.060104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.887445, 19.718439, 9.295929>,  <24.794142, 19.888361, 9.437424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.887445, 19.718439, 9.295929>,  <25.042952, 19.435236, 9.060104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.887445, 19.718439, 9.295929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165980, 0.683250, -0.711070,
		-0.906263, -0.178584, -0.383139,
		-0.388765, 0.708010, 0.589562,
		24.770817, 19.930841, 9.472797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.544464, 16.256514, 21.256783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.237417, 16.020493, 21.156696>,  <16.053190, 15.878881, 21.096645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.237417, 16.020493, 21.156696>,  <16.544464, 16.256514, 21.256783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.237417, 16.020493, 21.156696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492062, -0.292420, -0.819979,
		0.410661, -0.752550, 0.514807,
		-0.767615, -0.590050, -0.250215,
		16.007133, 15.843477, 21.081633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.800911, 15.566859, 21.320192>,  <16.544464, 16.256514, 21.256783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.800911, 15.566859, 21.320192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.479860, 15.580997, 21.082018>,  <16.287230, 15.589480, 20.939114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.479860, 15.580997, 21.082018>,  <16.800911, 15.566859, 21.320192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.479860, 15.580997, 21.082018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567854, -0.260277, -0.780895,
		-0.182579, -0.964887, 0.188833,
		-0.802624, 0.035346, -0.595436,
		16.239073, 15.591601, 20.903387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.993341, 15.191801, 20.699539>,  <16.800911, 15.566859, 21.320192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.993341, 15.191801, 20.699539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.671297, 15.384984, 20.561817>,  <16.478071, 15.500894, 20.479183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.671297, 15.384984, 20.561817>,  <16.993341, 15.191801, 20.699539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.671297, 15.384984, 20.561817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362432, -0.058924, -0.930146,
		-0.469509, -0.873659, -0.127599,
		-0.805111, 0.482958, -0.344307,
		16.429764, 15.529871, 20.458525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.703321, 14.770101, 20.227501>,  <16.993341, 15.191801, 20.699539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.703321, 14.770101, 20.227501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.529408, 15.108293, 20.103483>,  <16.425060, 15.311208, 20.029072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.529408, 15.108293, 20.103483>,  <16.703321, 14.770101, 20.227501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.529408, 15.108293, 20.103483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342572, -0.163121, -0.925222,
		-0.832831, -0.508484, -0.218716,
		-0.434784, 0.845479, -0.310045,
		16.398972, 15.361937, 20.010469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.164213, 14.617746, 19.683094>,  <16.703321, 14.770101, 20.227501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.164213, 14.617746, 19.683094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.293806, 14.992212, 19.628492>,  <16.371561, 15.216891, 19.595732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.293806, 14.992212, 19.628492>,  <16.164213, 14.617746, 19.683094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.293806, 14.992212, 19.628492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135093, -0.188586, -0.972720,
		-0.936368, 0.296703, -0.187568,
		0.323982, 0.936164, -0.136504,
		16.391001, 15.273062, 19.587542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.924758, 14.802289, 18.997473>,  <16.164213, 14.617746, 19.683094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.924758, 14.802289, 18.997473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.176792, 15.105181, 19.066288>,  <16.328012, 15.286916, 19.107578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.176792, 15.105181, 19.066288>,  <15.924758, 14.802289, 18.997473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.176792, 15.105181, 19.066288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313949, -0.045777, -0.948336,
		-0.710231, 0.651544, -0.266574,
		0.630086, 0.757228, 0.172040,
		16.365818, 15.332349, 19.117899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.853525, 15.165470, 18.479551>,  <15.924758, 14.802289, 18.997473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.853525, 15.165470, 18.479551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.206358, 15.282590, 18.627172>,  <16.418056, 15.352862, 18.715746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.206358, 15.282590, 18.627172>,  <15.853525, 15.165470, 18.479551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.206358, 15.282590, 18.627172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375422, 0.036348, -0.926141,
		-0.284589, 0.955483, -0.077862,
		0.882081, 0.292800, 0.369054,
		16.470982, 15.370430, 18.737888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.185255, 15.818851, 18.035067>,  <15.853525, 15.165470, 18.479551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.185255, 15.818851, 18.035067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.487965, 15.644236, 18.229685>,  <16.669590, 15.539467, 18.346457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.487965, 15.644236, 18.229685>,  <16.185255, 15.818851, 18.035067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.487965, 15.644236, 18.229685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591060, 0.139081, -0.794546,
		0.279180, 0.888871, 0.363273,
		0.756774, -0.436537, 0.486548,
		16.714996, 15.513274, 18.375648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.772556, 16.282730, 17.945126>,  <16.185255, 15.818851, 18.035067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.772556, 16.282730, 17.945126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.962051, 15.945148, 18.045771>,  <17.075748, 15.742599, 18.106157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.962051, 15.945148, 18.045771>,  <16.772556, 16.282730, 17.945126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.962051, 15.945148, 18.045771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505717, 0.026798, -0.862283,
		0.720986, 0.535742, 0.439498,
		0.473739, -0.843956, 0.251613,
		17.104174, 15.691961, 18.121254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.520521, 16.379719, 17.796936>,  <16.772556, 16.282730, 17.945126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.520521, 16.379719, 17.796936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.483763, 15.981441, 17.792048>,  <17.461708, 15.742476, 17.789114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.483763, 15.981441, 17.792048>,  <17.520521, 16.379719, 17.796936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.483763, 15.981441, 17.792048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559283, -0.041457, -0.827939,
		0.823867, -0.082920, 0.560684,
		-0.091897, -0.995694, -0.012221,
		17.456194, 15.682734, 17.788382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.166426, 16.143530, 17.444366>,  <17.520521, 16.379719, 17.796936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.166426, 16.143530, 17.444366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.918854, 15.831125, 17.411026>,  <17.770309, 15.643683, 17.391022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.918854, 15.831125, 17.411026>,  <18.166426, 16.143530, 17.444366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.918854, 15.831125, 17.411026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462628, -0.276733, -0.842256,
		0.634743, -0.559860, 0.532595,
		-0.618932, -0.781010, -0.083352,
		17.733173, 15.596823, 17.386021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.572027, 15.629694, 17.040537>,  <18.166426, 16.143530, 17.444366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.572027, 15.629694, 17.040537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.208433, 15.465649, 17.010725>,  <17.990276, 15.367222, 16.992838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.208433, 15.465649, 17.010725>,  <18.572027, 15.629694, 17.040537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.208433, 15.465649, 17.010725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277618, -0.462280, -0.842155,
		0.310926, -0.786196, 0.534060,
		-0.908985, -0.410113, -0.074527,
		17.935738, 15.342615, 16.988367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.574986, 14.869215, 16.890923>,  <18.572027, 15.629694, 17.040537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.574986, 14.869215, 16.890923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.243496, 15.016500, 16.722336>,  <18.044601, 15.104872, 16.621183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.243496, 15.016500, 16.722336>,  <18.574986, 14.869215, 16.890923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.243496, 15.016500, 16.722336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286246, -0.368247, -0.884566,
		-0.480912, -0.853705, 0.199776,
		-0.828726, 0.368213, -0.421465,
		17.994879, 15.126965, 16.595896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.245234, 14.774588, 17.193312>,  <18.574986, 14.869215, 16.890923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.245234, 14.774588, 17.193312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.232218, 15.059266, 17.474005>,  <19.224409, 15.230073, 17.642422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.232218, 15.059266, 17.474005>,  <19.245234, 14.774588, 17.193312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.232218, 15.059266, 17.474005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887094, -0.344015, 0.307764,
		0.460441, -0.612490, 0.642534,
		-0.032539, 0.711695, 0.701734,
		19.222456, 15.272775, 17.684525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.653124, 14.987345, 16.539160>,  <19.245234, 14.774588, 17.193312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.653124, 14.987345, 16.539160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.022167, 14.913754, 16.674772>,  <20.243593, 14.869598, 16.756140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.022167, 14.913754, 16.674772>,  <19.653124, 14.987345, 16.539160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.022167, 14.913754, 16.674772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372325, -0.654473, 0.658057,
		0.100818, -0.733360, -0.672324,
		0.922610, -0.183979, 0.339031,
		20.298950, 14.858560, 16.776482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.687508, 14.247827, 16.544828>,  <19.653124, 14.987345, 16.539160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.687508, 14.247827, 16.544828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.974504, 14.377697, 16.791338>,  <20.146702, 14.455619, 16.939243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.974504, 14.377697, 16.791338>,  <19.687508, 14.247827, 16.544828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.974504, 14.377697, 16.791338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295862, -0.658910, 0.691595,
		0.630612, -0.678545, -0.376703,
		0.717492, 0.324676, 0.616272,
		20.189753, 14.475100, 16.976219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.094860, 13.718388, 16.673908>,  <19.687508, 14.247827, 16.544828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.094860, 13.718388, 16.673908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.109585, 13.983807, 16.972799>,  <20.118420, 14.143058, 17.152134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.109585, 13.983807, 16.972799>,  <20.094860, 13.718388, 16.673908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.109585, 13.983807, 16.972799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176896, -0.731600, 0.658384,
		0.983541, -0.156417, 0.090449,
		0.036809, 0.663548, 0.747228,
		20.120628, 14.182871, 17.196968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.130272, 13.261396, 17.174000>,  <20.094860, 13.718388, 16.673908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.130272, 13.261396, 17.174000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.086103, 13.587144, 17.401897>,  <20.059603, 13.782593, 17.538635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.086103, 13.587144, 17.401897>,  <20.130272, 13.261396, 17.174000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.086103, 13.587144, 17.401897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280277, -0.575499, 0.768274,
		0.953547, -0.074852, 0.291797,
		-0.110422, 0.814370, 0.569745,
		20.052977, 13.831455, 17.572821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.451960, 13.096647, 17.809736>,  <20.130272, 13.261396, 17.174000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.451960, 13.096647, 17.809736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.198301, 13.394601, 17.892689>,  <20.046106, 13.573373, 17.942461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.198301, 13.394601, 17.892689>,  <20.451960, 13.096647, 17.809736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.198301, 13.394601, 17.892689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069055, -0.321696, 0.944321,
		0.770123, 0.584517, 0.255440,
		-0.634146, 0.744883, 0.207382,
		20.008057, 13.618066, 17.954903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.625944, 13.220483, 18.484373>,  <20.451960, 13.096647, 17.809736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.625944, 13.220483, 18.484373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.277035, 13.405605, 18.421190>,  <20.067690, 13.516679, 18.383280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.277035, 13.405605, 18.421190>,  <20.625944, 13.220483, 18.484373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.277035, 13.405605, 18.421190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314803, -0.284237, 0.905598,
		0.374219, 0.839654, 0.393625,
		-0.872272, 0.462806, -0.157959,
		20.015352, 13.544447, 18.373802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.484020, 13.472691, 19.134092>,  <20.625944, 13.220483, 18.484373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.484020, 13.472691, 19.134092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.139574, 13.492872, 18.931730>,  <19.932907, 13.504981, 18.810314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.139574, 13.492872, 18.931730>,  <20.484020, 13.472691, 19.134092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.139574, 13.492872, 18.931730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500076, -0.263520, 0.824913,
		-0.091695, 0.963333, 0.252152,
		-0.861113, 0.050455, -0.505904,
		19.881241, 13.508009, 18.779959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.995590, 13.744203, 19.570143>,  <20.484020, 13.472691, 19.134092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.995590, 13.744203, 19.570143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.780668, 13.537725, 19.303354>,  <19.651714, 13.413839, 19.143282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.780668, 13.537725, 19.303354>,  <19.995590, 13.744203, 19.570143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.780668, 13.537725, 19.303354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536961, -0.400457, 0.742500,
		-0.650366, 0.757086, -0.062008,
		-0.537305, -0.516193, -0.666969,
		19.619476, 13.382868, 19.103264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.347527, 13.799643, 19.798901>,  <19.995590, 13.744203, 19.570143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.347527, 13.799643, 19.798901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.340313, 13.477966, 19.561262>,  <19.335985, 13.284960, 19.418678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.340313, 13.477966, 19.561262>,  <19.347527, 13.799643, 19.798901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.340313, 13.477966, 19.561262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647418, -0.443411, 0.619869,
		-0.761922, 0.395806, -0.512652,
		-0.018032, -0.804192, -0.594096,
		19.334904, 13.236709, 19.383034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.721109, 13.655568, 19.580656>,  <19.347527, 13.799643, 19.798901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.721109, 13.655568, 19.580656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.903605, 13.299707, 19.588318>,  <19.013102, 13.086191, 19.592915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.903605, 13.299707, 19.588318>,  <18.721109, 13.655568, 19.580656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.903605, 13.299707, 19.588318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681681, -0.335586, 0.650149,
		-0.571979, -0.309677, -0.759565,
		0.456236, -0.889653, 0.019153,
		19.040476, 13.032812, 19.594065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.182966, 13.177658, 19.512774>,  <18.721109, 13.655568, 19.580656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.182966, 13.177658, 19.512774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.498924, 12.964341, 19.633881>,  <18.688499, 12.836351, 19.706545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.498924, 12.964341, 19.633881>,  <18.182966, 13.177658, 19.512774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.498924, 12.964341, 19.633881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577945, -0.482282, 0.658318,
		-0.205057, -0.694984, -0.689165,
		0.789893, -0.533292, 0.302767,
		18.735891, 12.804354, 19.724710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.868481, 12.600599, 19.672640>,  <18.182966, 13.177658, 19.512774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.868481, 12.600599, 19.672640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.223858, 12.538845, 19.845535>,  <18.437084, 12.501793, 19.949272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.223858, 12.538845, 19.845535>,  <17.868481, 12.600599, 19.672640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.223858, 12.538845, 19.845535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443178, -0.533557, 0.720354,
		0.119412, -0.831554, -0.542456,
		0.888445, -0.154386, 0.432239,
		18.490391, 12.492530, 19.975206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.901712, 11.905680, 19.753323>,  <17.868481, 12.600599, 19.672640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.901712, 11.905680, 19.753323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.146784, 12.070678, 20.022980>,  <18.293827, 12.169677, 20.184774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.146784, 12.070678, 20.022980>,  <17.901712, 11.905680, 19.753323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.146784, 12.070678, 20.022980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381134, -0.593041, 0.709252,
		0.692359, -0.691484, -0.206129,
		0.612680, 0.412494, 0.674145,
		18.330587, 12.194427, 20.225224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.793859, 11.543561, 20.237757>,  <17.901712, 11.905680, 19.753323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.793859, 11.543561, 20.237757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.008511, 11.813154, 20.440844>,  <18.137300, 11.974911, 20.562696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.008511, 11.813154, 20.440844>,  <17.793859, 11.543561, 20.237757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.008511, 11.813154, 20.440844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401353, -0.325403, 0.856171,
		0.742258, -0.663218, 0.095886,
		0.536626, 0.673984, 0.507718,
		18.169498, 12.015349, 20.593159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.312115, 10.939014, 20.043737>,  <17.793859, 11.543561, 20.237757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.312115, 10.939014, 20.043737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.191835, 10.560455, 19.996557>,  <18.119669, 10.333320, 19.968248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.191835, 10.560455, 19.996557>,  <18.312115, 10.939014, 20.043737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.191835, 10.560455, 19.996557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167818, 0.069240, -0.983383,
		0.938839, -0.315495, 0.138002,
		-0.300697, -0.946398, -0.117951,
		18.101625, 10.276536, 19.961172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.894131, 10.524890, 19.709543>,  <18.312115, 10.939014, 20.043737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.894131, 10.524890, 19.709543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.552017, 10.334740, 19.627069>,  <18.346750, 10.220650, 19.577585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.552017, 10.334740, 19.627069>,  <18.894131, 10.524890, 19.709543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.552017, 10.334740, 19.627069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159607, 0.136874, -0.977646,
		0.492970, -0.869070, -0.041192,
		-0.855281, -0.475375, -0.206184,
		18.295433, 10.192127, 19.565214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.009819, 10.125316, 19.081230>,  <18.894131, 10.524890, 19.709543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.009819, 10.125316, 19.081230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.611650, 10.162559, 19.089836>,  <18.372749, 10.184904, 19.094999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.611650, 10.162559, 19.089836>,  <19.009819, 10.125316, 19.081230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.611650, 10.162559, 19.089836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017725, 0.041332, -0.998988,
		-0.093904, -0.994798, -0.039493,
		-0.995423, 0.093109, 0.021514,
		18.313023, 10.190491, 19.096291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.863995, 9.805483, 18.411444>,  <19.009819, 10.125316, 19.081230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.863995, 9.805483, 18.411444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.518038, 9.970736, 18.525486>,  <18.310463, 10.069887, 18.593912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.518038, 9.970736, 18.525486>,  <18.863995, 9.805483, 18.411444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.518038, 9.970736, 18.525486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252848, 0.132093, -0.958446,
		-0.433625, -0.901040, -0.009786,
		-0.864891, 0.413132, 0.285105,
		18.258570, 10.094675, 18.611017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.218716, 9.369260, 18.134930>,  <18.863995, 9.805483, 18.411444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.218716, 9.369260, 18.134930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.128584, 9.753489, 18.200073>,  <18.074505, 9.984028, 18.239159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.128584, 9.753489, 18.200073>,  <18.218716, 9.369260, 18.134930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.128584, 9.753489, 18.200073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395700, 0.062522, -0.916249,
		-0.890308, -0.270900, 0.366011,
		-0.225328, 0.960575, 0.162859,
		18.060986, 10.041662, 18.248930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.559179, 9.292346, 17.920012>,  <18.218716, 9.369260, 18.134930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.559179, 9.292346, 17.920012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.627325, 9.686434, 17.927151>,  <17.668213, 9.922887, 17.931435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.627325, 9.686434, 17.927151>,  <17.559179, 9.292346, 17.920012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.627325, 9.686434, 17.927151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596907, 0.117592, -0.793646,
		-0.784014, 0.124555, 0.608118,
		0.170362, 0.985220, 0.017846,
		17.678434, 9.981999, 17.932505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.989235, 9.485723, 17.717150>,  <17.559179, 9.292346, 17.920012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.989235, 9.485723, 17.717150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.208517, 9.815571, 17.661333>,  <17.340086, 10.013479, 17.627842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.208517, 9.815571, 17.661333>,  <16.989235, 9.485723, 17.717150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.208517, 9.815571, 17.661333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667421, 0.330799, -0.667174,
		-0.504004, 0.458883, 0.731715,
		0.548205, 0.824620, -0.139544,
		17.372978, 10.062957, 17.619471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.491383, 10.005356, 17.679770>,  <16.989235, 9.485723, 17.717150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.491383, 10.005356, 17.679770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.822462, 10.151255, 17.509182>,  <17.021109, 10.238793, 17.406830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.822462, 10.151255, 17.509182>,  <16.491383, 10.005356, 17.679770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.822462, 10.151255, 17.509182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549915, 0.375716, -0.745943,
		-0.111848, 0.851937, 0.511559,
		0.827697, 0.364747, -0.426470,
		17.070772, 10.260678, 17.381241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.421589, 10.767714, 17.536697>,  <16.491383, 10.005356, 17.679770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.421589, 10.767714, 17.536697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.684244, 10.636366, 17.265110>,  <16.841837, 10.557557, 17.102158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.684244, 10.636366, 17.265110>,  <16.421589, 10.767714, 17.536697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.684244, 10.636366, 17.265110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520308, 0.454481, -0.722998,
		0.545989, 0.828022, 0.127577,
		0.656639, -0.328369, -0.678969,
		16.881235, 10.537855, 17.061419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.263836, 11.123286, 16.974691>,  <16.421589, 10.767714, 17.536697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.263836, 11.123286, 16.974691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.539639, 10.902853, 16.786697>,  <16.705120, 10.770593, 16.673901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.539639, 10.902853, 16.786697>,  <16.263836, 11.123286, 16.974691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.539639, 10.902853, 16.786697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289525, 0.385082, -0.876292,
		0.663892, 0.740283, 0.105965,
		0.689509, -0.551084, -0.469983,
		16.746490, 10.737528, 16.645702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.749128, 11.449326, 16.530737>,  <16.263836, 11.123286, 16.974691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.749128, 11.449326, 16.530737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.726955, 11.076854, 16.386608>,  <16.713652, 10.853371, 16.300131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.726955, 11.076854, 16.386608>,  <16.749128, 11.449326, 16.530737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.726955, 11.076854, 16.386608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454119, 0.344905, -0.821472,
		0.889215, 0.118095, -0.441984,
		-0.055431, -0.931179, -0.360324,
		16.710325, 10.797500, 16.278511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.996704, 11.432718, 15.816050>,  <16.749128, 11.449326, 16.530737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.996704, 11.432718, 15.816050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.750227, 11.119813, 15.852642>,  <16.602341, 10.932070, 15.874598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.750227, 11.119813, 15.852642>,  <16.996704, 11.432718, 15.816050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.750227, 11.119813, 15.852642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361096, 0.177375, -0.915504,
		0.699939, -0.597161, -0.391770,
		-0.616194, -0.782264, 0.091481,
		16.565369, 10.885134, 15.880086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<16.295448, 10.096746, 25.246260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.669359, 10.209023, 25.333353>,  <16.893705, 10.276388, 25.385609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.669359, 10.209023, 25.333353>,  <16.295448, 10.096746, 25.246260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.669359, 10.209023, 25.333353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155547, 0.227625, -0.961245,
		-0.319372, 0.932416, 0.169118,
		0.934776, 0.280689, 0.217731,
		16.949793, 10.293229, 25.398672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.408932, 10.545999, 24.751369>,  <16.295448, 10.096746, 25.246260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.408932, 10.545999, 24.751369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.786625, 10.480206, 24.865475>,  <17.013241, 10.440730, 24.933937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.786625, 10.480206, 24.865475>,  <16.408932, 10.545999, 24.751369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.786625, 10.480206, 24.865475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292947, 0.024007, -0.955827,
		0.150368, 0.986088, 0.070852,
		0.944231, -0.164482, 0.285262,
		17.069895, 10.430861, 24.951054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.773680, 10.931952, 24.230640>,  <16.408932, 10.545999, 24.751369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.773680, 10.931952, 24.230640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.019939, 10.653732, 24.378796>,  <17.167694, 10.486800, 24.467690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.019939, 10.653732, 24.378796>,  <16.773680, 10.931952, 24.230640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.019939, 10.653732, 24.378796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407939, -0.120834, -0.904978,
		0.674214, 0.708243, 0.209352,
		0.615647, -0.695551, 0.370388,
		17.204634, 10.445067, 24.489912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.386221, 11.004377, 23.799370>,  <16.773680, 10.931952, 24.230640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.386221, 11.004377, 23.799370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.479233, 10.658344, 23.977163>,  <17.535040, 10.450725, 24.083839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.479233, 10.658344, 23.977163>,  <17.386221, 11.004377, 23.799370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.479233, 10.658344, 23.977163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448856, -0.309977, -0.838118,
		0.862820, 0.394396, 0.316218,
		0.232530, -0.865082, 0.444482,
		17.548992, 10.398820, 24.110508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.134285, 10.912660, 23.709328>,  <17.386221, 11.004377, 23.799370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.134285, 10.912660, 23.709328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.952143, 10.560397, 23.761629>,  <17.842857, 10.349040, 23.793011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.952143, 10.560397, 23.761629>,  <18.134285, 10.912660, 23.709328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.952143, 10.560397, 23.761629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329504, -0.303134, -0.894168,
		0.827090, -0.364081, 0.428213,
		-0.455356, -0.880656, 0.130754,
		17.815536, 10.296201, 23.800856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.637770, 10.356525, 23.618195>,  <18.134285, 10.912660, 23.709328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.637770, 10.356525, 23.618195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.277424, 10.205385, 23.532711>,  <18.061216, 10.114701, 23.481421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.277424, 10.205385, 23.532711>,  <18.637770, 10.356525, 23.618195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.277424, 10.205385, 23.532711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370420, -0.412418, -0.832286,
		0.226343, -0.828939, 0.511496,
		-0.900865, -0.377851, -0.213708,
		18.007164, 10.092030, 23.468599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.748194, 9.838332, 23.214794>,  <18.637770, 10.356525, 23.618195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.748194, 9.838332, 23.214794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.352150, 9.861374, 23.163622>,  <18.114523, 9.875199, 23.132919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.352150, 9.861374, 23.163622>,  <18.748194, 9.838332, 23.214794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.352150, 9.861374, 23.163622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096343, -0.383708, -0.918415,
		-0.101992, -0.921656, 0.374363,
		-0.990109, 0.057604, -0.127931,
		18.055117, 9.878655, 23.125242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.573496, 9.201230, 22.769381>,  <18.748194, 9.838332, 23.214794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.573496, 9.201230, 22.769381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.249334, 9.434263, 22.744579>,  <18.054838, 9.574083, 22.729698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.249334, 9.434263, 22.744579>,  <18.573496, 9.201230, 22.769381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.249334, 9.434263, 22.744579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130972, -0.283297, -0.950047,
		-0.571046, -0.761801, 0.305886,
		-0.810403, 0.582583, -0.062001,
		18.006214, 9.609038, 22.725979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.060036, 8.824778, 22.427702>,  <18.573496, 9.201230, 22.769381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.060036, 8.824778, 22.427702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.996424, 9.217468, 22.385899>,  <17.958256, 9.453083, 22.360817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.996424, 9.217468, 22.385899>,  <18.060036, 8.824778, 22.427702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.996424, 9.217468, 22.385899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162353, -0.130419, -0.978076,
		-0.973833, -0.138578, 0.180127,
		-0.159032, 0.981726, -0.104508,
		17.948713, 9.511986, 22.354546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.572191, 8.867123, 21.873951>,  <18.060036, 8.824778, 22.427702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.572191, 8.867123, 21.873951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.721804, 9.238051, 21.879232>,  <17.811571, 9.460609, 21.882401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.721804, 9.238051, 21.879232>,  <17.572191, 8.867123, 21.873951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.721804, 9.238051, 21.879232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034625, 0.000264, -0.999401,
		-0.926771, 0.374262, -0.032010,
		0.374029, 0.927323, 0.013203,
		17.834013, 9.516249, 21.883194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.251194, 9.079316, 21.351660>,  <17.572191, 8.867123, 21.873951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.251194, 9.079316, 21.351660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.548862, 9.344730, 21.382469>,  <17.727463, 9.503979, 21.400955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.548862, 9.344730, 21.382469>,  <17.251194, 9.079316, 21.351660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.548862, 9.344730, 21.382469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046898, 0.166918, -0.984855,
		-0.666343, 0.729287, 0.155333,
		0.744170, 0.663536, 0.077023,
		17.772114, 9.543791, 21.405577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.067276, 9.719141, 20.911085>,  <17.251194, 9.079316, 21.351660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.067276, 9.719141, 20.911085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.462408, 9.719294, 20.973305>,  <17.699488, 9.719385, 21.010637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.462408, 9.719294, 20.973305>,  <17.067276, 9.719141, 20.911085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.462408, 9.719294, 20.973305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151655, 0.220023, -0.963634,
		-0.034593, 0.975495, 0.217287,
		0.987828, 0.000383, 0.155549,
		17.758757, 9.719408, 21.019970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.279037, 10.371137, 20.721487>,  <17.067276, 9.719141, 20.911085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.279037, 10.371137, 20.721487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.596855, 10.130990, 20.685144>,  <17.787546, 9.986902, 20.663340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.596855, 10.130990, 20.685144>,  <17.279037, 10.371137, 20.721487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.596855, 10.130990, 20.685144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177661, 0.372940, -0.910688,
		0.580631, 0.707442, 0.402980,
		0.794546, -0.600367, -0.090856,
		17.835218, 9.950880, 20.657888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.773479, 10.839675, 20.541979>,  <17.279037, 10.371137, 20.721487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.773479, 10.839675, 20.541979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.867228, 10.467641, 20.428833>,  <17.923477, 10.244420, 20.360945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.867228, 10.467641, 20.428833>,  <17.773479, 10.839675, 20.541979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.867228, 10.467641, 20.428833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278684, 0.343037, -0.897029,
		0.931346, 0.131406, 0.339598,
		0.234370, -0.930085, -0.282865,
		17.937538, 10.188616, 20.343973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.028938, 11.271483, 21.081696>,  <17.773479, 10.839675, 20.541979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.028938, 11.271483, 21.081696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.023039, 11.671390, 21.088015>,  <18.019499, 11.911333, 21.091806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.023039, 11.671390, 21.088015>,  <18.028938, 11.271483, 21.081696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.023039, 11.671390, 21.088015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334312, -0.019819, 0.942254,
		0.942347, 0.008615, 0.334526,
		-0.014747, 0.999766, 0.015796,
		18.018614, 11.971319, 21.092754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.363171, 11.436907, 21.724016>,  <18.028938, 11.271483, 21.081696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.363171, 11.436907, 21.724016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.122221, 11.736948, 21.614845>,  <17.977652, 11.916973, 21.549343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.122221, 11.736948, 21.614845>,  <18.363171, 11.436907, 21.724016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.122221, 11.736948, 21.614845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424501, -0.011482, 0.905355,
		0.675975, 0.661221, 0.325336,
		-0.602376, 0.750103, -0.272927,
		17.941509, 11.961979, 21.532967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.317366, 11.845001, 22.338125>,  <18.363171, 11.436907, 21.724016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.317366, 11.845001, 22.338125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.996984, 12.012135, 22.166595>,  <17.804756, 12.112414, 22.063677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.996984, 12.012135, 22.166595>,  <18.317366, 11.845001, 22.338125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.996984, 12.012135, 22.166595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331771, 0.286478, 0.898809,
		0.498402, 0.862175, -0.090830,
		-0.800952, 0.417833, -0.428826,
		17.756699, 12.137485, 22.037949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.292053, 12.557576, 22.610790>,  <18.317366, 11.845001, 22.338125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.292053, 12.557576, 22.610790> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.932178, 12.448582, 22.474371>,  <17.716253, 12.383185, 22.392519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.932178, 12.448582, 22.474371>,  <18.292053, 12.557576, 22.610790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.932178, 12.448582, 22.474371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406546, 0.238442, 0.881967,
		-0.159003, 0.932147, -0.325301,
		-0.899688, -0.272485, -0.341047,
		17.662271, 12.366837, 22.372057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.978619, 13.132191, 22.755680>,  <18.292053, 12.557576, 22.610790>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.978619, 13.132191, 22.755680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.692408, 12.857762, 22.703032>,  <17.520681, 12.693105, 22.671442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.692408, 12.857762, 22.703032>,  <17.978619, 13.132191, 22.755680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.692408, 12.857762, 22.703032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463628, 0.325435, 0.824100,
		-0.522558, 0.650690, -0.550940,
		-0.715529, -0.686072, -0.131619,
		17.477749, 12.651940, 22.663546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.260944, 13.520492, 22.809216>,  <17.978619, 13.132191, 22.755680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.260944, 13.520492, 22.809216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.177511, 13.134307, 22.871672>,  <17.127451, 12.902596, 22.909145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.177511, 13.134307, 22.871672>,  <17.260944, 13.520492, 22.809216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.177511, 13.134307, 22.871672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603775, 0.252712, 0.756037,
		-0.769382, 0.063422, -0.635632,
		-0.208581, -0.965460, 0.156140,
		17.114937, 12.844668, 22.918514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.576500, 13.543415, 22.951309>,  <17.260944, 13.520492, 22.809216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.576500, 13.543415, 22.951309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.737667, 13.221473, 23.125603>,  <16.834368, 13.028307, 23.230179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.737667, 13.221473, 23.125603>,  <16.576500, 13.543415, 22.951309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.737667, 13.221473, 23.125603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420659, 0.259969, 0.869173,
		-0.812837, -0.533500, -0.233824,
		0.402916, -0.804857, 0.435734,
		16.858541, 12.980016, 23.256323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.039904, 13.332114, 23.394825>,  <16.576500, 13.543415, 22.951309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.039904, 13.332114, 23.394825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.392717, 13.194564, 23.523674>,  <16.604406, 13.112034, 23.600983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.392717, 13.194564, 23.523674>,  <16.039904, 13.332114, 23.394825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.392717, 13.194564, 23.523674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269936, 0.191553, 0.943632,
		-0.386195, -0.919270, 0.076132,
		0.882036, -0.343875, 0.322121,
		16.657328, 13.091401, 23.620310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.782630, 12.954688, 23.987003>,  <16.039904, 13.332114, 23.394825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.782630, 12.954688, 23.987003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.176498, 13.012251, 24.026424>,  <16.412819, 13.046789, 24.050077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.176498, 13.012251, 24.026424>,  <15.782630, 12.954688, 23.987003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.176498, 13.012251, 24.026424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116176, 0.119694, 0.985990,
		0.130112, -0.982323, 0.134580,
		0.984669, 0.143924, 0.098549,
		16.471899, 13.055424, 24.055990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.835370, 12.586761, 24.600554>,  <15.782630, 12.954688, 23.987003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.835370, 12.586761, 24.600554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.179068, 12.780858, 24.535759>,  <16.385286, 12.897316, 24.496881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.179068, 12.780858, 24.535759>,  <15.835370, 12.586761, 24.600554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.179068, 12.780858, 24.535759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115952, 0.123674, 0.985525,
		0.498253, -0.865589, 0.050001,
		0.859244, 0.485243, -0.161987,
		16.436840, 12.926431, 24.487164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.389740, 12.297320, 25.072809>,  <15.835370, 12.586761, 24.600554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.389740, 12.297320, 25.072809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.500389, 12.667878, 24.970613>,  <16.566778, 12.890213, 24.909296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.500389, 12.667878, 24.970613>,  <16.389740, 12.297320, 25.072809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.500389, 12.667878, 24.970613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113899, 0.232385, 0.965932,
		0.954205, -0.296297, -0.041233,
		0.276621, 0.926394, -0.255491,
		16.583376, 12.945796, 24.893967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.848156, 12.389013, 25.532904>,  <16.389740, 12.297320, 25.072809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.848156, 12.389013, 25.532904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.776827, 12.760200, 25.402010>,  <16.734030, 12.982911, 25.323475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.776827, 12.760200, 25.402010>,  <16.848156, 12.389013, 25.532904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.776827, 12.760200, 25.402010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011530, 0.330569, 0.943712,
		0.983905, 0.172058, -0.048248,
		-0.178323, 0.927966, -0.327232,
		16.723330, 13.038589, 25.303841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.207539, 12.775003, 26.024099>,  <16.848156, 12.389013, 25.532904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.207539, 12.775003, 26.024099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.962280, 13.055240, 25.878099>,  <16.815125, 13.223382, 25.790501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.962280, 13.055240, 25.878099>,  <17.207539, 12.775003, 26.024099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.962280, 13.055240, 25.878099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084512, 0.517563, 0.851462,
		0.785437, 0.491223, -0.376550,
		-0.613146, 0.700592, -0.364998,
		16.778337, 13.265417, 25.768600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.615553, 13.419191, 25.951292>,  <17.207539, 12.775003, 26.024099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.615553, 13.419191, 25.951292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.219881, 13.467861, 25.984070>,  <16.982477, 13.497063, 26.003736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.219881, 13.467861, 25.984070>,  <17.615553, 13.419191, 25.951292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.219881, 13.467861, 25.984070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123657, 0.391075, 0.912014,
		0.078922, 0.912280, -0.401891,
		-0.989182, 0.121675, 0.081946,
		16.923126, 13.504364, 26.008654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<10.280333, 11.796173, 24.435364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.675448, 11.766724, 24.490280>,  <10.912519, 11.749054, 24.523230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.675448, 11.766724, 24.490280>,  <10.280333, 11.796173, 24.435364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.675448, 11.766724, 24.490280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150738, 0.229122, -0.961655,
		0.039344, 0.970609, 0.237422,
		0.987791, -0.073623, 0.137293,
		10.971786, 11.744637, 24.531467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.506597, 12.284863, 23.974556>,  <10.280333, 11.796173, 24.435364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.506597, 12.284863, 23.974556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.845093, 12.094362, 24.070108>,  <11.048190, 11.980062, 24.127439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.845093, 12.094362, 24.070108>,  <10.506597, 12.284863, 23.974556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.845093, 12.094362, 24.070108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377034, 0.218486, -0.900061,
		0.376461, 0.851734, 0.364454,
		0.846240, -0.476250, 0.238881,
		11.098965, 11.951488, 24.141773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.040501, 12.760962, 23.902454>,  <10.506597, 12.284863, 23.974556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.040501, 12.760962, 23.902454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.214606, 12.401223, 23.885868>,  <11.319070, 12.185380, 23.875917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.214606, 12.401223, 23.885868>,  <11.040501, 12.760962, 23.902454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.214606, 12.401223, 23.885868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410101, 0.239059, -0.880152,
		0.801475, 0.366094, 0.472877,
		0.435264, -0.899347, -0.041464,
		11.345185, 12.131419, 23.873428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.644841, 12.931886, 23.708694>,  <11.040501, 12.760962, 23.902454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.644841, 12.931886, 23.708694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.585895, 12.545917, 23.621786>,  <11.550527, 12.314335, 23.569641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.585895, 12.545917, 23.621786>,  <11.644841, 12.931886, 23.708694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.585895, 12.545917, 23.621786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306032, 0.164406, -0.937718,
		0.940546, -0.204680, 0.271069,
		-0.147367, -0.964923, -0.217270,
		11.541684, 12.256439, 23.556604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.162956, 12.698432, 23.373550>,  <11.644841, 12.931886, 23.708694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.162956, 12.698432, 23.373550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.913307, 12.404388, 23.267656>,  <11.763517, 12.227962, 23.204119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.913307, 12.404388, 23.267656>,  <12.162956, 12.698432, 23.373550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.913307, 12.404388, 23.267656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294903, 0.092135, -0.951075,
		0.723534, -0.671660, 0.159282,
		-0.624124, -0.735108, -0.264737,
		11.726070, 12.183856, 23.188234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.511999, 12.467744, 22.772346>,  <12.162956, 12.698432, 23.373550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.511999, 12.467744, 22.772346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.146645, 12.305431, 22.759287>,  <11.927432, 12.208044, 22.751451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.146645, 12.305431, 22.759287>,  <12.511999, 12.467744, 22.772346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.146645, 12.305431, 22.759287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025473, 0.137013, -0.990242,
		0.406296, -0.903642, -0.135482,
		-0.913386, -0.405782, -0.032649,
		11.872628, 12.183697, 22.749493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.560324, 11.994750, 22.083401>,  <12.511999, 12.467744, 22.772346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.560324, 11.994750, 22.083401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.174754, 12.061551, 22.166309>,  <11.943413, 12.101632, 22.216055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.174754, 12.061551, 22.166309>,  <12.560324, 11.994750, 22.083401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.174754, 12.061551, 22.166309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208800, 0.008549, -0.977921,
		-0.165088, -0.985919, 0.026629,
		-0.963923, 0.167004, 0.207271,
		11.885577, 12.111651, 22.228491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.091829, 11.519587, 21.626041>,  <12.560324, 11.994750, 22.083401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.091829, 11.519587, 21.626041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.866725, 11.826590, 21.748833>,  <11.731663, 12.010791, 21.822508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.866725, 11.826590, 21.748833>,  <12.091829, 11.519587, 21.626041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.866725, 11.826590, 21.748833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319909, 0.140207, -0.937016,
		-0.762206, -0.625521, 0.166630,
		-0.562761, 0.767506, 0.306976,
		11.697897, 12.056842, 21.840925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.525092, 11.541465, 21.192217>,  <12.091829, 11.519587, 21.626041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.525092, 11.541465, 21.192217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.546725, 11.910551, 21.344885>,  <11.559705, 12.132003, 21.436485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.546725, 11.910551, 21.344885>,  <11.525092, 11.541465, 21.192217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.546725, 11.910551, 21.344885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242092, 0.382941, -0.891486,
		-0.968745, -0.044184, 0.244092,
		0.054083, 0.922716, 0.381668,
		11.562950, 12.187366, 21.459385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.977620, 11.781161, 21.104067>,  <11.525092, 11.541465, 21.192217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.977620, 11.781161, 21.104067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.211185, 12.104911, 21.129240>,  <11.351324, 12.299161, 21.144344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.211185, 12.104911, 21.129240>,  <10.977620, 11.781161, 21.104067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.211185, 12.104911, 21.129240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306707, 0.291715, -0.905998,
		-0.751650, 0.509722, 0.418576,
		0.583912, 0.809374, 0.062933,
		11.386359, 12.347723, 21.148119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.636452, 12.273091, 20.717186>,  <10.977620, 11.781161, 21.104067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.636452, 12.273091, 20.717186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.014513, 12.403694, 20.720697>,  <11.241350, 12.482056, 20.722805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.014513, 12.403694, 20.720697>,  <10.636452, 12.273091, 20.717186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.014513, 12.403694, 20.720697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106085, 0.332292, -0.937192,
		-0.308917, 0.884859, 0.348705,
		0.945154, 0.326507, 0.008781,
		11.298059, 12.501646, 20.723331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.549389, 12.907714, 20.483322>,  <10.636452, 12.273091, 20.717186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.549389, 12.907714, 20.483322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.942673, 12.844479, 20.446867>,  <11.178643, 12.806538, 20.424994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.942673, 12.844479, 20.446867>,  <10.549389, 12.907714, 20.483322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.942673, 12.844479, 20.446867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032301, 0.340785, -0.939586,
		0.179597, 0.926754, 0.329957,
		0.983210, -0.158089, -0.091139,
		11.237636, 12.797052, 20.419525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.728297, 13.527358, 20.211685>,  <10.549389, 12.907714, 20.483322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.728297, 13.527358, 20.211685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.048636, 13.300253, 20.135489>,  <11.240840, 13.163990, 20.089771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.048636, 13.300253, 20.135489>,  <10.728297, 13.527358, 20.211685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.048636, 13.300253, 20.135489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070163, 0.226942, -0.971378,
		0.594743, 0.791291, 0.141910,
		0.800848, -0.567764, -0.190491,
		11.288891, 13.129924, 20.078341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.102302, 13.935881, 19.787836>,  <10.728297, 13.527358, 20.211685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.102302, 13.935881, 19.787836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.213696, 13.557321, 19.722385>,  <11.280532, 13.330185, 19.683115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.213696, 13.557321, 19.722385>,  <11.102302, 13.935881, 19.787836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.213696, 13.557321, 19.722385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078860, 0.147259, -0.985949,
		0.957198, 0.287475, -0.033624,
		0.278485, -0.946400, -0.163626,
		11.297241, 13.273400, 19.673298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.814698, 13.957518, 20.219357>,  <11.102302, 13.935881, 19.787836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.814698, 13.957518, 20.219357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.013361, 14.291975, 20.312477>,  <12.132559, 14.492649, 20.368349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.013361, 14.291975, 20.312477>,  <11.814698, 13.957518, 20.219357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.013361, 14.291975, 20.312477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357607, -0.047266, 0.932675,
		0.790854, -0.546472, 0.275535,
		0.496657, 0.836143, 0.232803,
		12.162358, 14.542818, 20.382318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.085169, 13.844227, 20.854033>,  <11.814698, 13.957518, 20.219357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.085169, 13.844227, 20.854033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.096754, 14.244010, 20.847767>,  <12.103705, 14.483880, 20.844007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.096754, 14.244010, 20.847767>,  <12.085169, 13.844227, 20.854033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.096754, 14.244010, 20.847767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180035, 0.020631, 0.983444,
		0.983234, -0.025663, 0.180535,
		0.028963, 0.999458, -0.015665,
		12.105443, 14.543847, 20.843067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.523163, 13.992345, 21.472214>,  <12.085169, 13.844227, 20.854033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.523163, 13.992345, 21.472214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.310621, 14.312944, 21.362478>,  <12.183097, 14.505304, 21.296637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.310621, 14.312944, 21.362478>,  <12.523163, 13.992345, 21.472214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.310621, 14.312944, 21.362478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183382, 0.207338, 0.960928,
		0.827064, 0.560901, 0.036811,
		-0.531353, 0.801499, -0.274341,
		12.151216, 14.553394, 21.280176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.809649, 14.659070, 21.782885>,  <12.523163, 13.992345, 21.472214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.809649, 14.659070, 21.782885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.438965, 14.785883, 21.702194>,  <12.216554, 14.861971, 21.653780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.438965, 14.785883, 21.702194>,  <12.809649, 14.659070, 21.782885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.438965, 14.785883, 21.702194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103962, 0.299571, 0.948393,
		0.361104, 0.899860, -0.244656,
		-0.926713, 0.317033, -0.201727,
		12.160951, 14.880993, 21.641676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.685612, 15.416250, 22.063671>,  <12.809649, 14.659070, 21.782885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.685612, 15.416250, 22.063671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.328565, 15.237626, 22.088385>,  <12.114336, 15.130451, 22.103212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.328565, 15.237626, 22.088385>,  <12.685612, 15.416250, 22.063671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.328565, 15.237626, 22.088385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110782, 0.350125, 0.930129,
		-0.436991, 0.823405, -0.361999,
		-0.892618, -0.446561, 0.061783,
		12.060780, 15.103658, 22.106920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.384848, 15.799712, 22.614521>,  <12.685612, 15.416250, 22.063671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.384848, 15.799712, 22.614521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.140575, 15.485435, 22.575016>,  <11.994012, 15.296868, 22.551313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.140575, 15.485435, 22.575016>,  <12.384848, 15.799712, 22.614521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.140575, 15.485435, 22.575016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244086, 0.068118, 0.967358,
		-0.753319, 0.614854, -0.233375,
		-0.610682, -0.785693, -0.098763,
		11.957371, 15.249726, 22.545387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.720223, 15.951298, 22.958799>,  <12.384848, 15.799712, 22.614521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.720223, 15.951298, 22.958799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.728822, 15.551452, 22.965797>,  <11.733980, 15.311543, 22.969995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.728822, 15.551452, 22.965797>,  <11.720223, 15.951298, 22.958799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.728822, 15.551452, 22.965797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073519, 0.015870, 0.997168,
		-0.997062, -0.022720, -0.073150,
		0.021495, -0.999616, 0.017494,
		11.735271, 15.251567, 22.971046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.250071, 15.762149, 23.512096>,  <11.720223, 15.951298, 22.958799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.250071, 15.762149, 23.512096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.482194, 15.439863, 23.464655>,  <11.621469, 15.246491, 23.436190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.482194, 15.439863, 23.464655>,  <11.250071, 15.762149, 23.512096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.482194, 15.439863, 23.464655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155167, -0.252351, 0.955114,
		-0.799478, -0.535858, -0.271462,
		0.580309, -0.805714, -0.118602,
		11.656286, 15.198149, 23.429075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.976426, 15.432843, 23.976772>,  <11.250071, 15.762149, 23.512096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.976426, 15.432843, 23.976772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.305532, 15.226578, 23.881151>,  <11.502996, 15.102818, 23.823778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.305532, 15.226578, 23.881151>,  <10.976426, 15.432843, 23.976772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.305532, 15.226578, 23.881151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019838, -0.394278, 0.918777,
		-0.568034, -0.760681, -0.314169,
		0.822766, -0.515664, -0.239054,
		11.552362, 15.071878, 23.809435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.881660, 14.586164, 24.078081>,  <10.976426, 15.432843, 23.976772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.881660, 14.586164, 24.078081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.263787, 14.696064, 24.121672>,  <11.493064, 14.762004, 24.147825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.263787, 14.696064, 24.121672>,  <10.881660, 14.586164, 24.078081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.263787, 14.696064, 24.121672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054845, -0.527066, 0.848053,
		0.290440, -0.804185, -0.518585,
		0.955320, 0.274750, 0.108975,
		11.550384, 14.778489, 24.154364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.221109, 14.087014, 24.355335>,  <10.881660, 14.586164, 24.078081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.221109, 14.087014, 24.355335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.461215, 14.389600, 24.459217>,  <11.605278, 14.571151, 24.521545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.461215, 14.389600, 24.459217>,  <11.221109, 14.087014, 24.355335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.461215, 14.389600, 24.459217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098432, -0.392112, 0.914636,
		0.793722, -0.523460, -0.309831,
		0.600264, 0.756464, 0.259703,
		11.641294, 14.616539, 24.537128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.654452, 13.666465, 24.684626>,  <11.221109, 14.087014, 24.355335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.654452, 13.666465, 24.684626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.688329, 14.056389, 24.767159>,  <11.708654, 14.290343, 24.816679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.688329, 14.056389, 24.767159>,  <11.654452, 13.666465, 24.684626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.688329, 14.056389, 24.767159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015587, -0.208346, 0.977931,
		0.996285, -0.079606, -0.032839,
		0.084691, 0.974810, 0.206332,
		11.713736, 14.348832, 24.829058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.369398, 13.798491, 25.031313>,  <11.654452, 13.666465, 24.684626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.369398, 13.798491, 25.031313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.113586, 14.094913, 25.113129>,  <11.960099, 14.272767, 25.162218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.113586, 14.094913, 25.113129>,  <12.369398, 13.798491, 25.031313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.113586, 14.094913, 25.113129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040418, -0.233285, 0.971568,
		0.767703, 0.629614, 0.119241,
		-0.639530, 0.741056, 0.204542,
		11.921727, 14.317230, 25.174492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.740571, 14.184937, 25.533188>,  <12.369398, 13.798491, 25.031313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.740571, 14.184937, 25.533188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.346516, 14.252321, 25.546606>,  <12.110083, 14.292751, 25.554657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.346516, 14.252321, 25.546606>,  <12.740571, 14.184937, 25.533188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.346516, 14.252321, 25.546606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014161, -0.114987, 0.993266,
		0.171182, 0.978979, 0.110893,
		-0.985138, 0.168459, 0.033547,
		12.050974, 14.302859, 25.556669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.996387, 14.837644, 25.694670>,  <12.740571, 14.184937, 25.533188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.996387, 14.837644, 25.694670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.342586, 14.992264, 25.822102>,  <13.550305, 15.085036, 25.898561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.342586, 14.992264, 25.822102>,  <12.996387, 14.837644, 25.694670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.342586, 14.992264, 25.822102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262873, 0.190880, -0.945760,
		-0.426395, 0.902299, 0.063593,
		0.865497, 0.386550, 0.318580,
		13.602235, 15.108229, 25.917675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.092623, 15.512602, 25.385952>,  <12.996387, 14.837644, 25.694670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.092623, 15.512602, 25.385952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.459987, 15.380937, 25.473747>,  <13.680405, 15.301937, 25.526424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.459987, 15.380937, 25.473747>,  <13.092623, 15.512602, 25.385952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.459987, 15.380937, 25.473747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318260, 0.285125, -0.904109,
		0.235019, 0.900197, 0.366622,
		0.918410, -0.329164, 0.219487,
		13.735510, 15.282187, 25.539593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.587835, 15.815973, 24.844444>,  <13.092623, 15.512602, 25.385952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.587835, 15.815973, 24.844444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.818458, 15.558172, 25.045322>,  <13.956831, 15.403492, 25.165850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.818458, 15.558172, 25.045322>,  <13.587835, 15.815973, 24.844444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.818458, 15.558172, 25.045322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639682, -0.026329, -0.768189,
		0.508321, 0.764149, 0.397096,
		0.576556, -0.644502, 0.502196,
		13.991425, 15.364821, 25.195982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.318545, 16.108650, 25.045986>,  <13.587835, 15.815973, 24.844444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.318545, 16.108650, 25.045986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.366558, 15.711923, 25.028614>,  <14.395366, 15.473886, 25.018190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.366558, 15.711923, 25.028614>,  <14.318545, 16.108650, 25.045986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.366558, 15.711923, 25.028614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613681, 0.108512, -0.782062,
		0.780377, 0.067221, 0.621686,
		0.120031, -0.991820, -0.043428,
		14.402567, 15.414376, 25.015585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.082941, 15.993217, 24.935507>,  <14.318545, 16.108650, 25.045986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.082941, 15.993217, 24.935507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.870358, 15.673481, 24.823357>,  <14.742808, 15.481640, 24.756067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.870358, 15.673481, 24.823357>,  <15.082941, 15.993217, 24.935507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.870358, 15.673481, 24.823357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436213, 0.025477, -0.899483,
		0.726134, -0.600340, 0.335143,
		-0.531457, -0.799339, -0.280376,
		14.710921, 15.433680, 24.739244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.618682, 15.552739, 24.682255>,  <15.082941, 15.993217, 24.935507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.618682, 15.552739, 24.682255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.261575, 15.462487, 24.526278>,  <15.047311, 15.408337, 24.432692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.261575, 15.462487, 24.526278>,  <15.618682, 15.552739, 24.682255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.261575, 15.462487, 24.526278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400573, -0.001445, -0.916264,
		0.206173, -0.974212, 0.091671,
		-0.892767, -0.225630, -0.389945,
		14.993744, 15.394798, 24.409294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.754493, 14.960286, 24.286121>,  <15.618682, 15.552739, 24.682255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.754493, 14.960286, 24.286121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.419577, 15.134573, 24.154003>,  <15.218627, 15.239145, 24.074732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.419577, 15.134573, 24.154003>,  <15.754493, 14.960286, 24.286121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.419577, 15.134573, 24.154003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340275, -0.057588, -0.938561,
		-0.427970, -0.898239, -0.100046,
		-0.837290, 0.435719, -0.330294,
		15.168389, 15.265288, 24.054914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.509683, 14.556162, 23.696909>,  <15.754493, 14.960286, 24.286121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.509683, 14.556162, 23.696909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.308998, 14.899336, 23.652670>,  <15.188587, 15.105240, 23.626125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.308998, 14.899336, 23.652670>,  <15.509683, 14.556162, 23.696909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.308998, 14.899336, 23.652670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245390, 0.018552, -0.969247,
		-0.829499, -0.513423, -0.219837,
		-0.501712, 0.857936, -0.110600,
		15.158484, 15.156716, 23.619490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.012454, 14.469673, 23.134354>,  <15.509683, 14.556162, 23.696909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.012454, 14.469673, 23.134354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.070577, 14.863781, 23.170425>,  <15.105451, 15.100245, 23.192068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.070577, 14.863781, 23.170425>,  <15.012454, 14.469673, 23.134354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.070577, 14.863781, 23.170425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132698, 0.070914, -0.988616,
		-0.980447, 0.155619, -0.120439,
		0.145307, 0.985268, 0.090177,
		15.114169, 15.159362, 23.197479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.700922, 14.814129, 22.525576>,  <15.012454, 14.469673, 23.134354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.700922, 14.814129, 22.525576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.907596, 15.129176, 22.659855>,  <15.031600, 15.318205, 22.740423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.907596, 15.129176, 22.659855>,  <14.700922, 14.814129, 22.525576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.907596, 15.129176, 22.659855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146410, 0.305036, -0.941019,
		-0.843565, 0.535360, 0.042292,
		0.516684, 0.787619, 0.335699,
		15.062601, 15.365461, 22.760565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.500634, 15.412889, 22.219076>,  <14.700922, 14.814129, 22.525576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.500634, 15.412889, 22.219076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.869851, 15.506399, 22.341284>,  <15.091381, 15.562505, 22.414608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.869851, 15.506399, 22.341284>,  <14.500634, 15.412889, 22.219076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.869851, 15.506399, 22.341284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263047, 0.195959, -0.944673,
		-0.280708, 0.952339, 0.119385,
		0.923043, 0.233773, 0.305517,
		15.146764, 15.576531, 22.432940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.602343, 16.076622, 22.020643>,  <14.500634, 15.412889, 22.219076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.602343, 16.076622, 22.020643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.974622, 15.941614, 22.077044>,  <15.197989, 15.860609, 22.110884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.974622, 15.941614, 22.077044>,  <14.602343, 16.076622, 22.020643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.974622, 15.941614, 22.077044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262953, 0.349383, -0.899326,
		0.254278, 0.874077, 0.413922,
		0.930698, -0.337521, 0.141001,
		15.253831, 15.840358, 22.119345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.138011, 16.598289, 21.853237>,  <14.602343, 16.076622, 22.020643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.138011, 16.598289, 21.853237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.315937, 16.240644, 21.832453>,  <15.422692, 16.026056, 21.819983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.315937, 16.240644, 21.832453>,  <15.138011, 16.598289, 21.853237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.315937, 16.240644, 21.832453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265952, 0.187264, -0.945622,
		0.855225, 0.406808, 0.321089,
		0.444815, -0.894114, -0.051962,
		15.449382, 15.972410, 21.816864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.766076, 16.682842, 21.432844>,  <15.138011, 16.598289, 21.853237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.766076, 16.682842, 21.432844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.697316, 16.289583, 21.407967>,  <15.656060, 16.053627, 21.393040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.697316, 16.289583, 21.407967>,  <15.766076, 16.682842, 21.432844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.697316, 16.289583, 21.407967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593866, -0.053048, -0.802814,
		0.785986, -0.174938, 0.592977,
		-0.171899, -0.983149, -0.062194,
		15.645746, 15.994638, 21.389309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<2.492542, 23.337273, 12.687218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.166230, 23.456968, 12.489244>,  <1.970443, 23.528786, 12.370461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.166230, 23.456968, 12.489244>,  <2.492542, 23.337273, 12.687218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<2.166230, 23.456968, 12.489244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575021, 0.511478, -0.638546,
		0.062070, -0.805510, -0.589322,
		-0.815780, 0.299238, -0.494933,
		1.921496, 23.546740, 12.340764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.491070, 23.154051, 11.914010>,  <2.492542, 23.337273, 12.687218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.491070, 23.154051, 11.914010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.264220, 23.482723, 11.936663>,  <2.128109, 23.679926, 11.950254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.264220, 23.482723, 11.936663>,  <2.491070, 23.154051, 11.914010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<2.264220, 23.482723, 11.936663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586720, 0.451297, -0.672376,
		-0.578038, -0.348095, -0.738040,
		-0.567126, 0.821682, 0.056633,
		2.094082, 23.729227, 11.953652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.202314, 23.504122, 11.181611>,  <2.491070, 23.154051, 11.914010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.202314, 23.504122, 11.181611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.263238, 23.759277, 11.483578>,  <2.299792, 23.912371, 11.664758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.263238, 23.759277, 11.483578>,  <2.202314, 23.504122, 11.181611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<2.263238, 23.759277, 11.483578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699402, 0.470121, -0.538352,
		-0.698311, 0.609985, -0.374538,
		0.152309, 0.637890, 0.754916,
		2.308930, 23.950644, 11.710052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.036693, 24.204647, 10.988419>,  <2.202314, 23.504122, 11.181611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.036693, 24.204647, 10.988419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.324802, 24.123203, 11.253673>,  <2.497668, 24.074337, 11.412826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.324802, 24.123203, 11.253673>,  <2.036693, 24.204647, 10.988419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<2.324802, 24.123203, 11.253673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671289, 0.445560, -0.592324,
		-0.174864, 0.871791, 0.457606,
		0.720273, -0.203610, 0.663136,
		2.540884, 24.062120, 11.452614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.397599, 24.834679, 11.332772>,  <2.036693, 24.204647, 10.988419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.397599, 24.834679, 11.332772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.623899, 24.509245, 11.279093>,  <2.759680, 24.313986, 11.246885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.623899, 24.509245, 11.279093>,  <2.397599, 24.834679, 11.332772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<2.623899, 24.509245, 11.279093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625670, 0.529562, -0.572802,
		0.537089, 0.240098, 0.808634,
		0.565750, -0.813583, -0.134200,
		2.793624, 24.265169, 11.238832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.097384, 24.970909, 11.547671>,  <2.397599, 24.834679, 11.332772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.097384, 24.970909, 11.547671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.066765, 24.713606, 11.242947>,  <3.048393, 24.559223, 11.060112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.066765, 24.713606, 11.242947>,  <3.097384, 24.970909, 11.547671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.066765, 24.713606, 11.242947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667317, 0.534646, -0.518498,
		0.740829, -0.548060, 0.388333,
		-0.076548, -0.643260, -0.761812,
		3.043801, 24.520628, 11.014403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.785561, 25.307716, 11.243618>,  <3.097384, 24.970909, 11.547671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.785561, 25.307716, 11.243618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.969503, 25.286039, 10.889083>,  <4.079868, 25.273033, 10.676362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.969503, 25.286039, 10.889083>,  <3.785561, 25.307716, 11.243618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.969503, 25.286039, 10.889083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213715, 0.975552, 0.051234,
		0.861893, -0.212984, 0.460195,
		0.459856, -0.054192, -0.886339,
		4.107459, 25.269781, 10.623181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.410352, 25.519203, 11.637391>,  <3.785561, 25.307716, 11.243618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.410352, 25.519203, 11.637391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.788633, 25.397648, 11.683517>,  <5.015602, 25.324715, 11.711192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.788633, 25.397648, 11.683517>,  <4.410352, 25.519203, 11.637391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.788633, 25.397648, 11.683517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324791, -0.869876, 0.371250,
		-0.012509, -0.388545, -0.921345,
		0.945703, -0.303888, 0.115314,
		5.072344, 25.306480, 11.718111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.646887, 24.834354, 11.283616>,  <4.410352, 25.519203, 11.637391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.646887, 24.834354, 11.283616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.851795, 24.889877, 11.622629>,  <4.974739, 24.923191, 11.826037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.851795, 24.889877, 11.622629>,  <4.646887, 24.834354, 11.283616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.851795, 24.889877, 11.622629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075819, -0.975690, 0.205622,
		0.855472, -0.169592, -0.489291,
		0.512269, 0.138806, 0.847534,
		5.005476, 24.931519, 11.876889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.280377, 24.320766, 11.288937>,  <4.646887, 24.834354, 11.283616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.280377, 24.320766, 11.288937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.117945, 24.409958, 11.643423>,  <5.020485, 24.463472, 11.856115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.117945, 24.409958, 11.643423>,  <5.280377, 24.320766, 11.288937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.117945, 24.409958, 11.643423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140498, -0.973478, 0.180555,
		0.902972, -0.051191, 0.426640,
		-0.406082, 0.222978, 0.886216,
		4.996120, 24.476851, 11.909287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.616685, 23.891991, 11.835100>,  <5.280377, 24.320766, 11.288937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.616685, 23.891991, 11.835100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.226654, 23.950731, 11.901623>,  <4.992635, 23.985975, 11.941536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.226654, 23.950731, 11.901623>,  <5.616685, 23.891991, 11.835100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.226654, 23.950731, 11.901623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090737, -0.947993, 0.305083,
		0.202459, 0.282389, 0.937692,
		-0.975078, 0.146850, 0.166307,
		4.934131, 23.994785, 11.951515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.445594, 23.773149, 12.521534>,  <5.616685, 23.891991, 11.835100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.445594, 23.773149, 12.521534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.082077, 23.731804, 12.359838>,  <4.863966, 23.706997, 12.262819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.082077, 23.731804, 12.359838>,  <5.445594, 23.773149, 12.521534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.082077, 23.731804, 12.359838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097224, -0.889703, 0.446068,
		-0.405761, 0.444686, 0.798506,
		-0.908793, -0.103363, -0.404241,
		4.809439, 23.700794, 12.238565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.104887, 23.663155, 13.117655>,  <5.445594, 23.773149, 12.521534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.104887, 23.663155, 13.117655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.880161, 23.554340, 12.805153>,  <4.745325, 23.489052, 12.617652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.880161, 23.554340, 12.805153>,  <5.104887, 23.663155, 13.117655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.880161, 23.554340, 12.805153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155372, -0.892882, 0.422636,
		-0.812540, 0.358829, 0.459370,
		-0.561817, -0.272035, -0.781254,
		4.711616, 23.472731, 12.570777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.458574, 23.236391, 13.280184>,  <5.104887, 23.663155, 13.117655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.458574, 23.236391, 13.280184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.409713, 23.163702, 12.889891>,  <4.380396, 23.120089, 12.655715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.409713, 23.163702, 12.889891>,  <4.458574, 23.236391, 13.280184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.409713, 23.163702, 12.889891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331440, -0.919191, 0.212685,
		-0.935535, 0.349377, 0.052053,
		-0.122154, -0.181722, -0.975733,
		4.373066, 23.109186, 12.597171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.731096, 23.075665, 13.160455>,  <4.458574, 23.236391, 13.280184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.731096, 23.075665, 13.160455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.970121, 22.915762, 12.882430>,  <4.113536, 22.819820, 12.715615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.970121, 22.915762, 12.882430>,  <3.731096, 23.075665, 13.160455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.970121, 22.915762, 12.882430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293017, -0.915770, 0.274783,
		-0.746365, 0.039464, -0.664366,
		0.597563, -0.399759, -0.695062,
		4.149390, 22.795834, 12.673911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.405021, 22.610142, 12.853597>,  <3.731096, 23.075665, 13.160455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.405021, 22.610142, 12.853597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.761780, 22.475092, 12.733245>,  <3.975836, 22.394062, 12.661034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.761780, 22.475092, 12.733245>,  <3.405021, 22.610142, 12.853597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.761780, 22.475092, 12.733245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325158, -0.941152, 0.092221,
		-0.314309, 0.015582, -0.949193,
		0.891898, -0.337623, -0.300880,
		4.029350, 22.373804, 12.642981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.303921, 22.000961, 12.428048>,  <3.405021, 22.610142, 12.853597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.303921, 22.000961, 12.428048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.689028, 21.962574, 12.529136>,  <3.920093, 21.939543, 12.589788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.689028, 21.962574, 12.529136>,  <3.303921, 22.000961, 12.428048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.689028, 21.962574, 12.529136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155032, -0.961862, 0.225359,
		0.221454, -0.256148, -0.940928,
		0.962768, -0.095967, 0.252719,
		3.977859, 21.933784, 12.604952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.532982, 21.370932, 12.026688>,  <3.303921, 22.000961, 12.428048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.532982, 21.370932, 12.026688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.823664, 21.421143, 12.296841>,  <3.998073, 21.451269, 12.458933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.823664, 21.421143, 12.296841>,  <3.532982, 21.370932, 12.026688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.823664, 21.421143, 12.296841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035575, -0.974967, 0.219485,
		0.686027, -0.183528, -0.704049,
		0.726706, 0.125526, 0.675383,
		4.041676, 21.458801, 12.499455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.156651, 20.850750, 11.887635>,  <3.532982, 21.370932, 12.026688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.156651, 20.850750, 11.887635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.165105, 20.934706, 12.278634>,  <4.170178, 20.985079, 12.513233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.165105, 20.934706, 12.278634>,  <4.156651, 20.850750, 11.887635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.165105, 20.934706, 12.278634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313285, -0.929864, 0.192888,
		0.949424, 0.302158, -0.085408,
		0.021135, 0.209890, 0.977497,
		4.171446, 20.997673, 12.571883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.694945, 20.440279, 12.113240>,  <4.156651, 20.850750, 11.887635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.694945, 20.440279, 12.113240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.515517, 20.545200, 12.454996>,  <4.407860, 20.608152, 12.660049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.515517, 20.545200, 12.454996>,  <4.694945, 20.440279, 12.113240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.515517, 20.545200, 12.454996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183872, -0.908430, 0.375429,
		0.874629, 0.325505, 0.359265,
		-0.448571, 0.262302, 0.854390,
		4.380946, 20.623892, 12.711313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.234738, 20.203777, 12.645993>,  <4.694945, 20.440279, 12.113240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.234738, 20.203777, 12.645993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.871972, 20.249277, 12.808260>,  <4.654313, 20.276577, 12.905621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.871972, 20.249277, 12.808260>,  <5.234738, 20.203777, 12.645993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.871972, 20.249277, 12.808260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062304, -0.916067, 0.396155,
		0.416682, 0.384554, 0.823708,
		-0.906915, 0.113750, 0.405668,
		4.599897, 20.283401, 12.929960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.354479, 20.090919, 13.363895>,  <5.234738, 20.203777, 12.645993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.354479, 20.090919, 13.363895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.966769, 20.017231, 13.298697>,  <4.734143, 19.973017, 13.259579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.966769, 20.017231, 13.298697>,  <5.354479, 20.090919, 13.363895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.966769, 20.017231, 13.298697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097063, -0.895317, 0.434725,
		-0.226019, 0.405547, 0.885690,
		-0.969275, -0.184224, -0.162996,
		4.675986, 19.961964, 13.249799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.945256, 19.906733, 14.030940>,  <5.354479, 20.090919, 13.363895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.945256, 19.906733, 14.030940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.755841, 19.746799, 13.717024>,  <4.642192, 19.650841, 13.528674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.755841, 19.746799, 13.717024>,  <4.945256, 19.906733, 14.030940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.755841, 19.746799, 13.717024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019967, -0.885923, 0.463403,
		-0.880547, 0.235108, 0.411534,
		-0.473537, -0.399831, -0.784791,
		4.613780, 19.626850, 13.481586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.384367, 19.573881, 14.274280>,  <4.945256, 19.906733, 14.030940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.384367, 19.573881, 14.274280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.398445, 19.403189, 13.912802>,  <4.406891, 19.300774, 13.695915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.398445, 19.403189, 13.912802>,  <4.384367, 19.573881, 14.274280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.398445, 19.403189, 13.912802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101320, -0.901119, 0.421568,
		-0.994231, 0.076726, -0.074950,
		0.035193, -0.426730, -0.903694,
		4.409003, 19.275169, 13.641693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.954403, 18.969646, 14.375458>,  <4.384367, 19.573881, 14.274280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.954403, 18.969646, 14.375458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.165425, 18.917084, 14.039740>,  <4.292038, 18.885546, 13.838308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.165425, 18.917084, 14.039740>,  <3.954403, 18.969646, 14.375458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.165425, 18.917084, 14.039740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148104, -0.958608, 0.243180,
		-0.836511, -0.252594, -0.486257,
		0.527556, -0.131406, -0.839296,
		4.323692, 18.877663, 13.787951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.768986, 18.305119, 14.213674>,  <3.954403, 18.969646, 14.375458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.768986, 18.305119, 14.213674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.107990, 18.366785, 14.010516>,  <4.311393, 18.403786, 13.888621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.107990, 18.366785, 14.010516>,  <3.768986, 18.305119, 14.213674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.107990, 18.366785, 14.010516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251939, -0.959068, 0.129290,
		-0.467173, -0.237533, -0.851662,
		0.847512, 0.154166, -0.507894,
		4.362244, 18.413034, 13.858148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.840926, 17.786074, 13.595409>,  <3.768986, 18.305119, 14.213674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.840926, 17.786074, 13.595409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.183011, 17.937086, 13.737442>,  <4.388262, 18.027693, 13.822661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.183011, 17.937086, 13.737442>,  <3.840926, 17.786074, 13.595409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.183011, 17.937086, 13.737442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291360, -0.916819, 0.273043,
		0.428628, -0.130053, -0.894072,
		0.855212, 0.377531, 0.355082,
		4.439575, 18.050346, 13.843966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.287551, 17.290270, 13.503050>,  <3.840926, 17.786074, 13.595409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.287551, 17.290270, 13.503050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.526187, 17.525484, 13.721515>,  <4.669368, 17.666613, 13.852593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.526187, 17.525484, 13.721515>,  <4.287551, 17.290270, 13.503050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.526187, 17.525484, 13.721515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534481, -0.798779, 0.276194,
		0.598675, 0.127139, -0.790837,
		0.596589, 0.588038, 0.546162,
		4.705163, 17.701895, 13.885364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.975651, 17.267357, 13.325521>,  <4.287551, 17.290270, 13.503050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.975651, 17.267357, 13.325521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.973180, 17.379269, 13.709538>,  <4.971697, 17.446415, 13.939949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.973180, 17.379269, 13.709538>,  <4.975651, 17.267357, 13.325521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.973180, 17.379269, 13.709538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546680, -0.802949, 0.237516,
		0.837319, 0.526305, -0.147989,
		-0.006178, 0.279780, 0.960044,
		4.971326, 17.463203, 13.997552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.701951, 17.201500, 13.561123>,  <4.975651, 17.267357, 13.325521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.701951, 17.201500, 13.561123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.470679, 17.204327, 13.887474>,  <5.331916, 17.206022, 14.083285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.470679, 17.204327, 13.887474>,  <5.701951, 17.201500, 13.561123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.470679, 17.204327, 13.887474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551374, -0.733693, 0.397090,
		0.601411, 0.679444, 0.420310,
		-0.578180, 0.007066, 0.815879,
		5.297225, 17.206446, 14.132237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.227829, 17.193670, 14.127038>,  <5.701951, 17.201500, 13.561123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.227829, 17.193670, 14.127038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.883367, 17.079542, 14.295323>,  <5.676689, 17.011065, 14.396295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.883367, 17.079542, 14.295323>,  <6.227829, 17.193670, 14.127038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.883367, 17.079542, 14.295323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417540, -0.869075, 0.265272,
		0.289944, 0.404106, 0.867543,
		-0.861158, -0.285320, 0.420714,
		5.625019, 16.993946, 14.421537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.781337, 16.758060, 14.495487>,  <6.227829, 17.193670, 14.127038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.781337, 16.758060, 14.495487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.144345, 16.787313, 14.330050>,  <7.362149, 16.804865, 14.230787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.144345, 16.787313, 14.330050>,  <6.781337, 16.758060, 14.495487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.144345, 16.787313, 14.330050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177472, 0.959266, -0.219799,
		0.380673, 0.272874, 0.883531,
		0.907519, 0.073130, -0.413595,
		7.416601, 16.809252, 14.205971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.039474, 17.342855, 14.748461>,  <6.781337, 16.758060, 14.495487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.039474, 17.342855, 14.748461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.261883, 17.288282, 14.420504>,  <7.395329, 17.255539, 14.223729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.261883, 17.288282, 14.420504>,  <7.039474, 17.342855, 14.748461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.261883, 17.288282, 14.420504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142621, 0.987466, -0.067599,
		0.818839, -0.079347, 0.568512,
		0.556023, -0.136435, -0.819893,
		7.428690, 17.247353, 14.174536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.689736, 17.743795, 14.828128>,  <7.039474, 17.342855, 14.748461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.689736, 17.743795, 14.828128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.619635, 17.688589, 14.438208>,  <7.577575, 17.655466, 14.204255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.619635, 17.688589, 14.438208>,  <7.689736, 17.743795, 14.828128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.619635, 17.688589, 14.438208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218858, 0.959890, -0.175252,
		0.959890, -0.244056, -0.138016,
		0.175252, 0.138016, 0.974802,
		7.567060, 17.647184, 14.145767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.111246, 18.288183, 14.488724>,  <7.689736, 17.743795, 14.828128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.111246, 18.288183, 14.488724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.853063, 18.209295, 14.193566>,  <7.698153, 18.161963, 14.016472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.853063, 18.209295, 14.193566>,  <8.111246, 18.288183, 14.488724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.853063, 18.209295, 14.193566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023810, 0.970814, -0.238647,
		0.763424, -0.136468, -0.631316,
		-0.645458, -0.197221, -0.737894,
		7.659425, 18.150129, 13.972198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.341361, 18.714001, 14.050166>,  <8.111246, 18.288183, 14.488724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.341361, 18.714001, 14.050166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.977754, 18.607813, 13.921659>,  <7.759590, 18.544100, 13.844554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.977754, 18.607813, 13.921659>,  <8.341361, 18.714001, 14.050166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.977754, 18.607813, 13.921659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132916, 0.915290, -0.380235,
		0.394995, -0.302938, -0.867299,
		-0.909017, -0.265469, -0.321270,
		7.705049, 18.528172, 13.825277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.375145, 19.031197, 13.389746>,  <8.341361, 18.714001, 14.050166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.375145, 19.031197, 13.389746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.997472, 18.949636, 13.493241>,  <7.770869, 18.900700, 13.555339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.997472, 18.949636, 13.493241>,  <8.375145, 19.031197, 13.389746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.997472, 18.949636, 13.493241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313512, 0.797349, -0.515699,
		-0.101153, -0.568031, -0.816767,
		-0.944181, -0.203902, 0.258739,
		7.714218, 18.888466, 13.570863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.012722, 19.106174, 12.739223>,  <8.375145, 19.031197, 13.389746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.012722, 19.106174, 12.739223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.745923, 19.144224, 13.034807>,  <7.585844, 19.167053, 13.212158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.745923, 19.144224, 13.034807>,  <8.012722, 19.106174, 12.739223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.745923, 19.144224, 13.034807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391893, 0.798739, -0.456548,
		-0.633667, -0.594110, -0.495479,
		-0.666998, 0.095124, 0.738963,
		7.545824, 19.172762, 13.256495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.341459, 19.248175, 12.431791>,  <8.012722, 19.106174, 12.739223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.341459, 19.248175, 12.431791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.344864, 19.387606, 12.806688>,  <7.346907, 19.471264, 13.031627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.344864, 19.387606, 12.806688>,  <7.341459, 19.248175, 12.431791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.344864, 19.387606, 12.806688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333987, 0.884442, -0.325907,
		-0.942539, -0.310252, 0.123950,
		0.008513, 0.348577, 0.937241,
		7.347418, 19.492178, 13.087861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.619651, 19.577072, 12.500482>,  <7.341459, 19.248175, 12.431791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.619651, 19.577072, 12.500482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.841911, 19.724852, 12.798410>,  <6.975268, 19.813519, 12.977168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.841911, 19.724852, 12.798410>,  <6.619651, 19.577072, 12.500482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.841911, 19.724852, 12.798410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272445, 0.927294, -0.256707,
		-0.785509, -0.060284, 0.615907,
		0.555652, 0.369447, 0.744822,
		7.008607, 19.835686, 13.021857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.211993, 19.982985, 13.066390>,  <6.619651, 19.577072, 12.500482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.211993, 19.982985, 13.066390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.585885, 20.124212, 13.082523>,  <6.810219, 20.208948, 13.092203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.585885, 20.124212, 13.082523>,  <6.211993, 19.982985, 13.066390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.585885, 20.124212, 13.082523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347001, 0.931310, -0.110688,
		-0.076643, 0.089468, 0.993036,
		0.934728, 0.353068, 0.040333,
		6.866303, 20.230133, 13.094624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.231834, 20.491831, 13.657053>,  <6.211993, 19.982985, 13.066390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.231834, 20.491831, 13.657053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.542157, 20.592783, 13.425735>,  <6.728351, 20.653355, 13.286943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.542157, 20.592783, 13.425735>,  <6.231834, 20.491831, 13.657053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.542157, 20.592783, 13.425735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237878, 0.965881, 0.102409,
		0.584411, 0.058114, 0.809374,
		0.775808, 0.252382, -0.578296,
		6.774899, 20.668497, 13.252246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.176422, 21.222168, 13.710084>,  <6.231834, 20.491831, 13.657053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.176422, 21.222168, 13.710084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.524336, 21.190006, 13.515349>,  <6.733084, 21.170710, 13.398509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.524336, 21.190006, 13.515349>,  <6.176422, 21.222168, 13.710084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.524336, 21.190006, 13.515349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114348, 0.992621, 0.040353,
		0.479998, -0.090767, 0.872561,
		0.869785, -0.080406, -0.486835,
		6.785272, 21.165884, 13.369299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.800742, 21.471071, 14.077796>,  <6.176422, 21.222168, 13.710084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.800742, 21.471071, 14.077796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.876175, 21.506037, 13.686532>,  <6.921435, 21.527016, 13.451774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.876175, 21.506037, 13.686532>,  <6.800742, 21.471071, 14.077796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.876175, 21.506037, 13.686532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196689, 0.972487, 0.124829,
		0.962159, -0.215933, 0.166203,
		0.188585, 0.087415, -0.978159,
		6.932750, 21.532261, 13.393085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.473729, 21.692295, 14.012269>,  <6.800742, 21.471071, 14.077796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.473729, 21.692295, 14.012269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.253029, 21.811651, 13.700747>,  <7.120609, 21.883265, 13.513835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.253029, 21.811651, 13.700747>,  <7.473729, 21.692295, 14.012269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.253029, 21.811651, 13.700747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132666, 0.953318, 0.271265,
		0.823391, 0.046350, -0.565579,
		-0.551750, 0.298390, -0.778804,
		7.087504, 21.901169, 13.467106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.881699, 22.280693, 13.754437>,  <7.473729, 21.692295, 14.012269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.881699, 22.280693, 13.754437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.529367, 22.309437, 13.567257>,  <7.317969, 22.326683, 13.454948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.529367, 22.309437, 13.567257>,  <7.881699, 22.280693, 13.754437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.529367, 22.309437, 13.567257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088908, 0.995935, -0.014412,
		0.465014, -0.054299, -0.883637,
		-0.880828, 0.071861, -0.467951,
		7.265119, 22.330996, 13.426871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.954901, 22.832401, 13.328923>,  <7.881699, 22.280693, 13.754437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.954901, 22.832401, 13.328923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.557273, 22.789078, 13.325023>,  <7.318696, 22.763084, 13.322682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.557273, 22.789078, 13.325023>,  <7.954901, 22.832401, 13.328923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.557273, 22.789078, 13.325023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108450, 0.980734, 0.162480,
		-0.008035, 0.162574, -0.986664,
		-0.994069, -0.108309, -0.009751,
		7.259052, 22.756584, 13.322098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.743485, 23.358126, 12.769197>,  <7.954901, 22.832401, 13.328923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.743485, 23.358126, 12.769197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.450445, 23.272736, 13.027723>,  <7.274621, 23.221502, 13.182839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.450445, 23.272736, 13.027723>,  <7.743485, 23.358126, 12.769197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.450445, 23.272736, 13.027723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221113, 0.972687, 0.070641,
		-0.643743, -0.091157, -0.759793,
		-0.732601, -0.213474, 0.646316,
		7.230665, 23.208693, 13.221618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.181585, 23.629948, 12.582033>,  <7.743485, 23.358126, 12.769197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.181585, 23.629948, 12.582033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.090811, 23.571529, 12.967192>,  <7.036347, 23.536478, 13.198287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.090811, 23.571529, 12.967192>,  <7.181585, 23.629948, 12.582033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.090811, 23.571529, 12.967192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419294, 0.907023, 0.038752,
		-0.879030, -0.394943, -0.267071,
		-0.226935, -0.146045, 0.962898,
		7.022731, 23.527716, 13.256061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.503726, 23.896671, 12.633594>,  <7.181585, 23.629948, 12.582033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.503726, 23.896671, 12.633594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.616804, 23.898495, 13.017273>,  <6.684650, 23.899590, 13.247480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.616804, 23.898495, 13.017273>,  <6.503726, 23.896671, 12.633594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.616804, 23.898495, 13.017273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343563, 0.934126, 0.096815,
		-0.895572, -0.356915, 0.265638,
		0.282694, 0.004558, 0.959199,
		6.701612, 23.899862, 13.305033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.984366, 24.074518, 13.070049>,  <6.503726, 23.896671, 12.633594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.984366, 24.074518, 13.070049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.300588, 24.190861, 13.285615>,  <6.490321, 24.260666, 13.414954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.300588, 24.190861, 13.285615>,  <5.984366, 24.074518, 13.070049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.300588, 24.190861, 13.285615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383133, 0.921422, 0.064733,
		-0.477739, -0.257650, 0.839870,
		0.790554, 0.290856, 0.538914,
		6.537754, 24.278118, 13.447289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.829637, 24.467743, 13.706962>,  <5.984366, 24.074518, 13.070049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.829637, 24.467743, 13.706962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.189174, 24.590094, 13.581409>,  <6.404896, 24.663504, 13.506077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.189174, 24.590094, 13.581409>,  <5.829637, 24.467743, 13.706962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.189174, 24.590094, 13.581409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333102, 0.942215, -0.035689,
		0.284829, 0.136634, 0.948791,
		0.898841, 0.305879, -0.313883,
		6.458826, 24.681858, 13.487244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<17.113260, 14.731128, 26.228533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.873959, 14.413822, 26.273834>,  <16.730377, 14.223439, 26.301014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.873959, 14.413822, 26.273834>,  <17.113260, 14.731128, 26.228533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.873959, 14.413822, 26.273834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081516, 0.200850, 0.976225,
		-0.797150, 0.574797, -0.184823,
		-0.598253, -0.793264, 0.113252,
		16.694483, 14.175843, 26.307810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.565502, 14.995779, 26.695127>,  <17.113260, 14.731128, 26.228533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.565502, 14.995779, 26.695127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.555552, 14.596493, 26.716833>,  <16.549582, 14.356921, 26.729856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.555552, 14.596493, 26.716833>,  <16.565502, 14.995779, 26.695127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.555552, 14.596493, 26.716833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211074, 0.058304, 0.975730,
		-0.977154, 0.012820, -0.212148,
		-0.024878, -0.998217, 0.054266,
		16.548088, 14.297028, 26.733112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.913397, 14.911036, 27.106350>,  <16.565502, 14.995779, 26.695127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.913397, 14.911036, 27.106350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.126513, 14.574646, 27.144081>,  <16.254381, 14.372812, 27.166719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.126513, 14.574646, 27.144081>,  <15.913397, 14.911036, 27.106350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.126513, 14.574646, 27.144081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285857, -0.073936, 0.955416,
		-0.796506, -0.535999, -0.279791,
		0.532789, -0.840975, 0.094329,
		16.286348, 14.322353, 27.172380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.487502, 14.456013, 27.389172>,  <15.913397, 14.911036, 27.106350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.487502, 14.456013, 27.389172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.831218, 14.259645, 27.446609>,  <16.037447, 14.141824, 27.481073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.831218, 14.259645, 27.446609>,  <15.487502, 14.456013, 27.389172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.831218, 14.259645, 27.446609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327832, -0.313103, 0.891343,
		-0.392621, -0.812995, -0.429986,
		0.859287, -0.490923, 0.143595,
		16.089005, 14.112368, 27.489689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.359168, 13.766220, 27.858095>,  <15.487502, 14.456013, 27.389172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.359168, 13.766220, 27.858095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.751356, 13.842105, 27.878826>,  <15.986670, 13.887635, 27.891264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.751356, 13.842105, 27.878826>,  <15.359168, 13.766220, 27.858095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.751356, 13.842105, 27.878826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030902, -0.408869, 0.912070,
		0.194221, -0.892657, -0.406747,
		0.980471, 0.189712, 0.051826,
		16.045498, 13.899018, 27.894375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.822898, 13.170130, 28.007778>,  <15.359168, 13.766220, 27.858095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.822898, 13.170130, 28.007778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.017309, 13.496788, 28.132273>,  <16.133955, 13.692782, 28.206970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.017309, 13.496788, 28.132273>,  <15.822898, 13.170130, 28.007778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.017309, 13.496788, 28.132273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198946, -0.450164, 0.870501,
		0.850998, -0.361168, -0.381260,
		0.486028, 0.816645, 0.311236,
		16.163118, 13.741781, 28.225643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.353617, 12.935513, 28.295557>,  <15.822898, 13.170130, 28.007778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.353617, 12.935513, 28.295557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.311985, 13.301572, 28.451338>,  <16.287006, 13.521207, 28.544807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.311985, 13.301572, 28.451338>,  <16.353617, 12.935513, 28.295557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.311985, 13.301572, 28.451338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031050, -0.394379, 0.918423,
		0.994084, 0.083497, 0.069462,
		-0.104080, 0.915147, 0.389453,
		16.280762, 13.576116, 28.568174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.786345, 12.970187, 28.869495>,  <16.353617, 12.935513, 28.295557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.786345, 12.970187, 28.869495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.536383, 13.277000, 28.927673>,  <16.386406, 13.461088, 28.962580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.536383, 13.277000, 28.927673>,  <16.786345, 12.970187, 28.869495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.536383, 13.277000, 28.927673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023163, -0.204436, 0.978606,
		0.780357, 0.608166, 0.145519,
		-0.624905, 0.767033, 0.145446,
		16.348911, 13.507111, 28.971308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.020920, 13.156403, 29.529905>,  <16.786345, 12.970187, 28.869495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.020920, 13.156403, 29.529905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.657133, 13.317236, 29.487576>,  <16.438862, 13.413736, 29.462177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.657133, 13.317236, 29.487576>,  <17.020920, 13.156403, 29.529905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.657133, 13.317236, 29.487576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224292, -0.260149, 0.939157,
		0.350090, 0.877867, 0.326781,
		-0.909467, 0.402084, -0.105823,
		16.384293, 13.437861, 29.455830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.890574, 13.541791, 30.208172>,  <17.020920, 13.156403, 29.529905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.890574, 13.541791, 30.208172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.539545, 13.476801, 30.027740>,  <16.328928, 13.437807, 29.919481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.539545, 13.476801, 30.027740>,  <16.890574, 13.541791, 30.208172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.539545, 13.476801, 30.027740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382094, -0.331298, 0.862697,
		-0.289606, 0.929432, 0.228657,
		-0.877572, -0.162474, -0.451077,
		16.276274, 13.428059, 29.892418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.377024, 13.818624, 30.614460>,  <16.890574, 13.541791, 30.208172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.377024, 13.818624, 30.614460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.185957, 13.558473, 30.378208>,  <16.071316, 13.402382, 30.236458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.185957, 13.558473, 30.378208>,  <16.377024, 13.818624, 30.614460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.185957, 13.558473, 30.378208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421191, -0.420455, 0.803627,
		-0.770994, 0.632634, -0.073095,
		-0.477668, -0.650378, -0.590628,
		16.042656, 13.363359, 30.201019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.660796, 13.773565, 30.849348>,  <16.377024, 13.818624, 30.614460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.660796, 13.773565, 30.849348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.719200, 13.436552, 30.641956>,  <15.754243, 13.234344, 30.517521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.719200, 13.436552, 30.641956>,  <15.660796, 13.773565, 30.849348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.719200, 13.436552, 30.641956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080314, -0.532459, 0.842637,
		-0.986017, -0.081393, -0.145412,
		0.146011, -0.842533, -0.518477,
		15.763003, 13.183792, 30.486414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.340110, 13.323094, 31.248577>,  <15.660796, 13.773565, 30.849348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.340110, 13.323094, 31.248577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.598756, 13.115439, 31.025011>,  <15.753943, 12.990847, 30.890871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.598756, 13.115439, 31.025011>,  <15.340110, 13.323094, 31.248577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.598756, 13.115439, 31.025011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176726, -0.610814, 0.771799,
		-0.742063, -0.597832, -0.303216,
		0.646615, -0.519137, -0.558915,
		15.792740, 12.959698, 30.857336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.932391, 14.000008, 31.074968>,  <15.340110, 13.323094, 31.248577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.932391, 14.000008, 31.074968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.162744, 14.111671, 30.767611>,  <15.300955, 14.178670, 30.583195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.162744, 14.111671, 30.767611>,  <14.932391, 14.000008, 31.074968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.162744, 14.111671, 30.767611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087533, 0.913437, 0.397456,
		0.812834, -0.296147, 0.501595,
		0.575881, 0.279160, -0.768395,
		15.335507, 14.195419, 30.537092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.168240, 14.232287, 30.901646>,  <14.932391, 14.000008, 31.074968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.168240, 14.232287, 30.901646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.797556, 14.224819, 31.051771>,  <13.575146, 14.220338, 31.141846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.797556, 14.224819, 31.051771>,  <14.168240, 14.232287, 30.901646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.797556, 14.224819, 31.051771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362030, 0.312042, -0.878388,
		-0.100712, -0.949885, -0.295932,
		-0.926710, -0.018672, 0.375313,
		13.519543, 14.219217, 31.164366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.734976, 13.730061, 30.585527>,  <14.168240, 14.232287, 30.901646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.734976, 13.730061, 30.585527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.507997, 14.030618, 30.720232>,  <13.371809, 14.210952, 30.801056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.507997, 14.030618, 30.720232>,  <13.734976, 13.730061, 30.585527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.507997, 14.030618, 30.720232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081573, 0.355675, -0.931043,
		-0.819358, -0.555790, -0.140533,
		-0.567448, 0.751394, 0.336763,
		13.337762, 14.256036, 30.821260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.251447, 13.727772, 30.069431>,  <13.734976, 13.730061, 30.585527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.251447, 13.727772, 30.069431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.209929, 14.072641, 30.267776>,  <13.185019, 14.279563, 30.386784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.209929, 14.072641, 30.267776>,  <13.251447, 13.727772, 30.069431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.209929, 14.072641, 30.267776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157095, 0.478087, -0.864149,
		-0.982114, -0.167591, 0.085821,
		-0.103794, 0.862175, 0.495864,
		13.178791, 14.331294, 30.416536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.582856, 14.089956, 29.882450>,  <13.251447, 13.727772, 30.069431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.582856, 14.089956, 29.882450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.831861, 14.372533, 30.017164>,  <12.981263, 14.542079, 30.097992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.831861, 14.372533, 30.017164>,  <12.582856, 14.089956, 29.882450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.831861, 14.372533, 30.017164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016863, 0.418125, -0.908233,
		-0.782430, 0.571063, 0.248374,
		0.622510, 0.706441, 0.336783,
		13.018614, 14.584465, 30.118198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.236812, 14.684971, 29.633352>,  <12.582856, 14.089956, 29.882450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.236812, 14.684971, 29.633352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.616468, 14.787688, 29.706219>,  <12.844263, 14.849319, 29.749939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.616468, 14.787688, 29.706219>,  <12.236812, 14.684971, 29.633352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.616468, 14.787688, 29.706219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037610, 0.481979, -0.875375,
		-0.312591, 0.837707, 0.447809,
		0.949143, 0.256792, 0.182168,
		12.901212, 14.864726, 29.760870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.337109, 15.281432, 29.252464>,  <12.236812, 14.684971, 29.633352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.337109, 15.281432, 29.252464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.716115, 15.199459, 29.350618>,  <12.943519, 15.150275, 29.409512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.716115, 15.199459, 29.350618>,  <12.337109, 15.281432, 29.252464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.716115, 15.199459, 29.350618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317985, 0.524564, -0.789758,
		0.033127, 0.826338, 0.562199,
		0.947517, -0.204933, 0.245386,
		13.000370, 15.137980, 29.424234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.694925, 15.889194, 29.160654>,  <12.337109, 15.281432, 29.252464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.694925, 15.889194, 29.160654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.955154, 15.585998, 29.141880>,  <13.111292, 15.404079, 29.130615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.955154, 15.585998, 29.141880>,  <12.694925, 15.889194, 29.160654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.955154, 15.585998, 29.141880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279034, 0.296056, -0.913505,
		0.706325, 0.581205, 0.404112,
		0.650573, -0.757992, -0.046935,
		13.150327, 15.358600, 29.127800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.365880, 16.177952, 28.990501>,  <12.694925, 15.889194, 29.160654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.365880, 16.177952, 28.990501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.369760, 15.795796, 28.872425>,  <13.372087, 15.566504, 28.801579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.369760, 15.795796, 28.872425>,  <13.365880, 16.177952, 28.990501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.369760, 15.795796, 28.872425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219112, 0.290061, -0.931587,
		0.975652, -0.055645, 0.212150,
		0.009698, -0.955389, -0.295191,
		13.372669, 15.509180, 28.783867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.851137, 16.202265, 28.493437>,  <13.365880, 16.177952, 28.990501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.851137, 16.202265, 28.493437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.683395, 15.842129, 28.446907>,  <13.582750, 15.626047, 28.418989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.683395, 15.842129, 28.446907>,  <13.851137, 16.202265, 28.493437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.683395, 15.842129, 28.446907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246393, 0.010447, -0.969114,
		0.873746, -0.435064, 0.217457,
		-0.419354, -0.900339, -0.116325,
		13.557589, 15.572027, 28.412010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.359745, 15.717584, 28.248365>,  <13.851137, 16.202265, 28.493437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.359745, 15.717584, 28.248365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.008275, 15.562094, 28.137499>,  <13.797393, 15.468800, 28.070978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.008275, 15.562094, 28.137499>,  <14.359745, 15.717584, 28.248365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.008275, 15.562094, 28.137499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303020, -0.005466, -0.952968,
		0.368927, -0.921338, 0.122594,
		-0.878676, -0.388725, -0.277167,
		13.744672, 15.445477, 28.054348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.474393, 15.084494, 27.878437>,  <14.359745, 15.717584, 28.248365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.474393, 15.084494, 27.878437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.107969, 15.190794, 27.758295>,  <13.888115, 15.254574, 27.686211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.107969, 15.190794, 27.758295>,  <14.474393, 15.084494, 27.878437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.107969, 15.190794, 27.758295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241489, -0.232415, -0.942160,
		-0.320188, -0.935606, 0.148729,
		-0.916058, 0.265752, -0.300355,
		13.833152, 15.270519, 27.668188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.363475, 14.563315, 27.343670>,  <14.474393, 15.084494, 27.878437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.363475, 14.563315, 27.343670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.076608, 14.838473, 27.299002>,  <13.904488, 15.003569, 27.272202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.076608, 14.838473, 27.299002>,  <14.363475, 14.563315, 27.343670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.076608, 14.838473, 27.299002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029270, -0.130364, -0.991034,
		-0.696286, -0.714006, 0.073358,
		-0.717167, 0.687896, -0.111670,
		13.861458, 15.044842, 27.265501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.776007, 14.254158, 26.986549>,  <14.363475, 14.563315, 27.343670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.776007, 14.254158, 26.986549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.786111, 14.648705, 26.921505>,  <13.792173, 14.885432, 26.882479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.786111, 14.648705, 26.921505>,  <13.776007, 14.254158, 26.986549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.786111, 14.648705, 26.921505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044655, -0.161389, -0.985880,
		-0.998683, 0.032166, 0.039969,
		0.025261, 0.986367, -0.162613,
		13.793689, 14.944614, 26.872721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.291120, 14.322263, 26.354050>,  <13.776007, 14.254158, 26.986549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.291120, 14.322263, 26.354050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.505429, 14.659666, 26.369230>,  <13.634015, 14.862108, 26.378338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.505429, 14.659666, 26.369230>,  <13.291120, 14.322263, 26.354050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.505429, 14.659666, 26.369230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094674, -0.015352, -0.995390,
		-0.839037, 0.536898, -0.088083,
		0.535775, 0.843508, 0.037950,
		13.666162, 14.912719, 26.380615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.548727, 14.564964, 26.303202>,  <13.291120, 14.322263, 26.354050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.548727, 14.564964, 26.303202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.194250, 14.446977, 26.160284>,  <11.981565, 14.376184, 26.074533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.194250, 14.446977, 26.160284>,  <12.548727, 14.564964, 26.303202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.194250, 14.446977, 26.160284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325814, -0.151529, 0.933212,
		-0.329408, 0.943416, 0.038179,
		-0.886192, -0.294968, -0.357293,
		11.928392, 14.358486, 26.053097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.138568, 14.872328, 26.745787>,  <12.548727, 14.564964, 26.303202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.138568, 14.872328, 26.745787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.942951, 14.568610, 26.574060>,  <11.825582, 14.386380, 26.471024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.942951, 14.568610, 26.574060>,  <12.138568, 14.872328, 26.745787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.942951, 14.568610, 26.574060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327514, -0.296333, 0.897174,
		-0.808439, 0.579362, -0.103761,
		-0.489041, -0.759293, -0.429316,
		11.796239, 14.340822, 26.445265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.603946, 14.795728, 27.172920>,  <12.138568, 14.872328, 26.745787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.603946, 14.795728, 27.172920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.589705, 14.448149, 26.975471>,  <11.581161, 14.239601, 26.857002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.589705, 14.448149, 26.975471>,  <11.603946, 14.795728, 27.172920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.589705, 14.448149, 26.975471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188381, -0.479245, 0.857226,
		-0.981451, 0.123506, -0.146632,
		-0.035600, -0.868948, -0.493622,
		11.579025, 14.187465, 26.827385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.071898, 14.428003, 27.534376>,  <11.603946, 14.795728, 27.172920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.071898, 14.428003, 27.534376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.257825, 14.135572, 27.334587>,  <11.369381, 13.960114, 27.214714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.257825, 14.135572, 27.334587>,  <11.071898, 14.428003, 27.534376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.257825, 14.135572, 27.334587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228239, -0.643984, 0.730200,
		-0.855484, -0.225410, -0.466194,
		0.464816, -0.731078, -0.499471,
		11.397269, 13.916249, 27.184746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.567472, 13.901992, 27.385916>,  <11.071898, 14.428003, 27.534376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.567472, 13.901992, 27.385916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.926917, 13.726656, 27.393410>,  <11.142585, 13.621454, 27.397907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.926917, 13.726656, 27.393410>,  <10.567472, 13.901992, 27.385916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.926917, 13.726656, 27.393410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293726, -0.569331, 0.767846,
		-0.325910, -0.695500, -0.640361,
		0.898614, -0.438339, 0.018736,
		11.196502, 13.595154, 27.399031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.520294, 13.110881, 27.421114>,  <10.567472, 13.901992, 27.385916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.520294, 13.110881, 27.421114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.885465, 13.187655, 27.565184>,  <11.104567, 13.233720, 27.651627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.885465, 13.187655, 27.565184>,  <10.520294, 13.110881, 27.421114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.885465, 13.187655, 27.565184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204512, -0.548577, 0.810702,
		0.353187, -0.813772, -0.461557,
		0.912926, 0.191936, 0.360176,
		11.159343, 13.245236, 27.673237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.709812, 12.444868, 27.777349>,  <10.520294, 13.110881, 27.421114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.709812, 12.444868, 27.777349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.977368, 12.709195, 27.913528>,  <11.137902, 12.867791, 27.995235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.977368, 12.709195, 27.913528>,  <10.709812, 12.444868, 27.777349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.977368, 12.709195, 27.913528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053844, -0.413711, 0.908815,
		0.741407, -0.626230, -0.241147,
		0.668892, 0.660817, 0.340447,
		11.178036, 12.907440, 28.015663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.083518, 11.797381, 27.574896>,  <10.709812, 12.444868, 27.777349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.083518, 11.797381, 27.574896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.933202, 11.448463, 27.449753>,  <10.843012, 11.239113, 27.374666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.933202, 11.448463, 27.449753>,  <11.083518, 11.797381, 27.574896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.933202, 11.448463, 27.449753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456211, 0.119723, -0.881781,
		0.806630, -0.474096, 0.352960,
		-0.375791, -0.872296, -0.312860,
		10.820464, 11.186775, 27.355894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.616655, 11.486650, 27.086607>,  <11.083518, 11.797381, 27.574896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.616655, 11.486650, 27.086607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.262994, 11.321135, 26.999842>,  <11.050797, 11.221826, 26.947783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.262994, 11.321135, 26.999842>,  <11.616655, 11.486650, 27.086607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.262994, 11.321135, 26.999842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241278, -0.006833, -0.970432,
		0.400069, -0.910348, 0.105879,
		-0.884154, -0.413786, -0.216914,
		10.997747, 11.196999, 26.934767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.824384, 11.053100, 26.625727>,  <11.616655, 11.486650, 27.086607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.824384, 11.053100, 26.625727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.433682, 11.096115, 26.551548>,  <11.199262, 11.121924, 26.507040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.433682, 11.096115, 26.551548>,  <11.824384, 11.053100, 26.625727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.433682, 11.096115, 26.551548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196405, 0.102238, -0.975178,
		-0.085910, -0.988930, -0.120982,
		-0.976752, 0.107539, -0.185447,
		11.140656, 11.128376, 26.495914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.699451, 10.644355, 26.081135>,  <11.824384, 11.053100, 26.625727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.699451, 10.644355, 26.081135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.392033, 10.900124, 26.072411>,  <11.207582, 11.053585, 26.067177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.392033, 10.900124, 26.072411>,  <11.699451, 10.644355, 26.081135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.392033, 10.900124, 26.072411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125497, 0.117240, -0.985142,
		-0.627365, -0.759865, -0.170350,
		-0.768546, 0.639422, -0.021809,
		11.161469, 11.091950, 26.065868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.365108, 10.560707, 25.468037>,  <11.699451, 10.644355, 26.081135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.365108, 10.560707, 25.468037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.230973, 10.920344, 25.580593>,  <11.150493, 11.136127, 25.648127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.230973, 10.920344, 25.580593>,  <11.365108, 10.560707, 25.468037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.230973, 10.920344, 25.580593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016595, 0.304278, -0.952439,
		-0.941952, -0.314718, -0.116956,
		-0.335336, 0.899092, 0.281393,
		11.130372, 11.190072, 25.665010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.817276, 10.664257, 25.046070>,  <11.365108, 10.560707, 25.468037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.817276, 10.664257, 25.046070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.927512, 11.033430, 25.153584>,  <10.993654, 11.254934, 25.218092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.927512, 11.033430, 25.153584>,  <10.817276, 10.664257, 25.046070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.927512, 11.033430, 25.153584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129713, 0.312760, -0.940933,
		-0.952483, 0.224447, 0.205910,
		0.275590, 0.922933, 0.268785,
		11.010189, 11.310310, 25.234219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.370926, 11.070148, 24.826439>,  <10.817276, 10.664257, 25.046070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.370926, 11.070148, 24.826439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.701286, 11.291382, 24.870226>,  <10.899503, 11.424122, 24.896498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.701286, 11.291382, 24.870226>,  <10.370926, 11.070148, 24.826439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.701286, 11.291382, 24.870226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039330, 0.250195, -0.967396,
		-0.562440, 0.794669, 0.228389,
		0.825902, 0.553085, 0.109465,
		10.949057, 11.457308, 24.903065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<15.536659, 10.300903, 30.066687> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.615581, 10.684401, 29.984825>,  <15.662933, 10.914499, 29.935709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.615581, 10.684401, 29.984825>,  <15.536659, 10.300903, 30.066687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.615581, 10.684401, 29.984825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395361, -0.268845, -0.878300,
		-0.897085, 0.092379, -0.432094,
		0.197303, 0.958743, -0.204654,
		15.674771, 10.972023, 29.923429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.290385, 10.489182, 29.389826>,  <15.536659, 10.300903, 30.066687>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.290385, 10.489182, 29.389826> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.576797, 10.758980, 29.461779>,  <15.748645, 10.920858, 29.504950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.576797, 10.758980, 29.461779>,  <15.290385, 10.489182, 29.389826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.576797, 10.758980, 29.461779> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345405, -0.118401, -0.930954,
		-0.606626, 0.728724, -0.317753,
		0.716031, 0.674494, 0.179880,
		15.791607, 10.961329, 29.515743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.201925, 11.068689, 28.898245>,  <15.290385, 10.489182, 29.389826>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.201925, 11.068689, 28.898245> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.584378, 11.112738, 29.006824>,  <15.813850, 11.139167, 29.071972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.584378, 11.112738, 29.006824>,  <15.201925, 11.068689, 28.898245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.584378, 11.112738, 29.006824> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273675, -0.005331, -0.961808,
		-0.104468, 0.993904, -0.035234,
		0.956132, 0.110121, 0.271450,
		15.871218, 11.145774, 29.088259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.490755, 11.629609, 28.613632>,  <15.201925, 11.068689, 28.898245>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.490755, 11.629609, 28.613632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.810237, 11.400908, 28.688646>,  <16.001926, 11.263687, 28.733656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.810237, 11.400908, 28.688646>,  <15.490755, 11.629609, 28.613632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.810237, 11.400908, 28.688646> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074812, -0.214890, -0.973769,
		0.597055, 0.791783, -0.128859,
		0.798704, -0.571753, 0.187536,
		16.049849, 11.229382, 28.744907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.106272, 11.903121, 28.218023>,  <15.490755, 11.629609, 28.613632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.106272, 11.903121, 28.218023> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.216434, 11.529565, 28.309238>,  <16.282532, 11.305431, 28.363968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.216434, 11.529565, 28.309238>,  <16.106272, 11.903121, 28.218023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.216434, 11.529565, 28.309238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153746, -0.191368, -0.969402,
		0.948953, 0.302042, 0.090877,
		0.275409, -0.933889, 0.228037,
		16.299057, 11.249398, 28.377649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.668150, 11.763010, 27.847862>,  <16.106272, 11.903121, 28.218023>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.668150, 11.763010, 27.847862> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.575556, 11.386618, 27.946629>,  <16.519999, 11.160782, 28.005888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.575556, 11.386618, 27.946629>,  <16.668150, 11.763010, 27.847862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.575556, 11.386618, 27.946629> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498404, -0.332683, -0.800572,
		0.835468, -0.062259, 0.546001,
		-0.231488, -0.940981, 0.246916,
		16.506109, 11.104323, 28.020704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.303299, 11.407216, 27.760641>,  <16.668150, 11.763010, 27.847862>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.303299, 11.407216, 27.760641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.013733, 11.131573, 27.747503>,  <16.839994, 10.966187, 27.739620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.013733, 11.131573, 27.747503>,  <17.303299, 11.407216, 27.760641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.013733, 11.131573, 27.747503> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456993, -0.443319, -0.771119,
		0.516824, -0.573234, 0.635843,
		-0.723913, -0.689109, -0.032846,
		16.796558, 10.924840, 27.737650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.619612, 10.814106, 27.552088>,  <17.303299, 11.407216, 27.760641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.619612, 10.814106, 27.552088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.233971, 10.753909, 27.464581>,  <17.002586, 10.717791, 27.412077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.233971, 10.753909, 27.464581>,  <17.619612, 10.814106, 27.552088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.233971, 10.753909, 27.464581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258781, -0.347936, -0.901096,
		0.059491, -0.925361, 0.374391,
		-0.964102, -0.150493, -0.218766,
		16.944740, 10.708761, 27.398951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.564987, 10.130025, 27.334349>,  <17.619612, 10.814106, 27.552088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.564987, 10.130025, 27.334349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.247208, 10.304515, 27.165323>,  <17.056540, 10.409208, 27.063908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.247208, 10.304515, 27.165323>,  <17.564987, 10.130025, 27.334349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.247208, 10.304515, 27.165323> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374527, -0.195831, -0.906300,
		-0.478101, -0.878270, -0.007800,
		-0.794449, 0.436225, -0.422563,
		17.008873, 10.435382, 27.038555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.544935, 9.815731, 26.653511>,  <17.564987, 10.130025, 27.334349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.544935, 9.815731, 26.653511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.266363, 10.099327, 26.609119>,  <17.099220, 10.269485, 26.582483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.266363, 10.099327, 26.609119>,  <17.544935, 9.815731, 26.653511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.266363, 10.099327, 26.609119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075446, -0.081457, -0.993817,
		-0.713646, -0.700499, 0.003239,
		-0.696432, 0.708989, -0.110981,
		17.057434, 10.312024, 26.575825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.968784, 9.500731, 26.332136>,  <17.544935, 9.815731, 26.653511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.968784, 9.500731, 26.332136> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.971338, 9.892513, 26.251516>,  <16.972870, 10.127584, 26.203144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.971338, 9.892513, 26.251516>,  <16.968784, 9.500731, 26.332136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.971338, 9.892513, 26.251516> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070101, -0.201495, -0.976978,
		-0.997519, -0.007891, -0.069947,
		0.006384, 0.979458, -0.201548,
		16.973253, 10.186351, 26.191051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.511654, 9.662287, 25.781557>,  <16.968784, 9.500731, 26.332136>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.511654, 9.662287, 25.781557> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.761808, 9.974170, 25.769243>,  <16.911901, 10.161300, 25.761854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.761808, 9.974170, 25.769243>,  <16.511654, 9.662287, 25.781557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.761808, 9.974170, 25.769243> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076820, -0.100779, -0.991939,
		-0.776525, 0.617980, -0.122923,
		0.625386, 0.779708, -0.030785,
		16.949425, 10.208082, 25.760008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.839282, 9.506483, 25.823606>,  <16.511654, 9.662287, 25.781557>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.839282, 9.506483, 25.823606> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.478499, 9.506549, 25.650875>,  <15.262030, 9.506588, 25.547235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.478499, 9.506549, 25.650875>,  <15.839282, 9.506483, 25.823606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.478499, 9.506549, 25.650875> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428132, 0.130228, 0.894284,
		0.056383, 0.991484, -0.117390,
		-0.901956, 0.000164, -0.431828,
		15.207912, 9.506598, 25.521326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.406728, 10.056596, 26.128906>,  <15.839282, 9.506483, 25.823606>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.406728, 10.056596, 26.128906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.155768, 9.792559, 25.963669>,  <15.005193, 9.634136, 25.864527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.155768, 9.792559, 25.963669>,  <15.406728, 10.056596, 26.128906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.155768, 9.792559, 25.963669> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602487, 0.075400, 0.794559,
		-0.493336, 0.747390, -0.445003,
		-0.627399, -0.660093, -0.413095,
		14.967548, 9.594531, 25.839741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.715198, 10.357249, 26.243065>,  <15.406728, 10.056596, 26.128906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.715198, 10.357249, 26.243065> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.647508, 9.972585, 26.156746>,  <14.606894, 9.741786, 26.104954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.647508, 9.972585, 26.156746>,  <14.715198, 10.357249, 26.243065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.647508, 9.972585, 26.156746> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648029, -0.056403, 0.759524,
		-0.742577, 0.268373, -0.613641,
		-0.169224, -0.961662, -0.215797,
		14.596741, 9.684086, 26.092007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.993935, 10.388127, 26.185646>,  <14.715198, 10.357249, 26.243065>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.993935, 10.388127, 26.185646> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.111840, 10.010592, 26.245359>,  <14.182584, 9.784072, 26.281187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.111840, 10.010592, 26.245359>,  <13.993935, 10.388127, 26.185646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.111840, 10.010592, 26.245359> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780140, -0.147479, 0.607974,
		-0.551812, -0.295670, -0.779796,
		0.294763, -0.943837, 0.149283,
		14.200270, 9.727441, 26.290144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.352345, 9.826983, 26.070272>,  <13.993935, 10.388127, 26.185646>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.352345, 9.826983, 26.070272> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.638253, 9.695170, 26.317015>,  <13.809798, 9.616082, 26.465059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.638253, 9.695170, 26.317015>,  <13.352345, 9.826983, 26.070272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.638253, 9.695170, 26.317015> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678475, -0.112815, 0.725909,
		-0.169626, -0.937377, -0.304222,
		0.714771, -0.329540, 0.616851,
		13.852685, 9.596311, 26.502071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.009302, 9.358332, 26.371006>,  <13.352345, 9.826983, 26.070272>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.009302, 9.358332, 26.371006> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.331508, 9.343359, 26.607563>,  <13.524831, 9.334375, 26.749498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.331508, 9.343359, 26.607563>,  <13.009302, 9.358332, 26.371006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.331508, 9.343359, 26.607563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582438, -0.233851, 0.778511,
		0.109156, -0.971552, -0.210172,
		0.805513, -0.037433, 0.591395,
		13.573161, 9.332129, 26.784981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.947721, 8.735278, 26.796089>,  <13.009302, 9.358332, 26.371006>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.947721, 8.735278, 26.796089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.198201, 8.982241, 26.986534>,  <13.348490, 9.130418, 27.100801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.198201, 8.982241, 26.986534>,  <12.947721, 8.735278, 26.796089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.198201, 8.982241, 26.986534> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468955, -0.189581, 0.862636,
		0.622858, -0.763459, 0.170819,
		0.626203, 0.617406, 0.476110,
		13.386062, 9.167462, 27.129368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.169836, 8.353880, 27.336763>,  <12.947721, 8.735278, 26.796089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.169836, 8.353880, 27.336763> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.247234, 8.732758, 27.439043>,  <13.293674, 8.960084, 27.500410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.247234, 8.732758, 27.439043>,  <13.169836, 8.353880, 27.336763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.247234, 8.732758, 27.439043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358143, -0.174444, 0.917226,
		0.913396, -0.269056, 0.305477,
		0.193496, 0.947195, 0.255697,
		13.305284, 9.016916, 27.515753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.340661, 8.296784, 28.022234>,  <13.169836, 8.353880, 27.336763>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.340661, 8.296784, 28.022234> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.274880, 8.687366, 27.966381>,  <13.235412, 8.921714, 27.932869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.274880, 8.687366, 27.966381>,  <13.340661, 8.296784, 28.022234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.274880, 8.687366, 27.966381> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417361, 0.059381, 0.906799,
		0.893737, 0.207402, 0.397767,
		-0.164451, 0.976452, -0.139633,
		13.225545, 8.980301, 27.924492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.600230, 8.638283, 28.567162>,  <13.340661, 8.296784, 28.022234>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.600230, 8.638283, 28.567162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.306566, 8.879170, 28.441725>,  <13.130367, 9.023704, 28.366463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.306566, 8.879170, 28.441725>,  <13.600230, 8.638283, 28.567162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.306566, 8.879170, 28.441725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346444, 0.064957, 0.935819,
		0.583939, 0.795684, 0.160946,
		-0.734161, 0.602220, -0.313591,
		13.086318, 9.059836, 28.347647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.488111, 9.078830, 29.140123>,  <13.600230, 8.638283, 28.567162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.488111, 9.078830, 29.140123> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.167676, 9.118399, 28.903997>,  <12.975415, 9.142140, 28.762321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.167676, 9.118399, 28.903997>,  <13.488111, 9.078830, 29.140123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.167676, 9.118399, 28.903997> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598499, -0.119816, 0.792113,
		0.007628, 0.987855, 0.155188,
		-0.801087, 0.098922, -0.590317,
		12.927350, 9.148075, 28.726902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.101895, 9.663200, 29.387640>,  <13.488111, 9.078830, 29.140123>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.101895, 9.663200, 29.387640> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.855562, 9.411721, 29.197699>,  <12.707762, 9.260834, 29.083733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.855562, 9.411721, 29.197699>,  <13.101895, 9.663200, 29.387640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.855562, 9.411721, 29.197699> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495173, -0.159944, 0.853945,
		-0.612823, 0.761024, -0.212815,
		-0.615834, -0.628698, -0.474856,
		12.670812, 9.223112, 29.055243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.541567, 9.860972, 29.691357>,  <13.101895, 9.663200, 29.387640>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.541567, 9.860972, 29.691357> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.469592, 9.508265, 29.516953>,  <12.426408, 9.296639, 29.412310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.469592, 9.508265, 29.516953>,  <12.541567, 9.860972, 29.691357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.469592, 9.508265, 29.516953> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610583, -0.247402, 0.752317,
		-0.771240, 0.401588, -0.493877,
		-0.179936, -0.881770, -0.436009,
		12.415611, 9.243733, 29.386150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.835474, 9.814632, 29.589226>,  <12.541567, 9.860972, 29.691357>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.835474, 9.814632, 29.589226> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.927274, 9.425342, 29.584177>,  <11.982353, 9.191767, 29.581148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.927274, 9.425342, 29.584177>,  <11.835474, 9.814632, 29.589226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.927274, 9.425342, 29.584177> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276233, -0.077563, 0.957956,
		-0.933288, -0.216364, -0.286638,
		0.229499, -0.973227, -0.012622,
		11.996123, 9.133373, 29.580391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.054152, 9.519334, 29.730112>,  <11.835474, 9.814632, 29.589226>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.054152, 9.519334, 29.730112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.739503, 9.756321, 29.799631>,  <10.550714, 9.898513, 29.841343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.739503, 9.756321, 29.799631>,  <11.054152, 9.519334, 29.730112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.739503, 9.756321, 29.799631> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072682, 0.368378, -0.926831,
		-0.613140, -0.716435, -0.332837,
		-0.786624, 0.592468, 0.173796,
		10.503516, 9.934061, 29.851770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.503471, 9.389554, 29.304996>,  <11.054152, 9.519334, 29.730112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.503471, 9.389554, 29.304996> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.463002, 9.771082, 29.418129>,  <10.438721, 9.999998, 29.486008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.463002, 9.771082, 29.418129>,  <10.503471, 9.389554, 29.304996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.463002, 9.771082, 29.418129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051344, 0.278904, -0.958946,
		-0.993543, -0.111541, 0.020756,
		-0.101173, 0.953819, 0.282830,
		10.432651, 10.057228, 29.502977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.953253, 9.666484, 28.945511>,  <10.503471, 9.389554, 29.304996>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.953253, 9.666484, 28.945511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.136662, 10.002560, 29.061331>,  <10.246708, 10.204205, 29.130823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.136662, 10.002560, 29.061331>,  <9.953253, 9.666484, 28.945511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.136662, 10.002560, 29.061331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101780, 0.274024, -0.956322,
		-0.882834, 0.467967, 0.040132,
		0.458524, 0.840189, 0.289548,
		10.274220, 10.254617, 29.148195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.556689, 10.157027, 28.644947>,  <9.953253, 9.666484, 28.945511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.556689, 10.157027, 28.644947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.928217, 10.288781, 28.712830>,  <10.151134, 10.367833, 28.753559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.928217, 10.288781, 28.712830>,  <9.556689, 10.157027, 28.644947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.928217, 10.288781, 28.712830> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001268, 0.455175, -0.890401,
		-0.370529, 0.827238, 0.422358,
		0.928820, 0.329384, 0.169705,
		10.206863, 10.387596, 28.763741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.576039, 10.817583, 28.462402>,  <9.556689, 10.157027, 28.644947>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.576039, 10.817583, 28.462402> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.970407, 10.751220, 28.454067>,  <10.207028, 10.711402, 28.449066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.970407, 10.751220, 28.454067>,  <9.576039, 10.817583, 28.462402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.970407, 10.751220, 28.454067> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023268, 0.259533, -0.965454,
		0.165586, 0.951376, 0.259739,
		0.985921, -0.165909, -0.020839,
		10.266184, 10.701447, 28.447815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.824205, 11.412462, 28.181501>,  <9.576039, 10.817583, 28.462402>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.824205, 11.412462, 28.181501> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.142641, 11.176955, 28.125509>,  <10.333702, 11.035651, 28.091915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.142641, 11.176955, 28.125509>,  <9.824205, 11.412462, 28.181501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.142641, 11.176955, 28.125509> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069863, 0.319166, -0.945120,
		0.601134, 0.742620, 0.295218,
		0.796089, -0.588769, -0.139979,
		10.381468, 11.000324, 28.083515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.404408, 11.768746, 27.898813>,  <9.824205, 11.412462, 28.181501>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.404408, 11.768746, 27.898813> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.474258, 11.391582, 27.785374>,  <10.516170, 11.165284, 27.717310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.474258, 11.391582, 27.785374>,  <10.404408, 11.768746, 27.898813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.474258, 11.391582, 27.785374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262469, 0.322178, -0.909567,
		0.949007, 0.084400, 0.303745,
		0.174628, -0.942909, -0.283597,
		10.526647, 11.108709, 27.700294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.981735, 12.033236, 28.300091>,  <10.404408, 11.768746, 27.898813>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.981735, 12.033236, 28.300091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.124119, 12.401045, 28.366747>,  <11.209549, 12.621731, 28.406740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.124119, 12.401045, 28.366747>,  <10.981735, 12.033236, 28.300091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.124119, 12.401045, 28.366747> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036119, -0.191725, 0.980784,
		0.933803, -0.343100, -0.101458,
		0.355959, 0.919524, 0.166641,
		11.230906, 12.676902, 28.416739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.687572, 12.078300, 28.666006>,  <10.981735, 12.033236, 28.300091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.687572, 12.078300, 28.666006> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.551228, 12.443409, 28.756041>,  <11.469420, 12.662474, 28.810061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.551228, 12.443409, 28.756041>,  <11.687572, 12.078300, 28.666006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.551228, 12.443409, 28.756041> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231396, -0.150601, 0.961132,
		0.911191, 0.379697, -0.159877,
		-0.340861, 0.912770, 0.225086,
		11.448969, 12.717240, 28.823566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.154863, 12.362035, 29.195930>,  <11.687572, 12.078300, 28.666006>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.154863, 12.362035, 29.195930> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.822315, 12.581649, 29.230301>,  <11.622787, 12.713417, 29.250923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.822315, 12.581649, 29.230301>,  <12.154863, 12.362035, 29.195930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.822315, 12.581649, 29.230301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100682, -0.003247, 0.994913,
		0.546522, 0.835793, -0.052579,
		-0.831370, 0.549036, 0.085924,
		11.572904, 12.746360, 29.256079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.348464, 12.844719, 29.612663>,  <12.154863, 12.362035, 29.195930>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.348464, 12.844719, 29.612663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.951443, 12.882996, 29.642818>,  <11.713230, 12.905962, 29.660912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.951443, 12.882996, 29.642818>,  <12.348464, 12.844719, 29.612663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.951443, 12.882996, 29.642818> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060994, -0.145313, 0.987504,
		0.105451, 0.984747, 0.138394,
		-0.992552, 0.095692, 0.075387,
		11.653677, 12.911703, 29.665434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.217358, 13.396871, 30.085808>,  <12.348464, 12.844719, 29.612663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.217358, 13.396871, 30.085808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.909888, 13.142281, 30.060375>,  <11.725407, 12.989527, 30.045115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.909888, 13.142281, 30.060375>,  <12.217358, 13.396871, 30.085808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.909888, 13.142281, 30.060375> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092485, -0.208950, 0.973543,
		-0.632921, 0.742455, 0.219479,
		-0.768673, -0.636474, -0.063583,
		11.679286, 12.951338, 30.041300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.714666, 13.615298, 30.534370>,  <12.217358, 13.396871, 30.085808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.714666, 13.615298, 30.534370> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.634446, 13.228928, 30.468927>,  <11.586314, 12.997106, 30.429663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.634446, 13.228928, 30.468927>,  <11.714666, 13.615298, 30.534370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.634446, 13.228928, 30.468927> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237992, -0.210031, 0.948286,
		-0.950336, 0.151243, 0.272004,
		-0.200550, -0.965926, -0.163605,
		11.574281, 12.939150, 30.419846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.336339, 13.397098, 31.145178>,  <11.714666, 13.615298, 30.534370>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.336339, 13.397098, 31.145178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.438581, 13.056368, 30.962286>,  <11.499926, 12.851930, 30.852551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.438581, 13.056368, 30.962286>,  <11.336339, 13.397098, 31.145178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.438581, 13.056368, 30.962286> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084756, -0.451378, 0.888299,
		-0.963060, -0.265805, -0.043176,
		0.255603, -0.851825, -0.457232,
		11.515262, 12.800820, 30.825117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.978177, 12.738482, 31.491297>,  <11.336339, 13.397098, 31.145178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.978177, 12.738482, 31.491297> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.301199, 12.609252, 31.293922>,  <11.495012, 12.531714, 31.175497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.301199, 12.609252, 31.293922>,  <10.978177, 12.738482, 31.491297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.301199, 12.609252, 31.293922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353661, -0.404275, 0.843496,
		-0.471999, -0.855677, -0.212213,
		0.807552, -0.323078, -0.493437,
		11.543466, 12.512330, 31.145891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.054813, 11.953185, 31.695192>,  <10.978177, 12.738482, 31.491297>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.054813, 11.953185, 31.695192> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.385643, 12.137315, 31.566164>,  <11.584141, 12.247792, 31.488747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.385643, 12.137315, 31.566164>,  <11.054813, 11.953185, 31.695192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.385643, 12.137315, 31.566164> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444275, -0.183802, 0.876833,
		0.344338, -0.868515, -0.356529,
		0.827074, 0.460323, -0.322570,
		11.633765, 12.275412, 31.469393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<14.450799, 15.101673, 15.799261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.783608, 15.089223, 16.020807>,  <14.983294, 15.081753, 16.153734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.783608, 15.089223, 16.020807>,  <14.450799, 15.101673, 15.799261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.783608, 15.089223, 16.020807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550149, -0.174479, 0.816635,
		0.071220, -0.984169, -0.162294,
		0.832024, -0.031125, 0.553866,
		15.033216, 15.079885, 16.186968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.380532, 14.485668, 16.220798>,  <14.450799, 15.101673, 15.799261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.380532, 14.485668, 16.220798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.633813, 14.737680, 16.400627>,  <14.785782, 14.888887, 16.508524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.633813, 14.737680, 16.400627>,  <14.380532, 14.485668, 16.220798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.633813, 14.737680, 16.400627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524961, -0.077232, 0.847615,
		0.568744, -0.772721, 0.281838,
		0.633202, 0.630030, 0.449574,
		14.823773, 14.926689, 16.535500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.481137, 14.170276, 16.864161>,  <14.380532, 14.485668, 16.220798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.481137, 14.170276, 16.864161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.627948, 14.525740, 16.974125>,  <14.716034, 14.739017, 17.040104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.627948, 14.525740, 16.974125>,  <14.481137, 14.170276, 16.864161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.627948, 14.525740, 16.974125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515940, -0.051434, 0.855079,
		0.774014, -0.455674, 0.439617,
		0.367026, 0.888659, 0.274912,
		14.738055, 14.792337, 17.056599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.805765, 14.026576, 17.504438>,  <14.481137, 14.170276, 16.864161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.805765, 14.026576, 17.504438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.705104, 14.413223, 17.485163>,  <14.644707, 14.645211, 17.473597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.705104, 14.413223, 17.485163>,  <14.805765, 14.026576, 17.504438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.705104, 14.413223, 17.485163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446163, -0.071681, 0.892077,
		0.858842, 0.245995, 0.449307,
		-0.251653, 0.966617, -0.048191,
		14.629608, 14.703208, 17.470705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.770120, 14.220119, 18.216362>,  <14.805765, 14.026576, 17.504438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.770120, 14.220119, 18.216362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.576288, 14.514558, 18.027325>,  <14.459990, 14.691221, 17.913902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.576288, 14.514558, 18.027325>,  <14.770120, 14.220119, 18.216362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.576288, 14.514558, 18.027325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605661, 0.107484, 0.788431,
		0.631157, 0.668289, 0.393740,
		-0.484579, 0.736096, -0.472596,
		14.430915, 14.735387, 17.885546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.749864, 14.688778, 18.795555>,  <14.770120, 14.220119, 18.216362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.749864, 14.688778, 18.795555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.468303, 14.771840, 18.523849>,  <14.299366, 14.821677, 18.360826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.468303, 14.771840, 18.523849>,  <14.749864, 14.688778, 18.795555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.468303, 14.771840, 18.523849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653313, 0.186028, 0.733877,
		0.278757, 0.960350, 0.004719,
		-0.703901, 0.207656, -0.679266,
		14.257133, 14.834137, 18.320070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.376505, 15.329602, 19.054020>,  <14.749864, 14.688778, 18.795555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.376505, 15.329602, 19.054020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.135283, 15.189275, 18.767452>,  <13.990551, 15.105079, 18.595512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.135283, 15.189275, 18.767452>,  <14.376505, 15.329602, 19.054020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.135283, 15.189275, 18.767452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797647, 0.275672, 0.536437,
		0.009305, 0.894948, -0.446073,
		-0.603053, -0.350818, -0.716418,
		13.954368, 15.084029, 18.552526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.845165, 15.878901, 18.846718>,  <14.376505, 15.329602, 19.054020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.845165, 15.878901, 18.846718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.691292, 15.516038, 18.778498>,  <13.598968, 15.298321, 18.737566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.691292, 15.516038, 18.778498>,  <13.845165, 15.878901, 18.846718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.691292, 15.516038, 18.778498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601934, 0.106462, 0.791417,
		-0.699782, 0.407105, -0.587002,
		-0.384683, -0.907155, -0.170551,
		13.575887, 15.243892, 18.727333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.104733, 15.891233, 18.870369>,  <13.845165, 15.878901, 18.846718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.104733, 15.891233, 18.870369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.140032, 15.495871, 18.919785>,  <13.161211, 15.258653, 18.949434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.140032, 15.495871, 18.919785>,  <13.104733, 15.891233, 18.870369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.140032, 15.495871, 18.919785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757645, 0.013914, 0.652519,
		-0.646674, -0.151183, -0.747634,
		0.088247, -0.988408, 0.123540,
		13.166506, 15.199348, 18.956846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.394643, 15.658116, 19.132769>,  <13.104733, 15.891233, 18.870369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.394643, 15.658116, 19.132769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.623576, 15.337019, 19.199743>,  <12.760937, 15.144361, 19.239929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.623576, 15.337019, 19.199743>,  <12.394643, 15.658116, 19.132769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.623576, 15.337019, 19.199743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581050, -0.252919, 0.773571,
		-0.578631, -0.540031, -0.611189,
		0.572334, -0.802744, 0.167438,
		12.795277, 15.096196, 19.249975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.904843, 15.042964, 19.202816>,  <12.394643, 15.658116, 19.132769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.904843, 15.042964, 19.202816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.238690, 14.955499, 19.405045>,  <12.438998, 14.903020, 19.526381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.238690, 14.955499, 19.405045>,  <11.904843, 15.042964, 19.202816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.238690, 14.955499, 19.405045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545830, -0.204914, 0.812453,
		-0.074052, -0.954043, -0.290376,
		0.834617, -0.218659, 0.505571,
		12.489076, 14.889899, 19.556715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.753197, 14.376947, 19.495779>,  <11.904843, 15.042964, 19.202816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.753197, 14.376947, 19.495779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.037154, 14.537006, 19.727617>,  <12.207529, 14.633041, 19.866720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.037154, 14.537006, 19.727617>,  <11.753197, 14.376947, 19.495779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.037154, 14.537006, 19.727617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500866, -0.291736, 0.814876,
		0.495160, -0.868776, -0.006681,
		0.709894, 0.400148, 0.579596,
		12.250122, 14.657051, 19.901497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.159661, 13.901737, 19.110207>,  <11.753197, 14.376947, 19.495779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.159661, 13.901737, 19.110207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.949381, 13.566151, 19.166456>,  <11.823213, 13.364799, 19.200207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.949381, 13.566151, 19.166456>,  <12.159661, 13.901737, 19.110207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.949381, 13.566151, 19.166456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165719, -0.263147, -0.950416,
		0.834372, -0.476330, 0.277369,
		-0.525701, -0.838966, 0.140626,
		11.791671, 13.314461, 19.208645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.618634, 13.368067, 18.921072>,  <12.159661, 13.901737, 19.110207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.618634, 13.368067, 18.921072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.229809, 13.292440, 18.865435>,  <11.996513, 13.247065, 18.832052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.229809, 13.292440, 18.865435>,  <12.618634, 13.368067, 18.921072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.229809, 13.292440, 18.865435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139733, 0.010018, -0.990138,
		0.188597, -0.981913, 0.016680,
		-0.972063, -0.189068, -0.139095,
		11.938190, 13.235721, 18.823706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.674821, 12.890415, 18.480490>,  <12.618634, 13.368067, 18.921072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.674821, 12.890415, 18.480490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.289348, 12.992629, 18.449457>,  <12.058064, 13.053957, 18.430838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.289348, 12.992629, 18.449457>,  <12.674821, 12.890415, 18.480490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.289348, 12.992629, 18.449457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037309, -0.158843, -0.986599,
		-0.264434, -0.953662, 0.143541,
		-0.963682, 0.255535, -0.077583,
		12.000243, 13.069289, 18.426182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.412701, 12.459959, 18.047501>,  <12.674821, 12.890415, 18.480490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.412701, 12.459959, 18.047501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.145291, 12.757079, 18.032948>,  <11.984845, 12.935351, 18.024216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.145291, 12.757079, 18.032948>,  <12.412701, 12.459959, 18.047501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.145291, 12.757079, 18.032948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088002, -0.127590, -0.987915,
		-0.738465, -0.657244, 0.150665,
		-0.668524, 0.742800, -0.036382,
		11.944734, 12.979919, 18.022034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.863958, 12.148007, 17.464315>,  <12.412701, 12.459959, 18.047501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.863958, 12.148007, 17.464315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.764205, 12.530750, 17.523958>,  <11.704353, 12.760396, 17.559744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.764205, 12.530750, 17.523958>,  <11.863958, 12.148007, 17.464315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.764205, 12.530750, 17.523958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308683, 0.067396, -0.948774,
		-0.917891, -0.282635, 0.278558,
		-0.249383, 0.956857, 0.149107,
		11.689390, 12.817807, 17.568691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.205187, 12.285738, 17.255335>,  <11.863958, 12.148007, 17.464315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.205187, 12.285738, 17.255335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.379575, 12.645319, 17.238297>,  <11.484207, 12.861068, 17.228073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.379575, 12.645319, 17.238297>,  <11.205187, 12.285738, 17.255335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.379575, 12.645319, 17.238297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153547, 0.027662, -0.987754,
		-0.886766, 0.437171, 0.150091,
		0.435970, 0.898953, -0.042597,
		11.510365, 12.915005, 17.225517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.708518, 12.673845, 16.781412>,  <11.205187, 12.285738, 17.255335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.708518, 12.673845, 16.781412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.061740, 12.860435, 16.801867>,  <11.273673, 12.972389, 16.814140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.061740, 12.860435, 16.801867>,  <10.708518, 12.673845, 16.781412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.061740, 12.860435, 16.801867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089908, 0.275132, -0.957193,
		-0.460576, 0.840657, 0.284897,
		0.883055, 0.466475, 0.051137,
		11.326656, 13.000378, 16.817207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.617519, 13.385446, 16.586294>,  <10.708518, 12.673845, 16.781412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.617519, 13.385446, 16.586294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.003904, 13.310805, 16.514629>,  <11.235735, 13.266021, 16.471630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.003904, 13.310805, 16.514629>,  <10.617519, 13.385446, 16.586294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.003904, 13.310805, 16.514629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141287, 0.199590, -0.969640,
		0.216695, 0.961948, 0.166432,
		0.965961, -0.186602, -0.179161,
		11.293693, 13.254825, 16.460880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.828225, 13.719905, 15.975336>,  <10.617519, 13.385446, 16.586294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.828225, 13.719905, 15.975336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.132029, 13.460117, 15.989970>,  <11.314310, 13.304245, 15.998751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.132029, 13.460117, 15.989970>,  <10.828225, 13.719905, 15.975336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.132029, 13.460117, 15.989970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255481, 0.246100, -0.934968,
		0.598228, 0.719462, 0.352841,
		0.759508, -0.649468, 0.036585,
		11.359881, 13.265277, 16.000946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.499835, 14.080779, 15.622703>,  <10.828225, 13.719905, 15.975336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.499835, 14.080779, 15.622703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.540255, 13.682908, 15.614666>,  <11.564507, 13.444185, 15.609844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.540255, 13.682908, 15.614666>,  <11.499835, 14.080779, 15.622703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.540255, 13.682908, 15.614666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311171, 0.050781, -0.948996,
		0.944966, 0.089643, 0.314647,
		0.101049, -0.994678, -0.020092,
		11.570569, 13.384504, 15.608639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.050087, 13.899000, 15.116846>,  <11.499835, 14.080779, 15.622703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.050087, 13.899000, 15.116846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.843124, 13.558920, 15.155734>,  <11.718946, 13.354872, 15.179067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.843124, 13.558920, 15.155734>,  <12.050087, 13.899000, 15.116846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.843124, 13.558920, 15.155734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027796, -0.096851, -0.994911,
		0.855288, -0.517475, 0.026479,
		-0.517406, -0.850199, 0.097219,
		11.687902, 13.303860, 15.184899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.438453, 13.332843, 14.747878>,  <12.050087, 13.899000, 15.116846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.438453, 13.332843, 14.747878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.057894, 13.212192, 14.772738>,  <11.829558, 13.139801, 14.787655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.057894, 13.212192, 14.772738>,  <12.438453, 13.332843, 14.747878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.057894, 13.212192, 14.772738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028841, -0.288193, -0.957138,
		0.306613, -0.908826, 0.282885,
		-0.951397, -0.301629, 0.062152,
		11.772474, 13.121703, 14.791384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.394507, 12.740284, 14.320240>,  <12.438453, 13.332843, 14.747878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.394507, 12.740284, 14.320240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.034372, 12.914308, 14.324518>,  <11.818291, 13.018722, 14.327085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.034372, 12.914308, 14.324518>,  <12.394507, 12.740284, 14.320240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.034372, 12.914308, 14.324518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052216, -0.083592, -0.995131,
		-0.432048, -0.896513, 0.097978,
		-0.900338, 0.435060, 0.010696,
		11.764271, 13.044826, 14.327727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.121840, 12.502588, 15.046522>,  <12.394507, 12.740284, 14.320240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.121840, 12.502588, 15.046522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.511175, 12.427111, 14.994362>,  <12.744777, 12.381824, 14.963065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.511175, 12.427111, 14.994362>,  <12.121840, 12.502588, 15.046522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.511175, 12.427111, 14.994362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057332, -0.750624, 0.658238,
		-0.222088, -0.633213, -0.741430,
		0.973339, -0.188695, -0.130401,
		12.803177, 12.370502, 14.955241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.156691, 11.802730, 14.886920>,  <12.121840, 12.502588, 15.046522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.156691, 11.802730, 14.886920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.496117, 11.938001, 15.049684>,  <12.699772, 12.019163, 15.147342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.496117, 11.938001, 15.049684>,  <12.156691, 11.802730, 14.886920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.496117, 11.938001, 15.049684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026828, -0.795581, 0.605252,
		0.528412, -0.502679, -0.684175,
		0.848564, 0.338178, 0.406909,
		12.750686, 12.039454, 15.171756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.556437, 11.199130, 14.930483>,  <12.156691, 11.802730, 14.886920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.556437, 11.199130, 14.930483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.705402, 11.471470, 15.182754>,  <12.794782, 11.634873, 15.334116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.705402, 11.471470, 15.182754>,  <12.556437, 11.199130, 14.930483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.705402, 11.471470, 15.182754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214977, -0.724362, 0.655045,
		0.902825, -0.108365, -0.416128,
		0.372412, 0.680850, 0.630677,
		12.817126, 11.675725, 15.371957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.247923, 11.026913, 15.002443>,  <12.556437, 11.199130, 14.930483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.247923, 11.026913, 15.002443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.043283, 11.208779, 15.294071>,  <12.920498, 11.317900, 15.469048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.043283, 11.208779, 15.294071>,  <13.247923, 11.026913, 15.002443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.043283, 11.208779, 15.294071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367069, -0.651538, 0.663896,
		0.776868, 0.607269, 0.166434,
		-0.511602, 0.454667, 0.729069,
		12.889802, 11.345180, 15.512792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.603122, 10.810177, 15.604096>,  <13.247923, 11.026913, 15.002443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.603122, 10.810177, 15.604096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.244556, 10.946917, 15.716936>,  <13.029417, 11.028960, 15.784640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.244556, 10.946917, 15.716936>,  <13.603122, 10.810177, 15.604096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.244556, 10.946917, 15.716936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079595, -0.501971, 0.861214,
		0.436012, 0.794458, 0.422764,
		-0.896414, 0.341850, 0.282100,
		12.975632, 11.049472, 15.801566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.529776, 10.567780, 16.286823>,  <13.603122, 10.810177, 15.604096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.529776, 10.567780, 16.286823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.926788, 10.616569, 16.285902>,  <14.164996, 10.645842, 16.285349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.926788, 10.616569, 16.285902>,  <13.529776, 10.567780, 16.286823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.926788, 10.616569, 16.285902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002642, -0.002604, 0.999993,
		0.121967, -0.992530, -0.002907,
		0.992530, 0.121973, -0.002305,
		14.224547, 10.653160, 16.285210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.817568, 10.001649, 16.746538>,  <13.529776, 10.567780, 16.286823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.817568, 10.001649, 16.746538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.099116, 10.285172, 16.727964>,  <14.268045, 10.455287, 16.716820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.099116, 10.285172, 16.727964>,  <13.817568, 10.001649, 16.746538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.099116, 10.285172, 16.727964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237850, -0.173589, 0.955664,
		0.669324, -0.683708, -0.290774,
		0.703870, 0.708809, -0.046433,
		14.310277, 10.497815, 16.714035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.457280, 9.773519, 17.086348>,  <13.817568, 10.001649, 16.746538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.457280, 9.773519, 17.086348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.481781, 10.172742, 17.090874>,  <14.496481, 10.412276, 17.093590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.481781, 10.172742, 17.090874>,  <14.457280, 9.773519, 17.086348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.481781, 10.172742, 17.090874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253667, -0.026532, 0.966928,
		0.965351, -0.056354, -0.254799,
		0.061251, 0.998058, 0.011317,
		14.500156, 10.472159, 17.094269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.041331, 9.925364, 17.399038>,  <14.457280, 9.773519, 17.086348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.041331, 9.925364, 17.399038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.836975, 10.267379, 17.434601>,  <14.714361, 10.472588, 17.455938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.836975, 10.267379, 17.434601>,  <15.041331, 9.925364, 17.399038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.836975, 10.267379, 17.434601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153075, -0.011282, 0.988150,
		0.845907, 0.518447, -0.125121,
		-0.510891, 0.855036, 0.088905,
		14.683707, 10.523890, 17.461273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.445293, 10.240300, 17.924168>,  <15.041331, 9.925364, 17.399038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.445293, 10.240300, 17.924168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.112316, 10.461173, 17.905691>,  <14.912530, 10.593697, 17.894606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.112316, 10.461173, 17.905691>,  <15.445293, 10.240300, 17.924168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.112316, 10.461173, 17.905691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052746, 0.161950, 0.985388,
		0.551595, 0.817843, -0.163939,
		-0.832443, 0.552182, -0.046193,
		14.862583, 10.626828, 17.891832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.544493, 10.884623, 18.323372>,  <15.445293, 10.240300, 17.924168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.544493, 10.884623, 18.323372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.150506, 10.823136, 18.291849>,  <14.914114, 10.786244, 18.272936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.150506, 10.823136, 18.291849>,  <15.544493, 10.884623, 18.323372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.150506, 10.823136, 18.291849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113588, 0.232647, 0.965905,
		-0.130140, 0.960337, -0.246611,
		-0.984968, -0.153715, -0.078806,
		14.855016, 10.777021, 18.268208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.218182, 11.515455, 18.649439>,  <15.544493, 10.884623, 18.323372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.218182, 11.515455, 18.649439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.940475, 11.227769, 18.638674>,  <14.773850, 11.055158, 18.632215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.940475, 11.227769, 18.638674>,  <15.218182, 11.515455, 18.649439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.940475, 11.227769, 18.638674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166995, 0.124607, 0.978052,
		-0.700076, 0.683523, -0.206615,
		-0.694267, -0.719215, -0.026911,
		14.732195, 11.012005, 18.630600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.627022, 11.870710, 18.975842>,  <15.218182, 11.515455, 18.649439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.627022, 11.870710, 18.975842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.614192, 11.471242, 18.991980>,  <14.606494, 11.231561, 19.001663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.614192, 11.471242, 18.991980>,  <14.627022, 11.870710, 18.975842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.614192, 11.471242, 18.991980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083175, 0.042895, 0.995611,
		-0.996019, 0.028578, -0.084441,
		-0.032074, -0.998671, 0.040347,
		14.604569, 11.171640, 19.004084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.152408, 11.759850, 19.535322>,  <14.627022, 11.870710, 18.975842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.152408, 11.759850, 19.535322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.372996, 11.431573, 19.475529>,  <14.505349, 11.234607, 19.439653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.372996, 11.431573, 19.475529>,  <14.152408, 11.759850, 19.535322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.372996, 11.431573, 19.475529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011388, -0.171770, 0.985071,
		-0.834116, -0.544941, -0.085380,
		0.551471, -0.820692, -0.149482,
		14.538438, 11.185366, 19.430683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.898790, 11.185620, 20.111366>,  <14.152408, 11.759850, 19.535322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.898790, 11.185620, 20.111366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.247985, 11.041577, 19.979782>,  <14.457501, 10.955152, 19.900831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.247985, 11.041577, 19.979782>,  <13.898790, 11.185620, 20.111366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.247985, 11.041577, 19.979782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226597, -0.297808, 0.927343,
		-0.431912, -0.884100, -0.178382,
		0.872987, -0.360109, -0.328961,
		14.509881, 10.933545, 19.881094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.948470, 10.516988, 20.262243>,  <13.898790, 11.185620, 20.111366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.948470, 10.516988, 20.262243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.332508, 10.608469, 20.197851>,  <14.562931, 10.663358, 20.159216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.332508, 10.608469, 20.197851>,  <13.948470, 10.516988, 20.262243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.332508, 10.608469, 20.197851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250051, -0.444114, 0.860371,
		0.125275, -0.866290, -0.483578,
		0.960094, 0.228702, -0.160980,
		14.620537, 10.677079, 20.149557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.274061, 9.879740, 20.255606>,  <13.948470, 10.516988, 20.262243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.274061, 9.879740, 20.255606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.555321, 10.156628, 20.320616>,  <14.724076, 10.322761, 20.359621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.555321, 10.156628, 20.320616>,  <14.274061, 9.879740, 20.255606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.555321, 10.156628, 20.320616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343259, -0.530636, 0.774983,
		0.622700, -0.489141, -0.610726,
		0.703149, 0.692219, 0.162525,
		14.766266, 10.364293, 20.369373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.801336, 9.437227, 20.428381>,  <14.274061, 9.879740, 20.255606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.801336, 9.437227, 20.428381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.926888, 9.792246, 20.563284>,  <15.002219, 10.005257, 20.644226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.926888, 9.792246, 20.563284>,  <14.801336, 9.437227, 20.428381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.926888, 9.792246, 20.563284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300379, -0.429787, 0.851502,
		0.900695, -0.165965, -0.401502,
		0.313879, 0.887546, 0.337255,
		15.021052, 10.058510, 20.664461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.621836, 9.435580, 20.715244>,  <14.801336, 9.437227, 20.428381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.621836, 9.435580, 20.715244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.402653, 9.732149, 20.870182>,  <15.271143, 9.910090, 20.963144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.402653, 9.732149, 20.870182>,  <15.621836, 9.435580, 20.715244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.402653, 9.732149, 20.870182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248144, -0.298139, 0.921704,
		0.798854, 0.601172, -0.020612,
		-0.547957, 0.741421, 0.387347,
		15.238266, 9.954576, 20.986385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.083418, 9.824849, 21.117664>,  <15.621836, 9.435580, 20.715244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.083418, 9.824849, 21.117664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.715240, 9.891012, 21.259323>,  <15.494333, 9.930710, 21.344318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.715240, 9.891012, 21.259323>,  <16.083418, 9.824849, 21.117664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.715240, 9.891012, 21.259323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304311, -0.265369, 0.914863,
		0.245304, 0.949853, 0.193922,
		-0.920446, 0.165407, 0.354147,
		15.439107, 9.940634, 21.365568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.214075, 10.140377, 21.812170>,  <16.083418, 9.824849, 21.117664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.214075, 10.140377, 21.812170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.823018, 10.065738, 21.850935>,  <15.588384, 10.020954, 21.874195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.823018, 10.065738, 21.850935>,  <16.214075, 10.140377, 21.812170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.823018, 10.065738, 21.850935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148756, -0.288059, 0.945988,
		-0.148602, 0.939257, 0.309377,
		-0.977645, -0.186598, 0.096914,
		15.529725, 10.009758, 21.880009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.931954, 10.564957, 22.398617>,  <16.214075, 10.140377, 21.812170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.931954, 10.564957, 22.398617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.670115, 10.265323, 22.357880>,  <15.513011, 10.085543, 22.333437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.670115, 10.265323, 22.357880>,  <15.931954, 10.564957, 22.398617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.670115, 10.265323, 22.357880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012324, -0.145275, 0.989315,
		-0.755876, 0.646349, 0.104328,
		-0.654599, -0.749085, -0.101844,
		15.473735, 10.040597, 22.327326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.375782, 10.639806, 22.836098>,  <15.931954, 10.564957, 22.398617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.375782, 10.639806, 22.836098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.336292, 10.247017, 22.771622>,  <15.312598, 10.011343, 22.732935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.336292, 10.247017, 22.771622>,  <15.375782, 10.639806, 22.836098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.336292, 10.247017, 22.771622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367542, -0.114548, 0.922926,
		-0.924752, 0.150361, -0.349608,
		-0.098725, -0.981973, -0.161192,
		15.306675, 9.952425, 22.723265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.801201, 10.416335, 23.218496>,  <15.375782, 10.639806, 22.836098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.801201, 10.416335, 23.218496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.958857, 10.058281, 23.135180>,  <15.053451, 9.843449, 23.085190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.958857, 10.058281, 23.135180>,  <14.801201, 10.416335, 23.218496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.958857, 10.058281, 23.135180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371139, -0.362361, 0.854957,
		-0.840779, -0.259666, -0.475041,
		0.394139, -0.895136, -0.208293,
		15.077099, 9.789741, 23.072691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.365853, 9.929222, 23.518328>,  <14.801201, 10.416335, 23.218496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.365853, 9.929222, 23.518328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.693060, 9.703778, 23.472383>,  <14.889384, 9.568512, 23.444817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.693060, 9.703778, 23.472383>,  <14.365853, 9.929222, 23.518328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.693060, 9.703778, 23.472383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153474, -0.406318, 0.900751,
		-0.554342, -0.719201, -0.418874,
		0.818017, -0.563610, -0.114860,
		14.938465, 9.534696, 23.437925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.137676, 9.190225, 23.615713>,  <14.365853, 9.929222, 23.518328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.137676, 9.190225, 23.615713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.532138, 9.206113, 23.680113>,  <14.768815, 9.215646, 23.718754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.532138, 9.206113, 23.680113>,  <14.137676, 9.190225, 23.615713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.532138, 9.206113, 23.680113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131378, -0.405296, 0.904696,
		0.101189, -0.913322, -0.394466,
		0.986154, 0.039722, 0.161002,
		14.827984, 9.218029, 23.728413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.325308, 8.617692, 24.005676>,  <14.137676, 9.190225, 23.615713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.325308, 8.617692, 24.005676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.623992, 8.873816, 24.077707>,  <14.803203, 9.027490, 24.120926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.623992, 8.873816, 24.077707>,  <14.325308, 8.617692, 24.005676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.623992, 8.873816, 24.077707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113020, -0.388938, 0.914305,
		0.655478, -0.662368, -0.362791,
		0.746709, 0.640310, 0.180079,
		14.848005, 9.065908, 24.131731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.875510, 8.225509, 24.352142>,  <14.325308, 8.617692, 24.005676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.875510, 8.225509, 24.352142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.946979, 8.615268, 24.406734>,  <14.989860, 8.849123, 24.439489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.946979, 8.615268, 24.406734>,  <14.875510, 8.225509, 24.352142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.946979, 8.615268, 24.406734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050445, -0.147602, 0.987760,
		0.982615, -0.169598, -0.075526,
		0.178670, 0.974397, 0.136480,
		15.000580, 8.907587, 24.447680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.459122, 8.219370, 24.822224>,  <14.875510, 8.225509, 24.352142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.459122, 8.219370, 24.822224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.255784, 8.561728, 24.860233>,  <15.133781, 8.767142, 24.883039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.255784, 8.561728, 24.860233>,  <15.459122, 8.219370, 24.822224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.255784, 8.561728, 24.860233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092014, -0.055728, 0.994197,
		0.856224, 0.514139, -0.050425,
		-0.508345, 0.855895, 0.095023,
		15.103280, 8.818496, 24.888741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
