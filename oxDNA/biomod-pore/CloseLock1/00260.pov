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
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.052458, 34.779552, 34.895683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.356251, 35.001904, 35.030849>,  <24.538527, 35.135315, 35.111950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.356251, 35.001904, 35.030849>,  <24.052458, 34.779552, 34.895683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.356251, 35.001904, 35.030849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637740, -0.533735, -0.555351,
		-0.128352, 0.637280, -0.759869,
		0.759482, 0.555879, 0.337912,
		24.584095, 35.168667, 35.132225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.472603, 35.181961, 34.427448>,  <24.052458, 34.779552, 34.895683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.472603, 35.181961, 34.427448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.749704, 35.090759, 34.701122>,  <24.915966, 35.036037, 34.865326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.749704, 35.090759, 34.701122>,  <24.472603, 35.181961, 34.427448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.749704, 35.090759, 34.701122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469710, -0.577241, -0.667956,
		0.547234, 0.784097, -0.292792,
		0.692753, -0.228001, 0.684184,
		24.957531, 35.022358, 34.906376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.042734, 35.400192, 34.153461>,  <24.472603, 35.181961, 34.427448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.042734, 35.400192, 34.153461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.169241, 35.140144, 34.429813>,  <25.245146, 34.984116, 34.595623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.169241, 35.140144, 34.429813>,  <25.042734, 35.400192, 34.153461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.169241, 35.140144, 34.429813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565629, -0.455430, -0.687494,
		0.761603, 0.608214, 0.223690,
		0.316268, -0.650123, 0.690880,
		25.264122, 34.945107, 34.637077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.771011, 35.320045, 34.201054>,  <25.042734, 35.400192, 34.153461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.771011, 35.320045, 34.201054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601088, 34.978115, 34.320255>,  <25.499132, 34.772957, 34.391777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601088, 34.978115, 34.320255>,  <25.771011, 35.320045, 34.201054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.601088, 34.978115, 34.320255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502830, -0.496542, -0.707537,
		0.752793, -0.150724, 0.640769,
		-0.424811, -0.854827, 0.298005,
		25.473644, 34.721668, 34.409657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.417288, 35.445625, 33.835159>,  <25.771011, 35.320045, 34.201054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.417288, 35.445625, 33.835159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.735106, 35.499107, 34.072083>,  <26.925797, 35.531197, 34.214237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.735106, 35.499107, 34.072083>,  <26.417288, 35.445625, 33.835159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.735106, 35.499107, 34.072083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328221, 0.726102, -0.604191,
		-0.510856, 0.674463, 0.533035,
		0.794542, 0.133702, 0.592306,
		26.973469, 35.539219, 34.249775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.410269, 36.238228, 33.990036>,  <26.417288, 35.445625, 33.835159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.410269, 36.238228, 33.990036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779213, 36.085915, 34.016125>,  <27.000580, 35.994526, 34.031776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779213, 36.085915, 34.016125>,  <26.410269, 36.238228, 33.990036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.779213, 36.085915, 34.016125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310390, 0.629900, -0.711958,
		0.230018, 0.676927, 0.699187,
		0.922361, -0.380783, 0.065223,
		27.055922, 35.971680, 34.035690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.816847, 36.724617, 34.121208>,  <26.410269, 36.238228, 33.990036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.816847, 36.724617, 34.121208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.068832, 36.464245, 33.951771>,  <27.220024, 36.308022, 33.850109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.068832, 36.464245, 33.951771>,  <26.816847, 36.724617, 34.121208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.068832, 36.464245, 33.951771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307686, 0.709989, -0.633439,
		0.713072, 0.268711, 0.647551,
		0.629966, -0.650930, -0.423594,
		27.257822, 36.268967, 33.824692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.508511, 37.091541, 33.911015>,  <26.816847, 36.724617, 34.121208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.508511, 37.091541, 33.911015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521603, 36.769287, 33.674416>,  <27.529457, 36.575935, 33.532455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521603, 36.769287, 33.674416>,  <27.508511, 37.091541, 33.911015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.521603, 36.769287, 33.674416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256180, 0.578810, -0.774177,
		0.966075, -0.126192, 0.225334,
		0.032731, -0.805639, -0.591501,
		27.531422, 36.527596, 33.496964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.116673, 37.201603, 33.669956>,  <27.508511, 37.091541, 33.911015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.116673, 37.201603, 33.669956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921522, 36.957214, 33.420574>,  <27.804432, 36.810581, 33.270947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921522, 36.957214, 33.420574>,  <28.116673, 37.201603, 33.669956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.921522, 36.957214, 33.420574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367107, 0.504385, -0.781555,
		0.791967, -0.610175, -0.021785,
		-0.487874, -0.610968, -0.623456,
		27.775160, 36.773926, 33.233536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579134, 37.019295, 33.263504>,  <28.116673, 37.201603, 33.669956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579134, 37.019295, 33.263504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263521, 36.926498, 33.035957>,  <28.074154, 36.870819, 32.899429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263521, 36.926498, 33.035957>,  <28.579134, 37.019295, 33.263504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263521, 36.926498, 33.035957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472298, 0.363119, -0.803169,
		0.392899, -0.902399, -0.176940,
		-0.789028, -0.231996, -0.568869,
		28.026812, 36.856899, 32.865295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.726748, 36.689823, 32.623329>,  <28.579134, 37.019295, 33.263504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.726748, 36.689823, 32.623329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353918, 36.805794, 32.536442>,  <28.130220, 36.875374, 32.484310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353918, 36.805794, 32.536442>,  <28.726748, 36.689823, 32.623329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.353918, 36.805794, 32.536442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334392, 0.457889, -0.823723,
		-0.139356, -0.840406, -0.523734,
		-0.932074, 0.289923, -0.217216,
		28.074295, 36.892769, 32.471275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.490995, 36.513329, 31.880247>,  <28.726748, 36.689823, 32.623329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.490995, 36.513329, 31.880247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.271008, 36.816212, 32.021198>,  <28.139015, 36.997940, 32.105770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.271008, 36.816212, 32.021198>,  <28.490995, 36.513329, 31.880247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271008, 36.816212, 32.021198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258171, 0.555385, -0.790503,
		-0.794281, -0.343778, -0.500933,
		-0.549968, 0.757208, 0.352378,
		28.106016, 37.043373, 32.126911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.185867, 36.755272, 31.290251>,  <28.490995, 36.513329, 31.880247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.185867, 36.755272, 31.290251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.153296, 37.029140, 31.579966>,  <28.133753, 37.193462, 31.753794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.153296, 37.029140, 31.579966>,  <28.185867, 36.755272, 31.290251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.153296, 37.029140, 31.579966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282630, 0.712731, -0.641977,
		-0.955766, 0.152428, -0.251548,
		-0.081431, 0.684675, 0.724285,
		28.128866, 37.234543, 31.797251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.813753, 37.260403, 31.006802>,  <28.185867, 36.755272, 31.290251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.813753, 37.260403, 31.006802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.010515, 37.437206, 31.306843>,  <28.128572, 37.543289, 31.486868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.010515, 37.437206, 31.306843>,  <27.813753, 37.260403, 31.006802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.010515, 37.437206, 31.306843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360091, 0.681120, -0.637503,
		-0.792695, 0.583695, 0.175881,
		0.491903, 0.442012, 0.750104,
		28.158087, 37.569809, 31.531874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.723330, 37.987984, 30.985258>,  <27.813753, 37.260403, 31.006802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.723330, 37.987984, 30.985258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.067600, 37.935387, 31.182011>,  <28.274162, 37.903828, 31.300062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.067600, 37.935387, 31.182011>,  <27.723330, 37.987984, 30.985258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.067600, 37.935387, 31.182011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474191, 0.558829, -0.680333,
		-0.185420, 0.818792, 0.543322,
		0.860675, -0.131492, 0.491882,
		28.325804, 37.895939, 31.329575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039433, 38.631039, 30.809885>,  <27.723330, 37.987984, 30.985258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.039433, 38.631039, 30.809885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324413, 38.467121, 31.037737>,  <28.495401, 38.368771, 31.174448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324413, 38.467121, 31.037737>,  <28.039433, 38.631039, 30.809885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.324413, 38.467121, 31.037737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681265, 0.598504, -0.421510,
		-0.168194, 0.688376, 0.705584,
		0.712453, -0.409794, 0.569631,
		28.538149, 38.344181, 31.208626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405460, 39.224804, 31.051832>,  <28.039433, 38.631039, 30.809885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.405460, 39.224804, 31.051832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629877, 38.893700, 31.049070>,  <28.764528, 38.695038, 31.047413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629877, 38.893700, 31.049070>,  <28.405460, 39.224804, 31.051832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629877, 38.893700, 31.049070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785474, 0.534980, -0.311170,
		0.261267, 0.169157, 0.950329,
		0.561044, -0.827758, -0.006904,
		28.798191, 38.645370, 31.046999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110617, 39.389484, 31.371614>,  <28.405460, 39.224804, 31.051832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110617, 39.389484, 31.371614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143345, 39.073441, 31.128622>,  <29.162981, 38.883816, 30.982826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143345, 39.073441, 31.128622>,  <29.110617, 39.389484, 31.371614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143345, 39.073441, 31.128622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698155, 0.480425, -0.530821,
		0.711256, -0.380685, 0.590927,
		0.081820, -0.790108, -0.607482,
		29.167891, 38.836407, 30.946377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788670, 39.477470, 31.204987>,  <29.110617, 39.389484, 31.371614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788670, 39.477470, 31.204987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.647686, 39.232632, 30.921829>,  <29.563097, 39.085728, 30.751936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.647686, 39.232632, 30.921829>,  <29.788670, 39.477470, 31.204987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647686, 39.232632, 30.921829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625454, 0.408602, -0.664719,
		0.696119, -0.677038, 0.238824,
		-0.352457, -0.612098, -0.707892,
		29.541948, 39.049004, 30.709461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369595, 39.171146, 30.876467>,  <29.788670, 39.477470, 31.204987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369595, 39.171146, 30.876467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069656, 39.164505, 30.611906>,  <29.889692, 39.160519, 30.453169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069656, 39.164505, 30.611906>,  <30.369595, 39.171146, 30.876467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069656, 39.164505, 30.611906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601832, 0.398133, -0.692307,
		0.274824, -0.917177, -0.288544,
		-0.749847, -0.016608, -0.661403,
		29.844702, 39.159523, 30.413485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.579552, 38.752697, 30.260317>,  <30.369595, 39.171146, 30.876467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.579552, 38.752697, 30.260317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.258898, 38.960835, 30.142591>,  <30.066505, 39.085716, 30.071957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.258898, 38.960835, 30.142591>,  <30.579552, 38.752697, 30.260317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.258898, 38.960835, 30.142591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564856, 0.498076, -0.657920,
		-0.195756, -0.693657, -0.693196,
		-0.801634, 0.520347, -0.294315,
		30.018408, 39.116940, 30.054296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582922, 38.662868, 29.438765>,  <30.579552, 38.752697, 30.260317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582922, 38.662868, 29.438765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371887, 38.989216, 29.533438>,  <30.245266, 39.185024, 29.590242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371887, 38.989216, 29.533438>,  <30.582922, 38.662868, 29.438765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371887, 38.989216, 29.533438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429628, 0.496613, -0.754185,
		-0.732854, -0.296211, -0.612523,
		-0.527585, 0.815864, 0.236684,
		30.213612, 39.233974, 29.604443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.360168, 38.996758, 28.843906>,  <30.582922, 38.662868, 29.438765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.360168, 38.996758, 28.843906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326864, 39.290863, 29.112965>,  <30.306883, 39.467327, 29.274399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326864, 39.290863, 29.112965>,  <30.360168, 38.996758, 28.843906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326864, 39.290863, 29.112965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458431, 0.627586, -0.629267,
		-0.884821, 0.255970, -0.389320,
		-0.083258, 0.735265, 0.672646,
		30.301888, 39.511444, 29.314758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106417, 39.467068, 28.433039>,  <30.360168, 38.996758, 28.843906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106417, 39.467068, 28.433039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231405, 39.657230, 28.762001>,  <30.306398, 39.771328, 28.959379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231405, 39.657230, 28.762001>,  <30.106417, 39.467068, 28.433039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231405, 39.657230, 28.762001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450901, 0.687780, -0.568900,
		-0.836092, 0.548590, 0.000553,
		0.312473, 0.475403, 0.822407,
		30.325148, 39.799850, 29.008722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972240, 40.208488, 28.315460>,  <30.106417, 39.467068, 28.433039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972240, 40.208488, 28.315460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.260874, 40.208954, 28.592390>,  <30.434053, 40.209232, 28.758549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.260874, 40.208954, 28.592390>,  <29.972240, 40.208488, 28.315460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.260874, 40.208954, 28.592390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467935, 0.736184, -0.488948,
		-0.510250, 0.676780, 0.530673,
		0.721583, 0.001165, 0.692327,
		30.477348, 40.209305, 28.800089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.086397, 40.894058, 28.722540>,  <29.972240, 40.208488, 28.315460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.086397, 40.894058, 28.722540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.413416, 40.676476, 28.646931>,  <30.609627, 40.545925, 28.601564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.413416, 40.676476, 28.646931>,  <30.086397, 40.894058, 28.722540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413416, 40.676476, 28.646931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323859, 0.705719, -0.630139,
		0.476167, 0.453950, 0.753123,
		0.817545, -0.543958, -0.189024,
		30.658680, 40.513287, 28.590223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285654, 41.204502, 29.457188>,  <30.086397, 40.894058, 28.722540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285654, 41.204502, 29.457188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.911255, 41.305756, 29.555025>,  <29.686615, 41.366508, 29.613728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.911255, 41.305756, 29.555025>,  <30.285654, 41.204502, 29.457188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.911255, 41.305756, 29.555025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351417, 0.711993, 0.607924,
		-0.020264, 0.654972, -0.755382,
		-0.936000, 0.253135, 0.244596,
		29.630455, 41.381695, 29.628405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256723, 41.888794, 29.420271>,  <30.285654, 41.204502, 29.457188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256723, 41.888794, 29.420271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973923, 41.781700, 29.682098>,  <29.804241, 41.717442, 29.839195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973923, 41.781700, 29.682098>,  <30.256723, 41.888794, 29.420271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973923, 41.781700, 29.682098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288080, 0.736266, 0.612310,
		-0.645876, 0.621474, -0.443412,
		-0.707003, -0.267738, 0.654571,
		29.761822, 41.701378, 29.878469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.954250, 42.493332, 29.745794>,  <30.256723, 41.888794, 29.420271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.954250, 42.493332, 29.745794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.919994, 42.179253, 29.991114>,  <29.899441, 41.990807, 30.138306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.919994, 42.179253, 29.991114>,  <29.954250, 42.493332, 29.745794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.919994, 42.179253, 29.991114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344364, 0.554295, 0.757741,
		-0.934922, 0.276092, 0.222922,
		-0.085642, -0.785195, 0.613298,
		29.894302, 41.943695, 30.175102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595791, 42.667660, 30.405802>,  <29.954250, 42.493332, 29.745794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595791, 42.667660, 30.405802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887617, 42.394150, 30.411274>,  <30.062714, 42.230045, 30.414557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887617, 42.394150, 30.411274>,  <29.595791, 42.667660, 30.405802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887617, 42.394150, 30.411274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484438, 0.530794, 0.695397,
		-0.482753, -0.500713, 0.718495,
		0.729568, -0.683772, 0.013678,
		30.106487, 42.189018, 30.415377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617769, 42.333076, 31.144590>,  <29.595791, 42.667660, 30.405802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617769, 42.333076, 31.144590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.947699, 42.383396, 30.924105>,  <30.145657, 42.413586, 30.791813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.947699, 42.383396, 30.924105>,  <29.617769, 42.333076, 31.144590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.947699, 42.383396, 30.924105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295815, 0.734826, 0.610348,
		0.481826, -0.666489, 0.568891,
		0.824826, 0.125795, -0.551215,
		30.195147, 42.421135, 30.758739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162165, 42.161453, 31.534550>,  <29.617769, 42.333076, 31.144590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162165, 42.161453, 31.534550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.272470, 42.453613, 31.284599>,  <30.338654, 42.628910, 31.134630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.272470, 42.453613, 31.284599>,  <30.162165, 42.161453, 31.534550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.272470, 42.453613, 31.284599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311747, 0.546982, 0.776933,
		0.909268, -0.409053, -0.076862,
		0.275764, 0.730402, -0.624874,
		30.355200, 42.672733, 31.097137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.966328, 42.293140, 31.544636>,  <30.162165, 42.161453, 31.534550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.966328, 42.293140, 31.544636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801031, 42.630924, 31.408331>,  <30.701853, 42.833595, 31.326548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801031, 42.630924, 31.408331>,  <30.966328, 42.293140, 31.544636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.801031, 42.630924, 31.408331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577786, 0.532384, 0.618652,
		0.703843, 0.058766, -0.707921,
		-0.413242, 0.844460, -0.340760,
		30.677059, 42.884262, 31.306103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355436, 42.750874, 31.011391>,  <30.966328, 42.293140, 31.544636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355436, 42.750874, 31.011391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113966, 42.957493, 31.254292>,  <30.969084, 43.081463, 31.400032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113966, 42.957493, 31.254292>,  <31.355436, 42.750874, 31.011391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113966, 42.957493, 31.254292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785720, 0.256530, 0.562882,
		0.134975, 0.816930, -0.560721,
		-0.603677, 0.516544, 0.607253,
		30.932863, 43.112457, 31.436468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883623, 42.351913, 31.206087>,  <31.355436, 42.750874, 31.011391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883623, 42.351913, 31.206087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998661, 42.417168, 31.583590>,  <32.067684, 42.456322, 31.810091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998661, 42.417168, 31.583590>,  <31.883623, 42.351913, 31.206087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998661, 42.417168, 31.583590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287980, -0.925057, 0.247664,
		0.913431, -0.343010, -0.219063,
		0.287597, 0.163138, 0.943755,
		32.084942, 42.466110, 31.866716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346241, 41.759041, 31.554184>,  <31.883623, 42.351913, 31.206087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346241, 41.759041, 31.554184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165184, 41.942375, 31.860136>,  <32.056549, 42.052376, 32.043709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165184, 41.942375, 31.860136>,  <32.346241, 41.759041, 31.554184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165184, 41.942375, 31.860136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073223, -0.873995, 0.480387,
		0.888680, 0.161438, 0.429169,
		-0.452645, 0.458335, 0.764881,
		32.029392, 42.079876, 32.089600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759159, 41.651131, 32.254421>,  <32.346241, 41.759041, 31.554184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759159, 41.651131, 32.254421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374199, 41.726116, 32.333061>,  <32.143223, 41.771107, 32.380245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374199, 41.726116, 32.333061>,  <32.759159, 41.651131, 32.254421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374199, 41.726116, 32.333061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019034, -0.768481, 0.639589,
		0.270982, 0.611795, 0.743152,
		-0.962396, 0.187463, 0.196600,
		32.085480, 41.782356, 32.392040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662373, 41.623180, 32.968807>,  <32.759159, 41.651131, 32.254421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662373, 41.623180, 32.968807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304962, 41.545303, 32.806965>,  <32.090515, 41.498577, 32.709862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304962, 41.545303, 32.806965>,  <32.662373, 41.623180, 32.968807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304962, 41.545303, 32.806965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077849, -0.820285, 0.566632,
		-0.442207, 0.537799, 0.717792,
		-0.893528, -0.194689, -0.404603,
		32.036903, 41.486897, 32.685585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356319, 41.370075, 33.516335>,  <32.662373, 41.623180, 32.968807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356319, 41.370075, 33.516335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132832, 41.239174, 33.211510>,  <31.998737, 41.160633, 33.028614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132832, 41.239174, 33.211510>,  <32.356319, 41.370075, 33.516335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132832, 41.239174, 33.211510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306047, -0.772650, 0.556190,
		-0.770820, 0.543982, 0.331542,
		-0.558723, -0.327255, -0.762058,
		31.965214, 41.140999, 32.982891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829662, 41.140396, 33.800217>,  <32.356319, 41.370075, 33.516335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829662, 41.140396, 33.800217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804852, 40.967129, 33.440548>,  <31.789965, 40.863167, 33.224747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804852, 40.967129, 33.440548>,  <31.829662, 41.140396, 33.800217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804852, 40.967129, 33.440548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448165, -0.792892, 0.412882,
		-0.891797, 0.428588, -0.144952,
		-0.062025, -0.433169, -0.899176,
		31.786243, 40.837177, 33.170795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263296, 40.730595, 33.856430>,  <31.829662, 41.140396, 33.800217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263296, 40.730595, 33.856430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411709, 40.571266, 33.520889>,  <31.500757, 40.475670, 33.319565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411709, 40.571266, 33.520889>,  <31.263296, 40.730595, 33.856430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411709, 40.571266, 33.520889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328951, -0.901135, 0.282395,
		-0.868403, 0.171164, -0.465380,
		0.371034, -0.398320, -0.838853,
		31.523020, 40.451771, 33.269234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729048, 40.401447, 33.542671>,  <31.263296, 40.730595, 33.856430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729048, 40.401447, 33.542671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064508, 40.216022, 33.428291>,  <31.265785, 40.104767, 33.359661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064508, 40.216022, 33.428291>,  <30.729048, 40.401447, 33.542671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064508, 40.216022, 33.428291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419779, -0.884640, 0.202972,
		-0.347057, -0.050186, -0.936500,
		0.838651, -0.463567, -0.285954,
		31.316103, 40.076954, 33.342506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527622, 39.806328, 33.161407>,  <30.729048, 40.401447, 33.542671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527622, 39.806328, 33.161407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910576, 39.707333, 33.220955>,  <31.140348, 39.647934, 33.256683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910576, 39.707333, 33.220955>,  <30.527622, 39.806328, 33.161407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910576, 39.707333, 33.220955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275611, -0.936957, 0.214825,
		0.086315, -0.246700, -0.965240,
		0.957386, -0.247488, 0.148867,
		31.197792, 39.633087, 33.265614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582903, 39.079792, 32.875797>,  <30.527622, 39.806328, 33.161407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582903, 39.079792, 32.875797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904966, 39.123970, 33.108871>,  <31.098206, 39.150478, 33.248714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904966, 39.123970, 33.108871>,  <30.582903, 39.079792, 32.875797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904966, 39.123970, 33.108871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037981, -0.970885, 0.236516,
		0.591840, -0.212564, -0.777523,
		0.805160, 0.110448, 0.582682,
		31.146515, 39.157104, 33.283676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107815, 38.451862, 32.697765>,  <30.582903, 39.079792, 32.875797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.107815, 38.451862, 32.697765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175619, 38.602909, 33.061890>,  <31.216301, 38.693539, 33.280365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175619, 38.602909, 33.061890>,  <31.107815, 38.451862, 32.697765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175619, 38.602909, 33.061890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053732, -0.918765, 0.391131,
		0.984062, -0.115214, -0.135451,
		0.169511, 0.377619, 0.910313,
		31.226473, 38.716194, 33.334984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568378, 38.048130, 32.900795>,  <31.107815, 38.451862, 32.697765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568378, 38.048130, 32.900795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391726, 38.202980, 33.224548>,  <31.285734, 38.295891, 33.418800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391726, 38.202980, 33.224548>,  <31.568378, 38.048130, 32.900795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391726, 38.202980, 33.224548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070028, -0.914242, 0.399071,
		0.894458, 0.119564, 0.430870,
		-0.441634, 0.387125, 0.809379,
		31.259235, 38.319118, 33.467361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671635, 37.654804, 33.501755>,  <31.568378, 38.048130, 32.900795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671635, 37.654804, 33.501755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355597, 37.857243, 33.640099>,  <31.165974, 37.978706, 33.723106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355597, 37.857243, 33.640099>,  <31.671635, 37.654804, 33.501755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355597, 37.857243, 33.640099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317118, -0.820323, 0.475927,
		0.524580, 0.266349, 0.808625,
		-0.790096, 0.506092, 0.345860,
		31.118568, 38.009071, 33.743858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622869, 37.443787, 34.166561>,  <31.671635, 37.654804, 33.501755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622869, 37.443787, 34.166561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265732, 37.595196, 34.068951>,  <31.051449, 37.686043, 34.010384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265732, 37.595196, 34.068951>,  <31.622869, 37.443787, 34.166561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265732, 37.595196, 34.068951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446317, -0.816151, 0.367013,
		-0.060241, 0.436599, 0.897637,
		-0.892845, 0.378522, -0.244028,
		30.997879, 37.708752, 33.995743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298056, 37.246246, 34.824581>,  <31.622869, 37.443787, 34.166561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298056, 37.246246, 34.824581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032347, 37.323166, 34.535648>,  <30.872921, 37.369320, 34.362289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032347, 37.323166, 34.535648>,  <31.298056, 37.246246, 34.824581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.032347, 37.323166, 34.535648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551134, -0.778817, 0.299493,
		-0.504971, 0.597046, 0.623330,
		-0.664271, 0.192303, -0.722332,
		30.833065, 37.380856, 34.318947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605446, 37.191151, 35.104855>,  <31.298056, 37.246246, 34.824581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605446, 37.191151, 35.104855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565458, 37.134212, 34.710953>,  <30.541466, 37.100052, 34.474609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565458, 37.134212, 34.710953>,  <30.605446, 37.191151, 35.104855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565458, 37.134212, 34.710953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768551, -0.617533, 0.167281,
		-0.631931, 0.773558, -0.047665,
		-0.099967, -0.142343, -0.984756,
		30.535469, 37.091511, 34.415527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867302, 37.128941, 35.036324>,  <30.605446, 37.191151, 35.104855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867302, 37.128941, 35.036324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.013262, 36.964870, 34.701992>,  <30.100838, 36.866428, 34.501392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.013262, 36.964870, 34.701992>,  <29.867302, 37.128941, 35.036324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013262, 36.964870, 34.701992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723313, -0.690140, 0.022902,
		-0.586230, 0.596207, -0.548517,
		0.364899, -0.410175, -0.835826,
		30.122732, 36.841816, 34.451244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360912, 36.934601, 34.604382>,  <29.867302, 37.128941, 35.036324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360912, 36.934601, 34.604382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631048, 36.684856, 34.447365>,  <29.793131, 36.535011, 34.353157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631048, 36.684856, 34.447365>,  <29.360912, 36.934601, 34.604382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631048, 36.684856, 34.447365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714850, -0.685081, -0.140191,
		-0.181391, 0.375284, -0.908988,
		0.675342, -0.624361, -0.392539,
		29.833651, 36.497547, 34.329601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.973770, 36.392250, 34.154877>,  <29.360912, 36.934601, 34.604382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.973770, 36.392250, 34.154877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331385, 36.213234, 34.162941>,  <29.545954, 36.105824, 34.167782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331385, 36.213234, 34.162941>,  <28.973770, 36.392250, 34.154877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331385, 36.213234, 34.162941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413987, -0.842542, -0.344584,
		0.171204, 0.299723, -0.938539,
		0.894038, -0.447538, 0.020165,
		29.599596, 36.078972, 34.168991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.114286, 36.103184, 33.462086>,  <28.973770, 36.392250, 34.154877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.114286, 36.103184, 33.462086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334167, 35.889702, 33.719143>,  <29.466097, 35.761612, 33.873379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334167, 35.889702, 33.719143>,  <29.114286, 36.103184, 33.462086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334167, 35.889702, 33.719143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291943, -0.843527, -0.450813,
		0.782686, 0.060198, -0.619500,
		0.549703, -0.533703, 0.642642,
		29.499079, 35.729591, 33.911934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.295881, 35.489422, 33.076553>,  <29.114286, 36.103184, 33.462086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.295881, 35.489422, 33.076553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377342, 35.385319, 33.454079>,  <29.426218, 35.322857, 33.680595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377342, 35.385319, 33.454079>,  <29.295881, 35.489422, 33.076553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377342, 35.385319, 33.454079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144699, -0.961434, -0.233895,
		0.968292, -0.088936, -0.233456,
		0.203651, -0.260260, 0.943817,
		29.438437, 35.307240, 33.737225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819368, 35.080559, 33.004379>,  <29.295881, 35.489422, 33.076553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819368, 35.080559, 33.004379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663038, 34.987488, 33.360607>,  <29.569241, 34.931644, 33.574345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663038, 34.987488, 33.360607>,  <29.819368, 35.080559, 33.004379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663038, 34.987488, 33.360607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106409, -0.949615, -0.294801,
		0.914293, -0.209981, 0.346376,
		-0.390826, -0.232677, 0.890571,
		29.545790, 34.917686, 33.627777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150238, 34.446522, 33.222973>,  <29.819368, 35.080559, 33.004379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150238, 34.446522, 33.222973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809523, 34.472416, 33.430923>,  <29.605093, 34.487953, 33.555695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809523, 34.472416, 33.430923>,  <30.150238, 34.446522, 33.222973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.809523, 34.472416, 33.430923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218389, -0.945880, -0.240036,
		0.476198, -0.317994, 0.819826,
		-0.851787, 0.064737, 0.519873,
		29.553986, 34.491837, 33.586884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180445, 33.987560, 33.859867>,  <30.150238, 34.446522, 33.222973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180445, 33.987560, 33.859867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.815432, 34.052872, 33.709866>,  <29.596424, 34.092056, 33.619865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.815432, 34.052872, 33.709866>,  <30.180445, 33.987560, 33.859867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.815432, 34.052872, 33.709866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153317, -0.986563, -0.056463,
		-0.379183, 0.005970, 0.925302,
		-0.912532, 0.163274, -0.375003,
		29.541672, 34.101852, 33.597366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000084, 33.960052, 33.723873>,  <30.180445, 33.987560, 33.859867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000084, 33.960052, 33.723873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155678, 34.287361, 33.893162>,  <31.249035, 34.483746, 33.994736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155678, 34.287361, 33.893162>,  <31.000084, 33.960052, 33.723873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155678, 34.287361, 33.893162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296870, -0.546240, 0.783256,
		0.872100, -0.179032, -0.455400,
		0.388986, 0.818272, 0.423226,
		31.272373, 34.532845, 34.020130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641541, 33.720528, 34.010536>,  <31.000084, 33.960052, 33.723873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641541, 33.720528, 34.010536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596792, 34.062889, 34.212490>,  <31.569942, 34.268307, 34.333664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596792, 34.062889, 34.212490>,  <31.641541, 33.720528, 34.010536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596792, 34.062889, 34.212490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454886, -0.407609, 0.791791,
		0.883495, 0.318244, -0.343740,
		-0.111871, 0.855906, 0.504885,
		31.563231, 34.319660, 34.363956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157284, 33.713490, 34.495754>,  <31.641541, 33.720528, 34.010536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157284, 33.713490, 34.495754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.907667, 33.985409, 34.649868>,  <31.757898, 34.148560, 34.742336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.907667, 33.985409, 34.649868>,  <32.157284, 33.713490, 34.495754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907667, 33.985409, 34.649868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422845, -0.120851, 0.898107,
		0.657097, 0.723370, -0.212035,
		-0.624040, 0.679802, 0.385284,
		31.720455, 34.189350, 34.765453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446484, 34.212078, 35.046215>,  <32.157284, 33.713490, 34.495754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446484, 34.212078, 35.046215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061195, 34.133667, 35.119736>,  <31.830023, 34.086620, 35.163849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061195, 34.133667, 35.119736>,  <32.446484, 34.212078, 35.046215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061195, 34.133667, 35.119736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216260, -0.159502, 0.963219,
		-0.159502, 0.967539, 0.196029,
		-0.963219, -0.196029, 0.183799,
		31.772230, 34.074860, 35.174877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191570, 34.733974, 35.535931>,  <32.446484, 34.212078, 35.046215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191570, 34.733974, 35.535931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963877, 34.405491, 35.551895>,  <31.827261, 34.208401, 35.561474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963877, 34.405491, 35.551895>,  <32.191570, 34.733974, 35.535931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963877, 34.405491, 35.551895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169479, -0.069702, 0.983066,
		-0.804520, 0.566355, 0.178854,
		-0.569231, -0.821209, 0.039909,
		31.793108, 34.159130, 35.563869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576298, 34.862614, 35.931618>,  <32.191570, 34.733974, 35.535931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576298, 34.862614, 35.931618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727446, 34.492279, 35.928913>,  <31.818134, 34.270081, 35.927292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727446, 34.492279, 35.928913>,  <31.576298, 34.862614, 35.931618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727446, 34.492279, 35.928913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021171, -0.015942, 0.999649,
		-0.925616, -0.377595, -0.025625,
		0.377871, -0.925834, -0.006762,
		31.840807, 34.214527, 35.926884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084965, 34.383682, 35.983555>,  <31.576298, 34.862614, 35.931618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084965, 34.383682, 35.983555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440750, 34.293854, 36.142765>,  <31.654221, 34.239956, 36.238289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440750, 34.293854, 36.142765>,  <31.084965, 34.383682, 35.983555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440750, 34.293854, 36.142765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367436, 0.166465, 0.915030,
		-0.271746, -0.960134, 0.065549,
		0.889463, -0.224570, 0.398024,
		31.707590, 34.226482, 36.262173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949778, 33.942757, 36.570602>,  <31.084965, 34.383682, 35.983555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949778, 33.942757, 36.570602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308386, 34.113491, 36.618027>,  <31.523552, 34.215931, 36.646481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308386, 34.113491, 36.618027>,  <30.949778, 33.942757, 36.570602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308386, 34.113491, 36.618027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202160, 0.156057, 0.966839,
		0.394181, -0.890761, 0.226198,
		0.896522, 0.426838, 0.118562,
		31.577343, 34.241543, 36.653595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267633, 33.629807, 37.172695>,  <30.949778, 33.942757, 36.570602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267633, 33.629807, 37.172695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445179, 33.987480, 37.149315>,  <31.551706, 34.202084, 37.135284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445179, 33.987480, 37.149315>,  <31.267633, 33.629807, 37.172695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445179, 33.987480, 37.149315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075559, 0.102347, 0.991875,
		0.892903, -0.435841, 0.112991,
		0.443864, 0.894186, -0.058454,
		31.578339, 34.255737, 37.131779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870226, 33.549309, 37.703838>,  <31.267633, 33.629807, 37.172695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870226, 33.549309, 37.703838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832985, 33.940296, 37.628056>,  <31.810640, 34.174889, 37.582584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832985, 33.940296, 37.628056>,  <31.870226, 33.549309, 37.703838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832985, 33.940296, 37.628056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188914, 0.204171, 0.960534,
		0.977570, 0.053636, -0.203666,
		-0.093102, 0.977465, -0.189459,
		31.805054, 34.233536, 37.571217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391502, 33.941921, 38.094318>,  <31.870226, 33.549309, 37.703838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391502, 33.941921, 38.094318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121471, 34.230671, 38.033436>,  <31.959454, 34.403919, 37.996906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121471, 34.230671, 38.033436>,  <32.391502, 33.941921, 38.094318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121471, 34.230671, 38.033436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085282, 0.128569, 0.988027,
		0.732801, 0.679975, -0.025231,
		-0.675078, 0.721875, -0.152205,
		31.918947, 34.447235, 37.987774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637806, 34.459679, 38.535938>,  <32.391502, 33.941921, 38.094318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637806, 34.459679, 38.535938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262409, 34.549377, 38.430912>,  <32.037170, 34.603199, 38.367897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262409, 34.549377, 38.430912>,  <32.637806, 34.459679, 38.535938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262409, 34.549377, 38.430912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210706, 0.230488, 0.949988,
		0.273554, 0.946882, -0.169061,
		-0.938494, 0.224251, -0.262565,
		31.980862, 34.616653, 38.352142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535698, 35.116474, 38.878323>,  <32.637806, 34.459679, 38.535938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535698, 35.116474, 38.878323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179607, 34.950573, 38.802975>,  <31.965954, 34.851032, 38.757767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179607, 34.950573, 38.802975>,  <32.535698, 35.116474, 38.878323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179607, 34.950573, 38.802975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192511, -0.032227, 0.980766,
		-0.412844, 0.909364, -0.051155,
		-0.890224, -0.414751, -0.188367,
		31.912540, 34.826149, 38.746464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123436, 35.511288, 39.335686>,  <32.535698, 35.116474, 38.878323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123436, 35.511288, 39.335686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897802, 35.195431, 39.239124>,  <31.762423, 35.005917, 39.181187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897802, 35.195431, 39.239124>,  <32.123436, 35.511288, 39.335686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897802, 35.195431, 39.239124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349983, -0.036157, 0.936058,
		-0.747878, 0.612503, -0.255966,
		-0.564083, -0.789641, -0.241407,
		31.728577, 34.958538, 39.166702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480879, 35.596661, 39.663788>,  <32.123436, 35.511288, 39.335686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480879, 35.596661, 39.663788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524117, 35.204990, 39.595039>,  <31.550058, 34.969990, 39.553791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524117, 35.204990, 39.595039>,  <31.480879, 35.596661, 39.663788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524117, 35.204990, 39.595039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251114, -0.194171, 0.948282,
		-0.961903, -0.059345, -0.266872,
		0.108095, -0.979171, -0.171872,
		31.556545, 34.911240, 39.543476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826452, 35.274441, 39.903538>,  <31.480879, 35.596661, 39.663788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826452, 35.274441, 39.903538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.107224, 34.989792, 39.891582>,  <31.275686, 34.819004, 39.884411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.107224, 34.989792, 39.891582>,  <30.826452, 35.274441, 39.903538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107224, 34.989792, 39.891582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303865, -0.337146, 0.891066,
		-0.644177, -0.616382, -0.452889,
		0.701927, -0.711622, -0.029884,
		31.317802, 34.776306, 39.882618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500435, 34.768780, 40.165825>,  <30.826452, 35.274441, 39.903538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500435, 34.768780, 40.165825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880642, 34.649750, 40.201530>,  <31.108767, 34.578331, 40.222954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880642, 34.649750, 40.201530>,  <30.500435, 34.768780, 40.165825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880642, 34.649750, 40.201530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173480, -0.270027, 0.947096,
		-0.257704, -0.915723, -0.308286,
		0.950523, -0.297552, 0.089273,
		31.165796, 34.560478, 40.228310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410643, 34.153870, 40.530560>,  <30.500435, 34.768780, 40.165825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.410643, 34.153870, 40.530560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800428, 34.239067, 40.558994>,  <31.034300, 34.290188, 40.576054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800428, 34.239067, 40.558994>,  <30.410643, 34.153870, 40.530560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800428, 34.239067, 40.558994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029093, -0.433672, 0.900601,
		0.222652, -0.875535, -0.428794,
		0.974464, 0.212996, 0.071086,
		31.092768, 34.302967, 40.580318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812748, 33.387482, 40.625153>,  <30.410643, 34.153870, 40.530560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812748, 33.387482, 40.625153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.023739, 33.700951, 40.756382>,  <31.150333, 33.889030, 40.835117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.023739, 33.700951, 40.756382>,  <30.812748, 33.387482, 40.625153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.023739, 33.700951, 40.756382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220099, -0.499033, 0.838166,
		0.820563, -0.369906, -0.435713,
		0.527478, 0.783669, 0.328072,
		31.181982, 33.936050, 40.854805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398819, 33.141750, 40.911335>,  <30.812748, 33.387482, 40.625153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398819, 33.141750, 40.911335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381224, 33.504829, 41.078259>,  <31.370667, 33.722679, 41.178413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381224, 33.504829, 41.078259>,  <31.398819, 33.141750, 40.911335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381224, 33.504829, 41.078259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223212, -0.398223, 0.889716,
		0.973777, 0.132288, -0.185091,
		-0.043991, 0.907699, 0.417309,
		31.368027, 33.777138, 41.203453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015568, 33.234711, 41.177605>,  <31.398819, 33.141750, 40.911335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015568, 33.234711, 41.177605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791565, 33.494255, 41.383663>,  <31.657164, 33.649982, 41.507298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791565, 33.494255, 41.383663>,  <32.015568, 33.234711, 41.177605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791565, 33.494255, 41.383663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298964, -0.421625, 0.856068,
		0.772668, 0.633411, 0.042125,
		-0.560004, 0.648863, 0.515143,
		31.623564, 33.688915, 41.538208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362442, 33.312313, 41.753746>,  <32.015568, 33.234711, 41.177605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362442, 33.312313, 41.753746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006531, 33.459290, 41.862026>,  <31.792984, 33.547478, 41.926994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006531, 33.459290, 41.862026>,  <32.362442, 33.312313, 41.753746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006531, 33.459290, 41.862026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150618, -0.323494, 0.934166,
		0.430826, 0.871973, 0.232494,
		-0.889777, 0.367445, 0.270704,
		31.739597, 33.569523, 41.943237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480118, 33.555225, 42.450703>,  <32.362442, 33.312313, 41.753746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480118, 33.555225, 42.450703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083408, 33.516861, 42.416798>,  <31.845383, 33.493843, 42.396454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083408, 33.516861, 42.416798>,  <32.480118, 33.555225, 42.450703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083408, 33.516861, 42.416798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053142, -0.293876, 0.954365,
		-0.116445, 0.951019, 0.286361,
		-0.991774, -0.095913, -0.084759,
		31.785875, 33.488087, 42.391369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148323, 33.882191, 43.102512>,  <32.480118, 33.555225, 42.450703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148323, 33.882191, 43.102512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915768, 33.604092, 42.933460>,  <31.776236, 33.437233, 42.832027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915768, 33.604092, 42.933460>,  <32.148323, 33.882191, 43.102512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915768, 33.604092, 42.933460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281505, -0.315473, 0.906218,
		-0.763378, 0.645835, -0.012305,
		-0.581385, -0.695251, -0.422631,
		31.741352, 33.395515, 42.806671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597538, 33.948235, 43.475426>,  <32.148323, 33.882191, 43.102512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597538, 33.948235, 43.475426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.508026, 33.601814, 43.296593>,  <31.454319, 33.393963, 43.189293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.508026, 33.601814, 43.296593>,  <31.597538, 33.948235, 43.475426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508026, 33.601814, 43.296593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303059, -0.374148, 0.876452,
		-0.926325, 0.331625, -0.178737,
		-0.223779, -0.866048, -0.447084,
		31.440893, 33.341999, 43.162468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962662, 33.738918, 43.710052>,  <31.597538, 33.948235, 43.475426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962662, 33.738918, 43.710052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150362, 33.410435, 43.580177>,  <31.262981, 33.213345, 43.502251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150362, 33.410435, 43.580177>,  <30.962662, 33.738918, 43.710052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150362, 33.410435, 43.580177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275382, -0.485435, 0.829770,
		-0.839030, -0.299954, -0.453935,
		0.469249, -0.821207, -0.324692,
		31.291136, 33.164074, 43.482769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553944, 33.217674, 43.745373>,  <30.962662, 33.738918, 43.710052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553944, 33.217674, 43.745373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915775, 33.047237, 43.750771>,  <31.132874, 32.944977, 43.754009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915775, 33.047237, 43.750771>,  <30.553944, 33.217674, 43.745373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915775, 33.047237, 43.750771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299023, -0.611611, 0.732473,
		-0.303846, -0.666616, -0.680662,
		0.904578, -0.426093, 0.013498,
		31.187149, 32.919411, 43.754822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.424139, 32.472927, 43.935501>,  <30.553944, 33.217674, 43.745373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.424139, 32.472927, 43.935501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813225, 32.539619, 44.000034>,  <31.046677, 32.579636, 44.038754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813225, 32.539619, 44.000034>,  <30.424139, 32.472927, 43.935501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813225, 32.539619, 44.000034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051097, -0.524349, 0.849969,
		0.226309, -0.835020, -0.501523,
		0.972714, 0.166730, 0.161332,
		31.105040, 32.589638, 44.048435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629440, 31.832613, 44.090092>,  <30.424139, 32.472927, 43.935501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629440, 31.832613, 44.090092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881050, 32.103859, 44.242138>,  <31.032017, 32.266605, 44.333366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881050, 32.103859, 44.242138>,  <30.629440, 31.832613, 44.090092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881050, 32.103859, 44.242138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012528, -0.480060, 0.877146,
		0.777283, -0.556510, -0.293475,
		0.629026, 0.678114, 0.380115,
		31.069757, 32.307293, 44.356171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034939, 31.421541, 44.502422>,  <30.629440, 31.832613, 44.090092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034939, 31.421541, 44.502422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114836, 31.789101, 44.638496>,  <31.162773, 32.009636, 44.720142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114836, 31.789101, 44.638496>,  <31.034939, 31.421541, 44.502422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114836, 31.789101, 44.638496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086399, -0.362345, 0.928031,
		0.976032, -0.155976, -0.151767,
		0.199743, 0.918900, 0.340185,
		31.174759, 32.064770, 44.740551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541960, 31.303720, 44.959297>,  <31.034939, 31.421541, 44.502422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541960, 31.303720, 44.959297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383711, 31.663483, 45.033653>,  <31.288761, 31.879339, 45.078266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383711, 31.663483, 45.033653>,  <31.541960, 31.303720, 44.959297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383711, 31.663483, 45.033653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065414, -0.229489, 0.971111,
		0.916081, 0.372032, 0.149624,
		-0.395621, 0.899404, 0.185894,
		31.265024, 31.933304, 45.089420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902946, 31.595518, 45.555817>,  <31.541960, 31.303720, 44.959297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902946, 31.595518, 45.555817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564709, 31.808144, 45.536175>,  <31.361767, 31.935719, 45.524391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564709, 31.808144, 45.536175>,  <31.902946, 31.595518, 45.555817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564709, 31.808144, 45.536175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067433, -0.015119, 0.997609,
		0.529551, 0.846883, 0.048630,
		-0.845593, 0.531564, -0.049102,
		31.311031, 31.967613, 45.521442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954042, 32.188656, 46.076889>,  <31.902946, 31.595518, 45.555817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954042, 32.188656, 46.076889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573807, 32.098515, 45.991478>,  <31.345665, 32.044430, 45.940231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573807, 32.098515, 45.991478>,  <31.954042, 32.188656, 46.076889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573807, 32.098515, 45.991478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222510, 0.014925, 0.974816,
		-0.216495, 0.974162, -0.064331,
		-0.950589, -0.225358, -0.213529,
		31.288630, 32.030907, 45.927418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683428, 32.540474, 46.596264>,  <31.954042, 32.188656, 46.076889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683428, 32.540474, 46.596264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409986, 32.282986, 46.458679>,  <31.245922, 32.128494, 46.376129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409986, 32.282986, 46.458679>,  <31.683428, 32.540474, 46.596264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409986, 32.282986, 46.458679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382688, -0.085153, 0.919945,
		-0.621477, 0.760508, -0.188133,
		-0.683606, -0.643721, -0.343958,
		31.204905, 32.089870, 46.355492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057867, 32.801643, 46.774963>,  <31.683428, 32.540474, 46.596264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057867, 32.801643, 46.774963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.006895, 32.410614, 46.707893>,  <30.976313, 32.175995, 46.667652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.006895, 32.410614, 46.707893>,  <31.057867, 32.801643, 46.774963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006895, 32.410614, 46.707893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597032, -0.059397, 0.800016,
		-0.792032, 0.202052, -0.576073,
		-0.127428, -0.977572, -0.167676,
		30.968666, 32.117344, 46.657589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340837, 32.658360, 46.997227>,  <31.057867, 32.801643, 46.774963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340837, 32.658360, 46.997227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.494926, 32.289459, 46.984173>,  <30.587379, 32.068119, 46.976341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.494926, 32.289459, 46.984173>,  <30.340837, 32.658360, 46.997227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.494926, 32.289459, 46.984173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297787, -0.157701, 0.941516,
		-0.873458, -0.352973, -0.335383,
		0.385220, -0.922247, -0.032635,
		30.610493, 32.012787, 46.974384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.852034, 32.116295, 47.118317>,  <30.340837, 32.658360, 46.997227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.852034, 32.116295, 47.118317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215376, 32.006439, 47.244469>,  <30.433382, 31.940527, 47.320160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215376, 32.006439, 47.244469>,  <29.852034, 32.116295, 47.118317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215376, 32.006439, 47.244469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383226, -0.244731, 0.890643,
		-0.167420, -0.929883, -0.327550,
		0.908355, -0.274637, 0.315382,
		30.487883, 31.924049, 47.339085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656551, 31.522188, 47.489590>,  <29.852034, 32.116295, 47.118317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.656551, 31.522188, 47.489590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.037109, 31.588724, 47.593266>,  <30.265444, 31.628645, 47.655472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.037109, 31.588724, 47.593266>,  <29.656551, 31.522188, 47.489590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037109, 31.588724, 47.593266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200515, -0.304231, 0.931256,
		0.233760, -0.937963, -0.256089,
		0.951393, 0.166341, 0.259192,
		30.322527, 31.638626, 47.671024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821842, 30.941841, 47.847630>,  <29.656551, 31.522188, 47.489590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.821842, 30.941841, 47.847630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112129, 31.180794, 47.984138>,  <30.286303, 31.324165, 48.066044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112129, 31.180794, 47.984138>,  <29.821842, 30.941841, 47.847630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112129, 31.180794, 47.984138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064668, -0.434618, 0.898290,
		0.684944, -0.673976, -0.276780,
		0.725720, 0.597380, 0.341274,
		30.329845, 31.360008, 48.086521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223471, 30.537653, 48.209282>,  <29.821842, 30.941841, 47.847630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223471, 30.537653, 48.209282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360481, 30.886377, 48.349350>,  <30.442688, 31.095612, 48.433392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360481, 30.886377, 48.349350>,  <30.223471, 30.537653, 48.209282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360481, 30.886377, 48.349350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156287, -0.420396, 0.893779,
		0.926418, -0.251414, -0.280249,
		0.342524, 0.871813, 0.350170,
		30.463238, 31.147921, 48.454399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716795, 30.306938, 48.576206>,  <30.223471, 30.537653, 48.209282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716795, 30.306938, 48.576206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648058, 30.673885, 48.719822>,  <30.606815, 30.894053, 48.805992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648058, 30.673885, 48.719822>,  <30.716795, 30.306938, 48.576206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648058, 30.673885, 48.719822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116882, -0.342899, 0.932072,
		0.978166, 0.202136, -0.048298,
		-0.171844, 0.917367, 0.359038,
		30.596504, 30.949095, 48.827534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273222, 30.459791, 48.983582>,  <30.716795, 30.306938, 48.576206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273222, 30.459791, 48.983582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970253, 30.683208, 49.118839>,  <30.788471, 30.817259, 49.199993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970253, 30.683208, 49.118839>,  <31.273222, 30.459791, 48.983582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970253, 30.683208, 49.118839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055693, -0.460739, 0.885786,
		0.650548, 0.689745, 0.317866,
		-0.757420, 0.558544, 0.338147,
		30.743027, 30.850771, 49.220284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457251, 30.654753, 49.572197>,  <31.273222, 30.459791, 48.983582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457251, 30.654753, 49.572197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060743, 30.697916, 49.602512>,  <30.822840, 30.723814, 49.620701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060743, 30.697916, 49.602512>,  <31.457251, 30.654753, 49.572197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060743, 30.697916, 49.602512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047474, -0.244180, 0.968567,
		0.123022, 0.963708, 0.236925,
		-0.991268, 0.107908, 0.075790,
		30.763363, 30.730288, 49.625248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451088, 30.829786, 50.185078>,  <31.457251, 30.654753, 49.572197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451088, 30.829786, 50.185078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094526, 30.689236, 50.070580>,  <30.880589, 30.604906, 50.001881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094526, 30.689236, 50.070580>,  <31.451088, 30.829786, 50.185078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094526, 30.689236, 50.070580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099038, -0.465295, 0.879598,
		-0.442257, 0.812425, 0.379966,
		-0.891404, -0.351377, -0.286241,
		30.827105, 30.583822, 49.984707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049974, 30.886637, 50.801254>,  <31.451088, 30.829786, 50.185078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049974, 30.886637, 50.801254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.840178, 30.616137, 50.594337>,  <30.714298, 30.453836, 50.470188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.840178, 30.616137, 50.594337>,  <31.049974, 30.886637, 50.801254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840178, 30.616137, 50.594337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376682, -0.360563, 0.853290,
		-0.763555, 0.642400, -0.065619,
		-0.524494, -0.676251, -0.517291,
		30.682829, 30.413261, 50.439152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300587, 30.888786, 51.077972>,  <31.049974, 30.886637, 50.801254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300587, 30.888786, 51.077972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360794, 30.522663, 50.928543>,  <30.396917, 30.302990, 50.838886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360794, 30.522663, 50.928543>,  <30.300587, 30.888786, 51.077972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360794, 30.522663, 50.928543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501968, -0.396302, 0.768748,
		-0.851688, 0.071813, -0.519105,
		0.150516, -0.915307, -0.373573,
		30.405949, 30.248072, 50.816471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749269, 30.504404, 51.327694>,  <30.300587, 30.888786, 51.077972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.749269, 30.504404, 51.327694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952032, 30.180334, 51.209942>,  <30.073690, 29.985891, 51.139290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952032, 30.180334, 51.209942>,  <29.749269, 30.504404, 51.327694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952032, 30.180334, 51.209942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262732, -0.470469, 0.842396,
		-0.820985, -0.349675, -0.451344,
		0.506908, -0.810177, -0.294378,
		30.104105, 29.937281, 51.121628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246822, 29.940128, 51.504974>,  <29.749269, 30.504404, 51.327694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.246822, 29.940128, 51.504974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.624413, 29.808123, 51.504242>,  <29.850967, 29.728920, 51.503803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.624413, 29.808123, 51.504242>,  <29.246822, 29.940128, 51.504974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.624413, 29.808123, 51.504242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220365, -0.634449, 0.740887,
		-0.245663, -0.698975, -0.671627,
		0.943975, -0.330012, -0.001831,
		29.907604, 29.709120, 51.503693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182858, 29.323193, 51.846169>,  <29.246822, 29.940128, 51.504974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.182858, 29.323193, 51.846169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578178, 29.377085, 51.817577>,  <29.815371, 29.409420, 51.800423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578178, 29.377085, 51.817577>,  <29.182858, 29.323193, 51.846169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578178, 29.377085, 51.817577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137785, -0.587736, 0.797234,
		0.065399, -0.797756, -0.599423,
		0.988301, 0.134729, -0.071482,
		29.874668, 29.417503, 51.796131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.506029, 28.713560, 51.794540>,  <29.182858, 29.323193, 51.846169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.506029, 28.713560, 51.794540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.689171, 29.020075, 51.974838>,  <29.799057, 29.203983, 52.083019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.689171, 29.020075, 51.974838>,  <29.506029, 28.713560, 51.794540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.689171, 29.020075, 51.974838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028655, -0.519470, 0.854008,
		0.888565, -0.378096, -0.259800,
		0.457856, 0.766286, 0.450748,
		29.826527, 29.249960, 52.110062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350016, 28.687634, 51.880306>,  <29.506029, 28.713560, 51.794540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350016, 28.687634, 51.880306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138304, 28.860615, 52.172291>,  <30.011276, 28.964403, 52.347481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138304, 28.860615, 52.172291>,  <30.350016, 28.687634, 51.880306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.138304, 28.860615, 52.172291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182065, -0.782418, 0.595545,
		0.828681, 0.448112, 0.335385,
		-0.529282, 0.432455, 0.729961,
		29.979519, 28.990351, 52.391277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926727, 28.952705, 51.784027>,  <30.350016, 28.687634, 51.880306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926727, 28.952705, 51.784027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285263, 28.787254, 51.847889>,  <31.500385, 28.687984, 51.886208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285263, 28.787254, 51.847889>,  <30.926727, 28.952705, 51.784027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285263, 28.787254, 51.847889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406975, -0.624691, 0.666432,
		-0.175917, -0.662326, -0.728270,
		0.896339, -0.413625, 0.159657,
		31.554165, 28.663166, 51.895786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827770, 28.160130, 51.874573>,  <30.926727, 28.952705, 51.784027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827770, 28.160130, 51.874573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182272, 28.261457, 52.029690>,  <31.394974, 28.322254, 52.122761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182272, 28.261457, 52.029690>,  <30.827770, 28.160130, 51.874573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182272, 28.261457, 52.029690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166428, -0.607154, 0.776960,
		0.432268, -0.753123, -0.495933,
		0.886254, 0.253318, 0.387793,
		31.448149, 28.337452, 52.146027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044592, 27.644093, 52.272690>,  <30.827770, 28.160130, 51.874573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044592, 27.644093, 52.272690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352749, 27.884396, 52.358089>,  <31.537643, 28.028578, 52.409328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352749, 27.884396, 52.358089>,  <31.044592, 27.644093, 52.272690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352749, 27.884396, 52.358089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124034, -0.469695, 0.874072,
		0.625386, -0.646899, -0.436364,
		0.770395, 0.600757, 0.213503,
		31.583868, 28.064623, 52.422142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721626, 27.300131, 52.366028>,  <31.044592, 27.644093, 52.272690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721626, 27.300131, 52.366028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700878, 27.634712, 52.584259>,  <31.688429, 27.835461, 52.715199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700878, 27.634712, 52.584259>,  <31.721626, 27.300131, 52.366028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700878, 27.634712, 52.584259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035259, -0.547508, 0.836057,
		0.998031, 0.024129, 0.057892,
		-0.051870, 0.836453, 0.545579,
		31.685318, 27.885649, 52.747932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238907, 27.294001, 52.919987>,  <31.721626, 27.300131, 52.366028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238907, 27.294001, 52.919987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909174, 27.503229, 53.006584>,  <31.711334, 27.628767, 53.058544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909174, 27.503229, 53.006584>,  <32.238907, 27.294001, 52.919987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909174, 27.503229, 53.006584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030568, -0.422998, 0.905615,
		0.565279, 0.739910, 0.364681,
		-0.824333, 0.523073, 0.216494,
		31.661875, 27.660151, 53.071533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435696, 27.590502, 52.249584>,  <32.238907, 27.294001, 52.919987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435696, 27.590502, 52.249584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134087, 27.783295, 52.071083>,  <31.953121, 27.898970, 51.963982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134087, 27.783295, 52.071083>,  <32.435696, 27.590502, 52.249584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134087, 27.783295, 52.071083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462339, -0.093147, -0.881797,
		-0.466576, -0.871217, -0.152603,
		-0.754023, 0.481980, -0.446258,
		31.907881, 27.927889, 51.937206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445080, 27.277096, 51.624298>,  <32.435696, 27.590502, 52.249584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445080, 27.277096, 51.624298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237347, 27.616413, 51.582932>,  <32.112705, 27.820004, 51.558113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237347, 27.616413, 51.582932>,  <32.445080, 27.277096, 51.624298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237347, 27.616413, 51.582932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241045, 0.029306, -0.970071,
		-0.819873, -0.528717, -0.219696,
		-0.519332, 0.848292, -0.103418,
		32.081547, 27.870901, 51.551907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999371, 27.237040, 51.085930>,  <32.445080, 27.277096, 51.624298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999371, 27.237040, 51.085930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047337, 27.632557, 51.121510>,  <32.076115, 27.869867, 51.142857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047337, 27.632557, 51.121510>,  <31.999371, 27.237040, 51.085930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047337, 27.632557, 51.121510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243416, 0.057574, -0.968212,
		-0.962481, 0.137752, -0.233784,
		0.119913, 0.988792, 0.088945,
		32.083309, 27.929195, 51.148193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832178, 27.377447, 50.443100>,  <31.999371, 27.237040, 51.085930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832178, 27.377447, 50.443100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024406, 27.702057, 50.576054>,  <32.139744, 27.896822, 50.655827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024406, 27.702057, 50.576054>,  <31.832178, 27.377447, 50.443100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024406, 27.702057, 50.576054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270967, 0.223062, -0.936387,
		-0.834042, 0.540067, -0.112698,
		0.480573, 0.811524, 0.332384,
		32.168579, 27.945515, 50.675770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637415, 27.986708, 49.972664>,  <31.832178, 27.377447, 50.443100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637415, 27.986708, 49.972664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975794, 28.090178, 50.159195>,  <32.178822, 28.152260, 50.271114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975794, 28.090178, 50.159195>,  <31.637415, 27.986708, 49.972664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975794, 28.090178, 50.159195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344652, 0.402092, -0.848255,
		-0.406930, 0.878299, 0.250995,
		0.845945, 0.258674, 0.466331,
		32.229576, 28.167780, 50.299095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753220, 28.730829, 49.792953>,  <31.637415, 27.986708, 49.972664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753220, 28.730829, 49.792953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104507, 28.569744, 49.896141>,  <32.315281, 28.473093, 49.958054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104507, 28.569744, 49.896141>,  <31.753220, 28.730829, 49.792953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104507, 28.569744, 49.896141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422057, 0.398921, -0.814082,
		0.224933, 0.823823, 0.520309,
		0.878222, -0.402714, 0.257970,
		32.367973, 28.448931, 49.973534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236309, 29.282650, 49.856804>,  <31.753220, 28.730829, 49.792953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236309, 29.282650, 49.856804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433529, 28.940886, 49.791210>,  <32.551861, 28.735826, 49.751854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433529, 28.940886, 49.791210>,  <32.236309, 29.282650, 49.856804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433529, 28.940886, 49.791210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501410, 0.433099, -0.749008,
		0.710981, 0.287071, 0.641947,
		0.493045, -0.854409, -0.163985,
		32.581444, 28.684563, 49.742016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765152, 29.517773, 49.557911>,  <32.236309, 29.282650, 49.856804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765152, 29.517773, 49.557911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900585, 29.143017, 49.523033>,  <32.981846, 28.918163, 49.502106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900585, 29.143017, 49.523033>,  <32.765152, 29.517773, 49.557911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900585, 29.143017, 49.523033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618414, 0.291410, -0.729825,
		0.709174, 0.193183, 0.678051,
		0.338580, -0.936889, -0.087193,
		33.002159, 28.861950, 49.496876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435719, 29.580542, 49.675774>,  <32.765152, 29.517773, 49.557911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435719, 29.580542, 49.675774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392838, 29.254292, 49.448349>,  <33.367111, 29.058540, 49.311893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392838, 29.254292, 49.448349>,  <33.435719, 29.580542, 49.675774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392838, 29.254292, 49.448349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689021, 0.351320, -0.633897,
		0.716770, -0.459704, 0.524322,
		-0.107200, -0.815626, -0.568561,
		33.360676, 29.009604, 49.277782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190411, 29.383532, 49.552490>,  <33.435719, 29.580542, 49.675774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190411, 29.383532, 49.552490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942924, 29.213240, 49.288387>,  <33.794434, 29.111065, 49.129925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942924, 29.213240, 49.288387>,  <34.190411, 29.383532, 49.552490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942924, 29.213240, 49.288387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673424, 0.145410, -0.724814,
		0.404582, -0.893091, 0.196728,
		-0.618718, -0.425728, -0.660259,
		33.757309, 29.085522, 49.090309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617981, 29.070364, 49.079231>,  <34.190411, 29.383532, 49.552490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617981, 29.070364, 49.079231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278767, 29.063892, 48.867352>,  <34.075237, 29.060009, 48.740223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278767, 29.063892, 48.867352>,  <34.617981, 29.070364, 49.079231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278767, 29.063892, 48.867352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502052, 0.295457, -0.812803,
		0.169655, -0.955219, -0.242433,
		-0.848034, -0.016182, -0.529696,
		34.024357, 29.059038, 48.708443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660156, 28.630171, 48.434120>,  <34.617981, 29.070364, 49.079231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660156, 28.630171, 48.434120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379177, 28.909336, 48.378296>,  <34.210590, 29.076836, 48.344799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379177, 28.909336, 48.378296>,  <34.660156, 28.630171, 48.434120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379177, 28.909336, 48.378296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374709, 0.195930, -0.906203,
		-0.605107, -0.688860, -0.399146,
		-0.702452, 0.697914, -0.139563,
		34.168442, 29.118710, 48.336426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409359, 28.509745, 47.767673>,  <34.660156, 28.630171, 48.434120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409359, 28.509745, 47.767673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327343, 28.888222, 47.867813>,  <34.278133, 29.115309, 47.927898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327343, 28.888222, 47.867813>,  <34.409359, 28.509745, 47.767673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327343, 28.888222, 47.867813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229228, 0.295094, -0.927563,
		-0.951532, -0.132801, -0.277401,
		-0.205041, 0.946194, 0.250350,
		34.265831, 29.172079, 47.942917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048965, 28.834932, 47.179111>,  <34.409359, 28.509745, 47.767673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048965, 28.834932, 47.179111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153976, 29.170429, 47.369938>,  <34.216984, 29.371727, 47.484432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153976, 29.170429, 47.369938>,  <34.048965, 28.834932, 47.179111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153976, 29.170429, 47.369938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222470, 0.428477, -0.875737,
		-0.938928, 0.336039, -0.074108,
		0.262528, 0.838741, 0.477067,
		34.232735, 29.422050, 47.513058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830780, 29.369776, 46.723656>,  <34.048965, 28.834932, 47.179111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830780, 29.369776, 46.723656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059311, 29.564358, 46.988064>,  <34.196430, 29.681107, 47.146709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059311, 29.564358, 46.988064>,  <33.830780, 29.369776, 46.723656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059311, 29.564358, 46.988064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377879, 0.559051, -0.738018,
		-0.728558, 0.671433, 0.135578,
		0.571324, 0.486456, 0.661021,
		34.230709, 29.710295, 47.186371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785950, 30.133968, 46.635017>,  <33.830780, 29.369776, 46.723656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785950, 30.133968, 46.635017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149094, 30.041481, 46.774918>,  <34.366982, 29.985989, 46.858856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149094, 30.041481, 46.774918>,  <33.785950, 30.133968, 46.635017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149094, 30.041481, 46.774918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417957, 0.565092, -0.711325,
		-0.033169, 0.791964, 0.609665,
		0.907861, -0.231220, 0.349750,
		34.421452, 29.972115, 46.879841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989597, 30.740089, 46.816570>,  <33.785950, 30.133968, 46.635017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989597, 30.740089, 46.816570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299015, 30.497017, 46.744621>,  <34.484665, 30.351173, 46.701450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299015, 30.497017, 46.744621>,  <33.989597, 30.740089, 46.816570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299015, 30.497017, 46.744621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197259, 0.500599, -0.842905,
		0.602261, 0.616543, 0.507107,
		0.773544, -0.607680, -0.179872,
		34.531078, 30.314713, 46.690659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450527, 31.184597, 46.590488>,  <33.989597, 30.740089, 46.816570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450527, 31.184597, 46.590488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608376, 30.835239, 46.476326>,  <34.703083, 30.625624, 46.407829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608376, 30.835239, 46.476326>,  <34.450527, 31.184597, 46.590488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608376, 30.835239, 46.476326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338453, 0.426938, -0.838554,
		0.854239, 0.234314, 0.464082,
		0.394620, -0.873396, -0.285403,
		34.726761, 30.573221, 46.390705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236351, 31.215530, 46.367554>,  <34.450527, 31.184597, 46.590488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236351, 31.215530, 46.367554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062893, 30.893364, 46.205933>,  <34.958820, 30.700064, 46.108959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062893, 30.893364, 46.205933>,  <35.236351, 31.215530, 46.367554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062893, 30.893364, 46.205933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315432, 0.284357, -0.905342,
		0.844072, -0.520046, 0.130744,
		-0.433641, -0.805415, -0.404057,
		34.932800, 30.651739, 46.084717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569393, 31.178221, 45.799309>,  <35.236351, 31.215530, 46.367554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569393, 31.178221, 45.799309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294415, 30.897646, 45.724052>,  <35.129425, 30.729301, 45.678898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294415, 30.897646, 45.724052>,  <35.569393, 31.178221, 45.799309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294415, 30.897646, 45.724052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208034, 0.058009, -0.976400,
		0.695799, -0.710365, 0.106045,
		-0.687449, -0.701439, -0.188142,
		35.088181, 30.687214, 45.667610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861015, 30.875717, 45.270107>,  <35.569393, 31.178221, 45.799309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861015, 30.875717, 45.270107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473900, 30.780977, 45.235947>,  <35.241631, 30.724134, 45.215450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473900, 30.780977, 45.235947>,  <35.861015, 30.875717, 45.270107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473900, 30.780977, 45.235947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114846, -0.113441, -0.986885,
		0.224055, -0.964901, 0.136988,
		-0.967786, -0.236849, -0.085398,
		35.183563, 30.709923, 45.210327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893341, 30.398279, 44.787739>,  <35.861015, 30.875717, 45.270107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893341, 30.398279, 44.787739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513283, 30.522272, 44.801262>,  <35.285248, 30.596668, 44.809376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513283, 30.522272, 44.801262>,  <35.893341, 30.398279, 44.787739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513283, 30.522272, 44.801262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072772, -0.115017, -0.990694,
		-0.303208, -0.943760, 0.131840,
		-0.950142, 0.309981, 0.033805,
		35.228241, 30.615267, 44.811405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494160, 29.928366, 44.396542>,  <35.893341, 30.398279, 44.787739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494160, 29.928366, 44.396542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315556, 30.286278, 44.395927>,  <35.208393, 30.501024, 44.395557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315556, 30.286278, 44.395927>,  <35.494160, 29.928366, 44.396542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315556, 30.286278, 44.395927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107600, -0.055399, -0.992650,
		-0.888286, -0.443061, 0.121014,
		-0.446509, 0.894778, -0.001537,
		35.181602, 30.554710, 44.395466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028576, 29.986185, 43.778744>,  <35.494160, 29.928366, 44.396542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028576, 29.986185, 43.778744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998177, 30.372122, 43.879387>,  <34.979935, 30.603683, 43.939774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998177, 30.372122, 43.879387>,  <35.028576, 29.986185, 43.778744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998177, 30.372122, 43.879387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072896, 0.246287, -0.966452,
		-0.994440, -0.091792, 0.051615,
		-0.076000, 0.964840, 0.251609,
		34.975376, 30.661573, 43.954868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339020, 30.268002, 43.552876>,  <35.028576, 29.986185, 43.778744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339020, 30.268002, 43.552876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621220, 30.551222, 43.565083>,  <34.790539, 30.721153, 43.572407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621220, 30.551222, 43.565083>,  <34.339020, 30.268002, 43.552876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621220, 30.551222, 43.565083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202653, 0.242817, -0.948668,
		-0.679117, 0.663102, 0.314797,
		0.705502, 0.708051, 0.030521,
		34.832870, 30.763638, 43.574238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966053, 30.725937, 43.140190>,  <34.339020, 30.268002, 43.552876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966053, 30.725937, 43.140190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328033, 30.889353, 43.187778>,  <34.545223, 30.987402, 43.216331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328033, 30.889353, 43.187778>,  <33.966053, 30.725937, 43.140190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328033, 30.889353, 43.187778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057510, 0.394458, -0.917113,
		-0.421606, 0.823103, 0.380461,
		0.904954, 0.408540, 0.118969,
		34.599518, 31.011915, 43.223469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954071, 31.454792, 43.013622>,  <33.966053, 30.725937, 43.140190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954071, 31.454792, 43.013622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326057, 31.321447, 42.951599>,  <34.549248, 31.241442, 42.914387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326057, 31.321447, 42.951599>,  <33.954071, 31.454792, 43.013622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326057, 31.321447, 42.951599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043156, 0.319855, -0.946483,
		0.365116, 0.886885, 0.283066,
		0.929961, -0.333360, -0.155058,
		34.605045, 31.221439, 42.905083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359085, 32.020798, 42.851616>,  <33.954071, 31.454792, 43.013622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359085, 32.020798, 42.851616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516396, 31.699835, 42.672070>,  <34.610783, 31.507257, 42.564342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516396, 31.699835, 42.672070>,  <34.359085, 32.020798, 42.851616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516396, 31.699835, 42.672070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106439, 0.445191, -0.889087,
		0.913239, 0.397432, 0.089675,
		0.393275, -0.802404, -0.448869,
		34.634377, 31.459114, 42.537411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676079, 32.353889, 42.311676>,  <34.359085, 32.020798, 42.851616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676079, 32.353889, 42.311676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696930, 31.970858, 42.198311>,  <34.709438, 31.741039, 42.130291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696930, 31.970858, 42.198311>,  <34.676079, 32.353889, 42.311676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696930, 31.970858, 42.198311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051952, 0.286018, -0.956815,
		0.997288, 0.035148, 0.064656,
		0.052123, -0.957579, -0.283417,
		34.712566, 31.683584, 42.113285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141914, 32.294365, 41.863392>,  <34.676079, 32.353889, 42.311676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141914, 32.294365, 41.863392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964809, 31.945749, 41.779125>,  <34.858547, 31.736580, 41.728565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964809, 31.945749, 41.779125>,  <35.141914, 32.294365, 41.863392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964809, 31.945749, 41.779125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152312, 0.158434, -0.975551,
		0.883609, -0.464023, 0.062597,
		-0.442760, -0.871540, -0.210670,
		34.831982, 31.684288, 41.715923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578529, 32.083447, 41.393734>,  <35.141914, 32.294365, 41.863392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578529, 32.083447, 41.393734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246967, 31.863888, 41.350605>,  <35.048031, 31.732151, 41.324730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246967, 31.863888, 41.350605>,  <35.578529, 32.083447, 41.393734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246967, 31.863888, 41.350605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052047, 0.116232, -0.991857,
		0.556963, -0.827767, -0.067777,
		-0.828905, -0.548900, -0.107820,
		34.998295, 31.699219, 41.318260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718048, 31.567102, 40.887497>,  <35.578529, 32.083447, 41.393734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718048, 31.567102, 40.887497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326942, 31.649944, 40.900665>,  <35.092278, 31.699650, 40.908566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326942, 31.649944, 40.900665>,  <35.718048, 31.567102, 40.887497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326942, 31.649944, 40.900665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010909, 0.106521, -0.994251,
		-0.209419, -0.972503, -0.101893,
		-0.977765, 0.207103, 0.032916,
		35.033611, 31.712074, 40.910542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512722, 31.426805, 40.178127>,  <35.718048, 31.567102, 40.887497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512722, 31.426805, 40.178127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203300, 31.631042, 40.328278>,  <35.017647, 31.753584, 40.418369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203300, 31.631042, 40.328278>,  <35.512722, 31.426805, 40.178127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203300, 31.631042, 40.328278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112114, 0.472725, -0.874049,
		-0.623731, -0.718211, -0.308435,
		-0.773556, 0.510592, 0.375375,
		34.971233, 31.784220, 40.440891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192215, 31.545246, 39.647785>,  <35.512722, 31.426805, 40.178127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192215, 31.545246, 39.647785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995922, 31.811338, 39.872871>,  <34.878147, 31.970993, 40.007923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995922, 31.811338, 39.872871>,  <35.192215, 31.545246, 39.647785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995922, 31.811338, 39.872871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200680, 0.542170, -0.815953,
		-0.847883, -0.513343, -0.132564,
		-0.490736, 0.665229, 0.562714,
		34.848701, 32.010906, 40.041687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586731, 31.754442, 39.295231>,  <35.192215, 31.545246, 39.647785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586731, 31.754442, 39.295231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634609, 32.059250, 39.549789>,  <34.663334, 32.242134, 39.702526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634609, 32.059250, 39.549789>,  <34.586731, 31.754442, 39.295231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634609, 32.059250, 39.549789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182564, 0.646968, -0.740340,
		-0.975881, -0.027570, 0.216555,
		0.119693, 0.762018, 0.636397,
		34.670517, 32.287857, 39.740707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115021, 32.090267, 39.008064>,  <34.586731, 31.754442, 39.295231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115021, 32.090267, 39.008064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306171, 32.342739, 39.252441>,  <34.420860, 32.494221, 39.399067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306171, 32.342739, 39.252441>,  <34.115021, 32.090267, 39.008064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306171, 32.342739, 39.252441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111706, 0.733511, -0.670436,
		-0.871296, 0.252140, 0.421034,
		0.477876, 0.631180, 0.610939,
		34.449535, 32.532093, 39.435722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728191, 32.721508, 39.086185>,  <34.115021, 32.090267, 39.008064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728191, 32.721508, 39.086185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115051, 32.790783, 39.160614>,  <34.347168, 32.832348, 39.205273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115051, 32.790783, 39.160614>,  <33.728191, 32.721508, 39.086185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115051, 32.790783, 39.160614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009936, 0.705680, -0.708461,
		-0.254002, 0.687038, 0.680780,
		0.967153, 0.173186, 0.186071,
		34.405197, 32.842739, 39.216434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763485, 33.484116, 39.083088>,  <33.728191, 32.721508, 39.086185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763485, 33.484116, 39.083088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134205, 33.335136, 39.063786>,  <34.356636, 33.245750, 39.052204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134205, 33.335136, 39.063786>,  <33.763485, 33.484116, 39.083088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134205, 33.335136, 39.063786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244668, 0.696267, -0.674796,
		0.284928, 0.613591, 0.736425,
		0.926797, -0.372448, -0.048260,
		34.412243, 33.223400, 39.049309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174587, 34.041702, 38.996342>,  <33.763485, 33.484116, 39.083088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174587, 34.041702, 38.996342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404114, 33.733215, 38.886097>,  <34.541828, 33.548122, 38.819950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404114, 33.733215, 38.886097>,  <34.174587, 34.041702, 38.996342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404114, 33.733215, 38.886097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388436, 0.552552, -0.737431,
		0.721008, 0.316092, 0.616631,
		0.573817, -0.771215, -0.275612,
		34.576260, 33.501850, 38.803413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673592, 34.420609, 38.687958>,  <34.174587, 34.041702, 38.996342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673592, 34.420609, 38.687958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735153, 34.046803, 38.559589>,  <34.772091, 33.822517, 38.482567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735153, 34.046803, 38.559589>,  <34.673592, 34.420609, 38.687958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735153, 34.046803, 38.559589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361471, 0.355530, -0.861938,
		0.919593, 0.016655, 0.392520,
		0.153908, -0.934517, -0.320922,
		34.781326, 33.766449, 38.463314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416309, 34.332581, 38.401756>,  <34.673592, 34.420609, 38.687958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416309, 34.332581, 38.401756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177750, 34.048481, 38.252171>,  <35.034615, 33.878021, 38.162418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177750, 34.048481, 38.252171>,  <35.416309, 34.332581, 38.401756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177750, 34.048481, 38.252171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293558, 0.240621, -0.925162,
		0.747082, -0.661546, 0.064994,
		-0.596399, -0.710252, -0.373966,
		34.998829, 33.835407, 38.139980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084480, 34.321014, 38.760242>,  <35.416309, 34.332581, 38.401756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084480, 34.321014, 38.760242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362263, 34.602535, 38.820103>,  <36.528931, 34.771446, 38.856018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362263, 34.602535, 38.820103>,  <36.084480, 34.321014, 38.760242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362263, 34.602535, 38.820103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237060, -0.420167, 0.875935,
		0.679362, -0.572822, -0.458631,
		0.694457, 0.703800, 0.149652,
		36.570599, 34.813675, 38.864998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672508, 33.937389, 38.852455>,  <36.084480, 34.321014, 38.760242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672508, 33.937389, 38.852455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747784, 34.292297, 39.020901>,  <36.792950, 34.505241, 39.121967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747784, 34.292297, 39.020901>,  <36.672508, 33.937389, 38.852455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747784, 34.292297, 39.020901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235441, -0.457030, 0.857724,
		0.953496, -0.062263, -0.294906,
		0.188185, 0.887269, 0.421117,
		36.804237, 34.558479, 39.147236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325397, 33.885563, 39.319576>,  <36.672508, 33.937389, 38.852455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325397, 33.885563, 39.319576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131989, 34.217243, 39.431744>,  <37.015942, 34.416252, 39.499046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131989, 34.217243, 39.431744>,  <37.325397, 33.885563, 39.319576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131989, 34.217243, 39.431744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195419, -0.210016, 0.957969,
		0.853238, 0.518001, -0.060493,
		-0.483524, 0.829197, 0.280421,
		36.986931, 34.466003, 39.515869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770626, 34.259495, 39.798725>,  <37.325397, 33.885563, 39.319576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770626, 34.259495, 39.798725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400234, 34.378086, 39.892242>,  <37.177998, 34.449242, 39.948353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400234, 34.378086, 39.892242>,  <37.770626, 34.259495, 39.798725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400234, 34.378086, 39.892242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156233, -0.262830, 0.952109,
		0.343726, 0.918162, 0.197056,
		-0.925983, 0.296478, 0.233789,
		37.122440, 34.467030, 39.962379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862782, 34.657722, 40.348255>,  <37.770626, 34.259495, 39.798725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862782, 34.657722, 40.348255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478077, 34.551701, 40.375832>,  <37.247253, 34.488087, 40.392376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478077, 34.551701, 40.375832>,  <37.862782, 34.657722, 40.348255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478077, 34.551701, 40.375832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079858, -0.030615, 0.996336,
		-0.261973, 0.963747, 0.050611,
		-0.961765, -0.265055, 0.068942,
		37.189548, 34.472183, 40.396515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643166, 35.026100, 40.959335>,  <37.862782, 34.657722, 40.348255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643166, 35.026100, 40.959335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387497, 34.723549, 40.903683>,  <37.234097, 34.542019, 40.870293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387497, 34.723549, 40.903683>,  <37.643166, 35.026100, 40.959335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387497, 34.723549, 40.903683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089817, -0.253089, 0.963265,
		-0.763803, 0.603193, 0.229702,
		-0.639169, -0.756376, -0.139133,
		37.195747, 34.496635, 40.861942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192799, 35.102844, 41.466751>,  <37.643166, 35.026100, 40.959335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192799, 35.102844, 41.466751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124058, 34.726051, 41.351414>,  <37.082813, 34.499977, 41.282211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124058, 34.726051, 41.351414>,  <37.192799, 35.102844, 41.466751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124058, 34.726051, 41.351414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054419, -0.301327, 0.951967,
		-0.983619, 0.147906, 0.103045,
		-0.171852, -0.941980, -0.288342,
		37.072502, 34.443459, 41.264912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686222, 34.809219, 41.874496>,  <37.192799, 35.102844, 41.466751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686222, 34.809219, 41.874496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844742, 34.477234, 41.717472>,  <36.939854, 34.278042, 41.623257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844742, 34.477234, 41.717472>,  <36.686222, 34.809219, 41.874496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844742, 34.477234, 41.717472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011162, -0.423186, 0.905974,
		-0.918052, -0.363422, -0.158446,
		0.396303, -0.829963, -0.392563,
		36.963634, 34.228245, 41.599705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266262, 34.219051, 42.139835>,  <36.686222, 34.809219, 41.874496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266262, 34.219051, 42.139835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630520, 34.084957, 42.043213>,  <36.849075, 34.004501, 41.985241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630520, 34.084957, 42.043213>,  <36.266262, 34.219051, 42.139835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630520, 34.084957, 42.043213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067576, -0.455898, 0.887463,
		-0.407628, -0.824486, -0.392507,
		0.910644, -0.335231, -0.241553,
		36.903713, 33.984386, 41.970745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310799, 33.594643, 42.457981>,  <36.266262, 34.219051, 42.139835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310799, 33.594643, 42.457981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692051, 33.675320, 42.367764>,  <36.920803, 33.723724, 42.313633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692051, 33.675320, 42.367764>,  <36.310799, 33.594643, 42.457981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692051, 33.675320, 42.367764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283143, -0.331734, 0.899879,
		0.106678, -0.921560, -0.373292,
		0.953126, 0.201692, -0.225545,
		36.977989, 33.735828, 42.300098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652851, 32.969326, 42.590744>,  <36.310799, 33.594643, 42.457981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652851, 32.969326, 42.590744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947899, 33.238605, 42.611595>,  <37.124928, 33.400173, 42.624107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947899, 33.238605, 42.611595>,  <36.652851, 32.969326, 42.590744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947899, 33.238605, 42.611595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366622, -0.464143, 0.806325,
		0.567017, -0.575647, -0.589172,
		0.737618, 0.673203, 0.052132,
		37.169186, 33.440567, 42.627235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192532, 32.503937, 42.809013>,  <36.652851, 32.969326, 42.590744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192532, 32.503937, 42.809013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258602, 32.890247, 42.889000>,  <37.298244, 33.122036, 42.936993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258602, 32.890247, 42.889000>,  <37.192532, 32.503937, 42.809013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258602, 32.890247, 42.889000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206241, -0.232094, 0.950577,
		0.964460, -0.115767, -0.237519,
		0.165172, 0.965780, 0.199970,
		37.308155, 33.179981, 42.948990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866783, 32.557659, 42.973537>,  <37.192532, 32.503937, 42.809013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866783, 32.557659, 42.973537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671822, 32.867527, 43.134693>,  <37.554844, 33.053448, 43.231388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671822, 32.867527, 43.134693>,  <37.866783, 32.557659, 42.973537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671822, 32.867527, 43.134693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093642, -0.412376, 0.906188,
		0.868138, 0.479412, 0.128454,
		-0.487408, 0.774668, 0.402893,
		37.525600, 33.099926, 43.255562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171658, 32.745686, 43.617756>,  <37.866783, 32.557659, 42.973537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171658, 32.745686, 43.617756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.820854, 32.931721, 43.665997>,  <37.610371, 33.043343, 43.694942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.820854, 32.931721, 43.665997>,  <38.171658, 32.745686, 43.617756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820854, 32.931721, 43.665997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021878, -0.289400, 0.956958,
		0.479974, 0.836623, 0.263982,
		-0.877010, 0.465090, 0.120601,
		37.557751, 33.071247, 43.702175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228664, 33.133160, 44.234325>,  <38.171658, 32.745686, 43.617756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228664, 33.133160, 44.234325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834663, 33.101917, 44.172791>,  <37.598263, 33.083172, 44.135872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834663, 33.101917, 44.172791>,  <38.228664, 33.133160, 44.234325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834663, 33.101917, 44.172791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124380, -0.296420, 0.946924,
		-0.119563, 0.951858, 0.282260,
		-0.985005, -0.078110, -0.153833,
		37.539162, 33.078484, 44.126640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960869, 33.373936, 44.810913>,  <38.228664, 33.133160, 44.234325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960869, 33.373936, 44.810913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664497, 33.150822, 44.661297>,  <37.486675, 33.016953, 44.571529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664497, 33.150822, 44.661297>,  <37.960869, 33.373936, 44.810913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664497, 33.150822, 44.661297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166886, -0.386559, 0.907040,
		-0.650519, 0.734473, 0.193326,
		-0.740928, -0.557783, -0.374037,
		37.442219, 32.983486, 44.549084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407833, 33.539925, 45.190891>,  <37.960869, 33.373936, 44.810913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407833, 33.539925, 45.190891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317966, 33.189194, 45.020859>,  <37.264046, 32.978756, 44.918839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317966, 33.189194, 45.020859>,  <37.407833, 33.539925, 45.190891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317966, 33.189194, 45.020859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140871, -0.402426, 0.904549,
		-0.964200, 0.263101, -0.033109,
		-0.224664, -0.876830, -0.425082,
		37.250568, 32.926144, 44.893333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745827, 33.366699, 45.521957>,  <37.407833, 33.539925, 45.190891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745827, 33.366699, 45.521957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886303, 33.034973, 45.348103>,  <36.970589, 32.835938, 45.243790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886303, 33.034973, 45.348103>,  <36.745827, 33.366699, 45.521957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886303, 33.034973, 45.348103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192787, -0.518306, 0.833182,
		-0.916242, -0.208811, -0.341904,
		0.351189, -0.829311, -0.434638,
		36.991661, 32.786179, 45.217712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287357, 32.889294, 45.722321>,  <36.745827, 33.366699, 45.521957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287357, 32.889294, 45.722321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617733, 32.693066, 45.611198>,  <36.815956, 32.575329, 45.544525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617733, 32.693066, 45.611198>,  <36.287357, 32.889294, 45.722321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617733, 32.693066, 45.611198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126965, -0.641961, 0.756153,
		-0.549280, -0.589263, -0.592503,
		0.825937, -0.490567, -0.277800,
		36.865513, 32.545895, 45.527859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049259, 32.265171, 45.840252>,  <36.287357, 32.889294, 45.722321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049259, 32.265171, 45.840252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447746, 32.231422, 45.831932>,  <36.686840, 32.211174, 45.826939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447746, 32.231422, 45.831932>,  <36.049259, 32.265171, 45.840252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447746, 32.231422, 45.831932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021441, -0.470627, 0.882072,
		-0.084216, -0.878288, -0.470656,
		0.996217, -0.084376, -0.020803,
		36.746613, 32.206108, 45.825691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217209, 31.592861, 45.751644>,  <36.049259, 32.265171, 45.840252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217209, 31.592861, 45.751644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525208, 31.763338, 45.941574>,  <36.710007, 31.865625, 46.055531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525208, 31.763338, 45.941574>,  <36.217209, 31.592861, 45.751644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525208, 31.763338, 45.941574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158195, -0.593427, 0.789189,
		0.618120, -0.682791, -0.389518,
		0.770001, 0.426194, 0.474823,
		36.756207, 31.891197, 46.084023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496185, 31.029160, 46.180992>,  <36.217209, 31.592861, 45.751644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496185, 31.029160, 46.180992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604332, 31.382919, 46.333172>,  <36.669220, 31.595175, 46.424480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604332, 31.382919, 46.333172>,  <36.496185, 31.029160, 46.180992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604332, 31.382919, 46.333172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001540, -0.394766, 0.918780,
		0.962756, -0.248994, -0.105370,
		0.270367, 0.884399, 0.380447,
		36.685444, 31.648239, 46.447308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028706, 30.857243, 46.638786>,  <36.496185, 31.029160, 46.180992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028706, 30.857243, 46.638786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858536, 31.206461, 46.734123>,  <36.756435, 31.415993, 46.791325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858536, 31.206461, 46.734123>,  <37.028706, 30.857243, 46.638786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858536, 31.206461, 46.734123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137901, -0.322819, 0.936361,
		0.894428, 0.365479, 0.257728,
		-0.425420, 0.873048, 0.238338,
		36.730911, 31.468376, 46.805626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351814, 31.107477, 47.317207>,  <37.028706, 30.857243, 46.638786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351814, 31.107477, 47.317207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990395, 31.275473, 47.283241>,  <36.773544, 31.376270, 47.262863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990395, 31.275473, 47.283241>,  <37.351814, 31.107477, 47.317207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990395, 31.275473, 47.283241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165890, -0.160158, 0.973052,
		0.395072, 0.893285, 0.214382,
		-0.903548, 0.419989, -0.084913,
		36.719330, 31.401470, 47.257767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328014, 31.476414, 47.932209>,  <37.351814, 31.107477, 47.317207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328014, 31.476414, 47.932209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947708, 31.517902, 47.815392>,  <36.719524, 31.542795, 47.745300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947708, 31.517902, 47.815392>,  <37.328014, 31.476414, 47.932209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947708, 31.517902, 47.815392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289496, 0.039167, 0.956377,
		0.110635, 0.993835, -0.007212,
		-0.950764, 0.103721, -0.292045,
		36.662479, 31.549019, 47.727779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061897, 31.962172, 48.384682>,  <37.328014, 31.476414, 47.932209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061897, 31.962172, 48.384682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766426, 31.734486, 48.240269>,  <36.589142, 31.597874, 48.153622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766426, 31.734486, 48.240269>,  <37.061897, 31.962172, 48.384682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766426, 31.734486, 48.240269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374215, -0.099189, 0.922022,
		-0.560642, 0.816182, -0.139740,
		-0.738677, -0.569217, -0.361037,
		36.544823, 31.563721, 48.131958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476440, 32.203941, 48.623615>,  <37.061897, 31.962172, 48.384682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476440, 32.203941, 48.623615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379131, 31.824778, 48.541351>,  <36.320747, 31.597281, 48.491993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379131, 31.824778, 48.541351>,  <36.476440, 32.203941, 48.623615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379131, 31.824778, 48.541351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336982, -0.116223, 0.934310,
		-0.909539, 0.296594, -0.291153,
		-0.243272, -0.947905, -0.205657,
		36.306149, 31.540405, 48.479656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896564, 32.224655, 48.958626>,  <36.476440, 32.203941, 48.623615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896564, 32.224655, 48.958626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986408, 31.838837, 48.903194>,  <36.040314, 31.607346, 48.869938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986408, 31.838837, 48.903194>,  <35.896564, 32.224655, 48.958626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986408, 31.838837, 48.903194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315846, -0.206593, 0.926046,
		-0.921841, -0.164233, -0.351051,
		0.224612, -0.964545, -0.138574,
		36.053791, 31.549473, 48.861622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277805, 31.806234, 49.041660>,  <35.896564, 32.224655, 48.958626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277805, 31.806234, 49.041660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606415, 31.599270, 49.137474>,  <35.803581, 31.475090, 49.194962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606415, 31.599270, 49.137474>,  <35.277805, 31.806234, 49.041660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606415, 31.599270, 49.137474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437430, -0.302479, 0.846854,
		-0.365720, -0.800493, -0.474827,
		0.821526, -0.517415, 0.239537,
		35.852871, 31.444046, 49.209335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958145, 31.152151, 49.403374>,  <35.277805, 31.806234, 49.041660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958145, 31.152151, 49.403374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343060, 31.164221, 49.511517>,  <35.574009, 31.171463, 49.576405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343060, 31.164221, 49.511517>,  <34.958145, 31.152151, 49.403374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343060, 31.164221, 49.511517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264427, -0.129694, 0.955645,
		0.063901, -0.991095, -0.116823,
		0.962286, 0.030176, 0.270360,
		35.631744, 31.173273, 49.592625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000706, 30.631508, 49.896584>,  <34.958145, 31.152151, 49.403374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000706, 30.631508, 49.896584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331825, 30.842997, 49.971626>,  <35.530499, 30.969889, 50.016651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331825, 30.842997, 49.971626>,  <35.000706, 30.631508, 49.896584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331825, 30.842997, 49.971626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259082, 0.063658, 0.963755,
		0.497614, -0.846405, 0.189678,
		0.827802, 0.528721, 0.187611,
		35.580166, 31.001612, 50.027908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369926, 30.359522, 50.355011>,  <35.000706, 30.631508, 49.896584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369926, 30.359522, 50.355011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490845, 30.736597, 50.411522>,  <35.563396, 30.962841, 50.445427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490845, 30.736597, 50.411522>,  <35.369926, 30.359522, 50.355011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490845, 30.736597, 50.411522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036897, -0.136529, 0.989949,
		0.952500, -0.304469, -0.006490,
		0.302295, 0.942687, 0.141278,
		35.581532, 31.019403, 50.453907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549923, 30.368124, 51.087704>,  <35.369926, 30.359522, 50.355011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549923, 30.368124, 51.087704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533485, 30.760098, 51.009686>,  <35.523624, 30.995281, 50.962875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533485, 30.760098, 51.009686>,  <35.549923, 30.368124, 51.087704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533485, 30.760098, 51.009686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090633, 0.190748, 0.977446,
		0.995036, 0.057842, 0.080976,
		-0.041092, 0.979934, -0.195044,
		35.521156, 31.054077, 50.951172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886021, 30.742041, 51.662628>,  <35.549923, 30.368124, 51.087704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886021, 30.742041, 51.662628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689087, 31.036419, 51.476727>,  <35.570927, 31.213045, 51.365185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689087, 31.036419, 51.476727>,  <35.886021, 30.742041, 51.662628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689087, 31.036419, 51.476727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126410, 0.467829, 0.874732,
		0.861178, 0.489410, -0.137297,
		-0.492335, 0.735944, -0.464750,
		35.541386, 31.257202, 51.337303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032524, 31.261232, 52.059910>,  <35.886021, 30.742041, 51.662628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032524, 31.261232, 52.059910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708054, 31.396358, 51.868965>,  <35.513371, 31.477434, 51.754398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708054, 31.396358, 51.868965>,  <36.032524, 31.261232, 52.059910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708054, 31.396358, 51.868965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375551, 0.324800, 0.868024,
		0.448281, 0.883394, -0.136602,
		-0.811175, 0.337818, -0.477361,
		35.464703, 31.497704, 51.725758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931358, 31.994122, 52.287582>,  <36.032524, 31.261232, 52.059910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931358, 31.994122, 52.287582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582401, 31.854708, 52.150501>,  <35.373028, 31.771059, 52.068253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582401, 31.854708, 52.150501>,  <35.931358, 31.994122, 52.287582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582401, 31.854708, 52.150501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441732, 0.261970, 0.858047,
		-0.209282, 0.899941, -0.382502,
		-0.872396, -0.348537, -0.342707,
		35.320683, 31.750147, 52.047688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438572, 32.436592, 52.322372>,  <35.931358, 31.994122, 52.287582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438572, 32.436592, 52.322372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207436, 32.110737, 52.302505>,  <35.068752, 31.915224, 52.290585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207436, 32.110737, 52.302505>,  <35.438572, 32.436592, 52.322372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207436, 32.110737, 52.302505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445127, 0.263564, 0.855801,
		-0.684075, 0.516628, -0.514915,
		-0.577844, -0.814635, -0.049668,
		35.034084, 31.866346, 52.287605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878384, 32.309471, 52.787582>,  <35.438572, 32.436592, 52.322372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878384, 32.309471, 52.787582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642563, 32.590443, 52.947090>,  <34.501068, 32.759026, 53.042793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642563, 32.590443, 52.947090>,  <34.878384, 32.309471, 52.787582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642563, 32.590443, 52.947090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276054, 0.639185, -0.717800,
		-0.759092, -0.313100, -0.570744,
		-0.589554, 0.702432, 0.398767,
		34.465698, 32.801170, 53.066719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547798, 32.598198, 52.296165>,  <34.878384, 32.309471, 52.787582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547798, 32.598198, 52.296165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532936, 32.885342, 52.574242>,  <34.524021, 33.057629, 52.741089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532936, 32.885342, 52.574242>,  <34.547798, 32.598198, 52.296165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532936, 32.885342, 52.574242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311482, 0.669336, -0.674513,
		-0.949525, 0.191482, -0.248468,
		-0.037152, 0.717860, 0.695195,
		34.521790, 33.100700, 52.782799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143723, 33.118252, 52.030144>,  <34.547798, 32.598198, 52.296165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143723, 33.118252, 52.030144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338879, 33.296059, 52.330643>,  <34.455971, 33.402744, 52.510941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338879, 33.296059, 52.330643>,  <34.143723, 33.118252, 52.030144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338879, 33.296059, 52.330643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282313, 0.734017, -0.617672,
		-0.825991, 0.513443, 0.232627,
		0.487892, 0.444518, 0.751243,
		34.485245, 33.429413, 52.556015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953159, 33.774956, 52.047756>,  <34.143723, 33.118252, 52.030144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953159, 33.774956, 52.047756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297947, 33.786331, 52.250221>,  <34.504818, 33.793156, 52.371700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297947, 33.786331, 52.250221>,  <33.953159, 33.774956, 52.047756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297947, 33.786331, 52.250221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358467, 0.671816, -0.648201,
		-0.358481, 0.740172, 0.568891,
		0.861970, 0.028439, 0.506160,
		34.556538, 33.794861, 52.402069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071388, 34.432446, 52.203938>,  <33.953159, 33.774956, 52.047756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071388, 34.432446, 52.203938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427380, 34.250847, 52.186882>,  <34.640976, 34.141888, 52.176647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427380, 34.250847, 52.186882>,  <34.071388, 34.432446, 52.203938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427380, 34.250847, 52.186882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282767, 0.622832, -0.729468,
		0.357736, 0.637155, 0.682685,
		0.889982, -0.453998, -0.042643,
		34.694374, 34.114647, 52.174088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544521, 34.979736, 52.113525>,  <34.071388, 34.432446, 52.203938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544521, 34.979736, 52.113525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728333, 34.644886, 51.994827>,  <34.838619, 34.443977, 51.923611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728333, 34.644886, 51.994827>,  <34.544521, 34.979736, 52.113525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728333, 34.644886, 51.994827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337809, 0.473735, -0.813302,
		0.821411, 0.273496, 0.500484,
		0.459532, -0.837123, -0.296742,
		34.866192, 34.393749, 51.905804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091541, 35.223850, 51.916065>,  <34.544521, 34.979736, 52.113525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091541, 35.223850, 51.916065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064480, 34.874691, 51.722786>,  <35.048241, 34.665195, 51.606819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064480, 34.874691, 51.722786>,  <35.091541, 35.223850, 51.916065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064480, 34.874691, 51.722786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283818, 0.447457, -0.848074,
		0.956488, -0.194518, 0.217469,
		-0.067657, -0.872895, -0.483195,
		35.044182, 34.612823, 51.577827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653778, 35.197838, 51.434406>,  <35.091541, 35.223850, 51.916065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653778, 35.197838, 51.434406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421638, 34.916286, 51.270576>,  <35.282356, 34.747356, 51.172279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421638, 34.916286, 51.270576>,  <35.653778, 35.197838, 51.434406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421638, 34.916286, 51.270576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304581, 0.278826, -0.910761,
		0.755266, -0.653306, 0.052572,
		-0.580348, -0.703880, -0.409572,
		35.247536, 34.705124, 51.147705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092110, 34.859341, 50.982925>,  <35.653778, 35.197838, 51.434406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092110, 34.859341, 50.982925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729153, 34.737591, 50.866993>,  <35.511379, 34.664539, 50.797432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729153, 34.737591, 50.866993>,  <36.092110, 34.859341, 50.982925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729153, 34.737591, 50.866993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238856, 0.193955, -0.951488,
		0.345825, -0.932596, -0.103291,
		-0.907388, -0.304377, -0.289830,
		35.456936, 34.646278, 50.780045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195541, 34.222393, 50.519302>,  <36.092110, 34.859341, 50.982925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195541, 34.222393, 50.519302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844849, 34.400761, 50.447205>,  <35.634434, 34.507782, 50.403946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844849, 34.400761, 50.447205>,  <36.195541, 34.222393, 50.519302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844849, 34.400761, 50.447205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259892, 0.123890, -0.957657,
		-0.404711, -0.886456, -0.224511,
		-0.876736, 0.445923, -0.180243,
		35.581829, 34.534538, 50.393131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036846, 34.133141, 49.806358>,  <36.195541, 34.222393, 50.519302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036846, 34.133141, 49.806358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712830, 34.356781, 49.877060>,  <35.518421, 34.490967, 49.919479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712830, 34.356781, 49.877060>,  <36.036846, 34.133141, 49.806358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712830, 34.356781, 49.877060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055640, 0.226786, -0.972354,
		-0.583728, -0.797481, -0.152597,
		-0.810041, 0.559100, 0.176753,
		35.469818, 34.524509, 49.930084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462734, 33.899342, 49.391613>,  <36.036846, 34.133141, 49.806358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462734, 33.899342, 49.391613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458920, 34.292671, 49.464268>,  <35.456631, 34.528667, 49.507858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458920, 34.292671, 49.464268>,  <35.462734, 33.899342, 49.391613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458920, 34.292671, 49.464268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104154, 0.181629, -0.977836,
		-0.994516, 0.009595, -0.104148,
		-0.009534, 0.983320, 0.181632,
		35.456059, 34.587666, 49.518757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045349, 34.162449, 48.787636>,  <35.462734, 33.899342, 49.391613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045349, 34.162449, 48.787636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244415, 34.470039, 48.948132>,  <35.363857, 34.654594, 49.044430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244415, 34.470039, 48.948132>,  <35.045349, 34.162449, 48.787636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244415, 34.470039, 48.948132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235361, 0.325517, -0.915775,
		-0.834824, 0.550189, -0.018989,
		0.497669, 0.768980, 0.401242,
		35.393715, 34.700733, 49.068504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791805, 34.790428, 48.497524>,  <35.045349, 34.162449, 48.787636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791805, 34.790428, 48.497524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172184, 34.796474, 48.621117>,  <35.400414, 34.800102, 48.695271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172184, 34.796474, 48.621117>,  <34.791805, 34.790428, 48.497524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172184, 34.796474, 48.621117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282657, 0.363413, -0.887714,
		-0.125705, 0.931505, 0.341315,
		0.950949, 0.015115, 0.308979,
		35.457470, 34.801010, 48.713810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143894, 35.561153, 48.456902>,  <34.791805, 34.790428, 48.497524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143894, 35.561153, 48.456902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451866, 35.305954, 48.451618>,  <35.636650, 35.152836, 48.448448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451866, 35.305954, 48.451618>,  <35.143894, 35.561153, 48.456902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451866, 35.305954, 48.451618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413115, 0.514113, -0.751681,
		0.486361, 0.573282, 0.659395,
		0.769928, -0.637994, -0.013213,
		35.682846, 35.114555, 48.447655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631790, 36.038868, 48.396496>,  <35.143894, 35.561153, 48.456902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631790, 36.038868, 48.396496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785305, 35.686596, 48.285416>,  <35.877415, 35.475235, 48.218769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785305, 35.686596, 48.285416>,  <35.631790, 36.038868, 48.396496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785305, 35.686596, 48.285416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474106, 0.445987, -0.759157,
		0.792423, 0.159693, 0.588696,
		0.383783, -0.880678, -0.277699,
		35.900440, 35.422394, 48.202106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307701, 36.141048, 48.205505>,  <35.631790, 36.038868, 48.396496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307701, 36.141048, 48.205505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220924, 35.784222, 48.046932>,  <36.168858, 35.570126, 47.951790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220924, 35.784222, 48.046932>,  <36.307701, 36.141048, 48.205505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220924, 35.784222, 48.046932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535484, 0.230802, -0.812396,
		0.816207, -0.388524, 0.427617,
		-0.216940, -0.892065, -0.396431,
		36.155842, 35.516602, 47.928001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836765, 35.902290, 47.864208>,  <36.307701, 36.141048, 48.205505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836765, 35.902290, 47.864208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564308, 35.666069, 47.691097>,  <36.400833, 35.524338, 47.587231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564308, 35.666069, 47.691097>,  <36.836765, 35.902290, 47.864208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564308, 35.666069, 47.691097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469330, 0.101497, -0.877170,
		0.561942, -0.800590, 0.208031,
		-0.681140, -0.590553, -0.432777,
		36.359966, 35.488903, 47.561264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205654, 35.359158, 47.492081>,  <36.836765, 35.902290, 47.864208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205654, 35.359158, 47.492081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853745, 35.411964, 47.309406>,  <36.642597, 35.443649, 47.199802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853745, 35.411964, 47.309406>,  <37.205654, 35.359158, 47.492081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853745, 35.411964, 47.309406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469965, 0.096897, -0.877351,
		-0.071579, -0.986499, -0.147294,
		-0.879778, 0.132023, -0.456684,
		36.589809, 35.451572, 47.172401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202072, 34.903702, 46.969868>,  <37.205654, 35.359158, 47.492081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202072, 34.903702, 46.969868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932060, 35.178028, 46.861061>,  <36.770054, 35.342625, 46.795776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932060, 35.178028, 46.861061>,  <37.202072, 34.903702, 46.969868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932060, 35.178028, 46.861061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459035, 0.101756, -0.882572,
		-0.577599, -0.720629, -0.383501,
		-0.675031, 0.685813, -0.272019,
		36.729549, 35.383774, 46.779457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074253, 34.662315, 46.259998>,  <37.202072, 34.903702, 46.969868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074253, 34.662315, 46.259998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919796, 35.031288, 46.258404>,  <36.827122, 35.252670, 46.257446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919796, 35.031288, 46.258404>,  <37.074253, 34.662315, 46.259998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919796, 35.031288, 46.258404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351786, 0.143262, -0.925053,
		-0.852727, -0.358602, -0.379818,
		-0.386139, 0.922432, -0.003988,
		36.803955, 35.308018, 46.257206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651028, 34.580082, 45.724850>,  <37.074253, 34.662315, 46.259998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651028, 34.580082, 45.724850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731415, 34.962921, 45.808342>,  <36.779648, 35.192627, 45.858437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731415, 34.962921, 45.808342>,  <36.651028, 34.580082, 45.724850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731415, 34.962921, 45.808342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301324, 0.142348, -0.942837,
		-0.932102, 0.252380, -0.259789,
		0.200972, 0.957101, 0.208731,
		36.791706, 35.250050, 45.870960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285149, 34.964111, 45.209377>,  <36.651028, 34.580082, 45.724850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285149, 34.964111, 45.209377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555725, 35.219776, 45.355751>,  <36.718071, 35.373173, 45.443577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555725, 35.219776, 45.355751>,  <36.285149, 34.964111, 45.209377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555725, 35.219776, 45.355751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289652, 0.225947, -0.930080,
		-0.677149, 0.735137, -0.032294,
		0.676440, 0.639157, 0.365934,
		36.758656, 35.411522, 45.465530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236549, 35.598305, 44.818256>,  <36.285149, 34.964111, 45.209377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236549, 35.598305, 44.818256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596386, 35.630844, 44.989891>,  <36.812286, 35.650368, 45.092873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596386, 35.630844, 44.989891>,  <36.236549, 35.598305, 44.818256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596386, 35.630844, 44.989891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388726, 0.298694, -0.871593,
		-0.199067, 0.950876, 0.237082,
		0.899591, 0.081345, 0.429090,
		36.866264, 35.655247, 45.118618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501930, 36.205704, 44.379261>,  <36.236549, 35.598305, 44.818256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501930, 36.205704, 44.379261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810017, 36.038448, 44.571899>,  <36.994869, 35.938095, 44.687481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810017, 36.038448, 44.571899>,  <36.501930, 36.205704, 44.379261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810017, 36.038448, 44.571899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501845, -0.068678, -0.862227,
		0.393602, 0.905785, 0.156942,
		0.770213, -0.418135, 0.481596,
		37.041080, 35.913010, 44.716377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132713, 36.602638, 44.221016>,  <36.501930, 36.205704, 44.379261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132713, 36.602638, 44.221016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280376, 36.248978, 44.335560>,  <37.368973, 36.036781, 44.404285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280376, 36.248978, 44.335560>,  <37.132713, 36.602638, 44.221016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280376, 36.248978, 44.335560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677819, 0.045332, -0.733830,
		0.635836, 0.464995, 0.616029,
		0.369153, -0.884152, 0.286359,
		37.391121, 35.983730, 44.421467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870289, 36.725231, 44.316494>,  <37.132713, 36.602638, 44.221016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870289, 36.725231, 44.316494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783154, 36.341633, 44.243965>,  <37.730873, 36.111473, 44.200447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783154, 36.341633, 44.243965>,  <37.870289, 36.725231, 44.316494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783154, 36.341633, 44.243965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665614, -0.010101, -0.746228,
		0.713795, -0.283252, 0.640519,
		-0.217840, -0.958993, -0.181326,
		37.717800, 36.053936, 44.189568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469265, 36.394341, 44.283718>,  <37.870289, 36.725231, 44.316494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469265, 36.394341, 44.283718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242931, 36.141266, 44.072235>,  <38.107132, 35.989422, 43.945343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242931, 36.141266, 44.072235>,  <38.469265, 36.394341, 44.283718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242931, 36.141266, 44.072235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737155, -0.100920, -0.668145,
		0.369371, -0.767802, 0.523494,
		-0.565834, -0.632690, -0.528712,
		38.073181, 35.951458, 43.913620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924686, 35.940331, 44.018024>,  <38.469265, 36.394341, 44.283718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924686, 35.940331, 44.018024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608540, 35.861797, 43.785896>,  <38.418850, 35.814678, 43.646618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608540, 35.861797, 43.785896>,  <38.924686, 35.940331, 44.018024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608540, 35.861797, 43.785896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611539, -0.309381, -0.728220,
		-0.036568, -0.930450, 0.364588,
		-0.790369, -0.196330, -0.580320,
		38.371429, 35.802898, 43.611801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136246, 35.364799, 43.599037>,  <38.924686, 35.940331, 44.018024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136246, 35.364799, 43.599037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806580, 35.489265, 43.409752>,  <38.608780, 35.563946, 43.296181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806580, 35.489265, 43.409752>,  <39.136246, 35.364799, 43.599037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806580, 35.489265, 43.409752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344625, -0.387506, -0.855028,
		-0.449434, -0.867761, 0.212130,
		-0.824162, 0.311174, -0.473211,
		38.559330, 35.582615, 43.267788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032749, 34.850937, 42.953781>,  <39.136246, 35.364799, 43.599037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032749, 34.850937, 42.953781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882553, 35.214554, 42.881516>,  <38.792435, 35.432724, 42.838154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882553, 35.214554, 42.881516>,  <39.032749, 34.850937, 42.953781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882553, 35.214554, 42.881516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380069, -0.026759, -0.924571,
		-0.845312, -0.415837, -0.335452,
		-0.375495, 0.909045, -0.180667,
		38.769905, 35.487267, 42.827316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874325, 34.802288, 42.251980>,  <39.032749, 34.850937, 42.953781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874325, 34.802288, 42.251980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859547, 35.197926, 42.309021>,  <38.850681, 35.435307, 42.343246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859547, 35.197926, 42.309021>,  <38.874325, 34.802288, 42.251980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859547, 35.197926, 42.309021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169523, 0.146835, -0.974526,
		-0.984834, -0.011827, -0.173098,
		-0.036942, 0.989090, 0.142603,
		38.848465, 35.494652, 42.351803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429836, 35.083858, 41.739269>,  <38.874325, 34.802288, 42.251980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429836, 35.083858, 41.739269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648312, 35.403076, 41.841103>,  <38.779396, 35.594604, 41.902203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648312, 35.403076, 41.841103>,  <38.429836, 35.083858, 41.739269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648312, 35.403076, 41.841103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029045, 0.285696, -0.957880,
		-0.837161, 0.530574, 0.132864,
		0.546185, 0.798041, 0.254584,
		38.812168, 35.642487, 41.917477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213295, 35.589424, 41.301731>,  <38.429836, 35.083858, 41.739269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213295, 35.589424, 41.301731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546406, 35.750420, 41.453777>,  <38.746273, 35.847015, 41.545006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546406, 35.750420, 41.453777>,  <38.213295, 35.589424, 41.301731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546406, 35.750420, 41.453777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203002, 0.416779, -0.886050,
		-0.515049, 0.815045, 0.265378,
		0.832775, 0.402487, 0.380118,
		38.796238, 35.871166, 41.567814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197235, 36.329052, 41.230042>,  <38.213295, 35.589424, 41.301731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197235, 36.329052, 41.230042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582150, 36.223904, 41.258053>,  <38.813099, 36.160812, 41.274860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582150, 36.223904, 41.258053>,  <38.197235, 36.329052, 41.230042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582150, 36.223904, 41.258053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175393, 0.402747, -0.898350,
		0.207949, 0.876751, 0.433664,
		0.962286, -0.262873, 0.070025,
		38.870834, 36.145042, 41.279060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618046, 36.845364, 41.109798>,  <38.197235, 36.329052, 41.230042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618046, 36.845364, 41.109798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889080, 36.567738, 41.012508>,  <39.051701, 36.401161, 40.954136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889080, 36.567738, 41.012508>,  <38.618046, 36.845364, 41.109798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889080, 36.567738, 41.012508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085299, 0.402647, -0.911372,
		0.730484, 0.596782, 0.332029,
		0.677582, -0.694065, -0.243222,
		39.092354, 36.359520, 40.939541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168648, 37.170471, 40.855377>,  <38.618046, 36.845364, 41.109798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168648, 37.170471, 40.855377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254601, 36.804672, 40.718258>,  <39.306171, 36.585194, 40.635986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254601, 36.804672, 40.718258>,  <39.168648, 37.170471, 40.855377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254601, 36.804672, 40.718258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081714, 0.366604, -0.926782,
		0.973215, 0.171141, 0.153505,
		0.214885, -0.914501, -0.342800,
		39.319065, 36.530323, 40.615417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870464, 37.168549, 40.555431>,  <39.168648, 37.170471, 40.855377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870464, 37.168549, 40.555431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691986, 36.855938, 40.381020>,  <39.584900, 36.668369, 40.276371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691986, 36.855938, 40.381020>,  <39.870464, 37.168549, 40.555431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691986, 36.855938, 40.381020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296649, 0.330518, -0.895967,
		0.844341, -0.529122, 0.084366,
		-0.446192, -0.781529, -0.436034,
		39.558128, 36.621479, 40.250210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463509, 36.859257, 40.099701>,  <39.870464, 37.168549, 40.555431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463509, 36.859257, 40.099701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.125305, 36.686062, 39.974712>,  <39.922382, 36.582146, 39.899719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.125305, 36.686062, 39.974712>,  <40.463509, 36.859257, 40.099701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125305, 36.686062, 39.974712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181445, 0.317386, -0.930776,
		0.502192, -0.843673, -0.189787,
		-0.845507, -0.432992, -0.312468,
		39.871655, 36.556164, 39.880974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607380, 36.286995, 39.601562>,  <40.463509, 36.859257, 40.099701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607380, 36.286995, 39.601562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.232857, 36.411015, 39.535591>,  <40.008144, 36.485428, 39.496006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.232857, 36.411015, 39.535591>,  <40.607380, 36.286995, 39.601562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232857, 36.411015, 39.535591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250867, 0.261840, -0.931937,
		-0.245763, -0.913952, -0.322944,
		-0.936305, 0.310051, -0.164930,
		39.951965, 36.504028, 39.486111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296543, 35.900982, 39.087372>,  <40.607380, 36.286995, 39.601562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296543, 35.900982, 39.087372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113693, 36.256577, 39.098251>,  <40.003983, 36.469933, 39.104778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113693, 36.256577, 39.098251>,  <40.296543, 35.900982, 39.087372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113693, 36.256577, 39.098251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264698, 0.165178, -0.950080,
		-0.849098, -0.427110, -0.310820,
		-0.457129, 0.888984, 0.027197,
		39.976555, 36.523273, 39.106411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446346, 35.161095, 39.149979>,  <40.296543, 35.900982, 39.087372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446346, 35.161095, 39.149979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204994, 34.850792, 39.076080>,  <40.060184, 34.664612, 39.031742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204994, 34.850792, 39.076080>,  <40.446346, 35.161095, 39.149979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204994, 34.850792, 39.076080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539641, -0.226631, -0.810818,
		0.587129, -0.588930, 0.555375,
		-0.603380, -0.775758, -0.184749,
		40.023979, 34.618065, 39.020657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884121, 34.570992, 39.197697>,  <40.446346, 35.161095, 39.149979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884121, 34.570992, 39.197697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577187, 34.563774, 38.941299>,  <40.393024, 34.559444, 38.787460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577187, 34.563774, 38.941299>,  <40.884121, 34.570992, 39.197697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577187, 34.563774, 38.941299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640946, 0.008984, -0.767533,
		0.019618, -0.999797, 0.004679,
		-0.767335, -0.018057, -0.640992,
		40.346985, 34.558361, 38.749001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296505, 34.304295, 38.511745>,  <40.884121, 34.570992, 39.197697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296505, 34.304295, 38.511745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931232, 34.418407, 38.395321>,  <40.712070, 34.486874, 38.325466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931232, 34.418407, 38.395321>,  <41.296505, 34.304295, 38.511745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931232, 34.418407, 38.395321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340448, 0.141371, -0.929575,
		-0.224042, -0.947961, -0.226220,
		-0.913182, 0.285280, -0.291058,
		40.657276, 34.503990, 38.308002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.847515, 33.956245, 38.418865>,  <41.296505, 34.304295, 38.511745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.847515, 33.956245, 38.418865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874363, 33.834019, 38.038944>,  <41.890472, 33.760685, 37.810993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874363, 33.834019, 38.038944>,  <41.847515, 33.956245, 38.418865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.874363, 33.834019, 38.038944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448654, 0.859521, -0.244815,
		0.891182, -0.409701, 0.194783,
		0.067119, -0.305564, -0.949803,
		41.894497, 33.742348, 37.754002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626774, 33.933933, 38.340839>,  <41.847515, 33.956245, 38.418865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626774, 33.933933, 38.340839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429379, 33.992203, 37.997852>,  <42.310944, 34.027164, 37.792061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429379, 33.992203, 37.997852>,  <42.626774, 33.933933, 38.340839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.429379, 33.992203, 37.997852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571399, 0.797571, -0.193349,
		0.655725, -0.585371, -0.476829,
		-0.493486, 0.145676, -0.857467,
		42.281334, 34.035904, 37.740612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.161789, 34.020420, 37.844318>,  <42.626774, 33.933933, 38.340839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.161789, 34.020420, 37.844318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.840046, 34.230473, 37.733147>,  <42.646999, 34.356506, 37.666443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.840046, 34.230473, 37.733147>,  <43.161789, 34.020420, 37.844318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.840046, 34.230473, 37.733147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590886, 0.658066, -0.466694,
		-0.062177, -0.539615, -0.839613,
		-0.804356, 0.525133, -0.277934,
		42.598740, 34.388012, 37.649765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.022804, 34.107258, 37.077045>,  <43.161789, 34.020420, 37.844318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.022804, 34.107258, 37.077045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.860794, 34.418259, 37.269482>,  <42.763588, 34.604858, 37.384945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.860794, 34.418259, 37.269482>,  <43.022804, 34.107258, 37.077045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.860794, 34.418259, 37.269482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647647, 0.615382, -0.449286,
		-0.645374, 0.129605, -0.752791,
		-0.405024, 0.777501, 0.481090,
		42.739288, 34.651508, 37.413807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.936096, 34.822296, 36.911167>,  <43.022804, 34.107258, 37.077045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.936096, 34.822296, 36.911167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.270695, 34.605141, 36.881386>,  <43.471455, 34.474846, 36.863518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.270695, 34.605141, 36.881386>,  <42.936096, 34.822296, 36.911167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.270695, 34.605141, 36.881386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535916, -0.782167, -0.317819,
		0.114303, 0.305757, -0.945223,
		0.836498, -0.542888, -0.074456,
		43.521645, 34.442276, 36.859051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.928398, 34.608719, 36.262634>,  <42.936096, 34.822296, 36.911167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.928398, 34.608719, 36.262634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.181068, 34.356030, 36.442368>,  <43.332672, 34.204414, 36.550209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.181068, 34.356030, 36.442368>,  <42.928398, 34.608719, 36.262634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.181068, 34.356030, 36.442368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432884, -0.768267, -0.471568,
		0.643112, 0.103369, -0.758763,
		0.631678, -0.631728, 0.449335,
		43.370571, 34.166512, 36.577168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.277130, 34.359219, 35.734188>,  <42.928398, 34.608719, 36.262634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.277130, 34.359219, 35.734188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.293518, 34.084072, 36.024059>,  <43.303352, 33.918983, 36.197983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.293518, 34.084072, 36.024059>,  <43.277130, 34.359219, 35.734188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.293518, 34.084072, 36.024059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607148, -0.593164, -0.528704,
		0.793532, -0.418329, -0.441937,
		0.040968, -0.687865, 0.724682,
		43.305809, 33.877712, 36.241463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.549553, 33.847404, 35.504929>,  <43.277130, 34.359219, 35.734188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.549553, 33.847404, 35.504929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371876, 33.683163, 35.823452>,  <43.265270, 33.584618, 36.014565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371876, 33.683163, 35.823452>,  <43.549553, 33.847404, 35.504929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.371876, 33.683163, 35.823452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320711, -0.757035, -0.569248,
		0.836564, -0.508238, 0.204583,
		-0.444190, -0.410601, 0.796306,
		43.238617, 33.559982, 36.062344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.705128, 33.098045, 35.479053>,  <43.549553, 33.847404, 35.504929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.705128, 33.098045, 35.479053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.412773, 33.110123, 35.751789>,  <43.237362, 33.117367, 35.915428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.412773, 33.110123, 35.751789>,  <43.705128, 33.098045, 35.479053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.412773, 33.110123, 35.751789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362332, -0.863776, -0.350153,
		0.578381, -0.502971, 0.642258,
		-0.730883, 0.030189, 0.681835,
		43.193508, 33.119179, 35.956341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.644642, 32.392883, 35.707611>,  <43.705128, 33.098045, 35.479053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.644642, 32.392883, 35.707611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290844, 32.557930, 35.794720>,  <43.078568, 32.656960, 35.846985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290844, 32.557930, 35.794720>,  <43.644642, 32.392883, 35.707611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.290844, 32.557930, 35.794720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463052, -0.833457, -0.301550,
		0.057075, -0.367556, 0.928248,
		-0.884491, 0.412616, 0.217767,
		43.025497, 32.681713, 35.860050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.270977, 31.843317, 35.908165>,  <43.644642, 32.392883, 35.707611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.270977, 31.843317, 35.908165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.981720, 32.109623, 35.834595>,  <42.808167, 32.269405, 35.790451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.981720, 32.109623, 35.834595>,  <43.270977, 31.843317, 35.908165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.981720, 32.109623, 35.834595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647623, -0.746126, -0.154530,
		-0.240112, 0.007368, 0.970717,
		-0.723139, 0.665764, -0.183925,
		42.764778, 32.309353, 35.779419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.753765, 31.591206, 36.232395>,  <43.270977, 31.843317, 35.908165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.753765, 31.591206, 36.232395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582821, 31.852936, 35.982845>,  <42.480255, 32.009975, 35.833115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582821, 31.852936, 35.982845>,  <42.753765, 31.591206, 36.232395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582821, 31.852936, 35.982845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692205, -0.680708, -0.239767,
		-0.581564, 0.329385, 0.743834,
		-0.427358, 0.654325, -0.623877,
		42.454613, 32.049232, 35.795681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.056587, 31.462303, 36.269432>,  <42.753765, 31.591206, 36.232395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.056587, 31.462303, 36.269432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.116146, 31.645279, 35.918758>,  <42.151882, 31.755064, 35.708355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.116146, 31.645279, 35.918758>,  <42.056587, 31.462303, 36.269432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.116146, 31.645279, 35.918758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514600, -0.721217, -0.463717,
		-0.844404, 0.520188, 0.128012,
		0.148895, 0.457439, -0.876687,
		42.160816, 31.782511, 35.655754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451454, 31.410936, 36.019737>,  <42.056587, 31.462303, 36.269432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451454, 31.410936, 36.019737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685898, 31.501133, 35.708447>,  <41.826565, 31.555250, 35.521671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685898, 31.501133, 35.708447>,  <41.451454, 31.410936, 36.019737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685898, 31.501133, 35.708447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503660, -0.650972, -0.567945,
		-0.634667, 0.724837, -0.267970,
		0.586109, 0.225490, -0.778223,
		41.861729, 31.568781, 35.474979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962223, 31.364614, 35.425732>,  <41.451454, 31.410936, 36.019737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962223, 31.364614, 35.425732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326553, 31.349987, 35.261269>,  <41.545151, 31.341209, 35.162590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326553, 31.349987, 35.261269>,  <40.962223, 31.364614, 35.425732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326553, 31.349987, 35.261269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306305, -0.727586, -0.613836,
		-0.276706, 0.685041, -0.673909,
		0.910830, -0.036570, -0.411159,
		41.599804, 31.339016, 35.137920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875465, 31.507725, 34.769871>,  <40.962223, 31.364614, 35.425732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875465, 31.507725, 34.769871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.225365, 31.317049, 34.804684>,  <41.435307, 31.202642, 34.825573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.225365, 31.317049, 34.804684>,  <40.875465, 31.507725, 34.769871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.225365, 31.317049, 34.804684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290740, -0.659996, -0.692730,
		0.387659, 0.580664, -0.715926,
		0.874752, -0.476691, 0.087032,
		41.487789, 31.174042, 34.830791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113159, 31.369768, 34.105923>,  <40.875465, 31.507725, 34.769871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113159, 31.369768, 34.105923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335140, 31.114445, 34.319309>,  <41.468330, 30.961250, 34.447342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335140, 31.114445, 34.319309>,  <41.113159, 31.369768, 34.105923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335140, 31.114445, 34.319309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106902, -0.690684, -0.715212,
		0.824982, 0.339882, -0.451536,
		0.554956, -0.638307, 0.533468,
		41.501629, 30.922953, 34.479351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488213, 31.060648, 33.587318>,  <41.113159, 31.369768, 34.105923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488213, 31.060648, 33.587318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.527668, 30.803843, 33.891445>,  <41.551342, 30.649759, 34.073921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.527668, 30.803843, 33.891445>,  <41.488213, 31.060648, 33.587318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.527668, 30.803843, 33.891445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002826, -0.763862, -0.645373,
		0.995120, 0.065804, -0.073529,
		0.098634, -0.642016, 0.760320,
		41.557259, 30.611238, 34.119541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.929386, 30.568949, 33.307430>,  <41.488213, 31.060648, 33.587318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.929386, 30.568949, 33.307430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745918, 30.412807, 33.626740>,  <41.635838, 30.319122, 33.818325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745918, 30.412807, 33.626740>,  <41.929386, 30.568949, 33.307430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745918, 30.412807, 33.626740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013256, -0.901253, -0.433090,
		0.888508, -0.188063, 0.418552,
		-0.458669, -0.390352, 0.798278,
		41.608318, 30.295702, 33.866222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329300, 30.042608, 33.500782>,  <41.929386, 30.568949, 33.307430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.329300, 30.042608, 33.500782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980278, 29.945774, 33.670506>,  <41.770863, 29.887674, 33.772339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980278, 29.945774, 33.670506>,  <42.329300, 30.042608, 33.500782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980278, 29.945774, 33.670506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044905, -0.825152, -0.563124,
		0.486441, -0.510412, 0.709122,
		-0.872558, -0.242083, 0.424308,
		41.718510, 29.873150, 33.797798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398182, 29.326685, 33.671741>,  <42.329300, 30.042608, 33.500782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398182, 29.326685, 33.671741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008095, 29.414164, 33.658318>,  <41.774044, 29.466650, 33.650261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008095, 29.414164, 33.658318>,  <42.398182, 29.326685, 33.671741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008095, 29.414164, 33.658318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180407, -0.873789, -0.451603,
		-0.128092, -0.434355, 0.891587,
		-0.975216, 0.218696, -0.033564,
		41.715530, 29.479773, 33.648247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973164, 28.623779, 33.852036>,  <42.398182, 29.326685, 33.671741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.973164, 28.623779, 33.852036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700630, 28.861208, 33.680710>,  <41.537109, 29.003666, 33.577915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700630, 28.861208, 33.680710>,  <41.973164, 28.623779, 33.852036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700630, 28.861208, 33.680710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379090, -0.786710, -0.487215,
		-0.626157, -0.169587, 0.761031,
		-0.681335, 0.593572, -0.428315,
		41.496231, 29.039280, 33.552216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390400, 28.274746, 33.984558>,  <41.973164, 28.623779, 33.852036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390400, 28.274746, 33.984558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.340569, 28.509668, 33.664669>,  <41.310669, 28.650621, 33.472736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.340569, 28.509668, 33.664669>,  <41.390400, 28.274746, 33.984558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340569, 28.509668, 33.664669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225345, -0.801683, -0.553646,
		-0.966282, 0.111242, 0.232217,
		-0.124575, 0.587307, -0.799720,
		41.303196, 28.685860, 33.424751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764923, 28.188755, 33.776951>,  <41.390400, 28.274746, 33.984558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764923, 28.188755, 33.776951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930511, 28.346277, 33.448673>,  <41.029865, 28.440790, 33.251705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930511, 28.346277, 33.448673>,  <40.764923, 28.188755, 33.776951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930511, 28.346277, 33.448673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032216, -0.894675, -0.445554,
		-0.909718, 0.210888, -0.357687,
		0.413975, 0.393805, -0.820696,
		41.054703, 28.464418, 33.202465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336697, 27.867935, 33.262978>,  <40.764923, 28.188755, 33.776951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336697, 27.867935, 33.262978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665451, 28.020441, 33.093678>,  <40.862705, 28.111944, 32.992100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665451, 28.020441, 33.093678>,  <40.336697, 27.867935, 33.262978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665451, 28.020441, 33.093678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045204, -0.696999, -0.715646,
		-0.567854, 0.607312, -0.555620,
		0.821887, 0.381267, -0.423247,
		40.912018, 28.134821, 32.966705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923016, 27.270573, 33.411518>,  <40.336697, 27.867935, 33.262978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923016, 27.270573, 33.411518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.549438, 27.127651, 33.415066>,  <39.325291, 27.041899, 33.417194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.549438, 27.127651, 33.415066>,  <39.923016, 27.270573, 33.411518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549438, 27.127651, 33.415066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354285, -0.922217, 0.154910,
		-0.047172, 0.147820, 0.987889,
		-0.933947, -0.357302, 0.008868,
		39.269253, 27.020460, 33.417725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529758, 26.720266, 33.120575>,  <39.923016, 27.270573, 33.411518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529758, 26.720266, 33.120575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210365, 26.848223, 32.916576>,  <40.018730, 26.924995, 32.794178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210365, 26.848223, 32.916576>,  <40.529758, 26.720266, 33.120575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210365, 26.848223, 32.916576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314348, 0.944030, 0.099966,
		0.513427, -0.080494, -0.854350,
		-0.798485, 0.319889, -0.509993,
		39.970821, 26.944189, 32.763580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725513, 26.983131, 32.501114>,  <40.529758, 26.720266, 33.120575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725513, 26.983131, 32.501114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.936623, 26.654758, 32.588314>,  <41.063290, 26.457735, 32.640633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.936623, 26.654758, 32.588314>,  <40.725513, 26.983131, 32.501114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936623, 26.654758, 32.588314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793669, 0.385211, -0.470852,
		0.302562, 0.421522, 0.854854,
		0.527774, -0.820933, 0.217999,
		41.094955, 26.408478, 32.653713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190868, 26.622540, 32.008671>,  <40.725513, 26.983131, 32.501114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.190868, 26.622540, 32.008671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885292, 26.477333, 32.222069>,  <40.701946, 26.390209, 32.350109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885292, 26.477333, 32.222069>,  <41.190868, 26.622540, 32.008671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885292, 26.477333, 32.222069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155374, -0.698956, -0.698083,
		0.626307, -0.616183, 0.477555,
		-0.763937, -0.363014, 0.533499,
		40.656113, 26.368429, 32.382118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169353, 26.273087, 31.366819>,  <41.190868, 26.622540, 32.008671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169353, 26.273087, 31.366819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343845, 26.628691, 31.422485>,  <41.448540, 26.842052, 31.455885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343845, 26.628691, 31.422485>,  <41.169353, 26.273087, 31.366819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343845, 26.628691, 31.422485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650963, -0.205001, -0.730905,
		-0.621253, 0.409432, -0.668140,
		0.436225, 0.889011, 0.139167,
		41.474712, 26.895393, 31.464235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248924, 26.612267, 30.737034>,  <41.169353, 26.273087, 31.366819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248924, 26.612267, 30.737034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.522285, 26.812792, 30.949314>,  <41.686302, 26.933107, 31.076683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.522285, 26.812792, 30.949314>,  <41.248924, 26.612267, 30.737034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.522285, 26.812792, 30.949314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627149, -0.031045, -0.778281,
		-0.373685, 0.864710, -0.335613,
		0.683406, 0.501311, 0.530701,
		41.727306, 26.963184, 31.108524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611099, 26.926937, 30.222090>,  <41.248924, 26.612267, 30.737034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611099, 26.926937, 30.222090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.828365, 26.987188, 30.552490>,  <41.958725, 27.023338, 30.750731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.828365, 26.987188, 30.552490>,  <41.611099, 26.926937, 30.222090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.828365, 26.987188, 30.552490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731606, 0.397796, -0.553635,
		-0.411974, 0.905024, 0.105869,
		0.543167, 0.150629, 0.826003,
		41.991314, 27.032377, 30.800291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074234, 27.485062, 30.072161>,  <41.611099, 26.926937, 30.222090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074234, 27.485062, 30.072161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246101, 27.279249, 30.368982>,  <42.349220, 27.155762, 30.547075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246101, 27.279249, 30.368982>,  <42.074234, 27.485062, 30.072161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246101, 27.279249, 30.368982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887045, 0.394243, -0.240257,
		-0.168929, 0.761465, 0.625806,
		0.429667, -0.514532, 0.742053,
		42.375000, 27.124889, 30.591599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743690, 27.854080, 29.791967>,  <42.074234, 27.485062, 30.072161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743690, 27.854080, 29.791967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.380821, 27.968885, 29.668896>,  <42.163101, 28.037769, 29.595053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.380821, 27.968885, 29.668896>,  <42.743690, 27.854080, 29.791967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.380821, 27.968885, 29.668896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096028, 0.853161, 0.512733,
		0.409661, 0.435591, -0.801523,
		-0.907170, 0.287015, -0.307678,
		42.108669, 28.054991, 29.576591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.769184, 28.444740, 29.562984>,  <42.743690, 27.854080, 29.791967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.769184, 28.444740, 29.562984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408337, 28.389410, 29.726469>,  <42.191826, 28.356213, 29.824560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408337, 28.389410, 29.726469>,  <42.769184, 28.444740, 29.562984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408337, 28.389410, 29.726469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226139, 0.655138, 0.720871,
		-0.367476, 0.742738, -0.559734,
		-0.902121, -0.138325, 0.408710,
		42.137699, 28.347912, 29.849081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.385464, 29.089407, 29.615419>,  <42.769184, 28.444740, 29.562984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.385464, 29.089407, 29.615419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.308899, 28.823570, 29.904329>,  <42.262959, 28.664068, 30.077675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.308899, 28.823570, 29.904329>,  <42.385464, 29.089407, 29.615419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308899, 28.823570, 29.904329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178884, 0.699935, 0.691442,
		-0.965071, 0.261555, -0.015092,
		-0.191413, -0.664591, 0.722274,
		42.251476, 28.624193, 30.121012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268730, 29.475224, 30.075846>,  <42.385464, 29.089407, 29.615419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268730, 29.475224, 30.075846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.349228, 29.136379, 30.272581>,  <42.397526, 28.933073, 30.390621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.349228, 29.136379, 30.272581>,  <42.268730, 29.475224, 30.075846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349228, 29.136379, 30.272581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356209, 0.531019, 0.768852,
		-0.912479, 0.020473, 0.408611,
		0.201240, -0.847113, 0.491836,
		42.409599, 28.882246, 30.420132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048199, 29.569433, 30.720659>,  <42.268730, 29.475224, 30.075846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048199, 29.569433, 30.720659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.290855, 29.254612, 30.765438>,  <42.436451, 29.065720, 30.792305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.290855, 29.254612, 30.765438>,  <42.048199, 29.569433, 30.720659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.290855, 29.254612, 30.765438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386666, 0.415166, 0.823484,
		-0.694601, -0.456276, 0.556184,
		0.606645, -0.787051, 0.111949,
		42.472851, 29.018497, 30.799023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101185, 29.611565, 31.395918>,  <42.048199, 29.569433, 30.720659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101185, 29.611565, 31.395918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.415016, 29.390137, 31.284204>,  <42.603313, 29.257280, 31.217176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.415016, 29.390137, 31.284204>,  <42.101185, 29.611565, 31.395918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.415016, 29.390137, 31.284204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581148, 0.499537, 0.642440,
		-0.216123, -0.666349, 0.713631,
		0.784575, -0.553572, -0.279285,
		42.650391, 29.224066, 31.200418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.313637, 29.347834, 31.989531>,  <42.101185, 29.611565, 31.395918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.313637, 29.347834, 31.989531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639156, 29.342102, 31.757141>,  <42.834469, 29.338663, 31.617706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639156, 29.342102, 31.757141>,  <42.313637, 29.347834, 31.989531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.639156, 29.342102, 31.757141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508545, 0.501418, 0.699973,
		0.281282, -0.865087, 0.415338,
		0.813795, -0.014329, -0.580976,
		42.883293, 29.337803, 31.582848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.850716, 28.948547, 32.313633>,  <42.313637, 29.347834, 31.989531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.850716, 28.948547, 32.313633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005371, 29.210459, 32.053856>,  <43.098167, 29.367605, 31.897991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005371, 29.210459, 32.053856>,  <42.850716, 28.948547, 32.313633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005371, 29.210459, 32.053856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524114, 0.423420, 0.738932,
		0.758822, -0.626083, -0.179466,
		0.386643, 0.654779, -0.649440,
		43.121365, 29.406893, 31.859024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.453117, 29.080538, 32.636288>,  <42.850716, 28.948547, 32.313633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.453117, 29.080538, 32.636288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417686, 29.384184, 32.378326>,  <43.396427, 29.566372, 32.223549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417686, 29.384184, 32.378326>,  <43.453117, 29.080538, 32.636288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.417686, 29.384184, 32.378326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575758, 0.567347, 0.588744,
		0.812808, -0.319161, -0.487318,
		-0.088574, 0.759114, -0.644904,
		43.391113, 29.611917, 32.184856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.069134, 29.372978, 32.610634>,  <43.453117, 29.080538, 32.636288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.069134, 29.372978, 32.610634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.844307, 29.671825, 32.468704>,  <43.709412, 29.851133, 32.383545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.844307, 29.671825, 32.468704>,  <44.069134, 29.372978, 32.610634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.844307, 29.671825, 32.468704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510342, 0.650874, 0.562062,
		0.650874, 0.134831, -0.747117,
		-0.562062, 0.747117, -0.354827,
		43.675690, 29.895960, 32.362255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.460190, 29.863495, 32.742424>,  <44.069134, 29.372978, 32.610634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.460190, 29.863495, 32.742424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.119633, 30.056652, 32.660500>,  <43.915298, 30.172546, 32.611343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.119633, 30.056652, 32.660500>,  <44.460190, 29.863495, 32.742424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.119633, 30.056652, 32.660500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291140, 0.759846, 0.581267,
		0.436319, 0.435255, -0.787514,
		-0.851389, 0.482895, -0.204815,
		43.864216, 30.201521, 32.599056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.630997, 30.498430, 32.551472>,  <44.460190, 29.863495, 32.742424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.630997, 30.498430, 32.551472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.253166, 30.562714, 32.665981>,  <44.026466, 30.601284, 32.734688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.253166, 30.562714, 32.665981>,  <44.630997, 30.498430, 32.551472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.253166, 30.562714, 32.665981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275122, 0.863281, 0.423148,
		-0.179127, 0.478454, -0.859648,
		-0.944575, 0.160710, 0.286270,
		43.969795, 30.610928, 32.751862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.674667, 31.244749, 32.570930>,  <44.630997, 30.498430, 32.551472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.674667, 31.244749, 32.570930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.343021, 31.154623, 32.775597>,  <44.144035, 31.100548, 32.898396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.343021, 31.154623, 32.775597>,  <44.674667, 31.244749, 32.570930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.343021, 31.154623, 32.775597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145290, 0.796918, 0.586355,
		-0.539871, 0.560496, -0.628000,
		-0.829114, -0.225314, 0.511667,
		44.094288, 31.087029, 32.929096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.277206, 31.895681, 32.550743>,  <44.674667, 31.244749, 32.570930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.277206, 31.895681, 32.550743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.124168, 31.679531, 32.850506>,  <44.032345, 31.549841, 33.030365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.124168, 31.679531, 32.850506>,  <44.277206, 31.895681, 32.550743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.124168, 31.679531, 32.850506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275055, 0.707726, 0.650744,
		-0.882022, 0.455102, -0.122143,
		-0.382599, -0.540375, 0.749408,
		44.009388, 31.517418, 33.075329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.977039, 32.368336, 32.985088>,  <44.277206, 31.895681, 32.550743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.977039, 32.368336, 32.985088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.031540, 32.048023, 33.218391>,  <44.064240, 31.855837, 33.358372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.031540, 32.048023, 33.218391>,  <43.977039, 32.368336, 32.985088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.031540, 32.048023, 33.218391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317005, 0.593035, 0.740147,
		-0.938586, 0.084050, 0.334652,
		0.136251, -0.800778, 0.583259,
		44.072414, 31.807791, 33.393368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.607494, 32.489979, 33.658253>,  <43.977039, 32.368336, 32.985088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.607494, 32.489979, 33.658253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.900578, 32.226433, 33.726425>,  <44.076427, 32.068306, 33.767330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.900578, 32.226433, 33.726425>,  <43.607494, 32.489979, 33.658253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.900578, 32.226433, 33.726425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406379, 0.624464, 0.667009,
		-0.545894, -0.419460, 0.725295,
		0.732704, -0.658861, 0.170432,
		44.120388, 32.028774, 33.777554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.787525, 32.487900, 34.408813>,  <43.607494, 32.489979, 33.658253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.787525, 32.487900, 34.408813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.114334, 32.343452, 34.229004>,  <44.310417, 32.256783, 34.121117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.114334, 32.343452, 34.229004>,  <43.787525, 32.487900, 34.408813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.114334, 32.343452, 34.229004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571089, 0.614409, 0.544389,
		0.079601, -0.701494, 0.708216,
		0.817020, -0.361120, -0.449523,
		44.359440, 32.235115, 34.094147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.125790, 32.378254, 34.942234>,  <43.787525, 32.487900, 34.408813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.125790, 32.378254, 34.942234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.391048, 32.385052, 34.642918>,  <44.550205, 32.389130, 34.463329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.391048, 32.385052, 34.642918>,  <44.125790, 32.378254, 34.942234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.391048, 32.385052, 34.642918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633265, 0.520207, 0.573027,
		0.399005, -0.853871, 0.334214,
		0.663152, 0.016994, -0.748292,
		44.589993, 32.390148, 34.418430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.859173, 32.139206, 35.221447>,  <44.125790, 32.378254, 34.942234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.859173, 32.139206, 35.221447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.914711, 32.354542, 34.888962>,  <44.948036, 32.483742, 34.689472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.914711, 32.354542, 34.888962>,  <44.859173, 32.139206, 35.221447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.914711, 32.354542, 34.888962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584015, 0.633341, 0.507746,
		0.799779, -0.555939, -0.226460,
		0.138849, 0.538341, -0.831210,
		44.956367, 32.516045, 34.639599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.568195, 32.294975, 35.132111>,  <44.859173, 32.139206, 35.221447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.568195, 32.294975, 35.132111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.387634, 32.586514, 34.926189>,  <45.279297, 32.761436, 34.802639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.387634, 32.586514, 34.926189>,  <45.568195, 32.294975, 35.132111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.387634, 32.586514, 34.926189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580041, 0.678077, 0.451403,
		0.678077, -0.094840, -0.728847,
		-0.451403, 0.728847, -0.514799,
		45.252213, 32.805168, 34.771751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.116722, 32.785748, 34.970848>,  <45.568195, 32.294975, 35.132111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.116722, 32.785748, 34.970848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.779091, 32.993565, 34.917778>,  <45.576511, 33.118256, 34.885937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.779091, 32.993565, 34.917778>,  <46.116722, 32.785748, 34.970848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.779091, 32.993565, 34.917778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425319, 0.799371, 0.424392,
		0.326548, 0.301792, -0.895706,
		-0.844079, 0.519545, -0.132675,
		45.525867, 33.149429, 34.877975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.419067, 33.416275, 34.722473>,  <46.116722, 32.785748, 34.970848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.419067, 33.416275, 34.722473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.045879, 33.505329, 34.835613>,  <45.821968, 33.558762, 34.903500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.045879, 33.505329, 34.835613>,  <46.419067, 33.416275, 34.722473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.045879, 33.505329, 34.835613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322531, 0.865951, 0.382234,
		-0.159837, 0.447841, -0.879711,
		-0.932966, 0.222639, 0.282853,
		45.765991, 33.572121, 34.920467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.358910, 34.052982, 34.471302>,  <46.419067, 33.416275, 34.722473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.358910, 34.052982, 34.471302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.097713, 33.999496, 34.769489>,  <45.940994, 33.967403, 34.948402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.097713, 33.999496, 34.769489>,  <46.358910, 34.052982, 34.471302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.097713, 33.999496, 34.769489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347684, 0.821516, 0.451915,
		-0.672840, 0.554284, -0.489954,
		-0.652994, -0.133717, 0.745465,
		45.901814, 33.959381, 34.993130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.945812, 34.743786, 34.593239>,  <46.358910, 34.052982, 34.471302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.945812, 34.743786, 34.593239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.002338, 34.485874, 34.893715>,  <46.036255, 34.331127, 35.074001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.002338, 34.485874, 34.893715>,  <45.945812, 34.743786, 34.593239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.002338, 34.485874, 34.893715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562153, 0.676860, 0.475231,
		-0.814871, 0.355128, 0.458115,
		0.141312, -0.644782, 0.751190,
		46.044731, 34.292439, 35.119072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.624638, 34.812050, 35.064316>,  <45.945812, 34.743786, 34.593239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.624638, 34.812050, 35.064316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.892990, 35.061146, 35.225368>,  <47.054001, 35.210602, 35.321999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.892990, 35.061146, 35.225368>,  <46.624638, 34.812050, 35.064316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.892990, 35.061146, 35.225368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716879, -0.683550, -0.137271,
		0.189733, 0.380730, -0.905012,
		0.670884, 0.622739, 0.402629,
		47.094254, 35.247967, 35.346157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.183361, 35.047367, 34.619347>,  <46.624638, 34.812050, 35.064316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.183361, 35.047367, 34.619347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.283676, 35.003632, 35.004086>,  <47.343864, 34.977390, 35.234928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.283676, 35.003632, 35.004086>,  <47.183361, 35.047367, 34.619347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.283676, 35.003632, 35.004086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663780, -0.703812, -0.253070,
		0.704630, 0.701922, -0.103930,
		0.250783, -0.109334, 0.961849,
		47.358910, 34.970833, 35.292641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.868675, 35.204155, 34.690701>,  <47.183361, 35.047367, 34.619347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.868675, 35.204155, 34.690701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.749016, 34.948376, 34.973999>,  <47.677219, 34.794910, 35.143978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.749016, 34.948376, 34.973999>,  <47.868675, 35.204155, 34.690701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.749016, 34.948376, 34.973999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756931, -0.610966, -0.231898,
		0.581002, 0.466723, 0.666788,
		-0.299153, -0.639446, 0.708249,
		47.659271, 34.756542, 35.186474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.114120, 36.446693, 46.106003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.774231, 36.282646, 45.973480>,  <31.570297, 36.184216, 45.893967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.774231, 36.282646, 45.973480>,  <32.114120, 36.446693, 46.106003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774231, 36.282646, 45.973480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326720, 0.083575, -0.941419,
		0.413786, -0.908193, 0.062979,
		-0.849727, -0.410122, -0.331307,
		31.519312, 36.159611, 45.874088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352768, 36.014332, 45.516926>,  <32.114120, 36.446693, 46.106003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352768, 36.014332, 45.516926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.959696, 36.076481, 45.476532>,  <31.723852, 36.113770, 45.452297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.959696, 36.076481, 45.476532>,  <32.352768, 36.014332, 45.516926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959696, 36.076481, 45.476532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112727, 0.068725, -0.991247,
		-0.147071, -0.985463, -0.085049,
		-0.982682, 0.155371, -0.100981,
		31.664892, 36.123093, 45.446239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060486, 35.552273, 44.878120>,  <32.352768, 36.014332, 45.516926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060486, 35.552273, 44.878120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.760298, 35.814968, 44.907776>,  <31.580185, 35.972584, 44.925571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.760298, 35.814968, 44.907776>,  <32.060486, 35.552273, 44.878120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760298, 35.814968, 44.907776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023534, 0.085556, -0.996055,
		-0.660487, -0.749253, -0.048752,
		-0.750469, 0.656734, 0.074142,
		31.535156, 36.011990, 44.930019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565561, 35.287006, 44.491852>,  <32.060486, 35.552273, 44.878120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565561, 35.287006, 44.491852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.421862, 35.659496, 44.516392>,  <31.335642, 35.882988, 44.531116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.421862, 35.659496, 44.516392>,  <31.565561, 35.287006, 44.491852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421862, 35.659496, 44.516392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263031, -0.037964, -0.964040,
		-0.895408, -0.362467, 0.258579,
		-0.359249, 0.931223, 0.061346,
		31.314087, 35.938862, 44.534794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811041, 35.269417, 44.121914>,  <31.565561, 35.287006, 44.491852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811041, 35.269417, 44.121914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.993690, 35.625103, 44.133110>,  <31.103281, 35.838516, 44.139828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.993690, 35.625103, 44.133110>,  <30.811041, 35.269417, 44.121914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993690, 35.625103, 44.133110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016630, 0.039983, -0.999062,
		-0.889505, 0.455730, 0.033045,
		0.456624, 0.889220, 0.027987,
		31.130678, 35.891869, 44.141506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479088, 35.633411, 43.598969>,  <30.811041, 35.269417, 44.121914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479088, 35.633411, 43.598969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.832487, 35.812229, 43.654942>,  <31.044527, 35.919521, 43.688526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.832487, 35.812229, 43.654942>,  <30.479088, 35.633411, 43.598969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.832487, 35.812229, 43.654942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080327, 0.149711, -0.985461,
		-0.461496, 0.881894, 0.096360,
		0.883498, 0.447046, 0.139931,
		31.097536, 35.946342, 43.696922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485704, 35.961983, 43.038754>,  <30.479088, 35.633411, 43.598969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485704, 35.961983, 43.038754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.856678, 36.038532, 43.167278>,  <31.079262, 36.084461, 43.244392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.856678, 36.038532, 43.167278>,  <30.485704, 35.961983, 43.038754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856678, 36.038532, 43.167278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303965, 0.114824, -0.945738,
		-0.217885, 0.974778, 0.048320,
		0.927433, 0.191375, 0.321316,
		31.134909, 36.095943, 43.263672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.701204, 36.574593, 42.747410>,  <30.485704, 35.961983, 43.038754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.701204, 36.574593, 42.747410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.048967, 36.390362, 42.818962>,  <31.257626, 36.279823, 42.861893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.048967, 36.390362, 42.818962>,  <30.701204, 36.574593, 42.747410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048967, 36.390362, 42.818962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367651, 0.361164, -0.856968,
		0.330091, 0.810822, 0.483330,
		0.869409, -0.460574, 0.178883,
		31.309790, 36.252190, 42.872627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278830, 37.090366, 42.546692>,  <30.701204, 36.574593, 42.747410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278830, 37.090366, 42.546692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.430990, 36.720718, 42.561073>,  <31.522285, 36.498928, 42.569702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.430990, 36.720718, 42.561073>,  <31.278830, 37.090366, 42.546692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430990, 36.720718, 42.561073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470642, 0.159972, -0.867701,
		0.796111, 0.346995, 0.495784,
		0.380400, -0.924123, 0.035955,
		31.545111, 36.443481, 42.571861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948410, 37.232559, 42.316189>,  <31.278830, 37.090366, 42.546692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948410, 37.232559, 42.316189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.931147, 36.833065, 42.305904>,  <31.920790, 36.593369, 42.299732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.931147, 36.833065, 42.305904>,  <31.948410, 37.232559, 42.316189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931147, 36.833065, 42.305904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529147, -0.001018, -0.848529,
		0.847432, -0.050227, 0.528523,
		-0.043158, -0.998737, -0.025715,
		31.918200, 36.533443, 42.298191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647427, 36.853951, 42.305103>,  <31.948410, 37.232559, 42.316189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647427, 36.853951, 42.305103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.398048, 36.576771, 42.160248>,  <32.248421, 36.410465, 42.073334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.398048, 36.576771, 42.160248>,  <32.647427, 36.853951, 42.305103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398048, 36.576771, 42.160248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664531, -0.225565, -0.712403,
		0.411970, -0.684797, 0.601111,
		-0.623441, -0.692946, -0.362143,
		32.211018, 36.368889, 42.051605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931114, 36.153343, 42.283920>,  <32.647427, 36.853951, 42.305103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931114, 36.153343, 42.283920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.649540, 36.200943, 42.003834>,  <32.480595, 36.229504, 41.835781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.649540, 36.200943, 42.003834>,  <32.931114, 36.153343, 42.283920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649540, 36.200943, 42.003834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656684, -0.266587, -0.705477,
		-0.270626, -0.956436, 0.109511,
		-0.703937, 0.119006, -0.700221,
		32.438358, 36.236645, 41.793766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992031, 35.694317, 41.813351>,  <32.931114, 36.153343, 42.283920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992031, 35.694317, 41.813351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.769218, 35.921402, 41.570889>,  <32.635529, 36.057652, 41.425411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.769218, 35.921402, 41.570889>,  <32.992031, 35.694317, 41.813351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769218, 35.921402, 41.570889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595247, -0.236048, -0.768090,
		-0.579132, -0.788662, -0.206440,
		-0.557034, 0.567709, -0.606152,
		32.602108, 36.091713, 41.389042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993858, 35.299671, 41.143238>,  <32.992031, 35.694317, 41.813351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993858, 35.299671, 41.143238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.901447, 35.685902, 41.095425>,  <32.846001, 35.917641, 41.066738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.901447, 35.685902, 41.095425>,  <32.993858, 35.299671, 41.143238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901447, 35.685902, 41.095425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499682, 0.012338, -0.866121,
		-0.834831, -0.259829, -0.485331,
		-0.231032, 0.965576, -0.119532,
		32.832138, 35.975574, 41.059566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850853, 35.362053, 40.440044>,  <32.993858, 35.299671, 41.143238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850853, 35.362053, 40.440044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.935322, 35.732536, 40.564976>,  <32.986004, 35.954826, 40.639935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.935322, 35.732536, 40.564976>,  <32.850853, 35.362053, 40.440044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935322, 35.732536, 40.564976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367784, 0.220756, -0.903328,
		-0.905617, 0.305626, -0.294026,
		0.211172, 0.926207, 0.312324,
		32.998672, 36.010399, 40.658672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519333, 35.776421, 39.986458>,  <32.850853, 35.362053, 40.440044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519333, 35.776421, 39.986458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.811256, 36.000622, 40.143028>,  <32.986412, 36.135143, 40.236969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.811256, 36.000622, 40.143028>,  <32.519333, 35.776421, 39.986458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811256, 36.000622, 40.143028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267773, 0.292445, -0.918027,
		-0.629025, 0.774800, 0.063343,
		0.729812, 0.560500, 0.391426,
		33.030201, 36.168774, 40.260456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397961, 36.402573, 39.629189>,  <32.519333, 35.776421, 39.986458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397961, 36.402573, 39.629189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.764446, 36.445492, 39.783607>,  <32.984337, 36.471241, 39.876259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.764446, 36.445492, 39.783607>,  <32.397961, 36.402573, 39.629189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764446, 36.445492, 39.783607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297899, 0.461926, -0.835392,
		-0.267959, 0.880404, 0.391262,
		0.916217, 0.107294, 0.386049,
		33.039310, 36.477680, 39.899422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628624, 37.089874, 39.495754>,  <32.397961, 36.402573, 39.629189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628624, 37.089874, 39.495754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.970886, 36.885239, 39.527065>,  <33.176243, 36.762459, 39.545853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.970886, 36.885239, 39.527065>,  <32.628624, 37.089874, 39.495754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970886, 36.885239, 39.527065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428967, 0.616440, -0.660295,
		0.289547, 0.598564, 0.746916,
		0.855658, -0.511588, 0.078276,
		33.227585, 36.731762, 39.550549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142540, 37.571453, 39.212376>,  <32.628624, 37.089874, 39.495754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142540, 37.571453, 39.212376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.365005, 37.242348, 39.259270>,  <33.498486, 37.044884, 39.287407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.365005, 37.242348, 39.259270>,  <33.142540, 37.571453, 39.212376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365005, 37.242348, 39.259270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716583, 0.403298, -0.569086,
		0.420945, 0.400510, 0.813878,
		0.556160, -0.822765, 0.117233,
		33.531853, 36.995518, 39.294441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853619, 37.889111, 39.393501>,  <33.142540, 37.571453, 39.212376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853619, 37.889111, 39.393501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.887440, 37.512535, 39.262936>,  <33.907730, 37.286591, 39.184597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.887440, 37.512535, 39.262936>,  <33.853619, 37.889111, 39.393501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887440, 37.512535, 39.262936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638416, 0.302697, -0.707672,
		0.765034, -0.148553, 0.626622,
		0.084550, -0.941439, -0.326412,
		33.912804, 37.230103, 39.165012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546566, 37.688881, 39.391052>,  <33.853619, 37.889111, 39.393501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546566, 37.688881, 39.391052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.400375, 37.460678, 39.096855>,  <34.312660, 37.323757, 38.920338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.400375, 37.460678, 39.096855>,  <34.546566, 37.688881, 39.391052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400375, 37.460678, 39.096855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642684, 0.416923, -0.642754,
		0.673338, -0.707603, 0.214277,
		-0.365478, -0.570503, -0.735494,
		34.290733, 37.289528, 38.876205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140781, 37.339252, 39.096504>,  <34.546566, 37.688881, 39.391052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140781, 37.339252, 39.096504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.841942, 37.306057, 38.832699>,  <34.662640, 37.286140, 38.674416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.841942, 37.306057, 38.832699>,  <35.140781, 37.339252, 39.096504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841942, 37.306057, 38.832699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650801, 0.110604, -0.751149,
		0.135286, -0.990393, -0.028619,
		-0.747098, -0.082994, -0.659512,
		34.617813, 37.281162, 38.634846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926533, 37.131355, 39.216190>,  <35.140781, 37.339252, 39.096504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926533, 37.131355, 39.216190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.306046, 37.213432, 39.120094>,  <36.533752, 37.262676, 39.062435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.306046, 37.213432, 39.120094>,  <35.926533, 37.131355, 39.216190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306046, 37.213432, 39.120094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131088, 0.436190, 0.890255,
		0.287462, -0.876148, 0.386950,
		0.948779, 0.205190, -0.240241,
		36.590679, 37.274990, 39.048023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343792, 36.878078, 39.627308>,  <35.926533, 37.131355, 39.216190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343792, 36.878078, 39.627308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.577740, 37.173885, 39.494019>,  <36.718109, 37.351372, 39.414043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.577740, 37.173885, 39.494019>,  <36.343792, 36.878078, 39.627308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577740, 37.173885, 39.494019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084327, 0.353156, 0.931756,
		0.806732, -0.573055, 0.144189,
		0.584869, 0.739519, -0.333226,
		36.753201, 37.395741, 39.394051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901134, 36.826160, 40.034618>,  <36.343792, 36.878078, 39.627308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901134, 36.826160, 40.034618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.856892, 37.199760, 39.898727>,  <36.830345, 37.423920, 39.817192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.856892, 37.199760, 39.898727>,  <36.901134, 36.826160, 40.034618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856892, 37.199760, 39.898727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073902, 0.348605, 0.934351,
		0.991112, 0.078243, -0.107584,
		-0.110611, 0.933998, -0.339725,
		36.823708, 37.479961, 39.796810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500992, 37.268215, 40.327389>,  <36.901134, 36.826160, 40.034618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500992, 37.268215, 40.327389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.199406, 37.506927, 40.217560>,  <37.018456, 37.650154, 40.151661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.199406, 37.506927, 40.217560>,  <37.500992, 37.268215, 40.327389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199406, 37.506927, 40.217560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050353, 0.364241, 0.929942,
		0.654981, 0.714970, -0.244576,
		-0.753966, 0.596780, -0.274572,
		36.973217, 37.685963, 40.135189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581596, 37.946358, 40.861118>,  <37.500992, 37.268215, 40.327389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581596, 37.946358, 40.861118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.213619, 37.961334, 40.705009>,  <36.992832, 37.970322, 40.611343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.213619, 37.961334, 40.705009>,  <37.581596, 37.946358, 40.861118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213619, 37.961334, 40.705009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362993, 0.294815, 0.883923,
		0.148153, 0.954821, -0.257621,
		-0.919938, 0.037441, -0.390271,
		36.937637, 37.972565, 40.587929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232250, 38.628731, 40.944962>,  <37.581596, 37.946358, 40.861118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232250, 38.628731, 40.944962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.929920, 38.373112, 40.887901>,  <36.748520, 38.219742, 40.853664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.929920, 38.373112, 40.887901>,  <37.232250, 38.628731, 40.944962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929920, 38.373112, 40.887901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434761, 0.326907, 0.839115,
		-0.489599, 0.696244, -0.524917,
		-0.755828, -0.639043, -0.142646,
		36.703171, 38.181400, 40.845108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715012, 39.005024, 41.270641>,  <37.232250, 38.628731, 40.944962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715012, 39.005024, 41.270641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.540531, 38.649872, 41.212124>,  <36.435844, 38.436783, 41.177013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.540531, 38.649872, 41.212124>,  <36.715012, 39.005024, 41.270641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540531, 38.649872, 41.212124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597743, 0.164377, 0.784655,
		-0.672630, 0.429714, -0.602424,
		-0.436202, -0.887877, -0.146294,
		36.409672, 38.383507, 41.168236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049709, 39.139309, 41.254250>,  <36.715012, 39.005024, 41.270641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049709, 39.139309, 41.254250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.111542, 38.758766, 41.360855>,  <36.148640, 38.530441, 41.424816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.111542, 38.758766, 41.360855>,  <36.049709, 39.139309, 41.254250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111542, 38.758766, 41.360855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639667, 0.109208, 0.760855,
		-0.752948, -0.288091, -0.591669,
		0.154580, -0.951355, 0.266510,
		36.157917, 38.473358, 41.440807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473751, 39.010571, 41.707066>,  <36.049709, 39.139309, 41.254250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473751, 39.010571, 41.707066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.657291, 38.663258, 41.782475>,  <35.767418, 38.454872, 41.827721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.657291, 38.663258, 41.782475>,  <35.473751, 39.010571, 41.707066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657291, 38.663258, 41.782475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490459, -0.070594, 0.868600,
		-0.740880, -0.491025, -0.458248,
		0.458854, -0.868280, 0.188526,
		35.794949, 38.402775, 41.839031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940372, 38.616707, 41.869408>,  <35.473751, 39.010571, 41.707066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940372, 38.616707, 41.869408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.256130, 38.419788, 42.016102>,  <35.445587, 38.301636, 42.104118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.256130, 38.419788, 42.016102>,  <34.940372, 38.616707, 41.869408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256130, 38.419788, 42.016102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498176, -0.164656, 0.851298,
		-0.358710, -0.854710, -0.375232,
		0.789397, -0.492301, 0.366732,
		35.492950, 38.272099, 42.126122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661228, 37.957706, 42.116180>,  <34.940372, 38.616707, 41.869408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661228, 37.957706, 42.116180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.000347, 38.031330, 42.315121>,  <35.203819, 38.075504, 42.434483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.000347, 38.031330, 42.315121>,  <34.661228, 37.957706, 42.116180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000347, 38.031330, 42.315121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438825, -0.283095, 0.852813,
		0.297769, -0.941264, -0.159237,
		0.847801, 0.184064, 0.497347,
		35.254688, 38.086548, 42.464325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859413, 37.401211, 42.519627>,  <34.661228, 37.957706, 42.116180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859413, 37.401211, 42.519627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.050621, 37.703930, 42.697956>,  <35.165344, 37.885559, 42.804955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.050621, 37.703930, 42.697956>,  <34.859413, 37.401211, 42.519627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050621, 37.703930, 42.697956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399908, -0.264394, 0.877593,
		0.782033, -0.597792, 0.176264,
		0.478015, 0.756796, 0.445826,
		35.194027, 37.930969, 42.831703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215660, 37.136276, 43.065338>,  <34.859413, 37.401211, 42.519627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215660, 37.136276, 43.065338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.165714, 37.524448, 43.147968>,  <35.135746, 37.757351, 43.197544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.165714, 37.524448, 43.147968>,  <35.215660, 37.136276, 43.065338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165714, 37.524448, 43.147968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170125, -0.226058, 0.959143,
		0.977479, 0.084622, 0.193321,
		-0.124867, 0.970431, 0.206571,
		35.128254, 37.815578, 43.209938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394539, 37.274837, 43.756844>,  <35.215660, 37.136276, 43.065338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394539, 37.274837, 43.756844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.189541, 37.615562, 43.713455>,  <35.066544, 37.819996, 43.687424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.189541, 37.615562, 43.713455>,  <35.394539, 37.274837, 43.756844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189541, 37.615562, 43.713455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303811, -0.061724, 0.950731,
		0.803151, 0.520195, 0.290423,
		-0.512492, 0.851814, -0.108467,
		35.035793, 37.871105, 43.680916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592621, 37.702759, 44.303322>,  <35.394539, 37.274837, 43.756844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592621, 37.702759, 44.303322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.227467, 37.807362, 44.177937>,  <35.008373, 37.870125, 44.102707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.227467, 37.807362, 44.177937>,  <35.592621, 37.702759, 44.303322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227467, 37.807362, 44.177937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370043, -0.205867, 0.905918,
		0.172374, 0.942991, 0.284702,
		-0.912883, 0.261508, -0.313462,
		34.953602, 37.885815, 44.083897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357738, 38.144493, 44.831432>,  <35.592621, 37.702759, 44.303322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357738, 38.144493, 44.831432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.022213, 38.039097, 44.640873>,  <34.820896, 37.975861, 44.526535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.022213, 38.039097, 44.640873>,  <35.357738, 38.144493, 44.831432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022213, 38.039097, 44.640873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461822, -0.118990, 0.878955,
		-0.288281, 0.957296, -0.021874,
		-0.838818, -0.263488, -0.476403,
		34.770569, 37.960049, 44.497952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815926, 38.453598, 45.203274>,  <35.357738, 38.144493, 44.831432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815926, 38.453598, 45.203274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.620304, 38.165070, 45.007103>,  <34.502930, 37.991951, 44.889400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.620304, 38.165070, 45.007103>,  <34.815926, 38.453598, 45.203274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620304, 38.165070, 45.007103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484327, -0.243050, 0.840449,
		-0.725431, 0.648556, -0.230489,
		-0.489058, -0.721319, -0.490429,
		34.473587, 37.948673, 44.859974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031013, 38.458210, 45.507378>,  <34.815926, 38.453598, 45.203274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031013, 38.458210, 45.507378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.162949, 38.103481, 45.377918>,  <34.242107, 37.890644, 45.300243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.162949, 38.103481, 45.377918>,  <34.031013, 38.458210, 45.507378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162949, 38.103481, 45.377918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402320, -0.442192, 0.801627,
		-0.854018, -0.134193, -0.502638,
		0.329835, -0.886825, -0.323652,
		34.261898, 37.837433, 45.280823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<32.999332, 37.541950, 45.552261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.312923, 37.332264, 45.419254>,  <33.501080, 37.206451, 45.339451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.312923, 37.332264, 45.419254>,  <32.999332, 37.541950, 45.552261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312923, 37.332264, 45.419254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056552, -0.593728, 0.802677,
		-0.618208, -0.610476, -0.495115,
		0.783978, -0.524221, -0.332523,
		33.548119, 37.174999, 45.319500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970570, 36.871010, 45.549107>,  <32.999332, 37.541950, 45.552261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970570, 36.871010, 45.549107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.368019, 36.886852, 45.591343>,  <33.606487, 36.896358, 45.616684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.368019, 36.886852, 45.591343>,  <32.970570, 36.871010, 45.549107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368019, 36.886852, 45.591343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055812, -0.640910, 0.765584,
		0.097991, -0.766594, -0.634611,
		0.993621, 0.039602, 0.105588,
		33.666107, 36.898731, 45.623020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192581, 36.139076, 45.514133>,  <32.970570, 36.871010, 45.549107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192581, 36.139076, 45.514133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.481319, 36.338779, 45.705837>,  <33.654560, 36.458599, 45.820858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.481319, 36.338779, 45.705837>,  <33.192581, 36.139076, 45.514133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481319, 36.338779, 45.705837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005531, -0.688330, 0.725377,
		0.692035, -0.526258, -0.494104,
		0.721842, 0.499253, 0.479259,
		33.697872, 36.488556, 45.849613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585754, 35.605492, 45.915638>,  <33.192581, 36.139076, 45.514133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585754, 35.605492, 45.915638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.678631, 35.944038, 46.107368>,  <33.734356, 36.147167, 46.222404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.678631, 35.944038, 46.107368>,  <33.585754, 35.605492, 45.915638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678631, 35.944038, 46.107368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036438, -0.484875, 0.873824,
		0.971987, -0.220361, -0.081744,
		0.232192, 0.846367, 0.479322,
		33.748287, 36.197948, 46.251163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060413, 35.481689, 46.555115>,  <33.585754, 35.605492, 45.915638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060413, 35.481689, 46.555115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.889740, 35.835835, 46.628956>,  <33.787334, 36.048321, 46.673260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.889740, 35.835835, 46.628956>,  <34.060413, 35.481689, 46.555115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889740, 35.835835, 46.628956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053932, -0.228658, 0.972012,
		0.902791, 0.404788, 0.145314,
		-0.426686, 0.885360, 0.184600,
		33.761734, 36.101444, 46.684338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319386, 35.672985, 47.207287>,  <34.060413, 35.481689, 46.555115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319386, 35.672985, 47.207287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.000603, 35.912445, 47.175098>,  <33.809334, 36.056122, 47.155785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.000603, 35.912445, 47.175098>,  <34.319386, 35.672985, 47.207287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000603, 35.912445, 47.175098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210378, -0.150210, 0.966011,
		0.566215, 0.786800, 0.245654,
		-0.796957, 0.598651, -0.080474,
		33.761517, 36.092041, 47.150955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204666, 35.969757, 47.841576>,  <34.319386, 35.672985, 47.207287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204666, 35.969757, 47.841576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.849171, 36.066689, 47.685921>,  <33.635876, 36.124847, 47.592529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.849171, 36.066689, 47.685921>,  <34.204666, 35.969757, 47.841576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849171, 36.066689, 47.685921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379707, 0.086493, 0.921055,
		0.256853, 0.966332, 0.015144,
		-0.888735, 0.242326, -0.389139,
		33.582550, 36.139385, 47.569180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963120, 36.623981, 48.144257>,  <34.204666, 35.969757, 47.841576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963120, 36.623981, 48.144257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.643150, 36.414577, 48.026917>,  <33.451168, 36.288933, 47.956512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.643150, 36.414577, 48.026917>,  <33.963120, 36.623981, 48.144257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643150, 36.414577, 48.026917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432009, 0.163081, 0.887002,
		-0.416517, 0.836265, -0.356614,
		-0.799926, -0.523512, -0.293348,
		33.403172, 36.257523, 47.938911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429073, 37.032726, 48.380444>,  <33.963120, 36.623981, 48.144257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429073, 37.032726, 48.380444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.288189, 36.664604, 48.312351>,  <33.203659, 36.443729, 48.271496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.288189, 36.664604, 48.312351>,  <33.429073, 37.032726, 48.380444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288189, 36.664604, 48.312351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481883, 0.022393, 0.875950,
		-0.802333, 0.390550, -0.451368,
		-0.352209, -0.920309, -0.170232,
		33.182526, 36.388512, 48.261280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765644, 37.019222, 48.645058>,  <33.429073, 37.032726, 48.380444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765644, 37.019222, 48.645058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.842533, 36.628231, 48.610226>,  <32.888668, 36.393635, 48.589329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.842533, 36.628231, 48.610226>,  <32.765644, 37.019222, 48.645058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842533, 36.628231, 48.610226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352916, -0.151651, 0.923283,
		-0.915697, -0.146745, -0.374120,
		0.192223, -0.977480, -0.087078,
		32.900200, 36.334988, 48.584103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127491, 36.568569, 48.878658>,  <32.765644, 37.019222, 48.645058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127491, 36.568569, 48.878658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.420612, 36.298424, 48.911854>,  <32.596485, 36.136337, 48.931770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.420612, 36.298424, 48.911854>,  <32.127491, 36.568569, 48.878658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420612, 36.298424, 48.911854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354951, -0.275350, 0.893416,
		-0.580529, -0.684153, -0.441498,
		0.732800, -0.675364, 0.082992,
		32.640453, 36.095814, 48.936752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775463, 35.974991, 49.025566>,  <32.127491, 36.568569, 48.878658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775463, 35.974991, 49.025566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.151985, 35.932701, 49.153797>,  <32.377899, 35.907326, 49.230736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.151985, 35.932701, 49.153797>,  <31.775463, 35.974991, 49.025566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151985, 35.932701, 49.153797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337057, -0.346363, 0.875457,
		0.018477, -0.932124, -0.361669,
		0.941303, -0.105727, 0.320579,
		32.434376, 35.900982, 49.249969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806328, 35.272873, 49.440479>,  <31.775463, 35.974991, 49.025566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806328, 35.272873, 49.440479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.120308, 35.484108, 49.570080>,  <32.308697, 35.610847, 49.647839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.120308, 35.484108, 49.570080>,  <31.806328, 35.272873, 49.440479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120308, 35.484108, 49.570080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115418, -0.389162, 0.913910,
		0.608714, -0.754769, -0.244522,
		0.784949, 0.528088, 0.324003,
		32.355793, 35.642536, 49.667282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216919, 34.809940, 49.821743>,  <31.806328, 35.272873, 49.440479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216919, 34.809940, 49.821743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.368401, 35.159924, 49.942432>,  <32.459290, 35.369911, 50.014847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.368401, 35.159924, 49.942432>,  <32.216919, 34.809940, 49.821743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368401, 35.159924, 49.942432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048266, -0.344235, 0.937642,
		0.924260, -0.340522, -0.172592,
		0.378700, 0.874956, 0.301727,
		32.482010, 35.422409, 50.032951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738205, 34.662998, 50.287914>,  <32.216919, 34.809940, 49.821743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738205, 34.662998, 50.287914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.684376, 35.050373, 50.371845>,  <32.652077, 35.282799, 50.422203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.684376, 35.050373, 50.371845>,  <32.738205, 34.662998, 50.287914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684376, 35.050373, 50.371845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089640, -0.222784, 0.970738,
		0.986841, 0.111825, 0.116791,
		-0.134572, 0.968433, 0.209828,
		32.644005, 35.340904, 50.434795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023190, 34.784061, 50.942818>,  <32.738205, 34.662998, 50.287914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023190, 34.784061, 50.942818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.778172, 35.098316, 50.908016>,  <32.631161, 35.286869, 50.887135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.778172, 35.098316, 50.908016>,  <33.023190, 34.784061, 50.942818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778172, 35.098316, 50.908016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023313, 0.092067, 0.995480,
		0.790093, 0.611803, -0.038080,
		-0.612544, 0.785634, -0.087004,
		32.594410, 35.334007, 50.881916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284801, 35.476818, 51.269985>,  <33.023190, 34.784061, 50.942818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284801, 35.476818, 51.269985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.885681, 35.452171, 51.279732>,  <32.646210, 35.437382, 51.285580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.885681, 35.452171, 51.279732>,  <33.284801, 35.476818, 51.269985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885681, 35.452171, 51.279732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018766, 0.089934, 0.995771,
		-0.063548, 0.994040, -0.088580,
		-0.997802, -0.061617, 0.024369,
		32.586342, 35.433685, 51.287041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149349, 35.901272, 51.755863>,  <33.284801, 35.476818, 51.269985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149349, 35.901272, 51.755863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.824310, 35.672493, 51.711033>,  <32.629288, 35.535225, 51.684135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.824310, 35.672493, 51.711033>,  <33.149349, 35.901272, 51.755863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824310, 35.672493, 51.711033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120444, -0.023345, 0.992446,
		-0.570239, 0.819961, -0.049917,
		-0.812601, -0.571943, -0.112072,
		32.580528, 35.500912, 51.677410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817150, 36.050251, 52.332424>,  <33.149349, 35.901272, 51.755863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817150, 36.050251, 52.332424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.603989, 35.736191, 52.206219>,  <32.476093, 35.547752, 52.130497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.603989, 35.736191, 52.206219>,  <32.817150, 36.050251, 52.332424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603989, 35.736191, 52.206219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027010, -0.356895, 0.933754,
		-0.845744, 0.506124, 0.168984,
		-0.532905, -0.785153, -0.315512,
		32.444118, 35.500645, 52.111565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334755, 36.012348, 52.830475>,  <32.817150, 36.050251, 52.332424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334755, 36.012348, 52.830475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.325268, 35.642151, 52.679264>,  <32.319576, 35.420033, 52.588539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.325268, 35.642151, 52.679264>,  <32.334755, 36.012348, 52.830475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325268, 35.642151, 52.679264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082220, -0.375046, 0.923353,
		-0.996332, 0.052984, -0.067197,
		-0.023721, -0.925491, -0.378027,
		32.318153, 35.364502, 52.565857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885996, 35.649712, 53.261002>,  <32.334755, 36.012348, 52.830475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885996, 35.649712, 53.261002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.101280, 35.365204, 53.080147>,  <32.230450, 35.194500, 52.971634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.101280, 35.365204, 53.080147>,  <31.885996, 35.649712, 53.261002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101280, 35.365204, 53.080147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178609, -0.428028, 0.885941,
		-0.823669, -0.557578, -0.103329,
		0.538209, -0.711266, -0.452142,
		32.262741, 35.151825, 52.944504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651047, 34.925396, 53.454311>,  <31.885996, 35.649712, 53.261002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651047, 34.925396, 53.454311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.041969, 34.906242, 53.371773>,  <32.276524, 34.894749, 53.322250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.041969, 34.906242, 53.371773>,  <31.651047, 34.925396, 53.454311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041969, 34.906242, 53.371773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155420, -0.499806, 0.852079,
		-0.143940, -0.864813, -0.481020,
		0.977306, -0.047888, -0.206351,
		32.335159, 34.891876, 53.309868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754934, 34.180939, 53.505196>,  <31.651047, 34.925396, 53.454311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754934, 34.180939, 53.505196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.129234, 34.322006, 53.505470>,  <32.353813, 34.406647, 53.505634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.129234, 34.322006, 53.505470>,  <31.754934, 34.180939, 53.505196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129234, 34.322006, 53.505470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265937, -0.706903, 0.655412,
		0.231626, -0.613119, -0.755271,
		0.935749, 0.352665, 0.000686,
		32.409958, 34.427807, 53.505676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196505, 33.661442, 53.400864>,  <31.754934, 34.180939, 53.505196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196505, 33.661442, 53.400864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.013517, 33.305794, 53.395454>,  <30.903725, 33.092403, 53.392208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.013517, 33.305794, 53.395454>,  <31.196505, 33.661442, 53.400864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013517, 33.305794, 53.395454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008625, 0.019640, -0.999770,
		0.889184, -0.457247, -0.016653,
		-0.457469, -0.889123, -0.013520,
		30.876276, 33.039059, 53.391399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620705, 33.222729, 52.935009>,  <31.196505, 33.661442, 53.400864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620705, 33.222729, 52.935009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.239248, 33.108860, 52.974052>,  <31.010374, 33.040539, 52.997478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.239248, 33.108860, 52.974052>,  <31.620705, 33.222729, 52.935009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239248, 33.108860, 52.974052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073956, -0.092700, -0.992944,
		0.291713, -0.954132, 0.067349,
		-0.953643, -0.284674, 0.097606,
		30.953156, 33.023457, 53.003334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494045, 32.741554, 52.478088>,  <31.620705, 33.222729, 52.935009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494045, 32.741554, 52.478088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.140684, 32.917561, 52.542568>,  <30.928667, 33.023163, 52.581257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.140684, 32.917561, 52.542568>,  <31.494045, 32.741554, 52.478088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140684, 32.917561, 52.542568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168877, 0.021961, -0.985392,
		-0.437128, -0.897722, 0.054908,
		-0.883403, 0.440015, 0.161204,
		30.875664, 33.049564, 52.590931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012777, 32.430103, 52.092529>,  <31.494045, 32.741554, 52.478088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012777, 32.430103, 52.092529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.847963, 32.790756, 52.145111>,  <30.749075, 33.007149, 52.176659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.847963, 32.790756, 52.145111>,  <31.012777, 32.430103, 52.092529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847963, 32.790756, 52.145111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173638, 0.063923, -0.982733,
		-0.894471, -0.427744, 0.130220,
		-0.412034, 0.901637, 0.131450,
		30.724354, 33.061249, 52.184547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543831, 32.408371, 51.598656>,  <31.012777, 32.430103, 52.092529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543831, 32.408371, 51.598656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.547611, 32.794724, 51.702183>,  <30.549879, 33.026535, 51.764301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.547611, 32.794724, 51.702183>,  <30.543831, 32.408371, 51.598656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547611, 32.794724, 51.702183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170795, 0.256587, -0.951311,
		-0.985261, -0.035215, 0.167392,
		0.009450, 0.965879, 0.258820,
		30.550446, 33.084488, 51.779827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972256, 32.771023, 51.207401>,  <30.543831, 32.408371, 51.598656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972256, 32.771023, 51.207401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.218815, 33.071518, 51.301796>,  <30.366751, 33.251816, 51.358433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.218815, 33.071518, 51.301796>,  <29.972256, 32.771023, 51.207401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218815, 33.071518, 51.301796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063134, 0.345870, -0.936156,
		-0.784900, 0.562146, 0.260623,
		0.616398, 0.751243, 0.235983,
		30.403734, 33.296890, 51.372589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692616, 33.300404, 50.835125>,  <29.972256, 32.771023, 51.207401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.692616, 33.300404, 50.835125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.051622, 33.428257, 50.956650>,  <30.267027, 33.504967, 51.029564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.051622, 33.428257, 50.956650>,  <29.692616, 33.300404, 50.835125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051622, 33.428257, 50.956650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174759, 0.374733, -0.910514,
		-0.404876, 0.870294, 0.280471,
		0.897516, 0.319630, 0.303812,
		30.320877, 33.524147, 51.047794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.748817, 33.993423, 50.558537>,  <29.692616, 33.300404, 50.835125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.748817, 33.993423, 50.558537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.125942, 33.871628, 50.612789>,  <30.352217, 33.798550, 50.645340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.125942, 33.871628, 50.612789>,  <29.748817, 33.993423, 50.558537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125942, 33.871628, 50.612789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215830, 0.247574, -0.944524,
		0.254016, 0.919780, 0.299132,
		0.942811, -0.304486, 0.135628,
		30.408785, 33.780281, 50.653477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.107058, 34.434177, 50.324520>,  <29.748817, 33.993423, 50.558537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.107058, 34.434177, 50.324520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.371943, 34.134792, 50.310234>,  <30.530874, 33.955162, 50.301662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.371943, 34.134792, 50.310234>,  <30.107058, 34.434177, 50.324520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371943, 34.134792, 50.310234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316283, 0.322408, -0.892199,
		0.679294, 0.579528, 0.450229,
		0.662212, -0.748465, -0.035715,
		30.570606, 33.910252, 50.299519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641777, 34.697918, 50.043125>,  <30.107058, 34.434177, 50.324520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641777, 34.697918, 50.043125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.694635, 34.309536, 49.963341>,  <30.726351, 34.076508, 49.915470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.694635, 34.309536, 49.963341>,  <30.641777, 34.697918, 50.043125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694635, 34.309536, 49.963341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214331, 0.224452, -0.950623,
		0.967781, 0.082872, 0.237767,
		0.132148, -0.970955, -0.199459,
		30.734280, 34.018250, 49.903503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405052, 34.544804, 49.853203>,  <30.641777, 34.697918, 50.043125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405052, 34.544804, 49.853203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.152821, 34.265961, 49.716724>,  <31.001482, 34.098656, 49.634838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.152821, 34.265961, 49.716724>,  <31.405052, 34.544804, 49.853203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152821, 34.265961, 49.716724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306479, 0.180233, -0.934659,
		0.713050, -0.693945, 0.099997,
		-0.630579, -0.697105, -0.341195,
		30.963646, 34.056828, 49.614365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767366, 34.283535, 49.386200>,  <31.405052, 34.544804, 49.853203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767366, 34.283535, 49.386200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.394785, 34.162308, 49.305656>,  <31.171236, 34.089569, 49.257332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.394785, 34.162308, 49.305656>,  <31.767366, 34.283535, 49.386200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394785, 34.162308, 49.305656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181322, 0.093172, -0.979000,
		0.315469, -0.948402, -0.031832,
		-0.931451, -0.303072, -0.201359,
		31.115349, 34.071384, 49.245247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882551, 33.830360, 48.850845>,  <31.767366, 34.283535, 49.386200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882551, 33.830360, 48.850845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.495680, 33.930481, 48.833321>,  <31.263557, 33.990555, 48.822807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.495680, 33.930481, 48.833321>,  <31.882551, 33.830360, 48.850845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495680, 33.930481, 48.833321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122260, 0.307237, -0.943747,
		-0.222762, -0.918126, -0.327754,
		-0.967176, 0.250302, -0.043809,
		31.205526, 34.005573, 48.820179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666550, 33.607967, 48.159164>,  <31.882551, 33.830360, 48.850845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666550, 33.607967, 48.159164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.396437, 33.874958, 48.284683>,  <31.234369, 34.035152, 48.359993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.396437, 33.874958, 48.284683>,  <31.666550, 33.607967, 48.159164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396437, 33.874958, 48.284683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134063, 0.307282, -0.942128,
		-0.725273, -0.678271, -0.118019,
		-0.675283, 0.667478, 0.313794,
		31.193851, 34.075203, 48.378822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238695, 33.684086, 47.614639>,  <31.666550, 33.607967, 48.159164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238695, 33.684086, 47.614639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.165476, 34.012173, 47.831429>,  <31.121544, 34.209026, 47.961502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.165476, 34.012173, 47.831429>,  <31.238695, 33.684086, 47.614639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165476, 34.012173, 47.831429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004512, 0.550579, -0.834771,
		-0.983093, -0.155250, -0.097082,
		-0.183050, 0.820219, 0.541971,
		31.110561, 34.258240, 47.994019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698357, 34.015671, 47.199516>,  <31.238695, 33.684086, 47.614639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698357, 34.015671, 47.199516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.859251, 34.283218, 47.449577>,  <30.955788, 34.443748, 47.599613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.859251, 34.283218, 47.449577>,  <30.698357, 34.015671, 47.199516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859251, 34.283218, 47.449577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050045, 0.665745, -0.744499,
		-0.914166, 0.330752, 0.234314,
		0.402238, 0.668870, 0.625154,
		30.979923, 34.483879, 47.637123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278681, 34.612862, 47.127007>,  <30.698357, 34.015671, 47.199516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278681, 34.612862, 47.127007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.610222, 34.753166, 47.301350>,  <30.809147, 34.837349, 47.405956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.610222, 34.753166, 47.301350>,  <30.278681, 34.612862, 47.127007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610222, 34.753166, 47.301350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079181, 0.697665, -0.712035,
		-0.553833, 0.624685, 0.550488,
		0.828854, 0.350761, 0.435853,
		30.858877, 34.858395, 47.432106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212950, 35.262615, 47.038445>,  <30.278681, 34.612862, 47.127007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212950, 35.262615, 47.038445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.602806, 35.244316, 47.126068>,  <30.836720, 35.233337, 47.178642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.602806, 35.244316, 47.126068>,  <30.212950, 35.262615, 47.038445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602806, 35.244316, 47.126068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188625, 0.694673, -0.694154,
		-0.120416, 0.717869, 0.685685,
		0.974639, -0.045750, 0.219058,
		30.895197, 35.230591, 47.191784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442926, 35.962440, 47.180435>,  <30.212950, 35.262615, 47.038445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442926, 35.962440, 47.180435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.739727, 35.731083, 47.044849>,  <30.917807, 35.592270, 46.963497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.739727, 35.731083, 47.044849>,  <30.442926, 35.962440, 47.180435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.739727, 35.731083, 47.044849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142313, 0.629986, -0.763455,
		0.655119, 0.518246, 0.549764,
		0.742002, -0.578393, -0.338962,
		30.962328, 35.557564, 46.943161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904966, 36.500927, 46.880154>,  <30.442926, 35.962440, 47.180435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904966, 36.500927, 46.880154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.013195, 36.143238, 46.737514>,  <31.078133, 35.928623, 46.651932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.013195, 36.143238, 46.737514>,  <30.904966, 36.500927, 46.880154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013195, 36.143238, 46.737514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144491, 0.403935, -0.903304,
		0.951794, 0.192885, 0.238501,
		0.270573, -0.894221, -0.356593,
		31.094366, 35.874973, 46.630535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375134, 36.779766, 46.460365>,  <30.904966, 36.500927, 46.880154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375134, 36.779766, 46.460365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.278652, 36.407295, 46.351025>,  <31.220764, 36.183811, 46.285419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.278652, 36.407295, 46.351025>,  <31.375134, 36.779766, 46.460365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278652, 36.407295, 46.351025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199443, 0.228095, -0.952993,
		0.949760, -0.284383, 0.130701,
		-0.241203, -0.931181, -0.273354,
		31.206291, 36.127941, 46.269020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.984245, 28.219397, 32.258663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.649864, 28.240784, 32.477139>,  <41.449234, 28.253616, 32.608223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.649864, 28.240784, 32.477139>,  <41.984245, 28.219397, 32.258663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.649864, 28.240784, 32.477139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110379, 0.991285, 0.071901,
		-0.537584, 0.120394, -0.834571,
		-0.835955, 0.053466, 0.546188,
		41.399078, 28.256823, 32.640995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.672356, 28.893309, 32.145691>,  <41.984245, 28.219397, 32.258663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.672356, 28.893309, 32.145691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.485466, 28.777662, 32.479904>,  <41.373333, 28.708275, 32.680431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.485466, 28.777662, 32.479904>,  <41.672356, 28.893309, 32.145691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485466, 28.777662, 32.479904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105350, 0.920084, 0.377288,
		-0.877839, 0.264302, -0.399429,
		-0.467226, -0.289118, 0.835530,
		41.345299, 28.690928, 32.730564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.251743, 29.495123, 32.351768>,  <41.672356, 28.893309, 32.145691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.251743, 29.495123, 32.351768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.257175, 29.255373, 32.671909>,  <41.260437, 29.111523, 32.863995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.257175, 29.255373, 32.671909>,  <41.251743, 29.495123, 32.351768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.257175, 29.255373, 32.671909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077959, 0.797357, 0.598451,
		-0.996864, -0.070525, -0.035895,
		0.013585, -0.599373, 0.800355,
		41.261250, 29.075562, 32.912014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723061, 29.755575, 32.799137>,  <41.251743, 29.495123, 32.351768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723061, 29.755575, 32.799137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.962677, 29.532213, 33.028687>,  <41.106449, 29.398195, 33.166416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.962677, 29.532213, 33.028687>,  <40.723061, 29.755575, 32.799137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962677, 29.532213, 33.028687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032302, 0.699264, 0.714134,
		-0.800065, -0.446334, 0.400852,
		0.599043, -0.558405, 0.573874,
		41.142391, 29.364693, 33.200848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532654, 29.965076, 33.525585>,  <40.723061, 29.755575, 32.799137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532654, 29.965076, 33.525585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.869049, 29.762978, 33.603012>,  <41.070885, 29.641718, 33.649467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.869049, 29.762978, 33.603012>,  <40.532654, 29.965076, 33.525585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869049, 29.762978, 33.603012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126186, 0.531045, 0.837895,
		-0.526136, -0.680233, 0.510356,
		0.840986, -0.505246, 0.193566,
		41.121346, 29.611404, 33.661083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497581, 29.750608, 34.237743>,  <40.532654, 29.965076, 33.525585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497581, 29.750608, 34.237743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.876701, 29.775406, 34.112625>,  <41.104172, 29.790285, 34.037556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.876701, 29.775406, 34.112625>,  <40.497581, 29.750608, 34.237743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876701, 29.775406, 34.112625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194603, 0.664621, 0.721394,
		0.252611, -0.744605, 0.617861,
		0.947796, 0.061994, -0.312793,
		41.161041, 29.794004, 34.018787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846317, 29.683119, 34.826546>,  <40.497581, 29.750608, 34.237743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.846317, 29.683119, 34.826546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.095154, 29.845798, 34.558933>,  <41.244453, 29.943405, 34.398365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.095154, 29.845798, 34.558933>,  <40.846317, 29.683119, 34.826546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095154, 29.845798, 34.558933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279878, 0.682531, 0.675144,
		0.731217, -0.607245, 0.310767,
		0.622086, 0.406700, -0.669033,
		41.281780, 29.967808, 34.358223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.590984, 29.743156, 35.103630>,  <40.846317, 29.683119, 34.826546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.590984, 29.743156, 35.103630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.574955, 30.020031, 34.815388>,  <41.565338, 30.186155, 34.642441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.574955, 30.020031, 34.815388>,  <41.590984, 29.743156, 35.103630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574955, 30.020031, 34.815388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376940, 0.678373, 0.630655,
		0.925370, -0.246352, -0.288098,
		-0.040075, 0.692185, -0.720607,
		41.562931, 30.227686, 34.599205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209282, 30.078337, 35.129642>,  <41.590984, 29.743156, 35.103630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209282, 30.078337, 35.129642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.967457, 30.331663, 34.936390>,  <41.822361, 30.483660, 34.820438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.967457, 30.331663, 34.936390>,  <42.209282, 30.078337, 35.129642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.967457, 30.331663, 34.936390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346128, 0.755132, 0.556751,
		0.717428, 0.169365, -0.675732,
		-0.604560, 0.633318, -0.483131,
		41.786087, 30.521658, 34.791451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.594154, 30.610899, 34.636887>,  <42.209282, 30.078337, 35.129642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.594154, 30.610899, 34.636887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.236382, 30.763952, 34.729481>,  <42.021717, 30.855783, 34.785038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.236382, 30.763952, 34.729481>,  <42.594154, 30.610899, 34.636887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.236382, 30.763952, 34.729481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431541, 0.874272, 0.222307,
		-0.117316, 0.298733, -0.947099,
		-0.894433, 0.382631, 0.231481,
		41.968052, 30.878742, 34.798923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.728012, 31.279005, 34.530636>,  <42.594154, 30.610899, 34.636887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.728012, 31.279005, 34.530636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.381969, 31.291349, 34.730892>,  <42.174343, 31.298756, 34.851048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.381969, 31.291349, 34.730892>,  <42.728012, 31.279005, 34.530636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.381969, 31.291349, 34.730892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181619, 0.949652, 0.255294,
		-0.467556, 0.311782, -0.827154,
		-0.865104, 0.030863, 0.500641,
		42.122437, 31.300608, 34.881084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.643166, 31.953117, 34.477936>,  <42.728012, 31.279005, 34.530636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.643166, 31.953117, 34.477936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.408802, 31.815989, 34.771652>,  <42.268185, 31.733711, 34.947884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.408802, 31.815989, 34.771652>,  <42.643166, 31.953117, 34.477936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408802, 31.815989, 34.771652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074422, 0.879520, 0.470006,
		-0.806953, 0.330028, -0.489804,
		-0.585907, -0.342820, 0.734293,
		42.233028, 31.713142, 34.991940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997959, 32.310188, 34.509014>,  <42.643166, 31.953117, 34.477936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997959, 32.310188, 34.509014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.062840, 32.172558, 34.878944>,  <42.101768, 32.089981, 35.100903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.062840, 32.172558, 34.878944>,  <41.997959, 32.310188, 34.509014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.062840, 32.172558, 34.878944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155025, 0.934483, 0.320481,
		-0.974504, 0.091388, 0.204916,
		0.162202, -0.344077, 0.924825,
		42.111500, 32.069336, 35.156391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889294, 32.875992, 34.861858>,  <41.997959, 32.310188, 34.509014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889294, 32.875992, 34.861858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.054432, 32.627857, 35.128616>,  <42.153515, 32.478977, 35.288670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.054432, 32.627857, 35.128616>,  <41.889294, 32.875992, 34.861858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.054432, 32.627857, 35.128616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269783, 0.782633, 0.560984,
		-0.869928, -0.051684, 0.490462,
		0.412845, -0.620334, 0.666891,
		42.178284, 32.441757, 35.328682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838890, 33.205647, 35.469467>,  <41.889294, 32.875992, 34.861858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.838890, 33.205647, 35.469467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.101192, 32.928345, 35.589050>,  <42.258575, 32.761963, 35.660801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.101192, 32.928345, 35.589050>,  <41.838890, 33.205647, 35.469467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101192, 32.928345, 35.589050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439873, 0.672672, 0.595000,
		-0.613590, -0.258670, 0.746054,
		0.655758, -0.693255, 0.298962,
		42.297920, 32.720367, 35.678738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877335, 33.219807, 36.198151>,  <41.838890, 33.205647, 35.469467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877335, 33.219807, 36.198151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.231247, 33.064346, 36.095303>,  <42.443596, 32.971069, 36.033596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.231247, 33.064346, 36.095303>,  <41.877335, 33.219807, 36.198151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.231247, 33.064346, 36.095303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459291, 0.633962, 0.622209,
		-0.078822, -0.668611, 0.739423,
		0.884782, -0.388654, -0.257117,
		42.496681, 32.947750, 36.018169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.166668, 33.177406, 36.787815>,  <41.877335, 33.219807, 36.198151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.166668, 33.177406, 36.787815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.471371, 33.163975, 36.529018>,  <42.654190, 33.155914, 36.373741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.471371, 33.163975, 36.529018>,  <42.166668, 33.177406, 36.787815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.471371, 33.163975, 36.529018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534792, 0.596280, 0.598705,
		0.365685, -0.802074, 0.472177,
		0.761755, -0.033579, -0.646994,
		42.699898, 33.153900, 36.334919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.788681, 33.157429, 37.161812>,  <42.166668, 33.177406, 36.787815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.788681, 33.157429, 37.161812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.939442, 33.274940, 36.810440>,  <43.029896, 33.345448, 36.599617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.939442, 33.274940, 36.810440>,  <42.788681, 33.157429, 37.161812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.939442, 33.274940, 36.810440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632019, 0.611728, 0.475753,
		0.677127, -0.734496, 0.044886,
		0.376897, 0.293776, -0.878433,
		43.052509, 33.363071, 36.546909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.507980, 33.067688, 37.182133>,  <42.788681, 33.157429, 37.161812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.507980, 33.067688, 37.182133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.464371, 33.331875, 36.884975>,  <43.438206, 33.490387, 36.706680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.464371, 33.331875, 36.884975>,  <43.507980, 33.067688, 37.182133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.464371, 33.331875, 36.884975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724455, 0.564526, 0.395568,
		0.680645, -0.495069, -0.540027,
		-0.109026, 0.660467, -0.742898,
		43.431664, 33.530014, 36.662106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.170540, 33.276096, 37.086063>,  <43.507980, 33.067688, 37.182133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.170540, 33.276096, 37.086063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.934361, 33.551346, 36.917370>,  <43.792652, 33.716496, 36.816154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.934361, 33.551346, 36.917370>,  <44.170540, 33.276096, 37.086063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.934361, 33.551346, 36.917370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660335, 0.712335, 0.237774,
		0.464035, -0.138095, -0.874986,
		-0.590448, 0.688120, -0.421737,
		43.757225, 33.757782, 36.790848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.563892, 33.713863, 36.620502>,  <44.170540, 33.276096, 37.086063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.563892, 33.713863, 36.620502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.247437, 33.938690, 36.716980>,  <44.057564, 34.073586, 36.774868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.247437, 33.938690, 36.716980>,  <44.563892, 33.713863, 36.620502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.247437, 33.938690, 36.716980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602893, 0.783070, 0.152715,
		-0.103038, 0.266235, -0.958385,
		-0.791140, 0.562068, 0.241197,
		44.010094, 34.107311, 36.789341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.985943, 33.646915, 35.958965>,  <44.563892, 33.713863, 36.620502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.985943, 33.646915, 35.958965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.270615, 33.729691, 35.690434>,  <45.441418, 33.779358, 35.529312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.270615, 33.729691, 35.690434>,  <44.985943, 33.646915, 35.958965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.270615, 33.729691, 35.690434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379289, -0.691184, -0.615146,
		-0.591313, 0.692416, -0.413412,
		0.711680, 0.206941, -0.671332,
		45.484119, 33.791771, 35.489033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.560970, 33.766533, 35.309307>,  <44.985943, 33.646915, 35.958965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.560970, 33.766533, 35.309307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.930210, 33.735497, 35.158649>,  <45.151756, 33.716877, 35.068256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.930210, 33.735497, 35.158649>,  <44.560970, 33.766533, 35.309307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.930210, 33.735497, 35.158649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347320, -0.588644, -0.729977,
		-0.165073, 0.804660, -0.570327,
		0.923103, -0.077587, -0.376644,
		45.207142, 33.712219, 35.045658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.497894, 33.870888, 34.618324>,  <44.560970, 33.766533, 35.309307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.497894, 33.870888, 34.618324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.824715, 33.651871, 34.690571>,  <45.020809, 33.520462, 34.733921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.824715, 33.651871, 34.690571>,  <44.497894, 33.870888, 34.618324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.824715, 33.651871, 34.690571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266611, -0.636567, -0.723672,
		0.511215, 0.543125, -0.666089,
		0.817055, -0.547539, 0.180620,
		45.069832, 33.487610, 34.744759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.856754, 33.763874, 33.993629>,  <44.497894, 33.870888, 34.618324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.856754, 33.763874, 33.993629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.967892, 33.472095, 34.243656>,  <45.034573, 33.297028, 34.393673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.967892, 33.472095, 34.243656>,  <44.856754, 33.763874, 33.993629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.967892, 33.472095, 34.243656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175830, -0.678310, -0.713428,
		0.944399, 0.088312, -0.316720,
		0.277839, -0.729449, 0.625068,
		45.051243, 33.253262, 34.431175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.136185, 33.192261, 33.563419>,  <44.856754, 33.763874, 33.993629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.136185, 33.192261, 33.563419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.077236, 32.986435, 33.901295>,  <45.041866, 32.862942, 34.104019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.077236, 32.986435, 33.901295>,  <45.136185, 33.192261, 33.563419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.077236, 32.986435, 33.901295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242806, -0.809064, -0.535221,
		0.958815, -0.283975, -0.005702,
		-0.147375, -0.514562, 0.844693,
		45.033024, 32.832066, 34.154701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.505848, 32.461796, 33.471115>,  <45.136185, 33.192261, 33.563419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.505848, 32.461796, 33.471115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.211960, 32.443916, 33.741875>,  <45.035629, 32.433189, 33.904331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.211960, 32.443916, 33.741875>,  <45.505848, 32.461796, 33.471115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.211960, 32.443916, 33.741875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294518, -0.877863, -0.377644,
		0.611105, -0.476821, 0.631817,
		-0.734717, -0.044699, 0.676899,
		44.991543, 32.430508, 33.944946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.426968, 31.723003, 33.663139>,  <45.505848, 32.461796, 33.471115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.426968, 31.723003, 33.663139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.089718, 31.899017, 33.786762>,  <44.887367, 32.004627, 33.860935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.089718, 31.899017, 33.786762>,  <45.426968, 31.723003, 33.663139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.089718, 31.899017, 33.786762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536770, -0.654471, -0.532491,
		-0.032046, -0.614846, 0.787996,
		-0.843120, 0.440037, 0.309058,
		44.836781, 32.031029, 33.879478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.000645, 31.129997, 33.854401>,  <45.426968, 31.723003, 33.663139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.000645, 31.129997, 33.854401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.727612, 31.422104, 33.843105>,  <44.563793, 31.597368, 33.836327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.727612, 31.422104, 33.843105>,  <45.000645, 31.129997, 33.854401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.727612, 31.422104, 33.843105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673090, -0.643250, -0.364937,
		-0.284666, -0.230091, 0.930604,
		-0.682580, 0.730265, -0.028239,
		44.522839, 31.641184, 33.834633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.343384, 30.813671, 34.196003>,  <45.000645, 31.129997, 33.854401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.343384, 30.813671, 34.196003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.236416, 31.111000, 33.950741>,  <44.172234, 31.289398, 33.803585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.236416, 31.111000, 33.950741>,  <44.343384, 30.813671, 34.196003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.236416, 31.111000, 33.950741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589207, -0.629645, -0.506342,
		-0.762445, 0.225869, 0.606350,
		-0.267418, 0.743324, -0.613153,
		44.156189, 31.333998, 33.766796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.668842, 30.742458, 34.079945>,  <44.343384, 30.813671, 34.196003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.668842, 30.742458, 34.079945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.766891, 30.989378, 33.780918>,  <43.825722, 31.137529, 33.601501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.766891, 30.989378, 33.780918>,  <43.668842, 30.742458, 34.079945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.766891, 30.989378, 33.780918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647221, -0.469904, -0.600246,
		-0.721815, 0.630977, 0.284343,
		0.245127, 0.617299, -0.747566,
		43.840431, 31.174568, 33.556648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.089966, 30.876141, 33.689854>,  <43.668842, 30.742458, 34.079945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.089966, 30.876141, 33.689854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.396713, 30.940638, 33.441368>,  <43.580761, 30.979336, 33.292278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.396713, 30.940638, 33.441368>,  <43.089966, 30.876141, 33.689854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.396713, 30.940638, 33.441368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455394, -0.545339, -0.703720,
		-0.452242, 0.822561, -0.344776,
		0.766873, 0.161243, -0.621214,
		43.626774, 30.989010, 33.255005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725288, 30.844818, 33.094517>,  <43.089966, 30.876141, 33.689854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725288, 30.844818, 33.094517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.105305, 30.798040, 32.978756>,  <43.333313, 30.769974, 32.909298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.105305, 30.798040, 32.978756>,  <42.725288, 30.844818, 33.094517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.105305, 30.798040, 32.978756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300980, -0.588902, -0.750071,
		-0.082715, 0.799699, -0.594676,
		0.950037, -0.116943, -0.289404,
		43.390316, 30.762957, 32.891933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743729, 30.919029, 32.435276>,  <42.725288, 30.844818, 33.094517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743729, 30.919029, 32.435276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.083786, 30.710600, 32.465557>,  <43.287823, 30.585543, 32.483727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.083786, 30.710600, 32.465557>,  <42.743729, 30.919029, 32.435276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.083786, 30.710600, 32.465557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311158, -0.613155, -0.726100,
		0.424772, 0.593735, -0.683408,
		0.850146, -0.521075, 0.075706,
		43.338829, 30.554277, 32.488270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.845135, 30.755669, 31.864002>,  <42.743729, 30.919029, 32.435276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.845135, 30.755669, 31.864002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.113155, 30.515427, 32.038498>,  <43.273968, 30.371281, 32.143196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.113155, 30.515427, 32.038498>,  <42.845135, 30.755669, 31.864002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.113155, 30.515427, 32.038498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088936, -0.648396, -0.756091,
		0.736969, 0.467821, -0.487873,
		0.670050, -0.600605, 0.436241,
		43.314171, 30.335245, 32.169369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.414944, 30.581011, 31.302723>,  <42.845135, 30.755669, 31.864002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.414944, 30.581011, 31.302723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.362305, 30.291239, 31.573391>,  <43.330719, 30.117376, 31.735792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.362305, 30.291239, 31.573391>,  <43.414944, 30.581011, 31.302723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.362305, 30.291239, 31.573391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023310, -0.680159, -0.732694,
		0.991029, -0.112196, 0.072623,
		-0.131601, -0.724428, 0.676672,
		43.322823, 30.073910, 31.776392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.825275, 30.118563, 31.034798>,  <43.414944, 30.581011, 31.302723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.825275, 30.118563, 31.034798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.588223, 29.926708, 31.293634>,  <43.445992, 29.811596, 31.448936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.588223, 29.926708, 31.293634>,  <43.825275, 30.118563, 31.034798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.588223, 29.926708, 31.293634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097965, -0.754487, -0.648962,
		0.799490, -0.447991, 0.400149,
		-0.592637, -0.479638, 0.647093,
		43.410431, 29.782816, 31.487762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.939098, 29.387121, 30.875078>,  <43.825275, 30.118563, 31.034798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.939098, 29.387121, 30.875078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.612129, 29.368643, 31.104750>,  <43.415947, 29.357555, 31.242552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.612129, 29.368643, 31.104750>,  <43.939098, 29.387121, 30.875078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.612129, 29.368643, 31.104750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270596, -0.849156, -0.453554,
		0.508521, -0.526117, 0.681621,
		-0.817425, -0.046198, 0.574179,
		43.366901, 29.354784, 31.277004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.781410, 28.635637, 31.054499>,  <43.939098, 29.387121, 30.875078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.781410, 28.635637, 31.054499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.436253, 28.837223, 31.069683>,  <43.229160, 28.958176, 31.078793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.436253, 28.837223, 31.069683>,  <43.781410, 28.635637, 31.054499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.436253, 28.837223, 31.069683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428277, -0.689282, -0.584354,
		-0.268330, -0.520490, 0.810610,
		-0.862889, 0.503965, 0.037959,
		43.177387, 28.988413, 31.081070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.348743, 28.088470, 30.932547>,  <43.781410, 28.635637, 31.054499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.348743, 28.088470, 30.932547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.075520, 28.377502, 30.890015>,  <42.911587, 28.550922, 30.864496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.075520, 28.377502, 30.890015>,  <43.348743, 28.088470, 30.932547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.075520, 28.377502, 30.890015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536266, -0.595024, -0.598636,
		-0.495832, -0.351883, 0.793933,
		-0.683059, 0.722582, -0.106329,
		42.870602, 28.594276, 30.858116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.634865, 27.714998, 30.978178>,  <43.348743, 28.088470, 30.932547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.634865, 27.714998, 30.978178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.573971, 28.068947, 30.802074>,  <42.537434, 28.281317, 30.696413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.573971, 28.068947, 30.802074>,  <42.634865, 27.714998, 30.978178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573971, 28.068947, 30.802074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594955, -0.437748, -0.674096,
		-0.789210, 0.159310, 0.593100,
		-0.152238, 0.884871, -0.440257,
		42.528297, 28.334408, 30.669998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877312, 27.886448, 31.099049>,  <42.634865, 27.714998, 30.978178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877312, 27.886448, 31.099049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.025070, 28.092855, 30.789915>,  <42.113724, 28.216700, 30.604435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.025070, 28.092855, 30.789915>,  <41.877312, 27.886448, 31.099049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.025070, 28.092855, 30.789915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627124, -0.475293, -0.617100,
		-0.685758, 0.712616, 0.148037,
		0.369395, 0.516019, -0.772834,
		42.135887, 28.247662, 30.558065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.752262, 38.966782, 43.317516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589497, 38.634029, 43.166580>,  <35.491837, 38.434376, 43.076019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589497, 38.634029, 43.166580>,  <35.752262, 38.966782, 43.317516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589497, 38.634029, 43.166580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602483, 0.066085, -0.795391,
		0.686609, -0.551003, 0.474304,
		-0.406918, -0.831883, -0.377344,
		35.467422, 38.384464, 43.053375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336365, 38.511814, 43.114220>,  <35.752262, 38.966782, 43.317516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336365, 38.511814, 43.114220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007645, 38.385521, 42.924503>,  <35.810413, 38.309746, 42.810673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007645, 38.385521, 42.924503>,  <36.336365, 38.511814, 43.114220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007645, 38.385521, 42.924503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543217, -0.183020, -0.819402,
		0.171909, -0.931029, 0.321919,
		-0.821805, -0.315734, -0.474288,
		35.761105, 38.290802, 42.782215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607269, 37.997517, 42.680550>,  <36.336365, 38.511814, 43.114220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607269, 37.997517, 42.680550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248554, 38.051350, 42.511951>,  <36.033325, 38.083649, 42.410793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248554, 38.051350, 42.511951>,  <36.607269, 37.997517, 42.680550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248554, 38.051350, 42.511951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419202, -0.046352, -0.906709,
		-0.141563, -0.989818, -0.014849,
		-0.896788, 0.134581, -0.421495,
		35.979519, 38.091724, 42.385502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520744, 37.425865, 42.279366>,  <36.607269, 37.997517, 42.680550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520744, 37.425865, 42.279366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298351, 37.726902, 42.138237>,  <36.164917, 37.907524, 42.053558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298351, 37.726902, 42.138237>,  <36.520744, 37.425865, 42.279366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298351, 37.726902, 42.138237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397087, -0.132417, -0.908178,
		-0.730212, -0.645030, -0.225225,
		-0.555979, 0.752597, -0.352826,
		36.131557, 37.952682, 42.032391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221195, 37.161945, 41.688629>,  <36.520744, 37.425865, 42.279366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221195, 37.161945, 41.688629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214596, 37.556755, 41.624744>,  <36.210636, 37.793640, 41.586414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214596, 37.556755, 41.624744>,  <36.221195, 37.161945, 41.688629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214596, 37.556755, 41.624744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330838, -0.145348, -0.932427,
		-0.943543, -0.068226, -0.324147,
		-0.016502, 0.987025, -0.159714,
		36.209644, 37.852863, 41.576832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974770, 37.198624, 41.087070>,  <36.221195, 37.161945, 41.688629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974770, 37.198624, 41.087070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115913, 37.572277, 41.108521>,  <36.200600, 37.796471, 41.121391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115913, 37.572277, 41.108521>,  <35.974770, 37.198624, 41.087070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115913, 37.572277, 41.108521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290206, -0.054782, -0.955395,
		-0.889533, 0.352684, -0.290423,
		0.352862, 0.934138, 0.053621,
		36.221771, 37.852520, 41.124607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717583, 37.489731, 40.518951>,  <35.974770, 37.198624, 41.087070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717583, 37.489731, 40.518951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040497, 37.700317, 40.625629>,  <36.234245, 37.826668, 40.689636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040497, 37.700317, 40.625629>,  <35.717583, 37.489731, 40.518951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040497, 37.700317, 40.625629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361375, -0.083700, -0.928656,
		-0.466585, 0.846066, -0.257822,
		0.807284, 0.526467, 0.266694,
		36.282681, 37.858257, 40.705639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732964, 37.973640, 40.014915>,  <35.717583, 37.489731, 40.518951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732964, 37.973640, 40.014915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100155, 37.969997, 40.173531>,  <36.320469, 37.967812, 40.268700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100155, 37.969997, 40.173531>,  <35.732964, 37.973640, 40.014915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100155, 37.969997, 40.173531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396406, -0.013207, -0.917980,
		0.013595, 0.999871, -0.008515,
		0.917975, -0.009104, 0.396534,
		36.375546, 37.967266, 40.292492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042282, 38.465012, 39.647484>,  <35.732964, 37.973640, 40.014915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042282, 38.465012, 39.647484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323944, 38.235855, 39.815273>,  <36.492943, 38.098362, 39.915947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323944, 38.235855, 39.815273>,  <36.042282, 38.465012, 39.647484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323944, 38.235855, 39.815273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337244, -0.250042, -0.907604,
		0.624847, 0.780559, 0.017136,
		0.704154, -0.572892, 0.419477,
		36.535191, 38.063988, 39.941116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654400, 38.658588, 39.285488>,  <36.042282, 38.465012, 39.647484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654400, 38.658588, 39.285488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672298, 38.289524, 39.438694>,  <36.683037, 38.068085, 39.530617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672298, 38.289524, 39.438694>,  <36.654400, 38.658588, 39.285488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672298, 38.289524, 39.438694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183786, -0.369251, -0.910975,
		0.981948, 0.111152, 0.153050,
		0.044742, -0.922658, 0.383014,
		36.685722, 38.012726, 39.553596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277538, 38.411110, 38.924934>,  <36.654400, 38.658588, 39.285488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277538, 38.411110, 38.924934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099583, 38.086456, 39.076363>,  <36.992809, 37.891663, 39.167217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099583, 38.086456, 39.076363>,  <37.277538, 38.411110, 38.924934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099583, 38.086456, 39.076363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146063, -0.482803, -0.863462,
		0.883593, -0.328853, 0.333346,
		-0.444893, -0.811638, 0.378568,
		36.966114, 37.842964, 39.189934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735832, 37.802479, 38.762428>,  <37.277538, 38.411110, 38.924934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735832, 37.802479, 38.762428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364334, 37.670635, 38.830292>,  <37.141434, 37.591530, 38.871010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364334, 37.670635, 38.830292>,  <37.735832, 37.802479, 38.762428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364334, 37.670635, 38.830292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016821, -0.494660, -0.868924,
		0.370326, -0.804159, 0.464960,
		-0.928750, -0.329606, 0.169659,
		37.085709, 37.571754, 38.881187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765625, 37.090725, 38.568726>,  <37.735832, 37.802479, 38.762428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765625, 37.090725, 38.568726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400024, 37.250381, 38.539631>,  <37.180664, 37.346176, 38.522175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400024, 37.250381, 38.539631>,  <37.765625, 37.090725, 38.568726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400024, 37.250381, 38.539631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078635, -0.350150, -0.933387,
		-0.398029, -0.847393, 0.351423,
		-0.913997, 0.399149, -0.072735,
		37.125824, 37.370125, 38.517811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545776, 36.783237, 38.573387>,  <37.765625, 37.090725, 38.568726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545776, 36.783237, 38.573387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774200, 36.648773, 38.273819>,  <38.911255, 36.568092, 38.094078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774200, 36.648773, 38.273819>,  <38.545776, 36.783237, 38.573387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774200, 36.648773, 38.273819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328046, 0.929749, -0.167191,
		0.752513, -0.150204, 0.641220,
		0.571061, -0.336163, -0.748922,
		38.945518, 36.547924, 38.049141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839985, 37.278721, 38.978745>,  <38.545776, 36.783237, 38.573387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839985, 37.278721, 38.978745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169628, 37.056332, 39.022087>,  <39.367413, 36.922897, 39.048092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169628, 37.056332, 39.022087>,  <38.839985, 37.278721, 38.978745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169628, 37.056332, 39.022087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354103, -0.356362, 0.864649,
		-0.442108, -0.750932, -0.490552,
		0.824106, -0.555974, 0.108357,
		39.416859, 36.889542, 39.054596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721165, 36.761314, 39.356236>,  <38.839985, 37.278721, 38.978745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721165, 36.761314, 39.356236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116028, 36.699558, 39.372623>,  <39.352947, 36.662506, 39.382454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116028, 36.699558, 39.372623>,  <38.721165, 36.761314, 39.356236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116028, 36.699558, 39.372623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124680, -0.584462, 0.801785,
		-0.099841, -0.796599, -0.596207,
		0.987161, -0.154387, 0.040967,
		39.412174, 36.653244, 39.384914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793316, 36.033295, 39.454021>,  <38.721165, 36.761314, 39.356236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793316, 36.033295, 39.454021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134224, 36.195866, 39.585747>,  <39.338768, 36.293407, 39.664783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134224, 36.195866, 39.585747>,  <38.793316, 36.033295, 39.454021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134224, 36.195866, 39.585747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124538, -0.453799, 0.882358,
		0.508057, -0.793023, -0.336145,
		0.852273, 0.406425, 0.329318,
		39.389904, 36.317795, 39.684544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199497, 35.478802, 39.688816>,  <38.793316, 36.033295, 39.454021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199497, 35.478802, 39.688816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308994, 35.820595, 39.865417>,  <39.374695, 36.025669, 39.971378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308994, 35.820595, 39.865417>,  <39.199497, 35.478802, 39.688816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308994, 35.820595, 39.865417> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075053, -0.438664, 0.895511,
		0.958869, -0.278279, -0.055952,
		0.273746, 0.854479, 0.441507,
		39.391117, 36.076939, 39.997871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469673, 35.289200, 40.275257>,  <39.199497, 35.478802, 39.688816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469673, 35.289200, 40.275257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438755, 35.674614, 40.377724>,  <39.420204, 35.905865, 40.439205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438755, 35.674614, 40.377724>,  <39.469673, 35.289200, 40.275257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438755, 35.674614, 40.377724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037784, -0.253918, 0.966488,
		0.996292, 0.084380, -0.016781,
		-0.077291, 0.963538, 0.256165,
		39.415569, 35.963676, 40.454575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968166, 35.444778, 40.770409>,  <39.469673, 35.289200, 40.275257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968166, 35.444778, 40.770409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685341, 35.724491, 40.812500>,  <39.515648, 35.892319, 40.837753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685341, 35.724491, 40.812500>,  <39.968166, 35.444778, 40.770409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685341, 35.724491, 40.812500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087988, -0.234647, 0.968091,
		0.701657, 0.675241, 0.227438,
		-0.707061, 0.699279, 0.105228,
		39.473221, 35.934277, 40.844067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095387, 35.734623, 41.476349>,  <39.968166, 35.444778, 40.770409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095387, 35.734623, 41.476349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730930, 35.883503, 41.405605>,  <39.512257, 35.972832, 41.363159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730930, 35.883503, 41.405605>,  <40.095387, 35.734623, 41.476349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730930, 35.883503, 41.405605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269017, -0.212128, 0.939485,
		0.312162, 0.903585, 0.293408,
		-0.911145, 0.372203, -0.176862,
		39.457588, 35.995163, 41.352547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940834, 36.204334, 42.049389>,  <40.095387, 35.734623, 41.476349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940834, 36.204334, 42.049389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591820, 36.089970, 41.890930>,  <39.382412, 36.021351, 41.795856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591820, 36.089970, 41.890930>,  <39.940834, 36.204334, 42.049389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591820, 36.089970, 41.890930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364806, -0.158034, 0.917574,
		-0.324948, 0.945135, 0.033589,
		-0.872539, -0.285911, -0.396144,
		39.330059, 36.004196, 41.772087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461891, 36.668419, 42.287846>,  <39.940834, 36.204334, 42.049389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461891, 36.668419, 42.287846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269535, 36.331440, 42.190666>,  <39.154121, 36.129253, 42.132359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269535, 36.331440, 42.190666>,  <39.461891, 36.668419, 42.287846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269535, 36.331440, 42.190666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370468, -0.055903, 0.927161,
		-0.794667, 0.535869, -0.285217,
		-0.480893, -0.842448, -0.242947,
		39.125267, 36.078705, 42.117783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864677, 36.783642, 42.683601>,  <39.461891, 36.668419, 42.287846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864677, 36.783642, 42.683601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838432, 36.404346, 42.559315>,  <38.822685, 36.176769, 42.484745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838432, 36.404346, 42.559315>,  <38.864677, 36.783642, 42.683601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838432, 36.404346, 42.559315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453619, -0.249004, 0.855702,
		-0.888777, 0.197093, -0.413800,
		-0.065615, -0.948236, -0.310714,
		38.818748, 36.119877, 42.466099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202244, 36.672272, 42.558998>,  <38.864677, 36.783642, 42.683601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202244, 36.672272, 42.558998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370659, 36.318409, 42.639103>,  <38.471710, 36.106091, 42.687164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370659, 36.318409, 42.639103>,  <38.202244, 36.672272, 42.558998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370659, 36.318409, 42.639103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667691, -0.152849, 0.728578,
		-0.613933, -0.440473, -0.655034,
		0.421041, -0.884658, 0.200261,
		38.496971, 36.053013, 42.699181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650925, 36.198780, 42.595505>,  <38.202244, 36.672272, 42.558998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650925, 36.198780, 42.595505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929821, 35.998291, 42.800495>,  <38.097157, 35.877998, 42.923489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929821, 35.998291, 42.800495>,  <37.650925, 36.198780, 42.595505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929821, 35.998291, 42.800495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635215, -0.100693, 0.765743,
		-0.332206, -0.859439, -0.388591,
		0.697239, -0.501223, 0.512478,
		38.138992, 35.847923, 42.954239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343639, 35.694508, 42.914902>,  <37.650925, 36.198780, 42.595505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343639, 35.694508, 42.914902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676868, 35.714699, 43.135242>,  <37.876808, 35.726814, 43.267448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676868, 35.714699, 43.135242>,  <37.343639, 35.694508, 42.914902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676868, 35.714699, 43.135242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544372, -0.101998, 0.832620,
		0.098213, -0.993503, -0.057494,
		0.833075, 0.050476, 0.550853,
		37.926792, 35.729843, 43.300499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255436, 35.197186, 43.285904>,  <37.343639, 35.694508, 42.914902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255436, 35.197186, 43.285904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532520, 35.405300, 43.485687>,  <37.698769, 35.530170, 43.605556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532520, 35.405300, 43.485687>,  <37.255436, 35.197186, 43.285904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532520, 35.405300, 43.485687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537666, -0.089029, 0.838445,
		0.480699, -0.849337, 0.218070,
		0.692708, 0.520288, 0.499456,
		37.740334, 35.561386, 43.635525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533123, 34.433987, 43.314529>,  <37.255436, 35.197186, 43.285904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533123, 34.433987, 43.314529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468842, 34.060902, 43.185398>,  <37.430271, 33.837051, 43.107918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468842, 34.060902, 43.185398>,  <37.533123, 34.433987, 43.314529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468842, 34.060902, 43.185398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160184, 0.298098, -0.940999,
		0.973917, -0.202934, 0.101501,
		-0.160703, -0.932714, -0.322829,
		37.420631, 33.781086, 43.088551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054974, 34.378349, 42.721100>,  <37.533123, 34.433987, 43.314529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054974, 34.378349, 42.721100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784615, 34.085629, 42.686192>,  <37.622398, 33.909996, 42.665249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784615, 34.085629, 42.686192>,  <38.054974, 34.378349, 42.721100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784615, 34.085629, 42.686192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069542, 0.181214, -0.980982,
		0.733704, -0.656978, -0.173374,
		-0.675902, -0.731807, -0.087269,
		37.581844, 33.866085, 42.660011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173523, 34.048428, 42.098267>,  <38.054974, 34.378349, 42.721100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173523, 34.048428, 42.098267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796886, 33.924736, 42.151608>,  <37.570904, 33.850521, 42.183613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796886, 33.924736, 42.151608>,  <38.173523, 34.048428, 42.098267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796886, 33.924736, 42.151608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148319, 0.025296, -0.988616,
		0.302334, -0.950652, -0.069683,
		-0.941592, -0.309228, 0.133352,
		37.514408, 33.831966, 42.191612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060551, 33.596588, 41.563702>,  <38.173523, 34.048428, 42.098267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060551, 33.596588, 41.563702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687267, 33.679695, 41.680977>,  <37.463299, 33.729557, 41.751343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687267, 33.679695, 41.680977>,  <38.060551, 33.596588, 41.563702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687267, 33.679695, 41.680977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306091, -0.032195, -0.951458,
		-0.188241, -0.977649, 0.093640,
		-0.933206, 0.207766, 0.293189,
		37.407307, 33.742023, 41.768932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623783, 33.174957, 41.127945>,  <38.060551, 33.596588, 41.563702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623783, 33.174957, 41.127945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405033, 33.475040, 41.276604>,  <37.273785, 33.655090, 41.365799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405033, 33.475040, 41.276604>,  <37.623783, 33.174957, 41.127945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405033, 33.475040, 41.276604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329985, 0.214822, -0.919218,
		-0.769442, -0.625331, 0.130077,
		-0.546872, 0.750209, 0.371643,
		37.240971, 33.700104, 41.388096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946949, 33.176575, 40.777431>,  <37.623783, 33.174957, 41.127945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946949, 33.176575, 40.777431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989429, 33.547047, 40.922157>,  <37.014919, 33.769329, 41.008995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989429, 33.547047, 40.922157>,  <36.946949, 33.176575, 40.777431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989429, 33.547047, 40.922157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320844, 0.376331, -0.869157,
		-0.941159, -0.023777, 0.337128,
		0.106205, 0.926180, 0.361816,
		37.021290, 33.824902, 41.030701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354210, 33.518394, 40.663406>,  <36.946949, 33.176575, 40.777431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354210, 33.518394, 40.663406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603287, 33.827572, 40.712101>,  <36.752731, 34.013077, 40.741318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603287, 33.827572, 40.712101>,  <36.354210, 33.518394, 40.663406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603287, 33.827572, 40.712101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346849, 0.412121, -0.842527,
		-0.701394, 0.482408, 0.524717,
		0.622689, 0.772941, 0.121737,
		36.790092, 34.059456, 40.748623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935722, 34.116798, 40.583969>,  <36.354210, 33.518394, 40.663406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935722, 34.116798, 40.583969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313766, 34.234478, 40.527103>,  <36.540592, 34.305084, 40.492985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313766, 34.234478, 40.527103>,  <35.935722, 34.116798, 40.583969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313766, 34.234478, 40.527103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276072, 0.486238, -0.829070,
		-0.174785, 0.822811, 0.540769,
		0.945111, 0.294200, -0.142168,
		36.597301, 34.322739, 40.484451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935642, 34.794174, 40.276466>,  <35.935722, 34.116798, 40.583969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935642, 34.794174, 40.276466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316288, 34.723034, 40.176231>,  <36.544678, 34.680351, 40.116089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316288, 34.723034, 40.176231>,  <35.935642, 34.794174, 40.276466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316288, 34.723034, 40.176231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197387, 0.271210, -0.942064,
		0.235506, 0.945947, 0.222983,
		0.951617, -0.177848, -0.250589,
		36.601772, 34.669678, 40.101055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263607, 35.451283, 39.917946>,  <35.935642, 34.794174, 40.276466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263607, 35.451283, 39.917946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487614, 35.141174, 39.801094>,  <36.622017, 34.955109, 39.730984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487614, 35.141174, 39.801094>,  <36.263607, 35.451283, 39.917946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487614, 35.141174, 39.801094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092933, 0.409167, -0.907715,
		0.823253, 0.481186, 0.301188,
		0.560016, -0.775269, -0.292130,
		36.655617, 34.908592, 39.713455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884495, 35.731987, 39.759617>,  <36.263607, 35.451283, 39.917946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884495, 35.731987, 39.759617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869099, 35.375008, 39.579811>,  <36.859859, 35.160820, 39.471928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869099, 35.375008, 39.579811>,  <36.884495, 35.731987, 39.759617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869099, 35.375008, 39.579811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187318, 0.435428, -0.880519,
		0.981545, -0.118092, 0.150411,
		-0.038489, -0.892444, -0.449513,
		36.857552, 35.107273, 39.444958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400024, 35.660892, 39.293453>,  <36.884495, 35.731987, 39.759617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400024, 35.660892, 39.293453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115250, 35.422302, 39.145206>,  <36.944386, 35.279148, 39.056259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115250, 35.422302, 39.145206>,  <37.400024, 35.660892, 39.293453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115250, 35.422302, 39.145206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053107, 0.480521, -0.875374,
		0.700234, -0.642892, -0.310423,
		-0.711936, -0.596481, -0.370619,
		36.901669, 35.243359, 39.034019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.707611, 32.590210, 46.580021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.402370, 32.379795, 46.429848>,  <37.219227, 32.253544, 46.339745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.402370, 32.379795, 46.429848>,  <37.707611, 32.590210, 46.580021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402370, 32.379795, 46.429848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261769, 0.279551, -0.923758,
		0.590886, -0.803202, -0.075626,
		-0.763106, -0.526039, -0.375437,
		37.173439, 32.221985, 46.317215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020565, 32.227539, 45.973679>,  <37.707611, 32.590210, 46.580021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020565, 32.227539, 45.973679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.625690, 32.198483, 45.916855>,  <37.388763, 32.181049, 45.882759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.625690, 32.198483, 45.916855>,  <38.020565, 32.227539, 45.973679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625690, 32.198483, 45.916855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128107, 0.169870, -0.977104,
		0.095111, -0.982786, -0.158387,
		-0.987189, -0.072643, -0.142058,
		37.329533, 32.176689, 45.874237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927670, 31.872040, 45.376297>,  <38.020565, 32.227539, 45.973679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927670, 31.872040, 45.376297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.582512, 32.073166, 45.396629>,  <37.375416, 32.193840, 45.408829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.582512, 32.073166, 45.396629>,  <37.927670, 31.872040, 45.376297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582512, 32.073166, 45.396629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105093, 0.276906, -0.955133,
		-0.494330, -0.818841, -0.291784,
		-0.862899, 0.502815, 0.050828,
		37.323643, 32.224010, 45.411877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516258, 31.671139, 44.812794>,  <37.927670, 31.872040, 45.376297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516258, 31.671139, 44.812794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.374306, 32.026493, 44.929298>,  <37.289135, 32.239704, 44.999199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.374306, 32.026493, 44.929298>,  <37.516258, 31.671139, 44.812794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374306, 32.026493, 44.929298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041876, 0.296118, -0.954233,
		-0.933972, -0.350839, -0.067885,
		-0.354884, 0.888384, 0.291258,
		37.267841, 32.293007, 45.016674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061878, 31.825748, 44.265476>,  <37.516258, 31.671139, 44.812794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061878, 31.825748, 44.265476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.096039, 32.175835, 44.455933>,  <37.116535, 32.385887, 44.570206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.096039, 32.175835, 44.455933>,  <37.061878, 31.825748, 44.265476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096039, 32.175835, 44.455933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076059, 0.482215, -0.872745,
		-0.993439, 0.038320, 0.107751,
		0.085403, 0.875214, 0.476137,
		37.121658, 32.438400, 44.598774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481354, 32.273346, 44.077812>,  <37.061878, 31.825748, 44.265476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481354, 32.273346, 44.077812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.775223, 32.506039, 44.217442>,  <36.951546, 32.645653, 44.301220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.775223, 32.506039, 44.217442>,  <36.481354, 32.273346, 44.077812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775223, 32.506039, 44.217442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005623, 0.509293, -0.860574,
		-0.678400, 0.634202, 0.370892,
		0.734671, 0.581729, 0.349071,
		36.995625, 32.680557, 44.322163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286163, 32.899292, 43.824085>,  <36.481354, 32.273346, 44.077812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286163, 32.899292, 43.824085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.655720, 32.970211, 43.959728>,  <36.877453, 33.012764, 44.041115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.655720, 32.970211, 43.959728>,  <36.286163, 32.899292, 43.824085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655720, 32.970211, 43.959728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161622, 0.622450, -0.765790,
		-0.346851, 0.762313, 0.546419,
		0.923890, 0.177301, 0.339104,
		36.932888, 33.023403, 44.061459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435600, 33.677418, 43.986603>,  <36.286163, 32.899292, 43.824085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435600, 33.677418, 43.986603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.766415, 33.486755, 43.867405>,  <36.964905, 33.372356, 43.795887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.766415, 33.486755, 43.867405>,  <36.435600, 33.677418, 43.986603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766415, 33.486755, 43.867405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151431, 0.699418, -0.698486,
		0.541365, 0.532549, 0.650627,
		0.827039, -0.476660, -0.297996,
		37.014526, 33.343758, 43.778008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004158, 34.180656, 43.863052>,  <36.435600, 33.677418, 43.986603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004158, 34.180656, 43.863052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.080624, 33.856171, 43.642002>,  <37.126503, 33.661480, 43.509373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.080624, 33.856171, 43.642002>,  <37.004158, 34.180656, 43.863052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080624, 33.856171, 43.642002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216032, 0.583974, -0.782499,
		0.957490, 0.030198, 0.286880,
		0.191160, -0.811211, -0.552626,
		37.137970, 33.612808, 43.476215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477119, 34.817703, 43.978706>,  <37.004158, 34.180656, 43.863052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477119, 34.817703, 43.978706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.543667, 35.204617, 44.055328>,  <37.583595, 35.436764, 44.101299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.543667, 35.204617, 44.055328>,  <37.477119, 34.817703, 43.978706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543667, 35.204617, 44.055328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373633, -0.117935, 0.920048,
		0.912535, -0.224634, 0.341788,
		0.166365, 0.967280, 0.191551,
		37.593575, 35.494801, 44.112793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834522, 34.827450, 44.641407>,  <37.477119, 34.817703, 43.978706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834522, 34.827450, 44.641407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.694958, 35.197300, 44.580322>,  <37.611217, 35.419212, 44.543671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.694958, 35.197300, 44.580322>,  <37.834522, 34.827450, 44.641407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694958, 35.197300, 44.580322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419953, -0.008588, 0.907505,
		0.837794, 0.380772, 0.391297,
		-0.348913, 0.924629, -0.152711,
		37.590282, 35.474689, 44.534508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959255, 35.246788, 45.276527>,  <37.834522, 34.827450, 44.641407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959255, 35.246788, 45.276527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.663040, 35.439186, 45.088806>,  <37.485310, 35.554623, 44.976173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.663040, 35.439186, 45.088806>,  <37.959255, 35.246788, 45.276527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663040, 35.439186, 45.088806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492749, 0.086213, 0.865890,
		0.456947, 0.872476, 0.173164,
		-0.740539, 0.480992, -0.469307,
		37.440880, 35.583485, 44.948013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012836, 35.828156, 45.727531>,  <37.959255, 35.246788, 45.276527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012836, 35.828156, 45.727531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.662476, 35.796780, 45.537102>,  <37.452259, 35.777954, 45.422844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.662476, 35.796780, 45.537102>,  <38.012836, 35.828156, 45.727531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662476, 35.796780, 45.537102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480368, 0.049307, 0.875680,
		-0.045211, 0.995699, -0.080866,
		-0.875901, -0.078436, -0.476072,
		37.399704, 35.773251, 45.394279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596954, 36.352867, 45.977062>,  <38.012836, 35.828156, 45.727531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596954, 36.352867, 45.977062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.361320, 36.060806, 45.838577>,  <37.219940, 35.885571, 45.755486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.361320, 36.060806, 45.838577>,  <37.596954, 36.352867, 45.977062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361320, 36.060806, 45.838577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550613, 0.049102, 0.833315,
		-0.591447, 0.681519, -0.430955,
		-0.589081, -0.730151, -0.346212,
		37.184597, 35.841763, 45.734715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973099, 36.521423, 46.216911>,  <37.596954, 36.352867, 45.977062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973099, 36.521423, 46.216911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.921181, 36.138420, 46.113888>,  <36.890030, 35.908619, 46.052074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.921181, 36.138420, 46.113888>,  <36.973099, 36.521423, 46.216911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921181, 36.138420, 46.113888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744756, -0.077342, 0.662840,
		-0.654593, 0.277852, -0.703069,
		-0.129795, -0.957505, -0.257560,
		36.882244, 35.851170, 46.036621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325542, 36.555328, 46.287003>,  <36.973099, 36.521423, 46.216911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325542, 36.555328, 46.287003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.452621, 36.176212, 46.298088>,  <36.528870, 35.948742, 46.304741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.452621, 36.176212, 46.298088>,  <36.325542, 36.555328, 46.287003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452621, 36.176212, 46.298088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606337, -0.180598, 0.774429,
		-0.728987, -0.262840, -0.632054,
		0.317699, -0.947786, 0.027716,
		36.547932, 35.891876, 46.306404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738281, 36.213295, 46.524654>,  <36.325542, 36.555328, 46.287003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738281, 36.213295, 46.524654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.034889, 35.950504, 46.579105>,  <36.212852, 35.792831, 46.611774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.034889, 35.950504, 46.579105>,  <35.738281, 36.213295, 46.524654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034889, 35.950504, 46.579105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416195, -0.291282, 0.861357,
		-0.526241, -0.695368, -0.489422,
		0.741520, -0.656977, 0.136124,
		36.257347, 35.753410, 46.619942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399384, 35.456486, 46.674099>,  <35.738281, 36.213295, 46.524654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399384, 35.456486, 46.674099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.769028, 35.464710, 46.826725>,  <35.990814, 35.469646, 46.918301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.769028, 35.464710, 46.826725>,  <35.399384, 35.456486, 46.674099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769028, 35.464710, 46.826725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354707, -0.325249, 0.876582,
		0.142133, -0.945405, -0.293271,
		0.924111, 0.020566, 0.381570,
		36.046261, 35.470879, 46.941196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528458, 34.806477, 46.907101>,  <35.399384, 35.456486, 46.674099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528458, 34.806477, 46.907101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.802116, 35.005924, 47.120010>,  <35.966312, 35.125595, 47.247757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.802116, 35.005924, 47.120010>,  <35.528458, 34.806477, 46.907101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802116, 35.005924, 47.120010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331945, -0.436961, 0.835989,
		0.649428, -0.748625, -0.133429,
		0.684146, 0.498624, 0.532277,
		36.007359, 35.155510, 47.279694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893715, 34.374756, 47.392952>,  <35.528458, 34.806477, 46.907101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893715, 34.374756, 47.392952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.991146, 34.722267, 47.565418>,  <36.049603, 34.930775, 47.668896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.991146, 34.722267, 47.565418>,  <35.893715, 34.374756, 47.392952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991146, 34.722267, 47.565418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233594, -0.378916, 0.895464,
		0.941331, -0.318831, 0.110646,
		0.243576, 0.868775, 0.431162,
		36.064220, 34.982899, 47.694767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254349, 34.173996, 47.930592>,  <35.893715, 34.374756, 47.392952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254349, 34.173996, 47.930592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.130302, 34.548813, 47.994827>,  <36.055874, 34.773701, 48.033371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.130302, 34.548813, 47.994827>,  <36.254349, 34.173996, 47.930592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130302, 34.548813, 47.994827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311776, -0.259815, 0.913943,
		0.898124, 0.233357, 0.372718,
		-0.310113, 0.937038, 0.160591,
		36.037270, 34.829926, 48.043003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621464, 34.258797, 48.528847>,  <36.254349, 34.173996, 47.930592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621464, 34.258797, 48.528847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.334274, 34.535946, 48.502193>,  <36.161961, 34.702236, 48.486202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.334274, 34.535946, 48.502193>,  <36.621464, 34.258797, 48.528847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334274, 34.535946, 48.502193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164922, -0.076333, 0.983348,
		0.676246, 0.717011, 0.169075,
		-0.717978, 0.692869, -0.066631,
		36.118881, 34.743805, 48.482204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729454, 34.685425, 49.160038>,  <36.621464, 34.258797, 48.528847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729454, 34.685425, 49.160038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.361374, 34.726261, 49.008881>,  <36.140526, 34.750763, 48.918186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.361374, 34.726261, 49.008881>,  <36.729454, 34.685425, 49.160038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361374, 34.726261, 49.008881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391431, -0.245321, 0.886904,
		-0.002163, 0.964052, 0.265706,
		-0.920205, 0.102087, -0.377890,
		36.085312, 34.756886, 48.895512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.052042, 31.870546, 45.758553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.449873, 31.902647, 45.785015>,  <30.688572, 31.921907, 45.800892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.449873, 31.902647, 45.785015>,  <30.052042, 31.870546, 45.758553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449873, 31.902647, 45.785015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024092, 0.441034, -0.897167,
		-0.101175, 0.893895, 0.436709,
		0.994577, 0.080250, 0.066158,
		30.748245, 31.926722, 45.804863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139561, 32.502316, 45.466221>,  <30.052042, 31.870546, 45.758553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139561, 32.502316, 45.466221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.508902, 32.351669, 45.496105>,  <30.730507, 32.261284, 45.514038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.508902, 32.351669, 45.496105>,  <30.139561, 32.502316, 45.466221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508902, 32.351669, 45.496105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235014, 0.400494, -0.885648,
		0.303624, 0.835325, 0.458306,
		0.923353, -0.376613, 0.074713,
		30.785908, 32.238686, 45.518520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618107, 33.030933, 45.364807>,  <30.139561, 32.502316, 45.466221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618107, 33.030933, 45.364807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.804050, 32.691471, 45.263859>,  <30.915617, 32.487793, 45.203289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.804050, 32.691471, 45.263859>,  <30.618107, 33.030933, 45.364807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804050, 32.691471, 45.263859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403524, 0.456787, -0.792789,
		0.788082, 0.266700, 0.554795,
		0.464860, -0.848656, -0.252366,
		30.943508, 32.436874, 45.188148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328924, 33.239330, 45.166065>,  <30.618107, 33.030933, 45.364807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328924, 33.239330, 45.166065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.273035, 32.869480, 45.024338>,  <31.239502, 32.647568, 44.939301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.273035, 32.869480, 45.024338>,  <31.328924, 33.239330, 45.166065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273035, 32.869480, 45.024338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533274, 0.231234, -0.813726,
		0.834324, -0.302644, 0.460771,
		-0.139723, -0.924628, -0.354316,
		31.231117, 32.592091, 44.918041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013962, 33.113964, 44.805550>,  <31.328924, 33.239330, 45.166065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013962, 33.113964, 44.805550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.720854, 32.873680, 44.677677>,  <31.544991, 32.729507, 44.600952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.720854, 32.873680, 44.677677>,  <32.013962, 33.113964, 44.805550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720854, 32.873680, 44.677677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251004, 0.198052, -0.947508,
		0.632496, -0.774543, 0.005656,
		-0.732766, -0.600715, -0.319681,
		31.501024, 32.693466, 44.581772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412010, 32.761173, 44.381592>,  <32.013962, 33.113964, 44.805550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412010, 32.761173, 44.381592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.025402, 32.718361, 44.288315>,  <31.793436, 32.692673, 44.232349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.025402, 32.718361, 44.288315>,  <32.412010, 32.761173, 44.381592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025402, 32.718361, 44.288315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187416, 0.326236, -0.926523,
		0.175238, -0.939210, -0.295256,
		-0.966523, -0.107026, -0.233192,
		31.735445, 32.686253, 44.218357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371677, 32.424557, 43.700260>,  <32.412010, 32.761173, 44.381592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371677, 32.424557, 43.700260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.000492, 32.568310, 43.739719>,  <31.777781, 32.654560, 43.763393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.000492, 32.568310, 43.739719>,  <32.371677, 32.424557, 43.700260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000492, 32.568310, 43.739719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034659, 0.346773, -0.937308,
		-0.371060, -0.866367, -0.334248,
		-0.927962, 0.359382, 0.098646,
		31.722103, 32.676125, 43.769314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962048, 32.132420, 43.109135>,  <32.371677, 32.424557, 43.700260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962048, 32.132420, 43.109135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.746992, 32.445347, 43.234943>,  <31.617960, 32.633102, 43.310429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.746992, 32.445347, 43.234943>,  <31.962048, 32.132420, 43.109135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746992, 32.445347, 43.234943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067781, 0.411909, -0.908700,
		-0.840448, -0.467232, -0.274484,
		-0.537637, 0.782320, 0.314519,
		31.585701, 32.680042, 43.329300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445984, 32.141575, 42.647820>,  <31.962048, 32.132420, 43.109135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445984, 32.141575, 42.647820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.463100, 32.509575, 42.803646>,  <31.473370, 32.730377, 42.897144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.463100, 32.509575, 42.803646>,  <31.445984, 32.141575, 42.647820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463100, 32.509575, 42.803646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058838, 0.386929, -0.920231,
		-0.997350, 0.062298, -0.037575,
		0.042790, 0.920003, 0.389569,
		31.475937, 32.785576, 42.920517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831347, 32.571533, 42.442608>,  <31.445984, 32.141575, 42.647820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831347, 32.571533, 42.442608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.146458, 32.807003, 42.515137>,  <31.335524, 32.948284, 42.558655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.146458, 32.807003, 42.515137>,  <30.831347, 32.571533, 42.442608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146458, 32.807003, 42.515137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207478, 0.530759, -0.821734,
		-0.579967, 0.609723, 0.540255,
		0.787776, 0.588670, 0.181319,
		31.382790, 32.983604, 42.569534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549667, 33.179596, 42.302818>,  <30.831347, 32.571533, 42.442608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549667, 33.179596, 42.302818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.933029, 33.289001, 42.335430>,  <31.163046, 33.354645, 42.355000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.933029, 33.289001, 42.335430>,  <30.549667, 33.179596, 42.302818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933029, 33.289001, 42.335430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126826, 0.664056, -0.736848,
		-0.255680, 0.695859, 0.671124,
		0.958406, 0.273513, 0.081533,
		31.220551, 33.371056, 42.359890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515333, 33.878033, 42.296200>,  <30.549667, 33.179596, 42.302818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515333, 33.878033, 42.296200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.890377, 33.802574, 42.179371>,  <31.115404, 33.757301, 42.109276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.890377, 33.802574, 42.179371>,  <30.515333, 33.878033, 42.296200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890377, 33.802574, 42.179371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131431, 0.585397, -0.800023,
		0.321893, 0.788495, 0.524080,
		0.937609, -0.188642, -0.292068,
		31.171659, 33.745983, 42.091751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737251, 34.472439, 42.035404>,  <30.515333, 33.878033, 42.296200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737251, 34.472439, 42.035404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.026293, 34.242847, 41.881321>,  <31.199718, 34.105091, 41.788872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.026293, 34.242847, 41.881321>,  <30.737251, 34.472439, 42.035404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026293, 34.242847, 41.881321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119928, 0.444712, -0.887609,
		0.680778, 0.687588, 0.252515,
		0.722606, -0.573981, -0.385211,
		31.243074, 34.070652, 41.765759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235561, 34.920998, 41.812195>,  <30.737251, 34.472439, 42.035404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235561, 34.920998, 41.812195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.245192, 34.569157, 41.622158>,  <31.250971, 34.358051, 41.508137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.245192, 34.569157, 41.622158>,  <31.235561, 34.920998, 41.812195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245192, 34.569157, 41.622158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038490, 0.475696, -0.878767,
		0.998969, 0.002873, 0.045309,
		0.024078, -0.879605, -0.475094,
		31.252415, 34.305275, 41.479630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723509, 35.302395, 42.051483>,  <31.235561, 34.920998, 41.812195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723509, 35.302395, 42.051483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.759352, 35.697201, 42.104809>,  <31.780857, 35.934086, 42.136803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.759352, 35.697201, 42.104809>,  <31.723509, 35.302395, 42.051483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759352, 35.697201, 42.104809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077872, -0.126498, 0.988906,
		0.992928, -0.098996, 0.065525,
		0.089609, 0.987015, 0.133312,
		31.786234, 35.993305, 42.144802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180935, 35.284252, 42.663620>,  <31.723509, 35.302395, 42.051483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180935, 35.284252, 42.663620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.999159, 35.639183, 42.632290>,  <31.890093, 35.852142, 42.613491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.999159, 35.639183, 42.632290>,  <32.180935, 35.284252, 42.663620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999159, 35.639183, 42.632290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260170, -0.048117, 0.964363,
		0.851936, 0.458626, 0.252722,
		-0.454442, 0.887326, -0.078328,
		31.862825, 35.905380, 42.608791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430511, 35.647877, 43.247807>,  <32.180935, 35.284252, 42.663620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430511, 35.647877, 43.247807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.111897, 35.863438, 43.138184>,  <31.920727, 35.992775, 43.072411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.111897, 35.863438, 43.138184>,  <32.430511, 35.647877, 43.247807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111897, 35.863438, 43.138184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288498, 0.059553, 0.955627,
		0.531314, 0.840258, 0.108037,
		-0.796539, 0.538906, -0.274054,
		31.872934, 36.025108, 43.055969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410461, 36.217026, 43.570522>,  <32.430511, 35.647877, 43.247807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410461, 36.217026, 43.570522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.022713, 36.163673, 43.488033>,  <31.790064, 36.131660, 43.438538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.022713, 36.163673, 43.488033>,  <32.410461, 36.217026, 43.570522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022713, 36.163673, 43.488033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212955, 0.038162, 0.976317,
		-0.122351, 0.990330, -0.065397,
		-0.969371, -0.133380, -0.206226,
		31.731901, 36.123661, 43.426167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142162, 36.757439, 43.944023>,  <32.410461, 36.217026, 43.570522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142162, 36.757439, 43.944023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.839130, 36.507042, 43.870045>,  <31.657310, 36.356804, 43.825657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.839130, 36.507042, 43.870045>,  <32.142162, 36.757439, 43.944023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839130, 36.507042, 43.870045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343939, 0.142016, 0.928190,
		-0.554775, 0.766789, -0.322892,
		-0.757582, -0.625992, -0.184942,
		31.611856, 36.319244, 43.814564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652609, 37.099628, 44.239548>,  <32.142162, 36.757439, 43.944023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652609, 37.099628, 44.239548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.492046, 36.734303, 44.212036>,  <31.395710, 36.515106, 44.195530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.492046, 36.734303, 44.212036>,  <31.652609, 37.099628, 44.239548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492046, 36.734303, 44.212036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280147, 0.050934, 0.958605,
		-0.872004, 0.404058, -0.276307,
		-0.401405, -0.913314, -0.068781,
		31.371624, 36.460308, 44.191402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950605, 37.166477, 44.503731>,  <31.652609, 37.099628, 44.239548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950605, 37.166477, 44.503731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.041897, 36.779449, 44.547035>,  <31.096672, 36.547234, 44.573017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.041897, 36.779449, 44.547035>,  <30.950605, 37.166477, 44.503731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041897, 36.779449, 44.547035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391940, 0.010478, 0.919931,
		-0.891232, -0.252387, -0.376838,
		0.228230, -0.967570, 0.108259,
		31.110367, 36.489178, 44.579514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476799, 36.841255, 44.983845>,  <30.950605, 37.166477, 44.503731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476799, 36.841255, 44.983845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.774252, 36.574581, 44.963673>,  <30.952724, 36.414577, 44.951569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.774252, 36.574581, 44.963673>,  <30.476799, 36.841255, 44.983845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774252, 36.574581, 44.963673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221862, -0.317220, 0.922035,
		-0.630705, -0.674466, -0.383807,
		0.743632, -0.666684, -0.050434,
		30.997341, 36.374577, 44.948544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.374811, 36.222977, 45.428200>,  <30.476799, 36.841255, 44.983845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.374811, 36.222977, 45.428200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.774309, 36.216248, 45.409321>,  <31.014008, 36.212212, 45.397995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.774309, 36.216248, 45.409321>,  <30.374811, 36.222977, 45.428200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774309, 36.216248, 45.409321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039195, -0.324412, 0.945103,
		-0.031209, -0.945766, -0.323346,
		0.998744, -0.016822, -0.047194,
		31.073933, 36.211201, 45.395161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519665, 35.479488, 45.491627>,  <30.374811, 36.222977, 45.428200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519665, 35.479488, 45.491627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.818171, 35.718121, 45.609730>,  <30.997274, 35.861301, 45.680592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.818171, 35.718121, 45.609730>,  <30.519665, 35.479488, 45.491627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818171, 35.718121, 45.609730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050673, -0.391365, 0.918839,
		0.663717, -0.700660, -0.261831,
		0.746266, 0.596581, 0.295260,
		31.042049, 35.897095, 45.698307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886934, 35.019314, 45.772247>,  <30.519665, 35.479488, 45.491627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886934, 35.019314, 45.772247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.037615, 35.350311, 45.938789>,  <31.128023, 35.548908, 46.038715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.037615, 35.350311, 45.938789>,  <30.886934, 35.019314, 45.772247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037615, 35.350311, 45.938789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089550, -0.479894, 0.872744,
		0.921996, -0.291480, -0.254879,
		0.376702, 0.827491, 0.416359,
		31.150625, 35.598560, 46.063698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460905, 34.819393, 46.036873>,  <30.886934, 35.019314, 45.772247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460905, 34.819393, 46.036873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.362190, 35.149574, 46.239941>,  <31.302961, 35.347683, 46.361782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.362190, 35.149574, 46.239941>,  <31.460905, 34.819393, 46.036873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362190, 35.149574, 46.239941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079843, -0.504769, 0.859554,
		0.965775, 0.252659, 0.058664,
		-0.246786, 0.825452, 0.507667,
		31.288155, 35.397209, 46.392242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951504, 34.871891, 46.615772>,  <31.460905, 34.819393, 46.036873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951504, 34.871891, 46.615772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.631552, 35.092609, 46.710182>,  <31.439581, 35.225040, 46.766830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.631552, 35.092609, 46.710182>,  <31.951504, 34.871891, 46.615772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631552, 35.092609, 46.710182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070996, -0.477510, 0.875753,
		0.595945, 0.683741, 0.421127,
		-0.799881, 0.551799, 0.236026,
		31.391588, 35.258148, 46.780991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138748, 35.094585, 47.316792>,  <31.951504, 34.871891, 46.615772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138748, 35.094585, 47.316792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.740538, 35.109730, 47.282146>,  <31.501612, 35.118816, 47.261360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.740538, 35.109730, 47.282146>,  <32.138748, 35.094585, 47.316792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740538, 35.109730, 47.282146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094210, -0.322415, 0.941899,
		0.007740, 0.945841, 0.324538,
		-0.995522, 0.037865, -0.086612,
		31.441881, 35.121090, 47.256165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330780, 35.801922, 47.332069>,  <32.138748, 35.094585, 47.316792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330780, 35.801922, 47.332069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.650978, 35.945576, 47.523998>,  <32.843098, 36.031769, 47.639156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.650978, 35.945576, 47.523998>,  <32.330780, 35.801922, 47.332069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650978, 35.945576, 47.523998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432131, 0.208886, -0.877285,
		-0.415290, 0.909609, 0.012020,
		0.800498, 0.359134, 0.479819,
		32.891129, 36.053314, 47.667946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422546, 36.321804, 46.941647>,  <32.330780, 35.801922, 47.332069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422546, 36.321804, 46.941647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.768955, 36.284729, 47.138184>,  <32.976799, 36.262482, 47.256104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.768955, 36.284729, 47.138184>,  <32.422546, 36.321804, 46.941647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768955, 36.284729, 47.138184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496535, 0.275025, -0.823295,
		-0.058820, 0.956959, 0.284201,
		0.866021, -0.092690, 0.491340,
		33.028763, 36.256924, 47.285587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759785, 36.921650, 46.857845>,  <32.422546, 36.321804, 46.941647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759785, 36.921650, 46.857845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.040863, 36.647373, 46.933796>,  <33.209511, 36.482807, 46.979366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.040863, 36.647373, 46.933796>,  <32.759785, 36.921650, 46.857845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040863, 36.647373, 46.933796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503691, 0.290933, -0.813421,
		0.502510, 0.667227, 0.549811,
		0.702694, -0.685687, 0.189880,
		33.251671, 36.441666, 46.990761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381969, 37.266365, 47.003002>,  <32.759785, 36.921650, 46.857845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381969, 37.266365, 47.003002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.505730, 36.902912, 46.890823>,  <33.579987, 36.684841, 46.823517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.505730, 36.902912, 46.890823>,  <33.381969, 37.266365, 47.003002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505730, 36.902912, 46.890823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608263, 0.415805, -0.676109,
		0.730948, 0.038603, 0.681340,
		0.309404, -0.908634, -0.280451,
		33.598553, 36.630322, 46.806686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018677, 37.321365, 46.841320>,  <33.381969, 37.266365, 47.003002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018677, 37.321365, 46.841320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.939232, 36.982292, 46.644550>,  <33.891563, 36.778851, 46.526489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.939232, 36.982292, 46.644550>,  <34.018677, 37.321365, 46.841320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939232, 36.982292, 46.644550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402025, 0.387288, -0.829689,
		0.893827, -0.362557, 0.263867,
		-0.198617, -0.847679, -0.491926,
		33.879646, 36.727989, 46.496971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629463, 37.213146, 46.442562>,  <34.018677, 37.321365, 46.841320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629463, 37.213146, 46.442562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.337471, 37.012390, 46.256992>,  <34.162273, 36.891937, 46.145649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.337471, 37.012390, 46.256992>,  <34.629463, 37.213146, 46.442562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337471, 37.012390, 46.256992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266066, 0.416561, -0.869302,
		0.629551, -0.758010, -0.170545,
		-0.729982, -0.501894, -0.463927,
		34.118477, 36.861824, 46.117813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931988, 36.950371, 45.907082>,  <34.629463, 37.213146, 46.442562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931988, 36.950371, 45.907082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.542198, 36.936169, 45.818409>,  <34.308327, 36.927647, 45.765205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.542198, 36.936169, 45.818409>,  <34.931988, 36.950371, 45.907082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542198, 36.936169, 45.818409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187404, 0.415101, -0.890264,
		0.123630, -0.909082, -0.397850,
		-0.974472, -0.035505, -0.221685,
		34.249855, 36.925518, 45.751904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816536, 36.642361, 45.365002>,  <34.931988, 36.950371, 45.907082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816536, 36.642361, 45.365002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.493801, 36.878544, 45.372791>,  <34.300159, 37.020252, 45.377464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.493801, 36.878544, 45.372791>,  <34.816536, 36.642361, 45.365002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493801, 36.878544, 45.372791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216433, 0.326098, -0.920226,
		-0.549702, -0.738257, -0.390902,
		-0.806836, 0.590455, 0.019473,
		34.251751, 37.055679, 45.378632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439873, 36.535229, 44.785824>,  <34.816536, 36.642361, 45.365002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439873, 36.535229, 44.785824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.391430, 36.910587, 44.915279>,  <34.362366, 37.135803, 44.992954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.391430, 36.910587, 44.915279>,  <34.439873, 36.535229, 44.785824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391430, 36.910587, 44.915279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012755, 0.327487, -0.944770,
		-0.992558, -0.110290, -0.051630,
		-0.121107, 0.938397, 0.323643,
		34.355099, 37.192108, 45.012371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985374, 36.995041, 44.230396>,  <34.439873, 36.535229, 44.785824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985374, 36.995041, 44.230396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.116955, 37.313156, 44.434082>,  <34.195904, 37.504025, 44.556293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.116955, 37.313156, 44.434082>,  <33.985374, 36.995041, 44.230396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116955, 37.313156, 44.434082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380005, 0.382166, -0.842345,
		-0.864515, 0.470598, -0.176499,
		0.328954, 0.795290, 0.509218,
		34.215641, 37.551743, 44.586845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584103, 37.655090, 43.947025>,  <33.985374, 36.995041, 44.230396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584103, 37.655090, 43.947025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.939564, 37.731251, 44.113903>,  <34.152840, 37.776947, 44.214027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.939564, 37.731251, 44.113903>,  <33.584103, 37.655090, 43.947025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939564, 37.731251, 44.113903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246161, 0.569514, -0.784257,
		-0.386917, 0.799627, 0.459231,
		0.888651, 0.190398, 0.417191,
		34.206158, 37.788368, 44.239059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781147, 38.297569, 43.658222>,  <33.584103, 37.655090, 43.947025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781147, 38.297569, 43.658222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.127403, 38.157280, 43.801136>,  <34.335159, 38.073105, 43.886883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.127403, 38.157280, 43.801136>,  <33.781147, 38.297569, 43.658222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127403, 38.157280, 43.801136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488065, 0.432099, -0.758342,
		0.111590, 0.830831, 0.545222,
		0.865645, -0.350727, 0.357282,
		34.387096, 38.052063, 43.908321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230728, 38.869022, 43.564026>,  <33.781147, 38.297569, 43.658222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230728, 38.869022, 43.564026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.482853, 38.559273, 43.586128>,  <34.634129, 38.373425, 43.599388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.482853, 38.559273, 43.586128>,  <34.230728, 38.869022, 43.564026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482853, 38.559273, 43.586128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516423, 0.365084, -0.774610,
		0.579664, 0.516782, 0.630021,
		0.630315, -0.774371, 0.055252,
		34.671947, 38.326962, 43.602703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898754, 39.051353, 43.402740>,  <34.230728, 38.869022, 43.564026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898754, 39.051353, 43.402740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.968086, 38.664932, 43.326107>,  <35.009686, 38.433079, 43.280125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.968086, 38.664932, 43.326107>,  <34.898754, 39.051353, 43.402740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968086, 38.664932, 43.326107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633987, 0.258312, -0.728928,
		0.753670, 0.004881, 0.657235,
		0.173330, -0.966049, -0.191588,
		35.020084, 38.375118, 43.268631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.259291, 40.025848, 29.694071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.994087, 40.154282, 29.423567>,  <30.834965, 40.231342, 29.261265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.994087, 40.154282, 29.423567>,  <31.259291, 40.025848, 29.694071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.994087, 40.154282, 29.423567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748612, -0.283095, 0.599531,
		0.001054, 0.903749, 0.428061,
		-0.663007, 0.321084, -0.676259,
		30.795185, 40.250607, 29.220690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822004, 40.448811, 30.090456>,  <31.259291, 40.025848, 29.694071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822004, 40.448811, 30.090456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.670986, 40.279633, 29.760954>,  <30.580376, 40.178127, 29.563251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.670986, 40.279633, 29.760954>,  <30.822004, 40.448811, 30.090456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670986, 40.279633, 29.760954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693141, -0.460799, 0.554274,
		-0.614014, 0.780244, -0.119187,
		-0.377548, -0.422946, -0.823756,
		30.557722, 40.152748, 29.513826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131418, 40.536743, 30.078569>,  <30.822004, 40.448811, 30.090456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131418, 40.536743, 30.078569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.185299, 40.209320, 29.855209>,  <30.217627, 40.012867, 29.721193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.185299, 40.209320, 29.855209>,  <30.131418, 40.536743, 30.078569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185299, 40.209320, 29.855209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660832, -0.494123, 0.564928,
		-0.738348, 0.292914, -0.607490,
		0.134700, -0.818562, -0.558401,
		30.225708, 39.963753, 29.687689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387732, 40.217617, 29.895842>,  <30.131418, 40.536743, 30.078569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387732, 40.217617, 29.895842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.646269, 39.924164, 29.811920>,  <29.801392, 39.748093, 29.761568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.646269, 39.924164, 29.811920>,  <29.387732, 40.217617, 29.895842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646269, 39.924164, 29.811920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615743, -0.663860, 0.424441,
		-0.450665, -0.145150, -0.880813,
		0.646345, -0.733636, -0.209804,
		29.840172, 39.704075, 29.748980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978804, 39.758171, 29.572458>,  <29.387732, 40.217617, 29.895842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978804, 39.758171, 29.572458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.301523, 39.586723, 29.735119>,  <29.495155, 39.483856, 29.832714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.301523, 39.586723, 29.735119>,  <28.978804, 39.758171, 29.572458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301523, 39.586723, 29.735119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590270, -0.614609, 0.523295,
		0.025639, -0.662227, -0.748865,
		0.806799, -0.428615, 0.406650,
		29.543562, 39.458138, 29.857115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.945339, 39.061024, 29.454563>,  <28.978804, 39.758171, 29.572458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.945339, 39.061024, 29.454563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.179554, 39.119972, 29.773418>,  <29.320084, 39.155342, 29.964731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.179554, 39.119972, 29.773418>,  <28.945339, 39.061024, 29.454563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.179554, 39.119972, 29.773418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586629, -0.601630, 0.542133,
		0.559474, -0.785063, -0.265827,
		0.585538, 0.147367, 0.797137,
		29.355215, 39.164181, 30.012560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099684, 38.284397, 29.778915>,  <28.945339, 39.061024, 29.454563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099684, 38.284397, 29.778915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.220867, 38.521236, 30.077616>,  <29.293577, 38.663342, 30.256836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.220867, 38.521236, 30.077616>,  <29.099684, 38.284397, 29.778915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220867, 38.521236, 30.077616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431701, -0.613303, 0.661433,
		0.849618, -0.522758, 0.069807,
		0.302956, 0.592101, 0.746749,
		29.311754, 38.698868, 30.301640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375734, 37.786888, 30.223118>,  <29.099684, 38.284397, 29.778915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.375734, 37.786888, 30.223118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.305605, 38.113083, 30.443750>,  <29.263527, 38.308800, 30.576130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.305605, 38.113083, 30.443750>,  <29.375734, 37.786888, 30.223118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.305605, 38.113083, 30.443750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107409, -0.572760, 0.812656,
		0.978634, 0.083234, 0.188010,
		-0.175326, 0.815487, 0.551582,
		29.253008, 38.357727, 30.609224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453705, 37.524780, 30.926212>,  <29.375734, 37.786888, 30.223118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453705, 37.524780, 30.926212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.282288, 37.881676, 30.983143>,  <29.179438, 38.095814, 31.017302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.282288, 37.881676, 30.983143>,  <29.453705, 37.524780, 30.926212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.282288, 37.881676, 30.983143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579099, -0.392155, 0.714744,
		0.693538, 0.223877, 0.684751,
		-0.428543, 0.892241, 0.142327,
		29.153725, 38.149349, 31.025841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414160, 37.428474, 31.520472>,  <29.453705, 37.524780, 30.926212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414160, 37.428474, 31.520472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.156549, 37.724770, 31.444014>,  <29.001984, 37.902546, 31.398138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.156549, 37.724770, 31.444014>,  <29.414160, 37.428474, 31.520472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156549, 37.724770, 31.444014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602810, -0.337549, 0.722966,
		0.471008, 0.580834, 0.663915,
		-0.644027, 0.740738, -0.191145,
		28.963341, 37.946991, 31.386671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.211634, 37.705429, 32.182968>,  <29.414160, 37.428474, 31.520472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.211634, 37.705429, 32.182968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.944378, 37.804401, 31.902292>,  <28.784023, 37.863785, 31.733887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.944378, 37.804401, 31.902292>,  <29.211634, 37.705429, 32.182968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.944378, 37.804401, 31.902292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743967, -0.209503, 0.634524,
		0.009995, 0.945984, 0.324058,
		-0.668141, 0.247431, -0.701688,
		28.743935, 37.878632, 31.691786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763056, 38.108040, 32.538464>,  <29.211634, 37.705429, 32.182968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763056, 38.108040, 32.538464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.609360, 37.939854, 32.209694>,  <28.517141, 37.838943, 32.012432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.609360, 37.939854, 32.209694>,  <28.763056, 38.108040, 32.538464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609360, 37.939854, 32.209694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645665, -0.513965, 0.564764,
		-0.659906, 0.747696, -0.073994,
		-0.384241, -0.420466, -0.821929,
		28.494087, 37.813713, 31.963116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.123882, 38.158714, 32.695194>,  <28.763056, 38.108040, 32.538464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.123882, 38.158714, 32.695194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.139229, 37.858742, 32.431034>,  <28.148438, 37.678757, 32.272537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.139229, 37.858742, 32.431034>,  <28.123882, 38.158714, 32.695194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.139229, 37.858742, 32.431034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628337, -0.531989, 0.567609,
		-0.776995, 0.393176, -0.491622,
		0.038368, -0.749933, -0.660400,
		28.150740, 37.633762, 32.232914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.385654, 38.028858, 32.535694>,  <28.123882, 38.158714, 32.695194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.385654, 38.028858, 32.535694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.604385, 37.717110, 32.413338>,  <27.735624, 37.530060, 32.339924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.604385, 37.717110, 32.413338>,  <27.385654, 38.028858, 32.535694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.604385, 37.717110, 32.413338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497414, -0.596295, 0.630088,
		-0.673471, -0.192394, -0.713737,
		0.546824, -0.779369, -0.305888,
		27.768433, 37.483299, 32.321571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.954222, 37.452148, 32.305607>,  <27.385654, 38.028858, 32.535694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.954222, 37.452148, 32.305607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.312010, 37.282509, 32.362263>,  <27.526684, 37.180725, 32.396255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.312010, 37.282509, 32.362263>,  <26.954222, 37.452148, 32.305607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.312010, 37.282509, 32.362263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439730, -0.776991, 0.450469,
		-0.080987, -0.465217, -0.881484,
		0.894471, -0.424097, 0.141643,
		27.580351, 37.155281, 32.404755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.853081, 36.734867, 32.286793>,  <26.954222, 37.452148, 32.305607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.853081, 36.734867, 32.286793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.224865, 36.753605, 32.433167>,  <27.447935, 36.764847, 32.520992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.224865, 36.753605, 32.433167>,  <26.853081, 36.734867, 32.286793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.224865, 36.753605, 32.433167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203517, -0.762218, 0.614495,
		0.307707, -0.645623, -0.698919,
		0.929461, 0.046842, 0.365935,
		27.503704, 36.767658, 32.542946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.117668, 36.025478, 32.386265>,  <26.853081, 36.734867, 32.286793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.117668, 36.025478, 32.386265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.297377, 36.262390, 32.653805>,  <27.405201, 36.404537, 32.814327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.297377, 36.262390, 32.653805>,  <27.117668, 36.025478, 32.386265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.297377, 36.262390, 32.653805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169890, -0.678360, 0.714818,
		0.877094, -0.434778, -0.204145,
		0.449271, 0.592280, 0.668850,
		27.432158, 36.440075, 32.854458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.689228, 35.615349, 32.657387>,  <27.117668, 36.025478, 32.386265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.689228, 35.615349, 32.657387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.605759, 35.891972, 32.933998>,  <27.555677, 36.057945, 33.099964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.605759, 35.891972, 32.933998>,  <27.689228, 35.615349, 32.657387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.605759, 35.891972, 32.933998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090095, -0.717678, 0.690522,
		0.973827, 0.081790, 0.212066,
		-0.208673, 0.691555, 0.691525,
		27.543158, 36.099438, 33.141457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.001507, 35.364491, 33.249649>,  <27.689228, 35.615349, 32.657387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.001507, 35.364491, 33.249649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.753618, 35.634457, 33.409866>,  <27.604885, 35.796436, 33.505997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.753618, 35.634457, 33.409866>,  <28.001507, 35.364491, 33.249649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.753618, 35.634457, 33.409866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058061, -0.548393, 0.834203,
		0.782673, 0.493716, 0.379036,
		-0.619720, 0.674915, 0.400547,
		27.567703, 35.836929, 33.530029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.219837, 35.383759, 33.956421>,  <28.001507, 35.364491, 33.249649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.219837, 35.383759, 33.956421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.856367, 35.550667, 33.950832>,  <27.638285, 35.650810, 33.947479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.856367, 35.550667, 33.950832>,  <28.219837, 35.383759, 33.956421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856367, 35.550667, 33.950832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283583, -0.592309, 0.754156,
		0.306412, 0.689244, 0.656547,
		-0.908676, 0.417268, -0.013967,
		27.583765, 35.675846, 33.946644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.438936, 34.645443, 34.238220>,  <28.219837, 35.383759, 33.956421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.438936, 34.645443, 34.238220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.787289, 34.580311, 34.052723>,  <28.996300, 34.541229, 33.941425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.787289, 34.580311, 34.052723>,  <28.438936, 34.645443, 34.238220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.787289, 34.580311, 34.052723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372888, 0.833569, 0.407576,
		0.320191, -0.527872, 0.786657,
		0.870880, -0.162833, -0.463738,
		29.048553, 34.531460, 33.913601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924215, 34.683716, 34.730091>,  <28.438936, 34.645443, 34.238220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924215, 34.683716, 34.730091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.162388, 34.736938, 34.413166>,  <29.305292, 34.768871, 34.223011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.162388, 34.736938, 34.413166>,  <28.924215, 34.683716, 34.730091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162388, 34.736938, 34.413166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474954, 0.737110, 0.480716,
		0.647982, -0.662545, 0.375705,
		0.595432, 0.133053, -0.792312,
		29.341017, 34.776855, 34.175472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520390, 34.968052, 35.017101>,  <28.924215, 34.683716, 34.730091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520390, 34.968052, 35.017101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.514179, 35.066189, 34.629375>,  <29.510452, 35.125069, 34.396740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.514179, 35.066189, 34.629375>,  <29.520390, 34.968052, 35.017101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.514179, 35.066189, 34.629375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478084, 0.853255, 0.208306,
		0.878177, -0.460178, -0.130541,
		-0.015527, 0.245339, -0.969313,
		29.509521, 35.139790, 34.338581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232340, 35.129456, 34.739620>,  <29.520390, 34.968052, 35.017101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232340, 35.129456, 34.739620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.985756, 35.309475, 34.481182>,  <29.837807, 35.417488, 34.326118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.985756, 35.309475, 34.481182>,  <30.232340, 35.129456, 34.739620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.985756, 35.309475, 34.481182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563276, 0.825417, 0.037521,
		0.550182, -0.340798, -0.762336,
		-0.616458, 0.450049, -0.646093,
		29.800819, 35.444489, 34.287354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755104, 35.536766, 34.286503>,  <30.232340, 35.129456, 34.739620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755104, 35.536766, 34.286503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.395844, 35.701878, 34.225914>,  <30.180288, 35.800945, 34.189560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.395844, 35.701878, 34.225914>,  <30.755104, 35.536766, 34.286503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.395844, 35.701878, 34.225914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428033, 0.899616, -0.086479,
		0.100571, -0.142506, -0.984671,
		-0.898150, 0.412774, -0.151472,
		30.126398, 35.825710, 34.180473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833487, 35.856979, 33.725594>,  <30.755104, 35.536766, 34.286503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.833487, 35.856979, 33.725594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.530668, 36.052547, 33.898952>,  <30.348978, 36.169888, 34.002968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.530668, 36.052547, 33.898952>,  <30.833487, 35.856979, 33.725594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530668, 36.052547, 33.898952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452492, 0.870850, -0.192019,
		-0.471309, 0.050743, -0.880507,
		-0.757046, 0.488923, 0.433400,
		30.303555, 36.199223, 34.028973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592325, 36.342110, 33.300011>,  <30.833487, 35.856979, 33.725594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592325, 36.342110, 33.300011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.437576, 36.478588, 33.642685>,  <30.344727, 36.560474, 33.848289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.437576, 36.478588, 33.642685>,  <30.592325, 36.342110, 33.300011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437576, 36.478588, 33.642685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375470, 0.906814, -0.191600,
		-0.842232, 0.247537, -0.478928,
		-0.386870, 0.341194, 0.856690,
		30.321516, 36.580948, 33.899693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299261, 36.948593, 33.114563>,  <30.592325, 36.342110, 33.300011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299261, 36.948593, 33.114563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.355957, 37.006290, 33.506298>,  <30.389975, 37.040909, 33.741341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.355957, 37.006290, 33.506298>,  <30.299261, 36.948593, 33.114563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.355957, 37.006290, 33.506298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507629, 0.838750, -0.197008,
		-0.849837, 0.525063, 0.045660,
		0.141739, 0.144246, 0.979338,
		30.398479, 37.049564, 33.800098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977423, 37.673248, 33.354492>,  <30.299261, 36.948593, 33.114563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.977423, 37.673248, 33.354492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.231024, 37.591980, 33.652958>,  <30.383184, 37.543221, 33.832039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.231024, 37.591980, 33.652958>,  <29.977423, 37.673248, 33.354492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231024, 37.591980, 33.652958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281690, 0.959257, 0.021847,
		-0.720203, 0.196336, 0.665402,
		0.634002, -0.203172, 0.746166,
		30.421225, 37.531029, 33.876808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790020, 38.125462, 33.887360>,  <29.977423, 37.673248, 33.354492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790020, 38.125462, 33.887360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.173084, 38.010315, 33.885567>,  <30.402922, 37.941227, 33.884491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.173084, 38.010315, 33.885567>,  <29.790020, 38.125462, 33.887360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173084, 38.010315, 33.885567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287895, 0.957634, 0.007269,
		0.002196, -0.008251, 0.999964,
		0.957659, -0.287868, -0.004478,
		30.460382, 37.923954, 33.884224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133890, 38.721226, 34.237255>,  <29.790020, 38.125462, 33.887360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.133890, 38.721226, 34.237255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.458235, 38.518883, 34.119537>,  <30.652842, 38.397476, 34.048908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.458235, 38.518883, 34.119537>,  <30.133890, 38.721226, 34.237255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458235, 38.518883, 34.119537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430695, 0.856270, -0.285137,
		0.396234, 0.104456, 0.912188,
		0.810864, -0.505856, -0.294294,
		30.701494, 38.367126, 34.031250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731873, 39.011463, 34.484097>,  <30.133890, 38.721226, 34.237255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731873, 39.011463, 34.484097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.906912, 38.811493, 34.185143>,  <31.011934, 38.691509, 34.005772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.906912, 38.811493, 34.185143>,  <30.731873, 39.011463, 34.484097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906912, 38.811493, 34.185143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528185, 0.815590, -0.236291,
		0.727687, -0.291357, 0.620953,
		0.437598, -0.499924, -0.747385,
		31.038191, 38.661514, 33.960926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436842, 39.195629, 34.514866>,  <30.731873, 39.011463, 34.484097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436842, 39.195629, 34.514866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.390928, 39.046822, 34.146423>,  <31.363380, 38.957539, 33.925358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.390928, 39.046822, 34.146423>,  <31.436842, 39.195629, 34.514866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390928, 39.046822, 34.146423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424215, 0.820077, -0.384077,
		0.898257, -0.434831, 0.063682,
		-0.114784, -0.372015, -0.921102,
		31.356493, 38.935219, 33.870094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080284, 39.261288, 34.202213>,  <31.436842, 39.195629, 34.514866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080284, 39.261288, 34.202213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.787531, 39.249760, 33.929886>,  <31.611877, 39.242844, 33.766491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.787531, 39.249760, 33.929886>,  <32.080284, 39.261288, 34.202213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787531, 39.249760, 33.929886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350981, 0.840442, -0.412879,
		0.584085, -0.541134, -0.604994,
		-0.731886, -0.028816, -0.680817,
		31.567965, 39.241116, 33.725639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444256, 39.364101, 33.550358>,  <32.080284, 39.261288, 34.202213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444256, 39.364101, 33.550358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.060776, 39.455574, 33.482723>,  <31.830687, 39.510456, 33.442142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.060776, 39.455574, 33.482723>,  <32.444256, 39.364101, 33.550358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060776, 39.455574, 33.482723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276689, 0.887500, -0.368494,
		0.065800, -0.400062, -0.914123,
		-0.958704, 0.228681, -0.169090,
		31.773165, 39.524178, 33.431995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464115, 39.590233, 32.897888>,  <32.444256, 39.364101, 33.550358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464115, 39.590233, 32.897888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.116180, 39.732231, 33.034920>,  <31.907419, 39.817432, 33.117138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.116180, 39.732231, 33.034920>,  <32.464115, 39.590233, 32.897888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116180, 39.732231, 33.034920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163953, 0.862950, -0.477950,
		-0.465302, -0.359571, -0.808828,
		-0.869836, 0.355000, 0.342580,
		31.855230, 39.838730, 33.137695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111706, 39.877930, 32.271717>,  <32.464115, 39.590233, 32.897888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111706, 39.877930, 32.271717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.925901, 40.054569, 32.578758>,  <31.814419, 40.160553, 32.762985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.925901, 40.054569, 32.578758>,  <32.111706, 39.877930, 32.271717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925901, 40.054569, 32.578758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154589, 0.893921, -0.420722,
		-0.871970, -0.076767, -0.483503,
		-0.464511, 0.441602, 0.767605,
		31.786549, 40.187050, 32.809040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547297, 40.229481, 32.062847>,  <32.111706, 39.877930, 32.271717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547297, 40.229481, 32.062847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.645269, 40.419289, 32.401039>,  <31.704054, 40.533173, 32.603954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.645269, 40.419289, 32.401039>,  <31.547297, 40.229481, 32.062847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645269, 40.419289, 32.401039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042563, 0.876467, -0.479577,
		-0.968605, 0.081478, 0.234873,
		0.244933, 0.474517, 0.845483,
		31.718750, 40.561646, 32.654682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069880, 40.796528, 32.061531>,  <31.547297, 40.229481, 32.062847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069880, 40.796528, 32.061531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.349247, 40.899372, 32.328697>,  <31.516867, 40.961079, 32.488995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.349247, 40.899372, 32.328697>,  <31.069880, 40.796528, 32.061531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349247, 40.899372, 32.328697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043130, 0.946665, -0.319319,
		-0.714390, 0.194211, 0.672257,
		0.698417, 0.257112, 0.667912,
		31.558773, 40.976505, 32.529072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925888, 41.453102, 32.068935>,  <31.069880, 40.796528, 32.061531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925888, 41.453102, 32.068935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.264036, 41.438530, 32.282112>,  <31.466925, 41.429787, 32.410019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.264036, 41.438530, 32.282112>,  <30.925888, 41.453102, 32.068935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264036, 41.438530, 32.282112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175675, 0.961138, -0.212961,
		-0.504471, 0.273655, 0.818915,
		0.845368, -0.036430, 0.532941,
		31.517647, 41.427601, 32.441994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838499, 42.025433, 32.646244>,  <30.925888, 41.453102, 32.068935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838499, 42.025433, 32.646244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.216568, 41.942780, 32.545094>,  <31.443409, 41.893188, 32.484402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.216568, 41.942780, 32.545094>,  <30.838499, 42.025433, 32.646244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216568, 41.942780, 32.545094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140543, 0.956359, -0.256172,
		0.294776, 0.206587, 0.932968,
		0.945174, -0.206636, -0.252877,
		31.500120, 41.880791, 32.469231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208384, 42.615250, 32.828873>,  <30.838499, 42.025433, 32.646244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208384, 42.615250, 32.828873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.452078, 42.439194, 32.565022>,  <31.598295, 42.333561, 32.406712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.452078, 42.439194, 32.565022>,  <31.208384, 42.615250, 32.828873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452078, 42.439194, 32.565022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287340, 0.897821, -0.333695,
		0.739099, 0.013762, 0.673456,
		0.609236, -0.440145, -0.659625,
		31.634848, 42.307152, 32.367134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.955135, 35.816147, 49.484703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.752731, 35.493847, 49.361591>,  <35.631290, 35.300468, 49.287724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.752731, 35.493847, 49.361591>,  <35.955135, 35.816147, 49.484703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752731, 35.493847, 49.361591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196138, -0.239994, 0.950754,
		-0.839933, 0.541454, -0.036600,
		-0.506006, -0.805748, -0.307779,
		35.600929, 35.252121, 49.269257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309753, 35.858143, 49.727348>,  <35.955135, 35.816147, 49.484703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309753, 35.858143, 49.727348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.382706, 35.467968, 49.677929>,  <35.426479, 35.233864, 49.648277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.382706, 35.467968, 49.677929>,  <35.309753, 35.858143, 49.727348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382706, 35.467968, 49.677929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428787, -0.191986, 0.882770,
		-0.884804, -0.108025, -0.453269,
		0.182382, -0.975434, -0.123550,
		35.437420, 35.175339, 49.640865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858791, 35.605301, 50.138351>,  <35.309753, 35.858143, 49.727348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858791, 35.605301, 50.138351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.058186, 35.265259, 50.070438>,  <35.177822, 35.061234, 50.029690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.058186, 35.265259, 50.070438>,  <34.858791, 35.605301, 50.138351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058186, 35.265259, 50.070438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350642, -0.376836, 0.857348,
		-0.792820, -0.367842, -0.485931,
		0.498485, -0.850110, -0.169782,
		35.207733, 35.010227, 50.019505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385098, 35.049480, 50.227749>,  <34.858791, 35.605301, 50.138351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385098, 35.049480, 50.227749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.751373, 34.898365, 50.282570>,  <34.971138, 34.807697, 50.315464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.751373, 34.898365, 50.282570>,  <34.385098, 35.049480, 50.227749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751373, 34.898365, 50.282570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313020, -0.456588, 0.832794,
		-0.252043, -0.805483, -0.536350,
		0.915693, -0.377788, 0.137052,
		35.026081, 34.785027, 50.323685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306938, 34.331509, 50.365749>,  <34.385098, 35.049480, 50.227749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306938, 34.331509, 50.365749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.677242, 34.410774, 50.494560>,  <34.899426, 34.458332, 50.571846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.677242, 34.410774, 50.494560>,  <34.306938, 34.331509, 50.365749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677242, 34.410774, 50.494560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183249, -0.509824, 0.840535,
		0.330738, -0.837144, -0.435662,
		0.925760, 0.198162, 0.322024,
		34.954971, 34.470222, 50.591167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481598, 33.699535, 50.679367>,  <34.306938, 34.331509, 50.365749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481598, 33.699535, 50.679367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.715919, 33.992683, 50.817776>,  <34.856510, 34.168571, 50.900822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.715919, 33.992683, 50.817776>,  <34.481598, 33.699535, 50.679367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715919, 33.992683, 50.817776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056231, -0.389168, 0.919449,
		0.808502, -0.558072, -0.186765,
		0.585801, 0.732874, 0.346024,
		34.891659, 34.212547, 50.921581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889248, 33.338955, 51.086720>,  <34.481598, 33.699535, 50.679367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889248, 33.338955, 51.086720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.951378, 33.711651, 51.218010>,  <34.988655, 33.935268, 51.296783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.951378, 33.711651, 51.218010>,  <34.889248, 33.338955, 51.086720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951378, 33.711651, 51.218010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036195, -0.326669, 0.944445,
		0.987200, -0.158577, -0.017016,
		0.155326, 0.931741, 0.328227,
		34.997974, 33.991173, 51.316479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430981, 33.247643, 51.604965>,  <34.889248, 33.338955, 51.086720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430981, 33.247643, 51.604965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.264839, 33.598488, 51.701420>,  <35.165154, 33.808994, 51.759293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.264839, 33.598488, 51.701420>,  <35.430981, 33.247643, 51.604965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264839, 33.598488, 51.701420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054603, -0.288649, 0.955877,
		0.908018, 0.383864, 0.167786,
		-0.415358, 0.877115, 0.241138,
		35.140232, 33.861622, 51.773762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775490, 33.403965, 52.262932>,  <35.430981, 33.247643, 51.604965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775490, 33.403965, 52.262932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.449986, 33.633492, 52.225986>,  <35.254684, 33.771206, 52.203819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.449986, 33.633492, 52.225986>,  <35.775490, 33.403965, 52.262932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449986, 33.633492, 52.225986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334012, -0.331670, 0.882287,
		0.475633, 0.748822, 0.461560,
		-0.813762, 0.573812, -0.092363,
		35.205856, 33.805634, 52.198277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723961, 33.743202, 52.947834>,  <35.775490, 33.403965, 52.262932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723961, 33.743202, 52.947834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.367783, 33.731949, 52.766148>,  <35.154076, 33.725197, 52.657135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.367783, 33.731949, 52.766148>,  <35.723961, 33.743202, 52.947834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367783, 33.731949, 52.766148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413522, -0.366726, 0.833374,
		-0.190018, 0.929904, 0.314917,
		-0.890445, -0.028131, -0.454220,
		35.100651, 33.723511, 52.629883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276905, 33.899239, 53.480457>,  <35.723961, 33.743202, 52.947834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276905, 33.899239, 53.480457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.066586, 33.715363, 53.194180>,  <34.940395, 33.605038, 53.022411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.066586, 33.715363, 53.194180>,  <35.276905, 33.899239, 53.480457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066586, 33.715363, 53.194180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586092, -0.414000, 0.696491,
		-0.616470, 0.785677, -0.051742,
		-0.525796, -0.459691, -0.715697,
		34.908848, 33.577454, 52.979469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573181, 33.991547, 53.691299>,  <35.276905, 33.899239, 53.480457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573181, 33.991547, 53.691299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.580399, 33.707527, 53.409729>,  <34.584728, 33.537117, 53.240788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.580399, 33.707527, 53.409729>,  <34.573181, 33.991547, 53.691299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580399, 33.707527, 53.409729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665323, -0.534063, 0.521654,
		-0.746338, 0.458928, -0.482043,
		0.018040, -0.710044, -0.703927,
		34.585812, 33.494514, 53.198551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866829, 33.642479, 53.591595>,  <34.573181, 33.991547, 53.691299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866829, 33.642479, 53.591595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.126945, 33.359146, 53.481770>,  <34.283016, 33.189148, 53.415874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.126945, 33.359146, 53.481770>,  <33.866829, 33.642479, 53.591595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126945, 33.359146, 53.481770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568615, -0.693508, 0.442407,
		-0.503784, -0.131571, -0.853751,
		0.650291, -0.708333, -0.274565,
		34.322033, 33.146645, 53.399399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047016, 34.213863, 53.219097>,  <33.866829, 33.642479, 53.591595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047016, 34.213863, 53.219097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.943726, 34.517494, 53.458138>,  <33.881752, 34.699673, 53.601562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.943726, 34.517494, 53.458138>,  <34.047016, 34.213863, 53.219097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943726, 34.517494, 53.458138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737526, -0.554435, 0.385560,
		0.623999, -0.341185, 0.703006,
		-0.258224, 0.759075, 0.597599,
		33.866257, 34.745216, 53.637417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513031, 34.748917, 52.842335>,  <34.047016, 34.213863, 53.219097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513031, 34.748917, 52.842335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.142521, 34.809208, 52.980495>,  <32.920216, 34.845383, 53.063393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.142521, 34.809208, 52.980495>,  <33.513031, 34.748917, 52.842335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142521, 34.809208, 52.980495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277555, 0.347107, -0.895812,
		-0.254917, -0.925633, -0.279680,
		-0.926272, 0.150732, 0.345397,
		32.864639, 34.854427, 53.084114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098297, 34.350586, 52.386875>,  <33.513031, 34.748917, 52.842335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098297, 34.350586, 52.386875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.847809, 34.605808, 52.566090>,  <32.697517, 34.758942, 52.673618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.847809, 34.605808, 52.566090>,  <33.098297, 34.350586, 52.386875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847809, 34.605808, 52.566090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342315, 0.291300, -0.893289,
		-0.700480, -0.712763, 0.035998,
		-0.626217, 0.638054, 0.448039,
		32.659943, 34.797226, 52.700500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439392, 34.135723, 52.169121>,  <33.098297, 34.350586, 52.386875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439392, 34.135723, 52.169121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.423340, 34.519798, 52.279705>,  <32.413708, 34.750244, 52.346054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.423340, 34.519798, 52.279705>,  <32.439392, 34.135723, 52.169121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423340, 34.519798, 52.279705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243816, 0.258908, -0.934623,
		-0.968991, -0.104914, 0.223718,
		-0.040133, 0.960188, 0.276459,
		32.411301, 34.807854, 52.362644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960775, 34.356888, 51.709835>,  <32.439392, 34.135723, 52.169121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960775, 34.356888, 51.709835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.113239, 34.705879, 51.832142>,  <32.204720, 34.915276, 51.905525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.113239, 34.705879, 51.832142>,  <31.960775, 34.356888, 51.709835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113239, 34.705879, 51.832142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104831, 0.369393, -0.923341,
		-0.918546, 0.319888, 0.232261,
		0.381162, 0.872479, 0.305770,
		32.227589, 34.967625, 51.923874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397079, 34.960331, 51.594284>,  <31.960775, 34.356888, 51.709835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397079, 34.960331, 51.594284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.776255, 35.087364, 51.603745>,  <32.003761, 35.163582, 51.609421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.776255, 35.087364, 51.603745>,  <31.397079, 34.960331, 51.594284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776255, 35.087364, 51.603745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109683, 0.395301, -0.911980,
		-0.298974, 0.861905, 0.409553,
		0.947937, 0.317579, 0.023648,
		32.060635, 35.182636, 51.610840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343899, 35.491577, 51.151951>,  <31.397079, 34.960331, 51.594284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343899, 35.491577, 51.151951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.741489, 35.505184, 51.193619>,  <31.980043, 35.513348, 51.218620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.741489, 35.505184, 51.193619>,  <31.343899, 35.491577, 51.151951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741489, 35.505184, 51.193619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080837, 0.414147, -0.906613,
		-0.073979, 0.909574, 0.408904,
		0.993978, 0.034016, 0.104166,
		32.039684, 35.515388, 51.224869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565569, 36.074375, 50.812347>,  <31.343899, 35.491577, 51.151951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565569, 36.074375, 50.812347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.921926, 35.893101, 50.824535>,  <32.135742, 35.784336, 50.831848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.921926, 35.893101, 50.824535>,  <31.565569, 36.074375, 50.812347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921926, 35.893101, 50.824535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270801, 0.476106, -0.836654,
		0.364653, 0.753623, 0.546883,
		0.890896, -0.453185, 0.030469,
		32.189194, 35.757145, 50.833675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144100, 36.539356, 50.655499>,  <31.565569, 36.074375, 50.812347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144100, 36.539356, 50.655499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.288147, 36.173649, 50.581276>,  <32.374577, 35.954224, 50.536743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.288147, 36.173649, 50.581276>,  <32.144100, 36.539356, 50.655499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288147, 36.173649, 50.581276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386287, 0.327180, -0.862401,
		0.849174, 0.238890, 0.470993,
		0.360118, -0.914268, -0.185553,
		32.396183, 35.899368, 50.525612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851749, 36.550259, 50.447746>,  <32.144100, 36.539356, 50.655499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851749, 36.550259, 50.447746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.765808, 36.181686, 50.318253>,  <32.714245, 35.960545, 50.240555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.765808, 36.181686, 50.318253>,  <32.851749, 36.550259, 50.447746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765808, 36.181686, 50.318253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388685, 0.223424, -0.893871,
		0.895971, -0.317879, 0.310144,
		-0.214849, -0.921431, -0.323737,
		32.701355, 35.905258, 50.221130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457100, 36.231651, 50.126087>,  <32.851749, 36.550259, 50.447746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457100, 36.231651, 50.126087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.132225, 36.055077, 49.973518>,  <32.937302, 35.949131, 49.881977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.132225, 36.055077, 49.973518>,  <33.457100, 36.231651, 50.126087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132225, 36.055077, 49.973518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367339, 0.120966, -0.922187,
		0.453229, -0.889100, 0.063911,
		-0.812186, -0.441440, -0.381426,
		32.888569, 35.922646, 49.859089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699760, 35.776093, 49.636913>,  <33.457100, 36.231651, 50.126087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699760, 35.776093, 49.636913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.315147, 35.815388, 49.534309>,  <33.084377, 35.838963, 49.472748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.315147, 35.815388, 49.534309>,  <33.699760, 35.776093, 49.636913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315147, 35.815388, 49.534309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266334, 0.104963, -0.958149,
		-0.067201, -0.989612, -0.127089,
		-0.961536, 0.098237, -0.256514,
		33.026688, 35.844860, 49.457355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606274, 35.305927, 48.900364>,  <33.699760, 35.776093, 49.636913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606274, 35.305927, 48.900364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.280598, 35.536407, 48.928871>,  <33.085190, 35.674694, 48.945976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.280598, 35.536407, 48.928871>,  <33.606274, 35.305927, 48.900364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280598, 35.536407, 48.928871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054341, 0.197843, -0.978726,
		-0.578044, -0.793000, -0.192394,
		-0.814194, 0.576202, 0.071269,
		33.036339, 35.709267, 48.950253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094391, 35.048969, 48.467255>,  <33.606274, 35.305927, 48.900364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094391, 35.048969, 48.467255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.045593, 35.444836, 48.497406>,  <33.016315, 35.682354, 48.515495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.045593, 35.444836, 48.497406>,  <33.094391, 35.048969, 48.467255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045593, 35.444836, 48.497406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077623, 0.085224, -0.993334,
		-0.989491, -0.115326, -0.087217,
		-0.121990, 0.989665, 0.075376,
		33.008995, 35.741734, 48.520020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616074, 35.263344, 47.902065>,  <33.094391, 35.048969, 48.467255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616074, 35.263344, 47.902065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.804234, 35.600410, 48.006863>,  <32.917130, 35.802650, 48.069740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.804234, 35.600410, 48.006863>,  <32.616074, 35.263344, 47.902065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804234, 35.600410, 48.006863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054197, 0.268743, -0.961686,
		-0.880785, 0.466580, 0.080748,
		0.470403, 0.842662, 0.261993,
		32.945354, 35.853210, 48.085461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958099, 35.196640, 48.005741>,  <32.616074, 35.263344, 47.902065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958099, 35.196640, 48.005741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.616678, 35.118835, 47.812405>,  <31.411825, 35.072155, 47.696404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.616678, 35.118835, 47.812405>,  <31.958099, 35.196640, 48.005741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616678, 35.118835, 47.812405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392134, -0.370990, 0.841782,
		-0.343048, 0.908038, 0.240386,
		-0.853551, -0.194508, -0.483340,
		31.360613, 35.060482, 47.667404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420792, 35.432850, 48.408798>,  <31.958099, 35.196640, 48.005741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420792, 35.432850, 48.408798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.257639, 35.143883, 48.185463>,  <31.159748, 34.970501, 48.051460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.257639, 35.143883, 48.185463>,  <31.420792, 35.432850, 48.408798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257639, 35.143883, 48.185463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304507, -0.468875, 0.829115,
		-0.860761, 0.508198, -0.028737,
		-0.407881, -0.722420, -0.558339,
		31.135275, 34.927158, 48.017960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.775019, 35.337997, 48.615135>,  <31.420792, 35.432850, 48.408798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.775019, 35.337997, 48.615135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.889799, 35.002075, 48.430794>,  <30.958668, 34.800522, 48.320187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.889799, 35.002075, 48.430794>,  <30.775019, 35.337997, 48.615135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889799, 35.002075, 48.430794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278230, -0.533415, 0.798784,
		-0.916649, -0.100990, -0.386724,
		0.286953, -0.839803, -0.460856,
		30.975885, 34.750134, 48.292538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229992, 34.861633, 48.772533>,  <30.775019, 35.337997, 48.615135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229992, 34.861633, 48.772533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.532467, 34.629833, 48.650970>,  <30.713953, 34.490753, 48.578033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.532467, 34.629833, 48.650970>,  <30.229992, 34.861633, 48.772533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532467, 34.629833, 48.650970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122526, -0.581619, 0.804180,
		-0.642780, -0.570875, -0.510818,
		0.756188, -0.579500, -0.303906,
		30.759323, 34.455982, 48.559799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926285, 34.261429, 48.666183>,  <30.229992, 34.861633, 48.772533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926285, 34.261429, 48.666183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.313778, 34.205463, 48.748142>,  <30.546274, 34.171883, 48.797318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.313778, 34.205463, 48.748142>,  <29.926285, 34.261429, 48.666183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313778, 34.205463, 48.748142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247624, -0.597037, 0.763039,
		0.015573, -0.789918, -0.613015,
		0.968731, -0.139915, 0.204900,
		30.604397, 34.163490, 48.809612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988375, 33.533257, 48.828163>,  <29.926285, 34.261429, 48.666183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988375, 33.533257, 48.828163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.323359, 33.688400, 48.982162>,  <30.524349, 33.781487, 49.074562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.323359, 33.688400, 48.982162>,  <29.988375, 33.533257, 48.828163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323359, 33.688400, 48.982162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138992, -0.530153, 0.836432,
		0.528526, -0.753991, -0.390074,
		0.837461, 0.387859, 0.384998,
		30.574596, 33.804756, 49.097664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311808, 32.982159, 49.116707>,  <29.988375, 33.533257, 48.828163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311808, 32.982159, 49.116707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.483524, 33.300800, 49.286942>,  <30.586554, 33.491985, 49.389084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.483524, 33.300800, 49.286942>,  <30.311808, 32.982159, 49.116707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483524, 33.300800, 49.286942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127169, -0.519835, 0.844748,
		0.894168, -0.308522, -0.324465,
		0.429292, 0.796609, 0.425586,
		30.612312, 33.539783, 49.414616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785713, 32.330708, 48.851265>,  <30.311808, 32.982159, 49.116707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785713, 32.330708, 48.851265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.690233, 31.961378, 48.730930>,  <30.632946, 31.739780, 48.658730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.690233, 31.961378, 48.730930>,  <30.785713, 32.330708, 48.851265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690233, 31.961378, 48.730930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149214, 0.271239, -0.950876,
		0.959562, -0.271861, 0.073028,
		-0.238698, -0.923321, -0.300836,
		30.618624, 31.684381, 48.640678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285353, 32.191319, 48.402649>,  <30.785713, 32.330708, 48.851265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285353, 32.191319, 48.402649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.986568, 31.940144, 48.315247>,  <30.807299, 31.789438, 48.262806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.986568, 31.940144, 48.315247>,  <31.285353, 32.191319, 48.402649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986568, 31.940144, 48.315247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065846, 0.257163, -0.964122,
		0.661601, -0.734548, -0.150743,
		-0.746960, -0.627938, -0.218506,
		30.762480, 31.751762, 48.249695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551819, 31.857079, 47.917309>,  <31.285353, 32.191319, 48.402649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551819, 31.857079, 47.917309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.165831, 31.767162, 47.863197>,  <30.934238, 31.713213, 47.830730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.165831, 31.767162, 47.863197>,  <31.551819, 31.857079, 47.917309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165831, 31.767162, 47.863197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144404, -0.024583, -0.989213,
		0.219043, -0.974096, 0.056183,
		-0.964970, -0.224793, -0.135278,
		30.876339, 31.699724, 47.822613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538919, 31.281778, 47.464279>,  <31.551819, 31.857079, 47.917309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538919, 31.281778, 47.464279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.187447, 31.469172, 47.427532>,  <30.976562, 31.581608, 47.405483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.187447, 31.469172, 47.427532>,  <31.538919, 31.281778, 47.464279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187447, 31.469172, 47.427532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073916, -0.056601, -0.995657,
		-0.471649, -0.881657, 0.015106,
		-0.878683, 0.468484, -0.091865,
		30.923841, 31.609716, 47.399971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304638, 30.911453, 46.927799>,  <31.538919, 31.281778, 47.464279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304638, 30.911453, 46.927799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.109058, 31.260246, 46.937431>,  <30.991711, 31.469522, 46.943211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.109058, 31.260246, 46.937431>,  <31.304638, 30.911453, 46.927799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.109058, 31.260246, 46.937431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091317, 0.078618, -0.992714,
		-0.867520, -0.483187, -0.118067,
		-0.488948, 0.871981, 0.024080,
		30.962374, 31.521841, 46.944656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607395, 30.870674, 46.558361>,  <31.304638, 30.911453, 46.927799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607395, 30.870674, 46.558361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.737930, 31.248045, 46.581863>,  <30.816252, 31.474466, 46.595966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.737930, 31.248045, 46.581863>,  <30.607395, 30.870674, 46.558361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737930, 31.248045, 46.581863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060109, 0.041322, -0.997336,
		-0.943340, 0.329000, -0.043223,
		0.326338, 0.943425, 0.058757,
		30.835833, 31.531073, 46.599491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412422, 31.082201, 45.956608>,  <30.607395, 30.870674, 46.558361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412422, 31.082201, 45.956608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.616215, 31.401648, 46.084759>,  <30.738489, 31.593315, 46.161648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.616215, 31.401648, 46.084759>,  <30.412422, 31.082201, 45.956608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616215, 31.401648, 46.084759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027937, 0.356775, -0.933772,
		-0.860029, 0.484689, 0.159459,
		0.509480, 0.798616, 0.320378,
		30.769058, 31.641233, 46.180874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.498684, 30.967751, 52.749249> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.489166, 31.358242, 52.663074>,  <34.483456, 31.592537, 52.611370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.489166, 31.358242, 52.663074>,  <34.498684, 30.967751, 52.749249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489166, 31.358242, 52.663074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342139, -0.194536, -0.919291,
		-0.939348, -0.095581, -0.329377,
		-0.023791, 0.976227, -0.215439,
		34.482029, 31.651110, 52.598442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201920, 30.962538, 52.002399>,  <34.498684, 30.967751, 52.749249>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201920, 30.962538, 52.002399> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.438732, 31.269699, 52.100239>,  <34.580818, 31.453995, 52.158943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.438732, 31.269699, 52.100239>,  <34.201920, 30.962538, 52.002399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438732, 31.269699, 52.100239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268724, 0.098035, -0.958215,
		-0.759794, 0.633021, -0.148314,
		0.592031, 0.767901, 0.244595,
		34.616341, 31.500069, 52.173618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245583, 31.431181, 51.439217>,  <34.201920, 30.962538, 52.002399>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245583, 31.431181, 51.439217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.568119, 31.553801, 51.641541>,  <34.761642, 31.627373, 51.762936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.568119, 31.553801, 51.641541>,  <34.245583, 31.431181, 51.439217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568119, 31.553801, 51.641541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448907, 0.239615, -0.860852,
		-0.385092, 0.921202, 0.055600,
		0.806341, 0.306548, 0.505808,
		34.810020, 31.645765, 51.793282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487057, 32.047916, 51.119492>,  <34.245583, 31.431181, 51.439217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487057, 32.047916, 51.119492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.788677, 31.856808, 51.299774>,  <34.969650, 31.742142, 51.407944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.788677, 31.856808, 51.299774>,  <34.487057, 32.047916, 51.119492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788677, 31.856808, 51.299774> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484256, -0.059188, -0.872922,
		0.443735, 0.876487, 0.186734,
		0.754053, -0.477773, 0.450708,
		35.014893, 31.713476, 51.434986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940327, 32.214897, 50.663795>,  <34.487057, 32.047916, 51.119492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940327, 32.214897, 50.663795> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.127705, 31.945028, 50.891964>,  <35.240131, 31.783106, 51.028866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.127705, 31.945028, 50.891964>,  <34.940327, 32.214897, 50.663795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127705, 31.945028, 50.891964> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642646, -0.182847, -0.744025,
		0.606274, 0.715109, 0.347924,
		0.468442, -0.674675, 0.570417,
		35.268238, 31.742626, 51.063087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645714, 32.329418, 50.619297>,  <34.940327, 32.214897, 50.663795>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645714, 32.329418, 50.619297> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.611702, 31.948921, 50.737892>,  <35.591297, 31.720623, 50.809048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.611702, 31.948921, 50.737892>,  <35.645714, 32.329418, 50.619297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611702, 31.948921, 50.737892> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463196, -0.301189, -0.833507,
		0.882168, 0.066460, 0.466222,
		-0.085026, -0.951246, 0.296483,
		35.586193, 31.663548, 50.826836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284874, 32.058182, 50.618107>,  <35.645714, 32.329418, 50.619297>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284874, 32.058182, 50.618107> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.029778, 31.754547, 50.565834>,  <35.876720, 31.572367, 50.534470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.029778, 31.754547, 50.565834>,  <36.284874, 32.058182, 50.618107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029778, 31.754547, 50.565834> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410371, -0.191277, -0.891633,
		0.651827, -0.622260, 0.433491,
		-0.637745, -0.759082, -0.130678,
		35.838455, 31.526823, 50.526630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640087, 31.742687, 50.144802>,  <36.284874, 32.058182, 50.618107>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640087, 31.742687, 50.144802> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.319035, 31.506367, 50.111977>,  <36.126404, 31.364574, 50.092281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.319035, 31.506367, 50.111977>,  <36.640087, 31.742687, 50.144802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319035, 31.506367, 50.111977> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212360, -0.154471, -0.964905,
		0.557393, -0.791890, 0.249446,
		-0.802631, -0.590803, -0.082064,
		36.078247, 31.329126, 50.087357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897110, 31.179903, 49.872318>,  <36.640087, 31.742687, 50.144802>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897110, 31.179903, 49.872318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.507065, 31.178419, 49.783646>,  <36.273037, 31.177528, 49.730442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.507065, 31.178419, 49.783646>,  <36.897110, 31.179903, 49.872318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507065, 31.178419, 49.783646> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216704, -0.227337, -0.949398,
		-0.046872, -0.973809, 0.222483,
		-0.975111, -0.003713, -0.221684,
		36.214531, 31.177305, 49.717140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839413, 30.605331, 49.297722>,  <36.897110, 31.179903, 49.872318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839413, 30.605331, 49.297722> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.532391, 30.861656, 49.303585>,  <36.348175, 31.015451, 49.307102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.532391, 30.861656, 49.303585>,  <36.839413, 30.605331, 49.297722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532391, 30.861656, 49.303585> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030483, 0.059335, -0.997773,
		-0.640255, -0.765401, -0.065077,
		-0.767558, 0.640812, 0.014657,
		36.302124, 31.053900, 49.307983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451195, 30.329502, 48.672699>,  <36.839413, 30.605331, 49.297722>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451195, 30.329502, 48.672699> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.289448, 30.692808, 48.715679>,  <36.192402, 30.910791, 48.741467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.289448, 30.692808, 48.715679>,  <36.451195, 30.329502, 48.672699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289448, 30.692808, 48.715679> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002336, 0.116454, -0.993193,
		-0.914595, -0.401863, -0.044968,
		-0.404364, 0.908265, 0.107447,
		36.168137, 30.965288, 48.747913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893238, 30.367470, 48.202663>,  <36.451195, 30.329502, 48.672699>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893238, 30.367470, 48.202663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.057659, 30.721478, 48.290092>,  <36.156311, 30.933882, 48.342552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.057659, 30.721478, 48.290092>,  <35.893238, 30.367470, 48.202663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057659, 30.721478, 48.290092> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006978, 0.242815, -0.970048,
		-0.911586, 0.397213, 0.105985,
		0.411050, 0.885021, 0.218575,
		36.180973, 30.986984, 48.355663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174721, 30.175070, 47.978912>,  <35.893238, 30.367470, 48.202663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174721, 30.175070, 47.978912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.874416, 30.062378, 47.739922>,  <34.694233, 29.994762, 47.596527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.874416, 30.062378, 47.739922>,  <35.174721, 30.175070, 47.978912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874416, 30.062378, 47.739922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540709, -0.257476, 0.800837,
		-0.379455, 0.924303, 0.040972,
		-0.750765, -0.281727, -0.597479,
		34.649185, 29.977859, 47.560677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573143, 30.434942, 48.221943>,  <35.174721, 30.175070, 47.978912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573143, 30.434942, 48.221943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.466965, 30.133183, 47.981804>,  <34.403255, 29.952126, 47.837719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.466965, 30.133183, 47.981804>,  <34.573143, 30.434942, 48.221943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466965, 30.133183, 47.981804> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719739, -0.259256, 0.644020,
		-0.641493, 0.603047, -0.474153,
		-0.265447, -0.754401, -0.600348,
		34.387329, 29.906862, 47.801701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845486, 30.308216, 48.417534>,  <34.573143, 30.434942, 48.221943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845486, 30.308216, 48.417534> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.963852, 29.964104, 48.251476>,  <34.034870, 29.757635, 48.151840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.963852, 29.964104, 48.251476>,  <33.845486, 30.308216, 48.417534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963852, 29.964104, 48.251476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485794, -0.509747, 0.710044,
		-0.822459, -0.008438, -0.568762,
		0.295916, -0.860283, -0.415146,
		34.052628, 29.706018, 48.126934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181053, 29.882706, 48.093193>,  <33.845486, 30.308216, 48.417534>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181053, 29.882706, 48.093193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.483360, 29.630133, 48.162594>,  <33.664745, 29.478588, 48.204235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.483360, 29.630133, 48.162594>,  <33.181053, 29.882706, 48.093193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483360, 29.630133, 48.162594> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585746, -0.533418, 0.610219,
		-0.292765, -0.562812, -0.773001,
		0.755771, -0.631433, 0.173498,
		33.710091, 29.440702, 48.214642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850983, 29.261383, 48.142342>,  <33.181053, 29.882706, 48.093193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850983, 29.261383, 48.142342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.210560, 29.184906, 48.300003>,  <33.426304, 29.139019, 48.394600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.210560, 29.184906, 48.300003>,  <32.850983, 29.261383, 48.142342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210560, 29.184906, 48.300003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417237, -0.647863, 0.637328,
		0.133502, -0.737373, -0.662162,
		0.898939, -0.191194, 0.394150,
		33.480240, 29.127548, 48.418247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952480, 28.476202, 48.224735>,  <32.850983, 29.261383, 48.142342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952480, 28.476202, 48.224735> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.196033, 28.661892, 48.482033>,  <33.342167, 28.773306, 48.636410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.196033, 28.661892, 48.482033>,  <32.952480, 28.476202, 48.224735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196033, 28.661892, 48.482033> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417779, -0.501649, 0.757502,
		0.674332, -0.729962, -0.111502,
		0.608882, 0.464225, 0.643240,
		33.378696, 28.801159, 48.675003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287983, 27.899191, 48.621986>,  <32.952480, 28.476202, 48.224735>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287983, 27.899191, 48.621986> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.320492, 28.233191, 48.839672>,  <33.339996, 28.433590, 48.970284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.320492, 28.233191, 48.839672>,  <33.287983, 27.899191, 48.621986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320492, 28.233191, 48.839672> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621722, -0.384296, 0.682479,
		0.779009, -0.393820, 0.487904,
		0.081274, 0.834998, 0.544217,
		33.344875, 28.483690, 49.002937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154015, 27.636503, 49.220524>,  <33.287983, 27.899191, 48.621986>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154015, 27.636503, 49.220524> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.140156, 28.028303, 49.299900>,  <33.131840, 28.263384, 49.347527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.140156, 28.028303, 49.299900>,  <33.154015, 27.636503, 49.220524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140156, 28.028303, 49.299900> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390487, -0.196043, 0.899493,
		0.919956, -0.046322, 0.389275,
		-0.034648, 0.979501, 0.198439,
		33.129761, 28.322153, 49.359432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401127, 27.695177, 49.788216>,  <33.154015, 27.636503, 49.220524>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401127, 27.695177, 49.788216> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.157799, 28.010695, 49.752991>,  <33.011803, 28.200005, 49.731857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.157799, 28.010695, 49.752991>,  <33.401127, 27.695177, 49.788216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157799, 28.010695, 49.752991> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487696, -0.283953, 0.825544,
		0.626178, 0.545141, 0.557425,
		-0.608320, 0.788792, -0.088058,
		32.975304, 28.247332, 49.726574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488914, 27.995312, 50.383404>,  <33.401127, 27.695177, 49.788216>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488914, 27.995312, 50.383404> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.130547, 28.113194, 50.250458>,  <32.915524, 28.183922, 50.170689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.130547, 28.113194, 50.250458>,  <33.488914, 27.995312, 50.383404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130547, 28.113194, 50.250458> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385014, -0.142006, 0.911920,
		0.221549, 0.944978, 0.240692,
		-0.895924, 0.294705, -0.332369,
		32.861771, 28.201605, 50.150745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386410, 28.424675, 50.930843>,  <33.488914, 27.995312, 50.383404>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386410, 28.424675, 50.930843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.039032, 28.361494, 50.742863>,  <32.830605, 28.323586, 50.630074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.039032, 28.361494, 50.742863>,  <33.386410, 28.424675, 50.930843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039032, 28.361494, 50.742863> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492265, 0.161961, 0.855245,
		-0.058973, 0.974074, -0.218409,
		-0.868445, -0.157951, -0.469951,
		32.778500, 28.314108, 50.601879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825848, 28.931372, 51.122677>,  <33.386410, 28.424675, 50.930843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825848, 28.931372, 51.122677> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.609394, 28.627337, 50.978764>,  <32.479523, 28.444916, 50.892418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.609394, 28.627337, 50.978764>,  <32.825848, 28.931372, 51.122677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609394, 28.627337, 50.978764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619617, 0.071127, 0.781674,
		-0.568553, 0.645913, -0.509454,
		-0.541130, -0.760090, -0.359779,
		32.447056, 28.399309, 50.870831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236145, 29.206240, 51.361504>,  <32.825848, 28.931372, 51.122677>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236145, 29.206240, 51.361504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.194489, 28.816282, 51.282780>,  <32.169495, 28.582308, 51.235546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.194489, 28.816282, 51.282780>,  <32.236145, 29.206240, 51.361504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194489, 28.816282, 51.282780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735780, -0.057623, 0.674764,
		-0.669165, 0.215082, -0.711307,
		-0.104143, -0.974894, -0.196812,
		32.163246, 28.523813, 51.223736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533529, 29.110565, 51.197273>,  <32.236145, 29.206240, 51.361504>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533529, 29.110565, 51.197273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.693731, 28.766325, 51.323105>,  <31.789852, 28.559780, 51.398605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.693731, 28.766325, 51.323105>,  <31.533529, 29.110565, 51.197273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693731, 28.766325, 51.323105> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766727, -0.126777, 0.629330,
		-0.501720, -0.493249, -0.710621,
		0.400507, -0.860600, 0.314581,
		31.813883, 28.508144, 51.417480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109114, 29.437115, 50.630493>,  <31.533529, 29.110565, 51.197273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109114, 29.437115, 50.630493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.723442, 29.528629, 50.684181>,  <30.492039, 29.583538, 50.716393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.723442, 29.528629, 50.684181>,  <31.109114, 29.437115, 50.630493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723442, 29.528629, 50.684181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058811, 0.677806, -0.732885,
		-0.258650, -0.698739, -0.666982,
		-0.964179, 0.228786, 0.134221,
		30.434189, 29.597265, 50.724449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652115, 29.309349, 49.996288>,  <31.109114, 29.437115, 50.630493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652115, 29.309349, 49.996288> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.497713, 29.592813, 50.232525>,  <30.405073, 29.762892, 50.374268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.497713, 29.592813, 50.232525>,  <30.652115, 29.309349, 49.996288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.497713, 29.592813, 50.232525> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170096, 0.683912, -0.709458,
		-0.906680, -0.173395, -0.384532,
		-0.386003, 0.708659, 0.590596,
		30.381912, 29.805410, 50.409702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.006151, 29.635462, 49.719128>,  <30.652115, 29.309349, 49.996288>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.006151, 29.635462, 49.719128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.187473, 29.895498, 49.963058>,  <30.296267, 30.051521, 50.109417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.187473, 29.895498, 49.963058>,  <30.006151, 29.635462, 49.719128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187473, 29.895498, 49.963058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000716, 0.684426, -0.729082,
		-0.891354, 0.330061, 0.310720,
		0.453307, 0.650093, 0.609830,
		30.323465, 30.090527, 50.146008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570738, 30.215994, 49.821629>,  <30.006151, 29.635462, 49.719128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570738, 30.215994, 49.821629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.952856, 30.324905, 49.867706>,  <30.182127, 30.390253, 49.895351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.952856, 30.324905, 49.867706>,  <29.570738, 30.215994, 49.821629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952856, 30.324905, 49.867706> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114688, 0.700425, -0.704451,
		-0.272493, 0.659749, 0.700342,
		0.955298, 0.272279, 0.115196,
		30.239445, 30.406590, 49.902264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497581, 30.881823, 49.706833>,  <29.570738, 30.215994, 49.821629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497581, 30.881823, 49.706833> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.894159, 30.835560, 49.682613>,  <30.132105, 30.807802, 49.668083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.894159, 30.835560, 49.682613>,  <29.497581, 30.881823, 49.706833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.894159, 30.835560, 49.682613> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038625, 0.702905, -0.710234,
		0.124699, 0.701818, 0.701357,
		0.991443, -0.115655, -0.060544,
		30.191591, 30.800863, 49.664452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749996, 31.560896, 49.571579>,  <29.497581, 30.881823, 49.706833>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.749996, 31.560896, 49.571579> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.077131, 31.355434, 49.467808>,  <30.273413, 31.232159, 49.405544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.077131, 31.355434, 49.467808>,  <29.749996, 31.560896, 49.571579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077131, 31.355434, 49.467808> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088718, 0.557981, -0.825098,
		0.568567, 0.651782, 0.501909,
		0.817839, -0.513651, -0.259425,
		30.322483, 31.201340, 49.389980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346241, 32.134892, 49.428345>,  <29.749996, 31.560896, 49.571579>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346241, 32.134892, 49.428345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.397690, 31.783045, 49.245155>,  <30.428558, 31.571938, 49.135242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.397690, 31.783045, 49.245155>,  <30.346241, 32.134892, 49.428345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397690, 31.783045, 49.245155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114448, 0.471885, -0.874200,
		0.985068, 0.060026, 0.161364,
		0.128621, -0.879614, -0.457969,
		30.436275, 31.519161, 49.107765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787405, 32.732422, 49.783112>,  <30.346241, 32.134892, 49.428345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787405, 32.732422, 49.783112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.790182, 33.130810, 49.818897>,  <30.791847, 33.369843, 49.840366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.790182, 33.130810, 49.818897>,  <30.787405, 32.732422, 49.783112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.790182, 33.130810, 49.818897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112143, -0.089673, 0.989638,
		0.993668, 0.003163, -0.112313,
		0.006941, 0.995966, 0.089460,
		30.792265, 33.429600, 49.845734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386150, 32.939545, 50.226219>,  <30.787405, 32.732422, 49.783112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386150, 32.939545, 50.226219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.119757, 33.237511, 50.242020>,  <30.959921, 33.416290, 50.251499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.119757, 33.237511, 50.242020>,  <31.386150, 32.939545, 50.226219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119757, 33.237511, 50.242020> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014082, -0.065501, 0.997753,
		0.745832, 0.663933, 0.054113,
		-0.665986, 0.744918, 0.039503,
		30.919960, 33.460987, 50.253872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585230, 33.260685, 50.900101>,  <31.386150, 32.939545, 50.226219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585230, 33.260685, 50.900101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.239296, 33.449200, 50.830879>,  <31.031736, 33.562309, 50.789345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.239296, 33.449200, 50.830879>,  <31.585230, 33.260685, 50.900101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239296, 33.449200, 50.830879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208763, -0.024095, 0.977669,
		0.456597, 0.881648, 0.119227,
		-0.864833, 0.471291, -0.173054,
		30.979845, 33.590588, 50.778961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597893, 33.812534, 51.330563>,  <31.585230, 33.260685, 50.900101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597893, 33.812534, 51.330563> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.214142, 33.742054, 51.242428>,  <30.983891, 33.699768, 51.189548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.214142, 33.742054, 51.242428>,  <31.597893, 33.812534, 51.330563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214142, 33.742054, 51.242428> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205398, -0.099157, 0.973642,
		-0.193401, 0.979348, 0.058939,
		-0.959379, -0.176197, -0.220333,
		30.926329, 33.689194, 51.176327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.204527, 34.140533, 51.820957>,  <31.597893, 33.812534, 51.330563>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.204527, 34.140533, 51.820957> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.947920, 33.883781, 51.652931>,  <30.793957, 33.729733, 51.552116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.947920, 33.883781, 51.652931>,  <31.204527, 34.140533, 51.820957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947920, 33.883781, 51.652931> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408061, -0.178150, 0.895405,
		-0.649572, 0.745828, -0.147638,
		-0.641516, -0.641875, -0.420064,
		30.755465, 33.691219, 51.526913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495535, 34.358028, 52.053421>,  <31.204527, 34.140533, 51.820957>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495535, 34.358028, 52.053421> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.526640, 33.970997, 51.957302>,  <30.545303, 33.738777, 51.899632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.526640, 33.970997, 51.957302>,  <30.495535, 34.358028, 52.053421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526640, 33.970997, 51.957302> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256521, -0.252328, 0.933020,
		-0.963405, -0.010915, -0.267827,
		0.077764, -0.967580, -0.240295,
		30.549969, 33.680721, 51.885212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.049021, 34.106110, 52.390892>,  <30.495535, 34.358028, 52.053421>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.049021, 34.106110, 52.390892> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.252253, 33.767670, 52.326435>,  <30.374191, 33.564606, 52.287762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.252253, 33.767670, 52.326435>,  <30.049021, 34.106110, 52.390892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.252253, 33.767670, 52.326435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139218, -0.265307, 0.954060,
		-0.849984, -0.462305, -0.252590,
		0.508081, -0.846100, -0.161146,
		30.404676, 33.513840, 52.278091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715071, 33.570877, 52.844116>,  <30.049021, 34.106110, 52.390892>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715071, 33.570877, 52.844116> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.067736, 33.401878, 52.760048>,  <30.279335, 33.300480, 52.709606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.067736, 33.401878, 52.760048>,  <29.715071, 33.570877, 52.844116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067736, 33.401878, 52.760048> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028875, -0.396244, 0.917691,
		-0.471000, -0.815161, -0.337153,
		0.881660, -0.422497, -0.210168,
		30.332233, 33.275131, 52.696999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583702, 32.906143, 53.102459>,  <29.715071, 33.570877, 52.844116>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583702, 32.906143, 53.102459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.978058, 32.946968, 53.049385>,  <30.214672, 32.971462, 53.017540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.978058, 32.946968, 53.049385>,  <29.583702, 32.906143, 53.102459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978058, 32.946968, 53.049385> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153952, -0.241555, 0.958097,
		0.065735, -0.965005, -0.253859,
		0.985889, 0.102063, -0.132686,
		30.273825, 32.977589, 53.009579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.635185, 37.061962, 37.875244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979965, 37.081535, 38.077095>,  <34.186832, 37.093281, 38.198204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979965, 37.081535, 38.077095>,  <33.635185, 37.061962, 37.875244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979965, 37.081535, 38.077095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452830, -0.373324, 0.809675,
		0.228008, -0.926410, -0.299629,
		0.861950, 0.048932, 0.504627,
		34.238548, 37.096214, 38.228481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736217, 36.462727, 38.126987>,  <33.635185, 37.061962, 37.875244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736217, 36.462727, 38.126987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930218, 36.721725, 38.362114>,  <34.046616, 36.877125, 38.503189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930218, 36.721725, 38.362114>,  <33.736217, 36.462727, 38.126987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930218, 36.721725, 38.362114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421600, -0.415770, 0.805846,
		0.766179, -0.638655, 0.071338,
		0.484997, 0.647499, 0.587812,
		34.075718, 36.915974, 38.538456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093639, 36.030834, 38.636421>,  <33.736217, 36.462727, 38.126987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093639, 36.030834, 38.636421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005394, 36.398209, 38.767757>,  <33.952446, 36.618633, 38.846558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005394, 36.398209, 38.767757>,  <34.093639, 36.030834, 38.636421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005394, 36.398209, 38.767757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263706, -0.380264, 0.886486,
		0.939035, 0.108990, 0.326090,
		-0.220618, 0.918434, 0.328340,
		33.939209, 36.673740, 38.866261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385029, 36.036518, 39.249626>,  <34.093639, 36.030834, 38.636421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385029, 36.036518, 39.249626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098618, 36.315731, 39.252716>,  <33.926769, 36.483257, 39.254570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098618, 36.315731, 39.252716>,  <34.385029, 36.036518, 39.249626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098618, 36.315731, 39.252716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271431, -0.288595, 0.918171,
		0.643139, 0.655340, 0.396109,
		-0.716029, 0.698028, 0.007727,
		33.883808, 36.525139, 39.255035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400181, 36.373680, 39.869064>,  <34.385029, 36.036518, 39.249626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400181, 36.373680, 39.869064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027645, 36.469604, 39.759449>,  <33.804123, 36.527157, 39.693680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027645, 36.469604, 39.759449>,  <34.400181, 36.373680, 39.869064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027645, 36.469604, 39.759449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342137, -0.318594, 0.883991,
		0.124683, 0.917055, 0.378767,
		-0.931341, 0.239808, -0.274035,
		33.748241, 36.541546, 39.677238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211056, 36.712738, 40.464855>,  <34.400181, 36.373680, 39.869064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211056, 36.712738, 40.464855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868347, 36.619247, 40.280979>,  <33.662724, 36.563152, 40.170654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868347, 36.619247, 40.280979>,  <34.211056, 36.712738, 40.464855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868347, 36.619247, 40.280979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435488, -0.149529, 0.887689,
		-0.276213, 0.960736, 0.026327,
		-0.856771, -0.233726, -0.459691,
		33.611317, 36.549129, 40.143070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777069, 37.065804, 40.808685>,  <34.211056, 36.712738, 40.464855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777069, 37.065804, 40.808685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560089, 36.780766, 40.630718>,  <33.429901, 36.609745, 40.523937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560089, 36.780766, 40.630718>,  <33.777069, 37.065804, 40.808685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560089, 36.780766, 40.630718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607139, -0.033503, 0.793890,
		-0.580626, 0.700778, -0.414469,
		-0.542454, -0.712593, -0.444922,
		33.397354, 36.566986, 40.497242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020069, 37.260380, 40.997021>,  <33.777069, 37.065804, 40.808685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020069, 37.260380, 40.997021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024952, 36.876675, 40.884121>,  <33.027882, 36.646450, 40.816380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024952, 36.876675, 40.884121>,  <33.020069, 37.260380, 40.997021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024952, 36.876675, 40.884121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749578, -0.195602, 0.632354,
		-0.661803, 0.203849, -0.721431,
		0.012208, -0.959263, -0.282251,
		33.028614, 36.588894, 40.799446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367809, 37.119766, 40.720032>,  <33.020069, 37.260380, 40.997021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367809, 37.119766, 40.720032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512115, 36.766941, 40.841232>,  <32.598701, 36.555244, 40.913952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512115, 36.766941, 40.841232>,  <32.367809, 37.119766, 40.720032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512115, 36.766941, 40.841232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794116, -0.120140, 0.595773,
		-0.489108, -0.455555, -0.743804,
		0.360767, -0.882064, 0.303002,
		32.620346, 36.502323, 40.932133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771854, 36.775337, 40.714916>,  <32.367809, 37.119766, 40.720032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771854, 36.775337, 40.714916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039944, 36.563190, 40.922573>,  <32.200798, 36.435902, 41.047169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039944, 36.563190, 40.922573>,  <31.771854, 36.775337, 40.714916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039944, 36.563190, 40.922573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691075, -0.190965, 0.697100,
		-0.270582, -0.825979, -0.494514,
		0.670225, -0.530368, 0.519142,
		32.241013, 36.404079, 41.078316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423012, 36.217419, 41.007912>,  <31.771854, 36.775337, 40.714916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423012, 36.217419, 41.007912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743235, 36.257381, 41.244259>,  <31.935369, 36.281361, 41.386066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743235, 36.257381, 41.244259>,  <31.423012, 36.217419, 41.007912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743235, 36.257381, 41.244259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586175, -0.074328, 0.806768,
		0.124520, -0.992217, -0.000941,
		0.800559, 0.099907, 0.590868,
		31.983402, 36.287354, 41.421520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371370, 35.596706, 41.408730>,  <31.423012, 36.217419, 41.007912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371370, 35.596706, 41.408730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625870, 35.822651, 41.618916>,  <31.778570, 35.958218, 41.745026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625870, 35.822651, 41.618916>,  <31.371370, 35.596706, 41.408730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625870, 35.822651, 41.618916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551776, -0.142848, 0.821668,
		0.539192, -0.812726, 0.220791,
		0.636251, 0.564864, 0.525465,
		31.816746, 35.992111, 41.776554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833887, 35.002258, 41.337399>,  <31.371370, 35.596706, 41.408730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833887, 35.002258, 41.337399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653507, 34.668282, 41.211212>,  <31.545280, 34.467896, 41.135498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653507, 34.668282, 41.211212>,  <31.833887, 35.002258, 41.337399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653507, 34.668282, 41.211212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213787, 0.242117, -0.946401,
		0.866569, -0.494221, 0.069317,
		-0.450948, -0.834940, -0.315469,
		31.518223, 34.417801, 41.116573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291756, 34.638863, 40.925308>,  <31.833887, 35.002258, 41.337399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291756, 34.638863, 40.925308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926228, 34.536819, 40.798912>,  <31.706911, 34.475594, 40.723076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926228, 34.536819, 40.798912>,  <32.291756, 34.638863, 40.925308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926228, 34.536819, 40.798912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299321, 0.102796, -0.948599,
		0.274479, -0.961432, -0.017578,
		-0.913821, -0.255109, -0.315992,
		31.652081, 34.460285, 40.704113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428097, 34.234406, 40.340439>,  <32.291756, 34.638863, 40.925308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428097, 34.234406, 40.340439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037693, 34.318127, 40.316418>,  <31.803452, 34.368359, 40.302006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037693, 34.318127, 40.316418>,  <32.428097, 34.234406, 40.340439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037693, 34.318127, 40.316418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059790, -0.007608, -0.998182,
		-0.209377, -0.977822, -0.005089,
		-0.976005, 0.209301, -0.060057,
		31.744892, 34.380917, 40.298401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176617, 33.791855, 39.763809>,  <32.428097, 34.234406, 40.340439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176617, 33.791855, 39.763809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913420, 34.089310, 39.811218>,  <31.755501, 34.267780, 39.839664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913420, 34.089310, 39.811218>,  <32.176617, 33.791855, 39.763809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913420, 34.089310, 39.811218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014415, 0.144924, -0.989338,
		-0.752883, -0.652690, -0.084640,
		-0.657997, 0.743635, 0.118519,
		31.716021, 34.312401, 39.846775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647091, 33.650993, 39.262886>,  <32.176617, 33.791855, 39.763809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647091, 33.650993, 39.262886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600182, 34.036037, 39.360554>,  <31.572037, 34.267063, 39.419155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600182, 34.036037, 39.360554>,  <31.647091, 33.650993, 39.262886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600182, 34.036037, 39.360554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290688, 0.201827, -0.935290,
		-0.949604, -0.180662, 0.256151,
		-0.117273, 0.962615, 0.244172,
		31.564999, 34.324821, 39.433804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090534, 33.889656, 38.825123>,  <31.647091, 33.650993, 39.262886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090534, 33.889656, 38.825123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276674, 34.228474, 38.927856>,  <31.388357, 34.431767, 38.989494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276674, 34.228474, 38.927856>,  <31.090534, 33.889656, 38.825123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276674, 34.228474, 38.927856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053676, 0.262624, -0.963404,
		-0.883498, 0.462104, 0.076745,
		0.465349, 0.847047, 0.256832,
		31.416279, 34.482586, 39.004906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689922, 34.452232, 38.555016>,  <31.090534, 33.889656, 38.825123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689922, 34.452232, 38.555016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072710, 34.558590, 38.601505>,  <31.302383, 34.622406, 38.629398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072710, 34.558590, 38.601505>,  <30.689922, 34.452232, 38.555016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072710, 34.558590, 38.601505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064268, 0.196375, -0.978420,
		-0.282984, 0.943788, 0.170836,
		0.956969, 0.265898, 0.116226,
		31.359800, 34.638359, 38.636372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730350, 35.131256, 38.231033>,  <30.689922, 34.452232, 38.555016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730350, 35.131256, 38.231033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090059, 34.956459, 38.238514>,  <31.305883, 34.851582, 38.243004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090059, 34.956459, 38.238514>,  <30.730350, 35.131256, 38.231033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090059, 34.956459, 38.238514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047232, 0.054510, -0.997395,
		0.434837, 0.897811, 0.069660,
		0.899270, -0.436995, 0.018702,
		31.359840, 34.825359, 38.244125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152941, 35.488495, 37.665470>,  <30.730350, 35.131256, 38.231033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152941, 35.488495, 37.665470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378902, 35.172596, 37.761127>,  <31.514479, 34.983059, 37.818523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378902, 35.172596, 37.761127>,  <31.152941, 35.488495, 37.665470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378902, 35.172596, 37.761127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202458, -0.148308, -0.967996,
		0.799935, 0.595240, 0.076111,
		0.564902, -0.789743, 0.239148,
		31.548372, 34.935673, 37.832870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678440, 35.554935, 37.202560>,  <31.152941, 35.488495, 37.665470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678440, 35.554935, 37.202560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695272, 35.173977, 37.323345>,  <31.705372, 34.945404, 37.395817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695272, 35.173977, 37.323345>,  <31.678440, 35.554935, 37.202560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695272, 35.173977, 37.323345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235329, -0.284274, -0.929413,
		0.971004, 0.110171, 0.212162,
		0.042082, -0.952392, 0.301958,
		31.707897, 34.888260, 37.413933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.311382, 35.311138, 36.961277>,  <31.678440, 35.554935, 37.202560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.311382, 35.311138, 36.961277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103645, 34.975342, 37.025196>,  <31.979002, 34.773865, 37.063549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103645, 34.975342, 37.025196>,  <32.311382, 35.311138, 36.961277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103645, 34.975342, 37.025196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283548, -0.345684, -0.894485,
		0.806151, -0.419237, 0.417565,
		-0.519347, -0.839490, 0.159800,
		31.947842, 34.723495, 37.073135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749069, 34.712299, 36.831966>,  <32.311382, 35.311138, 36.961277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749069, 34.712299, 36.831966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369305, 34.615131, 36.752369>,  <32.141445, 34.556831, 36.704609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369305, 34.615131, 36.752369>,  <32.749069, 34.712299, 36.831966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369305, 34.615131, 36.752369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273920, -0.330796, -0.903074,
		0.153549, -0.911901, 0.380603,
		-0.949416, -0.242921, -0.198994,
		32.084480, 34.542255, 36.692669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030270, 35.051403, 37.458794>,  <32.749069, 34.712299, 36.831966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030270, 35.051403, 37.458794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247509, 34.842930, 37.195457>,  <33.377853, 34.717846, 37.037457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247509, 34.842930, 37.195457>,  <33.030270, 35.051403, 37.458794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247509, 34.842930, 37.195457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823502, 0.177498, 0.538831,
		-0.163974, -0.834784, 0.525593,
		0.543099, -0.521181, -0.658341,
		33.410439, 34.686577, 36.997955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468636, 34.453663, 37.818504>,  <33.030270, 35.051403, 37.458794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468636, 34.453663, 37.818504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622574, 34.593380, 37.476768>,  <33.714935, 34.677212, 37.271729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622574, 34.593380, 37.476768>,  <33.468636, 34.453663, 37.818504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622574, 34.593380, 37.476768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728746, 0.453046, 0.513496,
		0.566415, -0.820209, -0.080198,
		0.384841, 0.349296, -0.854336,
		33.738026, 34.698170, 37.220467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143192, 34.369305, 37.616852>,  <33.468636, 34.453663, 37.818504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143192, 34.369305, 37.616852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414322, 34.124454, 37.453945>,  <34.577000, 33.977547, 37.356201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414322, 34.124454, 37.453945>,  <34.143192, 34.369305, 37.616852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414322, 34.124454, 37.453945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171390, -0.407117, 0.897152,
		-0.714971, -0.677909, -0.171041,
		0.677821, -0.612124, -0.407264,
		34.617668, 33.940819, 37.331768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921627, 33.677521, 37.761189>,  <34.143192, 34.369305, 37.616852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921627, 33.677521, 37.761189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312523, 33.694778, 37.678101>,  <34.547058, 33.705132, 37.628246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312523, 33.694778, 37.678101>,  <33.921627, 33.677521, 37.761189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312523, 33.694778, 37.678101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192134, -0.595190, 0.780278,
		-0.089969, -0.802426, -0.589930,
		0.977236, 0.043145, -0.207722,
		34.605694, 33.707722, 37.615784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221050, 32.954559, 37.547245>,  <33.921627, 33.677521, 37.761189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221050, 32.954559, 37.547245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471909, 33.202316, 37.736156>,  <34.622425, 33.350971, 37.849503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471909, 33.202316, 37.736156>,  <34.221050, 32.954559, 37.547245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471909, 33.202316, 37.736156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046064, -0.575784, 0.816303,
		0.777539, -0.533695, -0.332569,
		0.627145, 0.619389, 0.472279,
		34.660053, 33.388134, 37.877838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675518, 32.520294, 38.000374>,  <34.221050, 32.954559, 37.547245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675518, 32.520294, 38.000374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706741, 32.894604, 38.137913>,  <34.725475, 33.119190, 38.220436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706741, 32.894604, 38.137913>,  <34.675518, 32.520294, 38.000374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706741, 32.894604, 38.137913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116385, -0.351091, 0.929080,
		0.990132, -0.032504, -0.136316,
		0.078058, 0.935777, 0.343844,
		34.730160, 33.175335, 38.241066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295265, 32.519012, 38.286339>,  <34.675518, 32.520294, 38.000374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295265, 32.519012, 38.286339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094891, 32.817440, 38.461819>,  <34.974667, 32.996494, 38.567104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094891, 32.817440, 38.461819>,  <35.295265, 32.519012, 38.286339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094891, 32.817440, 38.461819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251420, -0.359579, 0.898605,
		0.828163, 0.560437, -0.007451,
		-0.500932, 0.746065, 0.438695,
		34.944611, 33.041260, 38.593426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730564, 32.918766, 38.876625>,  <35.295265, 32.519012, 38.286339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730564, 32.918766, 38.876625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336098, 32.963654, 38.925415>,  <35.099419, 32.990585, 38.954689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336098, 32.963654, 38.925415>,  <35.730564, 32.918766, 38.876625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336098, 32.963654, 38.925415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083714, -0.297946, 0.950905,
		0.143049, 0.947964, 0.284432,
		-0.986169, 0.112215, 0.121979,
		35.040249, 32.997318, 38.962009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609444, 33.087631, 39.522121>,  <35.730564, 32.918766, 38.876625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609444, 33.087631, 39.522121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.221176, 33.027790, 39.446846>,  <34.988216, 32.991886, 39.401680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.221176, 33.027790, 39.446846>,  <35.609444, 33.087631, 39.522121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221176, 33.027790, 39.446846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118610, -0.382863, 0.916159,
		-0.209114, 0.911611, 0.353889,
		-0.970671, -0.149607, -0.188188,
		34.929974, 32.982906, 39.390388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249302, 33.240158, 40.157055>,  <35.609444, 33.087631, 39.522121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249302, 33.240158, 40.157055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998550, 33.023003, 39.933521>,  <34.848099, 32.892708, 39.799400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998550, 33.023003, 39.933521>,  <35.249302, 33.240158, 40.157055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998550, 33.023003, 39.933521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244345, -0.544087, 0.802661,
		-0.739812, 0.639717, 0.208422,
		-0.626876, -0.542891, -0.558834,
		34.810486, 32.860134, 39.765869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679256, 33.337135, 40.462803>,  <35.249302, 33.240158, 40.157055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679256, 33.337135, 40.462803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678982, 32.994247, 40.256824>,  <34.678818, 32.788513, 40.133240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678982, 32.994247, 40.256824>,  <34.679256, 33.337135, 40.462803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678982, 32.994247, 40.256824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138262, -0.509917, 0.849039,
		-0.990395, 0.071778, -0.118173,
		-0.000684, -0.857224, -0.514944,
		34.678776, 32.737080, 40.102341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181831, 32.842354, 40.808220>,  <34.679256, 33.337135, 40.462803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181831, 32.842354, 40.808220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377399, 32.579250, 40.579029>,  <34.494740, 32.421387, 40.441513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377399, 32.579250, 40.579029>,  <34.181831, 32.842354, 40.808220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377399, 32.579250, 40.579029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155926, -0.712156, 0.684485,
		-0.858277, -0.245320, -0.450753,
		0.488924, -0.657762, -0.572976,
		34.524078, 32.381920, 40.407135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862675, 32.280857, 40.839672>,  <34.181831, 32.842354, 40.808220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862675, 32.280857, 40.839672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207840, 32.129707, 40.705452>,  <34.414940, 32.039017, 40.624920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207840, 32.129707, 40.705452>,  <33.862675, 32.280857, 40.839672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207840, 32.129707, 40.705452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072931, -0.750150, 0.657234,
		-0.500064, -0.542663, -0.674872,
		0.862912, -0.377878, -0.335546,
		34.466713, 32.016342, 40.604790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717667, 31.659470, 40.907455>,  <33.862675, 32.280857, 40.839672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717667, 31.659470, 40.907455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117157, 31.674959, 40.920448>,  <34.356850, 31.684252, 40.928246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117157, 31.674959, 40.920448>,  <33.717667, 31.659470, 40.907455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117157, 31.674959, 40.920448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002018, -0.611645, 0.791129,
		0.050505, -0.790184, -0.610785,
		0.998722, 0.038723, 0.032486,
		34.416775, 31.686577, 40.930195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864616, 31.075445, 41.141521>,  <33.717667, 31.659470, 40.907455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864616, 31.075445, 41.141521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232800, 31.228027, 41.175560>,  <34.453709, 31.319576, 41.195984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232800, 31.228027, 41.175560>,  <33.864616, 31.075445, 41.141521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232800, 31.228027, 41.175560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167690, -0.582138, 0.795610,
		0.353030, -0.718058, -0.599802,
		0.920462, 0.381455, 0.085101,
		34.508938, 31.342464, 41.201092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320885, 30.544737, 41.364681>,  <33.864616, 31.075445, 41.141521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320885, 30.544737, 41.364681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499435, 30.890577, 41.456955>,  <34.606567, 31.098082, 41.512318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499435, 30.890577, 41.456955>,  <34.320885, 30.544737, 41.364681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499435, 30.890577, 41.456955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201582, -0.348320, 0.915444,
		0.871844, -0.362133, -0.329770,
		0.446378, 0.864600, 0.230681,
		34.633350, 31.149958, 41.526157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956875, 30.381407, 41.720314>,  <34.320885, 30.544737, 41.364681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956875, 30.381407, 41.720314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869865, 30.756794, 41.827618>,  <34.817661, 30.982027, 41.892002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869865, 30.756794, 41.827618>,  <34.956875, 30.381407, 41.720314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869865, 30.756794, 41.827618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245758, -0.213328, 0.945566,
		0.944610, 0.271606, -0.184233,
		-0.217519, 0.938468, 0.268261,
		34.804611, 31.038334, 41.908096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444195, 30.477201, 42.175522>,  <34.956875, 30.381407, 41.720314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444195, 30.477201, 42.175522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194725, 30.780794, 42.250328>,  <35.045044, 30.962950, 42.295212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194725, 30.780794, 42.250328>,  <35.444195, 30.477201, 42.175522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194725, 30.780794, 42.250328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150897, -0.117852, 0.981499,
		0.766979, 0.640359, -0.041026,
		-0.623677, 0.758980, 0.187019,
		35.007622, 31.008488, 42.306435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834805, 30.901249, 42.699482>,  <35.444195, 30.477201, 42.175522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834805, 30.901249, 42.699482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453896, 30.998705, 42.773037>,  <35.225349, 31.057178, 42.817169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453896, 30.998705, 42.773037>,  <35.834805, 30.901249, 42.699482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453896, 30.998705, 42.773037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178271, -0.045115, 0.982947,
		0.247784, 0.968815, -0.000472,
		-0.952272, 0.243642, 0.183891,
		35.168213, 31.071798, 42.828205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862514, 31.434141, 43.193756>,  <35.834805, 30.901249, 42.699482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862514, 31.434141, 43.193756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480377, 31.316517, 43.205341>,  <35.251095, 31.245943, 43.212292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480377, 31.316517, 43.205341>,  <35.862514, 31.434141, 43.193756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480377, 31.316517, 43.205341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038443, 0.220881, 0.974543,
		-0.292972, 0.929914, -0.222323,
		-0.955348, -0.294060, 0.028964,
		35.193771, 31.228298, 43.214031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560493, 31.876646, 43.759789>,  <35.862514, 31.434141, 43.193756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560493, 31.876646, 43.759789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336941, 31.550266, 43.700623>,  <35.202808, 31.354439, 43.665123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336941, 31.550266, 43.700623>,  <35.560493, 31.876646, 43.759789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336941, 31.550266, 43.700623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147478, -0.077731, 0.986006,
		-0.816030, 0.572872, -0.076893,
		-0.558878, -0.815951, -0.147917,
		35.169277, 31.305481, 43.656246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048645, 31.905071, 44.188446>,  <35.560493, 31.876646, 43.759789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048645, 31.905071, 44.188446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022106, 31.514254, 44.107468>,  <35.006184, 31.279762, 44.058880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022106, 31.514254, 44.107468>,  <35.048645, 31.905071, 44.188446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022106, 31.514254, 44.107468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298299, -0.174187, 0.938444,
		-0.952164, 0.122651, -0.279894,
		-0.066347, -0.977044, -0.202441,
		35.002201, 31.221140, 44.046734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439674, 31.633713, 44.545658>,  <35.048645, 31.905071, 44.188446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439674, 31.633713, 44.545658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677311, 31.315815, 44.495964>,  <34.819893, 31.125076, 44.466148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677311, 31.315815, 44.495964>,  <34.439674, 31.633713, 44.545658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677311, 31.315815, 44.495964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139572, -0.253949, 0.957094,
		-0.792196, -0.551262, -0.261793,
		0.594092, -0.794745, -0.124237,
		34.855537, 31.077391, 44.458694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075001, 31.186043, 44.855343>,  <34.439674, 31.633713, 44.545658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075001, 31.186043, 44.855343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417866, 30.981754, 44.828693>,  <34.623585, 30.859182, 44.812706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417866, 30.981754, 44.828693>,  <34.075001, 31.186043, 44.855343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417866, 30.981754, 44.828693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049399, -0.210276, 0.976393,
		-0.512672, -0.833636, -0.205470,
		0.857162, -0.510720, -0.066622,
		34.675014, 30.828539, 44.808708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891384, 30.553429, 45.043331>,  <34.075001, 31.186043, 44.855343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891384, 30.553429, 45.043331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285244, 30.594349, 45.099907>,  <34.521561, 30.618902, 45.133854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285244, 30.594349, 45.099907>,  <33.891384, 30.553429, 45.043331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285244, 30.594349, 45.099907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104968, -0.300390, 0.948023,
		0.139471, -0.948314, -0.285039,
		0.984647, 0.102302, 0.141438,
		34.580639, 30.625040, 45.142338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179070, 29.891397, 45.286663>,  <33.891384, 30.553429, 45.043331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179070, 29.891397, 45.286663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442612, 30.162054, 45.418159>,  <34.600735, 30.324448, 45.497059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442612, 30.162054, 45.418159>,  <34.179070, 29.891397, 45.286663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442612, 30.162054, 45.418159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070618, -0.490697, 0.868464,
		0.748950, -0.548976, -0.371080,
		0.658853, 0.676641, 0.328740,
		34.640266, 30.365046, 45.516781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559437, 29.480330, 45.708519>,  <34.179070, 29.891397, 45.286663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559437, 29.480330, 45.708519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650429, 29.855282, 45.814026>,  <34.705025, 30.080254, 45.877331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650429, 29.855282, 45.814026>,  <34.559437, 29.480330, 45.708519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650429, 29.855282, 45.814026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075814, -0.287092, 0.954898,
		0.970827, -0.197222, -0.136374,
		0.227479, 0.937380, 0.263764,
		34.718674, 30.136496, 45.893154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204483, 29.407949, 46.048637>,  <34.559437, 29.480330, 45.708519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204483, 29.407949, 46.048637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036743, 29.752398, 46.163612>,  <34.936100, 29.959066, 46.232597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036743, 29.752398, 46.163612>,  <35.204483, 29.407949, 46.048637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036743, 29.752398, 46.163612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094772, -0.273371, 0.957229,
		0.902865, 0.428654, 0.033028,
		-0.419348, 0.861118, 0.287441,
		34.910938, 30.010733, 46.249844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527630, 29.520132, 46.740883>,  <35.204483, 29.407949, 46.048637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527630, 29.520132, 46.740883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212757, 29.766441, 46.727226>,  <35.023834, 29.914227, 46.719032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212757, 29.766441, 46.727226>,  <35.527630, 29.520132, 46.740883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212757, 29.766441, 46.727226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125325, -0.105519, 0.986488,
		0.603849, 0.780828, 0.160235,
		-0.787185, 0.615771, -0.034140,
		34.976601, 29.951172, 46.716984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582333, 30.015045, 47.351315>,  <35.527630, 29.520132, 46.740883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582333, 30.015045, 47.351315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199085, 29.994425, 47.238640>,  <34.969135, 29.982052, 47.171036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199085, 29.994425, 47.238640>,  <35.582333, 30.015045, 47.351315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199085, 29.994425, 47.238640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269122, -0.174099, 0.947240,
		-0.097873, 0.983378, 0.152934,
		-0.958120, -0.051551, -0.281688,
		34.911648, 29.978960, 47.154133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744751, 30.705601, 47.572502>,  <35.582333, 30.015045, 47.351315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744751, 30.705601, 47.572502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972954, 30.982574, 47.749161>,  <36.109875, 31.148760, 47.855156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972954, 30.982574, 47.749161>,  <35.744751, 30.705601, 47.572502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972954, 30.982574, 47.749161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217207, 0.391391, -0.894223,
		-0.792050, 0.606090, 0.072890,
		0.570508, 0.692437, 0.441648,
		36.144108, 31.190306, 47.881657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497562, 31.335546, 47.294273>,  <35.744751, 30.705601, 47.572502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497562, 31.335546, 47.294273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867619, 31.400492, 47.431530>,  <36.089653, 31.439459, 47.513885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867619, 31.400492, 47.431530>,  <35.497562, 31.335546, 47.294273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867619, 31.400492, 47.431530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235906, 0.462288, -0.854774,
		-0.297415, 0.871738, 0.389380,
		0.925145, 0.162365, 0.343140,
		36.145161, 31.449202, 47.534473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608822, 32.079231, 47.196068>,  <35.497562, 31.335546, 47.294273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608822, 32.079231, 47.196068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960884, 31.890018, 47.211891>,  <36.172123, 31.776489, 47.221386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960884, 31.890018, 47.211891>,  <35.608822, 32.079231, 47.196068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960884, 31.890018, 47.211891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284179, 0.458338, -0.842121,
		0.380224, 0.752438, 0.537836,
		0.880155, -0.473036, 0.039556,
		36.224930, 31.748108, 47.223759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195770, 32.567463, 47.240601>,  <35.608822, 32.079231, 47.196068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195770, 32.567463, 47.240601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368393, 32.236309, 47.097290>,  <36.471966, 32.037617, 47.011303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368393, 32.236309, 47.097290>,  <36.195770, 32.567463, 47.240601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368393, 32.236309, 47.097290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401784, 0.531995, -0.745353,
		0.807670, 0.177710, 0.562217,
		0.431553, -0.827889, -0.358276,
		36.497860, 31.987942, 46.989807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896229, 32.819752, 46.884857>,  <36.195770, 32.567463, 47.240601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896229, 32.819752, 46.884857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829350, 32.446693, 46.756977>,  <36.789223, 32.222858, 46.680248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829350, 32.446693, 46.756977>,  <36.896229, 32.819752, 46.884857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829350, 32.446693, 46.756977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484923, 0.204543, -0.850301,
		0.858425, -0.297202, 0.418064,
		-0.167199, -0.932648, -0.319705,
		36.779190, 32.166901, 46.661064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
