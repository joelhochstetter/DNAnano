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
	<24.337353, 34.684731, 35.338924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.360764, 35.069950, 35.233761>,  <24.374811, 35.301083, 35.170662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.360764, 35.069950, 35.233761>,  <24.337353, 34.684731, 35.338924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.360764, 35.069950, 35.233761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959852, -0.126660, -0.250281,
		-0.274331, -0.237703, -0.931794,
		0.058529, 0.963044, -0.262907,
		24.378323, 35.358864, 35.154888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.717724, 34.772934, 34.703743>,  <24.337353, 34.684731, 35.338924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.717724, 34.772934, 34.703743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.772865, 35.135509, 34.863426>,  <24.805950, 35.353054, 34.959236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.772865, 35.135509, 34.863426>,  <24.717724, 34.772934, 34.703743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.772865, 35.135509, 34.863426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985457, -0.085093, -0.147081,
		-0.099351, 0.413674, -0.904988,
		0.137852, 0.906440, 0.399204,
		24.814220, 35.407440, 34.983189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.061953, 35.328495, 34.243248>,  <24.717724, 34.772934, 34.703743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.061953, 35.328495, 34.243248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.156891, 35.389389, 34.627018>,  <25.213854, 35.425926, 34.857281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.156891, 35.389389, 34.627018>,  <25.061953, 35.328495, 34.243248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.156891, 35.389389, 34.627018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963520, -0.162638, -0.212553,
		0.123681, 0.974871, -0.185281,
		0.237345, 0.152233, 0.959423,
		25.228094, 35.435059, 34.914845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.677361, 35.657364, 34.289558>,  <25.061953, 35.328495, 34.243248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.677361, 35.657364, 34.289558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.621956, 35.449631, 34.626869>,  <25.588713, 35.324989, 34.829254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.621956, 35.449631, 34.626869>,  <25.677361, 35.657364, 34.289558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.621956, 35.449631, 34.626869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969853, -0.243511, 0.009337,
		0.200497, 0.819144, 0.537406,
		-0.138513, -0.519333, 0.843272,
		25.580402, 35.293831, 34.879852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.982683, 35.960949, 35.001804>,  <25.677361, 35.657364, 34.289558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.982683, 35.960949, 35.001804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.958801, 35.562603, 34.974434>,  <25.944473, 35.323593, 34.958012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.958801, 35.562603, 34.974434>,  <25.982683, 35.960949, 35.001804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.958801, 35.562603, 34.974434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984170, -0.070183, 0.162737,
		-0.166867, -0.057629, 0.984294,
		-0.059702, -0.995868, -0.068428,
		25.940891, 35.263844, 34.953907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192810, 35.693268, 35.747532>,  <25.982683, 35.960949, 35.001804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.192810, 35.693268, 35.747532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265543, 35.502430, 35.403599>,  <26.309183, 35.387928, 35.197239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265543, 35.502430, 35.403599>,  <26.192810, 35.693268, 35.747532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265543, 35.502430, 35.403599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979740, 0.162549, 0.116996,
		0.083948, -0.863690, 0.496983,
		0.181832, -0.477092, -0.859837,
		26.320093, 35.359303, 35.145649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.537518, 35.194904, 35.884453>,  <26.192810, 35.693268, 35.747532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.537518, 35.194904, 35.884453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643290, 35.295895, 35.512146>,  <26.706753, 35.356491, 35.288761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643290, 35.295895, 35.512146>,  <26.537518, 35.194904, 35.884453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.643290, 35.295895, 35.512146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934784, 0.170258, 0.311755,
		0.237183, -0.952505, -0.190993,
		0.264430, 0.252481, -0.930769,
		26.722618, 35.371639, 35.232914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.127447, 34.994202, 35.266926>,  <26.537518, 35.194904, 35.884453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.127447, 34.994202, 35.266926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.214224, 35.252186, 34.973812>,  <27.266291, 35.406975, 34.797943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.214224, 35.252186, 34.973812>,  <27.127447, 34.994202, 35.266926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.214224, 35.252186, 34.973812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896711, -0.428335, -0.111525,
		-0.385804, -0.632897, -0.671265,
		0.216942, 0.644958, -0.732779,
		27.279306, 35.445675, 34.753979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.186802, 34.738972, 34.573578>,  <27.127447, 34.994202, 35.266926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.186802, 34.738972, 34.573578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.464212, 35.026230, 34.550655>,  <27.630659, 35.198586, 34.536900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.464212, 35.026230, 34.550655>,  <27.186802, 34.738972, 34.573578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.464212, 35.026230, 34.550655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707842, -0.694055, -0.131330,
		-0.134090, 0.050516, -0.989681,
		0.693527, 0.718148, -0.057308,
		27.672270, 35.241673, 34.533463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.559774, 34.620258, 34.010471>,  <27.186802, 34.738972, 34.573578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.559774, 34.620258, 34.010471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.831875, 34.846504, 34.196949>,  <27.995136, 34.982254, 34.308834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.831875, 34.846504, 34.196949>,  <27.559774, 34.620258, 34.010471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.831875, 34.846504, 34.196949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693798, -0.702031, -0.160616,
		0.236433, 0.432702, -0.869982,
		0.680253, 0.565617, 0.466191,
		28.035952, 35.016190, 34.336807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237984, 34.548855, 33.681442>,  <27.559774, 34.620258, 34.010471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237984, 34.548855, 33.681442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.344629, 34.668201, 34.048027>,  <28.408617, 34.739811, 34.267979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.344629, 34.668201, 34.048027>,  <28.237984, 34.548855, 33.681442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.344629, 34.668201, 34.048027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798751, -0.600531, -0.036860,
		0.539364, 0.741849, -0.398430,
		0.266615, 0.298366, 0.916458,
		28.424614, 34.757710, 34.322964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850922, 34.335991, 33.646519>,  <28.237984, 34.548855, 33.681442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850922, 34.335991, 33.646519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.778681, 34.415257, 34.031876>,  <28.735336, 34.462814, 34.263088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.778681, 34.415257, 34.031876>,  <28.850922, 34.335991, 33.646519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.778681, 34.415257, 34.031876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602254, -0.752116, 0.267604,
		0.777608, 0.628534, 0.016490,
		-0.180601, 0.198160, 0.963388,
		28.724501, 34.474705, 34.320892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.557251, 34.296268, 34.029213>,  <28.850922, 34.335991, 33.646519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.557251, 34.296268, 34.029213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274548, 34.250187, 34.308418>,  <29.104925, 34.222538, 34.475941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274548, 34.250187, 34.308418>,  <29.557251, 34.296268, 34.029213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.274548, 34.250187, 34.308418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500296, -0.778989, 0.377996,
		0.500195, 0.616364, 0.608194,
		-0.706760, -0.115205, 0.698010,
		29.062519, 34.215626, 34.517822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962263, 33.981010, 34.539146>,  <29.557251, 34.296268, 34.029213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.962263, 33.981010, 34.539146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.584377, 33.938221, 34.663128>,  <29.357647, 33.912548, 34.737518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.584377, 33.938221, 34.663128>,  <29.962263, 33.981010, 34.539146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.584377, 33.938221, 34.663128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265992, -0.802794, 0.533639,
		0.191743, 0.586582, 0.786865,
		-0.944713, -0.106978, 0.309957,
		29.300962, 33.906128, 34.756115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.990633, 33.781906, 35.336605>,  <29.962263, 33.981010, 34.539146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.990633, 33.781906, 35.336605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668360, 33.653633, 35.137390>,  <29.474997, 33.576668, 35.017860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668360, 33.653633, 35.137390>,  <29.990633, 33.781906, 35.336605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668360, 33.653633, 35.137390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132366, -0.916989, 0.376310,
		-0.577371, 0.237263, 0.781248,
		-0.805681, -0.320681, -0.498037,
		29.426655, 33.557430, 34.987980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476255, 33.384514, 35.765129>,  <29.990633, 33.781906, 35.336605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.476255, 33.384514, 35.765129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352859, 33.272095, 35.401623>,  <29.278822, 33.204643, 35.183521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352859, 33.272095, 35.401623>,  <29.476255, 33.384514, 35.765129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.352859, 33.272095, 35.401623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048825, -0.958776, 0.279937,
		-0.949973, 0.041988, 0.309496,
		-0.308491, -0.281043, -0.908762,
		29.260313, 33.187782, 35.128994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935173, 32.780724, 35.726509>,  <29.476255, 33.384514, 35.765129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935173, 32.780724, 35.726509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140522, 32.767555, 35.383495>,  <29.263731, 32.759655, 35.177689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140522, 32.767555, 35.383495>,  <28.935173, 32.780724, 35.726509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.140522, 32.767555, 35.383495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036440, -0.997526, 0.060113,
		-0.857392, -0.062109, -0.510902,
		0.513372, -0.032923, -0.857535,
		29.294533, 32.757679, 35.126236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.988852, 32.164688, 35.679150>,  <28.935173, 32.780724, 35.726509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.988852, 32.164688, 35.679150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177422, 32.241360, 35.334820>,  <29.290564, 32.287361, 35.128223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177422, 32.241360, 35.334820>,  <28.988852, 32.164688, 35.679150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177422, 32.241360, 35.334820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114023, -0.981149, -0.156029,
		-0.874504, -0.024598, -0.484394,
		0.471425, 0.191679, -0.860824,
		29.318850, 32.298862, 35.076572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.734905, 31.649733, 35.250031>,  <28.988852, 32.164688, 35.679150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.734905, 31.649733, 35.250031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.076962, 31.766249, 35.078503>,  <29.282196, 31.836159, 34.975586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.076962, 31.766249, 35.078503>,  <28.734905, 31.649733, 35.250031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.076962, 31.766249, 35.078503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199208, -0.948334, -0.246939,
		-0.478592, 0.125744, -0.868987,
		0.855141, 0.291292, -0.428815,
		29.333504, 31.853636, 34.949860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.642817, 31.553669, 34.515007>,  <28.734905, 31.649733, 35.250031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.642817, 31.553669, 34.515007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031662, 31.533562, 34.606628>,  <29.264969, 31.521498, 34.661602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031662, 31.533562, 34.606628>,  <28.642817, 31.553669, 34.515007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031662, 31.533562, 34.606628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007783, -0.969299, -0.245762,
		0.234376, 0.240692, -0.941879,
		0.972115, -0.050270, 0.229054,
		29.323296, 31.518480, 34.675343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913982, 31.149590, 33.917072>,  <28.642817, 31.553669, 34.515007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.913982, 31.149590, 33.917072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227016, 31.151670, 34.166080>,  <29.414837, 31.152920, 34.315487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227016, 31.151670, 34.166080>,  <28.913982, 31.149590, 33.917072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227016, 31.151670, 34.166080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277002, -0.898435, -0.340712,
		0.557524, 0.439075, -0.704543,
		0.782584, 0.005205, 0.622523,
		29.461792, 31.153233, 34.352837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457869, 30.901049, 33.516411>,  <28.913982, 31.149590, 33.917072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457869, 30.901049, 33.516411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.588449, 30.833313, 33.888378>,  <29.666798, 30.792671, 34.111561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.588449, 30.833313, 33.888378>,  <29.457869, 30.901049, 33.516411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.588449, 30.833313, 33.888378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263726, -0.928433, -0.261651,
		0.907678, 0.330661, -0.258428,
		0.326451, -0.169340, 0.929921,
		29.686384, 30.782511, 34.167355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122425, 30.637480, 33.401089>,  <29.457869, 30.901049, 33.516411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122425, 30.637480, 33.401089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.985231, 30.499615, 33.750618>,  <29.902914, 30.416895, 33.960335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.985231, 30.499615, 33.750618>,  <30.122425, 30.637480, 33.401089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.985231, 30.499615, 33.750618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157436, -0.938186, -0.308254,
		0.926053, 0.031845, 0.376047,
		-0.342985, -0.344663, 0.873824,
		29.882336, 30.396215, 34.012764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564678, 30.095261, 33.469864>,  <30.122425, 30.637480, 33.401089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564678, 30.095261, 33.469864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288288, 30.017492, 33.748363>,  <30.122454, 29.970831, 33.915462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288288, 30.017492, 33.748363>,  <30.564678, 30.095261, 33.469864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288288, 30.017492, 33.748363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113793, -0.980400, -0.160834,
		0.713867, -0.031905, 0.699554,
		-0.690974, -0.194419, 0.696245,
		30.080996, 29.959167, 33.957237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767910, 29.398535, 33.710484>,  <30.564678, 30.095261, 33.469864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767910, 29.398535, 33.710484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389778, 29.441601, 33.833618>,  <30.162899, 29.467440, 33.907497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389778, 29.441601, 33.833618>,  <30.767910, 29.398535, 33.710484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389778, 29.441601, 33.833618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149003, -0.982239, -0.114036,
		0.290092, -0.153669, 0.944581,
		-0.945328, 0.107664, 0.307837,
		30.106180, 29.473900, 33.925968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.610693, 28.997948, 34.368614>,  <30.767910, 29.398535, 33.710484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.610693, 28.997948, 34.368614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.318640, 29.040600, 34.098640>,  <30.143408, 29.066191, 33.936657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.318640, 29.040600, 34.098640>,  <30.610693, 28.997948, 34.368614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318640, 29.040600, 34.098640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054421, -0.993686, -0.098115,
		-0.681132, -0.034906, 0.731328,
		-0.730135, 0.106629, -0.674932,
		30.099600, 29.072588, 33.896160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999662, 28.673281, 34.515491>,  <30.610693, 28.997948, 34.368614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999662, 28.673281, 34.515491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976835, 28.647339, 34.116985>,  <29.963139, 28.631773, 33.877884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976835, 28.647339, 34.116985>,  <29.999662, 28.673281, 34.515491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976835, 28.647339, 34.116985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108600, -0.991563, 0.070772,
		-0.992446, 0.112233, 0.049542,
		-0.057067, -0.064857, -0.996261,
		29.959715, 28.627882, 33.818108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219280, 28.939360, 35.215275>,  <29.999662, 28.673281, 34.515491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219280, 28.939360, 35.215275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417646, 28.655529, 35.415504>,  <30.536667, 28.485231, 35.535641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417646, 28.655529, 35.415504>,  <30.219280, 28.939360, 35.215275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417646, 28.655529, 35.415504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350135, -0.690904, -0.632501,
		0.794653, 0.138400, -0.591077,
		0.495916, -0.709576, 0.500570,
		30.566422, 28.442656, 35.565674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925297, 28.619961, 34.936935>,  <30.219280, 28.939360, 35.215275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925297, 28.619961, 34.936935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674576, 28.388315, 35.145451>,  <30.524143, 28.249329, 35.270561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674576, 28.388315, 35.145451>,  <30.925297, 28.619961, 34.936935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674576, 28.388315, 35.145451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270498, -0.465691, -0.842593,
		0.730719, -0.669147, 0.135247,
		-0.626801, -0.579114, 0.521293,
		30.486536, 28.214581, 35.301838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013510, 27.908867, 34.854519>,  <30.925297, 28.619961, 34.936935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013510, 27.908867, 34.854519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625509, 27.948986, 34.943096>,  <30.392708, 27.973057, 34.996243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625509, 27.948986, 34.943096>,  <31.013510, 27.908867, 34.854519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625509, 27.948986, 34.943096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242632, -0.455612, -0.856474,
		0.014990, -0.884510, 0.466280,
		-0.970002, 0.100296, 0.221440,
		30.334509, 27.979074, 35.009529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616131, 27.245747, 34.757103>,  <31.013510, 27.908867, 34.854519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616131, 27.245747, 34.757103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354498, 27.547020, 34.729126>,  <30.197517, 27.727783, 34.712341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354498, 27.547020, 34.729126>,  <30.616131, 27.245747, 34.757103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354498, 27.547020, 34.729126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471772, -0.478473, -0.740605,
		-0.591276, -0.451420, 0.668291,
		-0.654083, 0.753183, -0.069942,
		30.158274, 27.772974, 34.708145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.851749, 26.995853, 34.864540>,  <30.616131, 27.245747, 34.757103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.851749, 26.995853, 34.864540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.988537, 27.282520, 34.621414>,  <30.070608, 27.454521, 34.475536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.988537, 27.282520, 34.621414>,  <29.851749, 26.995853, 34.864540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.988537, 27.282520, 34.621414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304528, -0.527392, -0.793171,
		-0.889000, 0.456336, 0.037895,
		0.341967, 0.716669, -0.607819,
		30.091127, 27.497520, 34.439068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262941, 27.262999, 34.486088>,  <29.851749, 26.995853, 34.864540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.262941, 27.262999, 34.486088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590088, 27.325626, 34.264610>,  <29.786377, 27.363203, 34.131721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590088, 27.325626, 34.264610>,  <29.262941, 27.262999, 34.486088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.590088, 27.325626, 34.264610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361225, -0.609322, -0.705864,
		-0.447894, 0.777312, -0.441788,
		0.817868, 0.156567, -0.553696,
		29.835447, 27.372597, 34.098503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151918, 27.288267, 33.674088>,  <29.262941, 27.262999, 34.486088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151918, 27.288267, 33.674088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540003, 27.192215, 33.686928>,  <29.772854, 27.134584, 33.694630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540003, 27.192215, 33.686928>,  <29.151918, 27.288267, 33.674088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540003, 27.192215, 33.686928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085759, -0.464329, -0.881501,
		0.226579, 0.852488, -0.471090,
		0.970210, -0.240130, 0.032098,
		29.831066, 27.120176, 33.696556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.502928, 27.520651, 33.122150>,  <29.151918, 27.288267, 33.674088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.502928, 27.520651, 33.122150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681002, 27.181376, 33.236961>,  <29.787846, 26.977810, 33.305847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681002, 27.181376, 33.236961>,  <29.502928, 27.520651, 33.122150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681002, 27.181376, 33.236961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140960, -0.382928, -0.912960,
		0.884274, 0.365977, -0.290034,
		0.445184, -0.848191, 0.287025,
		29.814556, 26.926918, 33.323071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588835, 28.004847, 32.467457>,  <29.502928, 27.520651, 33.122150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588835, 28.004847, 32.467457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292597, 28.132299, 32.230816>,  <29.114855, 28.208771, 32.088833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292597, 28.132299, 32.230816>,  <29.588835, 28.004847, 32.467457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292597, 28.132299, 32.230816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502074, 0.847541, -0.172038,
		0.446590, -0.424438, -0.787661,
		-0.740594, 0.318633, -0.591602,
		29.070419, 28.227890, 32.053337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985504, 28.459055, 32.046722>,  <29.588835, 28.004847, 32.467457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985504, 28.459055, 32.046722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602842, 28.566139, 32.000866>,  <29.373245, 28.630390, 31.973352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602842, 28.566139, 32.000866>,  <29.985504, 28.459055, 32.046722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.602842, 28.566139, 32.000866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289693, 0.915091, -0.280511,
		0.029814, -0.301563, -0.952980,
		-0.956655, 0.267709, -0.114643,
		29.315845, 28.646452, 31.966473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090254, 28.878075, 31.478535>,  <29.985504, 28.459055, 32.046722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090254, 28.878075, 31.478535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729088, 28.947453, 31.635841>,  <29.512388, 28.989079, 31.730225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729088, 28.947453, 31.635841>,  <30.090254, 28.878075, 31.478535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729088, 28.947453, 31.635841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134687, 0.983057, -0.124330,
		-0.408169, -0.059292, -0.910979,
		-0.902916, 0.173445, 0.393267,
		29.458214, 28.999487, 31.753822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757858, 29.229424, 30.949886>,  <30.090254, 28.878075, 31.478535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757858, 29.229424, 30.949886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.573553, 29.308352, 31.296011>,  <29.462971, 29.355709, 31.503685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.573553, 29.308352, 31.296011>,  <29.757858, 29.229424, 30.949886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573553, 29.308352, 31.296011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141755, 0.978817, -0.147724,
		-0.876130, 0.054596, -0.478973,
		-0.460762, 0.197322, 0.865311,
		29.435324, 29.367548, 31.555605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443024, 29.857559, 30.841166>,  <29.757858, 29.229424, 30.949886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443024, 29.857559, 30.841166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355848, 29.873211, 31.231237>,  <29.303543, 29.882603, 31.465281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355848, 29.873211, 31.231237>,  <29.443024, 29.857559, 30.841166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355848, 29.873211, 31.231237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053140, 0.998189, -0.028179,
		-0.974515, 0.045680, -0.219622,
		-0.217937, 0.039131, 0.975178,
		29.290466, 29.884951, 31.523790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848579, 30.325254, 30.987020>,  <29.443024, 29.857559, 30.841166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848579, 30.325254, 30.987020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.079550, 30.325626, 31.313599>,  <29.218132, 30.325850, 31.509544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.079550, 30.325626, 31.313599>,  <28.848579, 30.325254, 30.987020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.079550, 30.325626, 31.313599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221554, 0.962298, -0.157789,
		-0.785808, 0.271997, 0.555448,
		0.577425, 0.000930, 0.816444,
		29.252777, 30.325905, 31.558531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668165, 30.862635, 31.472141>,  <28.848579, 30.325254, 30.987020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668165, 30.862635, 31.472141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044632, 30.769215, 31.569843>,  <29.270512, 30.713161, 31.628466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044632, 30.769215, 31.569843>,  <28.668165, 30.862635, 31.472141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044632, 30.769215, 31.569843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259363, 0.962542, -0.079017,
		-0.216654, 0.137719, 0.966486,
		0.941165, -0.233552, 0.244258,
		29.326981, 30.699150, 31.643120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.607815, 31.399506, 31.940250>,  <28.668165, 30.862635, 31.472141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.607815, 31.399506, 31.940250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.982477, 31.299742, 31.841887>,  <29.207275, 31.239883, 31.782869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.982477, 31.299742, 31.841887>,  <28.607815, 31.399506, 31.940250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.982477, 31.299742, 31.841887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291103, 0.944767, 0.150581,
		0.194769, -0.212627, 0.957525,
		0.936656, -0.249410, -0.245908,
		29.263474, 31.224918, 31.768114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.016844, 31.581175, 32.484734>,  <28.607815, 31.399506, 31.940250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.016844, 31.581175, 32.484734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235966, 31.568430, 32.150333>,  <29.367439, 31.560783, 31.949694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235966, 31.568430, 32.150333>,  <29.016844, 31.581175, 32.484734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235966, 31.568430, 32.150333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155035, 0.985833, 0.064017,
		0.822115, -0.164678, 0.544985,
		0.547806, -0.031863, -0.835998,
		29.400307, 31.558870, 31.899534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418139, 32.011417, 32.661747>,  <29.016844, 31.581175, 32.484734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418139, 32.011417, 32.661747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.468794, 31.998819, 32.265167>,  <29.499187, 31.991259, 32.027218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.468794, 31.998819, 32.265167>,  <29.418139, 32.011417, 32.661747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468794, 31.998819, 32.265167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112744, 0.993476, -0.017163,
		0.985521, -0.109606, 0.129365,
		0.126639, -0.031499, -0.991449,
		29.506786, 31.989370, 31.967733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092638, 32.295460, 32.470604>,  <29.418139, 32.011417, 32.661747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092638, 32.295460, 32.470604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847685, 32.348591, 32.158875>,  <29.700712, 32.380470, 31.971836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847685, 32.348591, 32.158875>,  <30.092638, 32.295460, 32.470604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847685, 32.348591, 32.158875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199906, 0.979765, 0.009901,
		0.764868, -0.149728, -0.626545,
		-0.612384, 0.132823, -0.779323,
		29.663969, 32.388439, 31.925077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450771, 32.576305, 31.945297>,  <30.092638, 32.295460, 32.470604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450771, 32.576305, 31.945297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068617, 32.677856, 31.884920>,  <29.839325, 32.738789, 31.848694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068617, 32.677856, 31.884920>,  <30.450771, 32.576305, 31.945297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068617, 32.677856, 31.884920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250835, 0.967235, 0.039213,
		0.155950, -0.000398, -0.987765,
		-0.955385, 0.253881, -0.150940,
		29.782001, 32.754021, 31.839638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529352, 33.255501, 32.032845>,  <30.450771, 32.576305, 31.945297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529352, 33.255501, 32.032845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156837, 33.261230, 31.887245>,  <29.933329, 33.264668, 31.799885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156837, 33.261230, 31.887245>,  <30.529352, 33.255501, 32.032845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156837, 33.261230, 31.887245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023602, 0.999500, -0.021064,
		0.363518, -0.028208, -0.931160,
		-0.931288, 0.014320, -0.364002,
		29.877451, 33.265526, 31.778044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.464905, 33.871315, 31.515860>,  <30.529352, 33.255501, 32.032845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.464905, 33.871315, 31.515860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.100153, 33.772125, 31.646696>,  <29.881302, 33.712612, 31.725199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.100153, 33.772125, 31.646696>,  <30.464905, 33.871315, 31.515860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.100153, 33.772125, 31.646696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210480, 0.966630, 0.146028,
		-0.352387, 0.064313, -0.933642,
		-0.911878, -0.247971, 0.327091,
		29.826590, 33.697735, 31.744823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020857, 34.317509, 31.163095>,  <30.464905, 33.871315, 31.515860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020857, 34.317509, 31.163095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845663, 34.201359, 31.503414>,  <29.740547, 34.131668, 31.707605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845663, 34.201359, 31.503414>,  <30.020857, 34.317509, 31.163095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845663, 34.201359, 31.503414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348746, 0.927164, 0.136902,
		-0.828580, -0.236751, -0.507350,
		-0.437985, -0.290371, 0.850796,
		29.714268, 34.114246, 31.758654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.411770, 34.665131, 31.125782>,  <30.020857, 34.317509, 31.163095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.411770, 34.665131, 31.125782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432135, 34.561207, 31.511509>,  <29.444353, 34.498852, 31.742945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432135, 34.561207, 31.511509>,  <29.411770, 34.665131, 31.125782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432135, 34.561207, 31.511509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255694, 0.929997, 0.264058,
		-0.965416, -0.260014, -0.019084,
		0.050910, -0.259805, 0.964318,
		29.447409, 34.483265, 31.800804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.813553, 34.912689, 31.430439>,  <29.411770, 34.665131, 31.125782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.813553, 34.912689, 31.430439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054125, 34.860123, 31.745657>,  <29.198467, 34.828583, 31.934788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054125, 34.860123, 31.745657>,  <28.813553, 34.912689, 31.430439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054125, 34.860123, 31.745657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259102, 0.900982, 0.347992,
		-0.755744, -0.413476, 0.507827,
		0.601429, -0.131414, 0.788044,
		29.234554, 34.820698, 31.982071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.431973, 34.984596, 31.995247>,  <28.813553, 34.912689, 31.430439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.431973, 34.984596, 31.995247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.805855, 35.078514, 32.101974>,  <29.030184, 35.134865, 32.166012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.805855, 35.078514, 32.101974>,  <28.431973, 34.984596, 31.995247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.805855, 35.078514, 32.101974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313531, 0.898286, 0.307864,
		-0.167393, -0.371419, 0.913251,
		0.934707, 0.234798, 0.266818,
		29.086267, 35.148952, 32.182018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313822, 35.162868, 32.644039>,  <28.431973, 34.984596, 31.995247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.313822, 35.162868, 32.644039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.674494, 35.319454, 32.570583>,  <28.890898, 35.413406, 32.526508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.674494, 35.319454, 32.570583>,  <28.313822, 35.162868, 32.644039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.674494, 35.319454, 32.570583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220667, 0.781825, 0.583143,
		0.371857, -0.485286, 0.791341,
		0.901681, 0.391469, -0.183640,
		28.944998, 35.436893, 32.515491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549894, 35.472931, 33.282730>,  <28.313822, 35.162868, 32.644039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.549894, 35.472931, 33.282730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757580, 35.665962, 33.000587>,  <28.882191, 35.781784, 32.831303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757580, 35.665962, 33.000587>,  <28.549894, 35.472931, 33.282730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.757580, 35.665962, 33.000587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096519, 0.853155, 0.512651,
		0.849175, -0.198096, 0.489550,
		0.519216, 0.482582, -0.705358,
		28.913343, 35.810738, 32.788979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116241, 35.847866, 33.663754>,  <28.549894, 35.472931, 33.282730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116241, 35.847866, 33.663754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.048561, 36.000660, 33.300335>,  <29.007954, 36.092339, 33.082283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.048561, 36.000660, 33.300335>,  <29.116241, 35.847866, 33.663754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.048561, 36.000660, 33.300335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171247, 0.896421, 0.408783,
		0.970590, 0.224753, -0.086260,
		-0.169201, 0.381989, -0.908546,
		28.997801, 36.115257, 33.027771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472816, 36.517479, 33.676205>,  <29.116241, 35.847866, 33.663754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472816, 36.517479, 33.676205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.231569, 36.542679, 33.358143>,  <29.086821, 36.557800, 33.167305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.231569, 36.542679, 33.358143>,  <29.472816, 36.517479, 33.676205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.231569, 36.542679, 33.358143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130905, 0.975542, 0.176583,
		0.786836, 0.210591, -0.580122,
		-0.603119, 0.063001, -0.795159,
		29.050634, 36.561581, 33.119595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.752125, 37.110287, 33.333118>,  <29.472816, 36.517479, 33.676205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.752125, 37.110287, 33.333118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377899, 37.064678, 33.199421>,  <29.153364, 37.037312, 33.119202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377899, 37.064678, 33.199421>,  <29.752125, 37.110287, 33.333118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377899, 37.064678, 33.199421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197919, 0.953131, 0.228842,
		0.292481, 0.280249, -0.914284,
		-0.935566, -0.114022, -0.334240,
		29.097229, 37.030472, 33.099148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488209, 37.584816, 32.707294>,  <29.752125, 37.110287, 33.333118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488209, 37.584816, 32.707294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190380, 37.481007, 32.953308>,  <29.011683, 37.418720, 33.100918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190380, 37.481007, 32.953308>,  <29.488209, 37.584816, 32.707294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190380, 37.481007, 32.953308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107513, 0.955929, 0.273206,
		-0.658830, 0.137297, -0.739657,
		-0.744570, -0.259519, 0.615033,
		28.967009, 37.403152, 33.137817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895649, 38.093159, 32.630466>,  <29.488209, 37.584816, 32.707294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895649, 38.093159, 32.630466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.883177, 37.948910, 33.003342>,  <28.875694, 37.862362, 33.227066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.883177, 37.948910, 33.003342>,  <28.895649, 38.093159, 32.630466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.883177, 37.948910, 33.003342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124689, 0.923956, 0.361606,
		-0.991706, 0.127509, 0.016156,
		-0.031181, -0.360621, 0.932191,
		28.873823, 37.840725, 33.282997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.352812, 38.442669, 33.054783>,  <28.895649, 38.093159, 32.630466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.352812, 38.442669, 33.054783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.648481, 38.335728, 33.302052>,  <28.825884, 38.271561, 33.450413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.648481, 38.335728, 33.302052>,  <28.352812, 38.442669, 33.054783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.648481, 38.335728, 33.302052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052369, 0.937873, 0.343003,
		-0.671473, -0.221166, 0.707255,
		0.739176, -0.267356, 0.618175,
		28.870234, 38.255520, 33.487503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151270, 38.661045, 33.842159>,  <28.352812, 38.442669, 33.054783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151270, 38.661045, 33.842159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.537310, 38.666462, 33.737545>,  <28.768932, 38.669712, 33.674774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.537310, 38.666462, 33.737545>,  <28.151270, 38.661045, 33.842159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.537310, 38.666462, 33.737545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114885, 0.875551, 0.469268,
		0.235344, -0.482937, 0.843437,
		0.965099, 0.013541, -0.261537,
		28.826839, 38.670525, 33.659084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.551714, 38.752575, 34.419907>,  <28.151270, 38.661045, 33.842159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.551714, 38.752575, 34.419907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.749317, 38.905762, 34.107677>,  <28.867880, 38.997673, 33.920341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.749317, 38.905762, 34.107677>,  <28.551714, 38.752575, 34.419907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.749317, 38.905762, 34.107677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143223, 0.849664, 0.507503,
		0.857585, -0.362502, 0.364883,
		0.493998, 0.382967, -0.780578,
		28.897520, 39.020649, 33.873505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273384, 38.985237, 34.472824>,  <28.551714, 38.752575, 34.419907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.273384, 38.985237, 34.472824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.045715, 39.215206, 34.237705>,  <28.909115, 39.353188, 34.096634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.045715, 39.215206, 34.237705>,  <29.273384, 38.985237, 34.472824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.045715, 39.215206, 34.237705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226717, 0.796920, 0.559927,
		0.790344, 0.185429, -0.583928,
		-0.569171, 0.574921, -0.587801,
		28.874964, 39.387684, 34.061363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556555, 39.642712, 34.155991>,  <29.273384, 38.985237, 34.472824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556555, 39.642712, 34.155991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164597, 39.690086, 34.220215>,  <28.929422, 39.718513, 34.258751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164597, 39.690086, 34.220215>,  <29.556555, 39.642712, 34.155991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164597, 39.690086, 34.220215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197824, 0.681421, 0.704650,
		-0.025950, 0.722245, -0.691150,
		-0.979894, 0.118441, 0.160561,
		28.870628, 39.725620, 34.268383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823929, 39.068974, 33.755032>,  <29.556555, 39.642712, 34.155991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.823929, 39.068974, 33.755032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.207773, 38.963676, 33.715328>,  <30.438080, 38.900497, 33.691505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.207773, 38.963676, 33.715328>,  <29.823929, 39.068974, 33.755032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.207773, 38.963676, 33.715328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159493, 0.218380, 0.962742,
		-0.231760, -0.939687, 0.251545,
		0.959609, -0.263245, -0.099262,
		30.495655, 38.884705, 33.685551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.026075, 39.019203, 34.385288>,  <29.823929, 39.068974, 33.755032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.026075, 39.019203, 34.385288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389870, 38.990955, 34.221409>,  <30.608147, 38.974007, 34.123081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389870, 38.990955, 34.221409>,  <30.026075, 39.019203, 34.385288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389870, 38.990955, 34.221409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415484, 0.188733, 0.889805,
		0.014482, -0.979486, 0.200992,
		0.909485, -0.070623, -0.409694,
		30.662716, 38.969769, 34.098499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496241, 38.537849, 34.753731>,  <30.026075, 39.019203, 34.385288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496241, 38.537849, 34.753731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738701, 38.786781, 34.555626>,  <30.884176, 38.936142, 34.436764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738701, 38.786781, 34.555626>,  <30.496241, 38.537849, 34.753731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738701, 38.786781, 34.555626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545682, 0.127621, 0.828217,
		0.578632, -0.772280, -0.262238,
		0.606149, 0.622332, -0.495265,
		30.920546, 38.973480, 34.407047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113157, 38.427364, 34.983776>,  <30.496241, 38.537849, 34.753731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113157, 38.427364, 34.983776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.159292, 38.797279, 34.838741>,  <31.186974, 39.019226, 34.751720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.159292, 38.797279, 34.838741>,  <31.113157, 38.427364, 34.983776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.159292, 38.797279, 34.838741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596409, 0.227431, 0.769786,
		0.794351, -0.305035, -0.525319,
		0.115338, 0.924786, -0.362586,
		31.193893, 39.074715, 34.729965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838739, 38.547085, 34.989731>,  <31.113157, 38.427364, 34.983776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838739, 38.547085, 34.989731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654646, 38.901897, 34.974960>,  <31.544189, 39.114784, 34.966099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654646, 38.901897, 34.974960>,  <31.838739, 38.547085, 34.989731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654646, 38.901897, 34.974960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477426, 0.282353, 0.832070,
		0.748499, 0.365314, -0.553439,
		-0.460232, 0.887030, -0.036930,
		31.516577, 39.168007, 34.963882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348389, 38.989250, 35.282372>,  <31.838739, 38.547085, 34.989731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348389, 38.989250, 35.282372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001915, 39.188965, 35.290771>,  <31.794031, 39.308796, 35.295811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001915, 39.188965, 35.290771>,  <32.348389, 38.989250, 35.282372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001915, 39.188965, 35.290771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133446, 0.190600, 0.972555,
		0.481583, 0.845212, -0.231722,
		-0.866181, 0.499289, 0.021000,
		31.742060, 39.338753, 35.297073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512405, 39.538967, 35.681564>,  <32.348389, 38.989250, 35.282372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512405, 39.538967, 35.681564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112774, 39.523129, 35.675049>,  <31.872993, 39.513626, 35.671139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112774, 39.523129, 35.675049>,  <32.512405, 39.538967, 35.681564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112774, 39.523129, 35.675049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024519, 0.217157, 0.975829,
		-0.035103, 0.975333, -0.217929,
		-0.999083, -0.039598, -0.016291,
		31.813049, 39.511250, 35.670162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183605, 40.164391, 36.003361>,  <32.512405, 39.538967, 35.681564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183605, 40.164391, 36.003361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924875, 39.866135, 36.067417>,  <31.769638, 39.687183, 36.105850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924875, 39.866135, 36.067417>,  <32.183605, 40.164391, 36.003361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924875, 39.866135, 36.067417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013673, 0.221292, 0.975112,
		-0.762519, 0.628533, -0.153332,
		-0.646821, -0.745638, 0.160146,
		31.730829, 39.642445, 36.115459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901611, 40.419819, 36.650528>,  <32.183605, 40.164391, 36.003361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901611, 40.419819, 36.650528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791206, 40.035767, 36.632755>,  <31.724962, 39.805336, 36.622093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791206, 40.035767, 36.632755>,  <31.901611, 40.419819, 36.650528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791206, 40.035767, 36.632755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003965, -0.045091, 0.998975,
		-0.961146, 0.275907, 0.008639,
		-0.276014, -0.960126, -0.044433,
		31.708403, 39.747730, 36.619427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456249, 40.372986, 37.210682>,  <31.901611, 40.419819, 36.650528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456249, 40.372986, 37.210682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556015, 39.994888, 37.126492>,  <31.615875, 39.768028, 37.075977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556015, 39.994888, 37.126492>,  <31.456249, 40.372986, 37.210682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556015, 39.994888, 37.126492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036507, -0.226363, 0.973359,
		-0.967708, -0.235088, -0.090967,
		0.249417, -0.945248, -0.210471,
		31.630840, 39.711315, 37.063351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930517, 39.944679, 37.500862>,  <31.456249, 40.372986, 37.210682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930517, 39.944679, 37.500862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275614, 39.742680, 37.511108>,  <31.482672, 39.621479, 37.517254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275614, 39.742680, 37.511108>,  <30.930517, 39.944679, 37.500862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275614, 39.742680, 37.511108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014166, 0.074775, 0.997100,
		-0.505447, -0.859876, 0.071666,
		0.862741, -0.504996, 0.025614,
		31.534435, 39.591179, 37.518791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825659, 39.378277, 38.023262>,  <30.930517, 39.944679, 37.500862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825659, 39.378277, 38.023262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.221664, 39.373661, 37.967072>,  <31.459269, 39.370892, 37.933357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.221664, 39.373661, 37.967072>,  <30.825659, 39.378277, 38.023262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221664, 39.373661, 37.967072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136258, -0.176723, 0.974783,
		-0.036072, -0.984193, -0.173387,
		0.990016, -0.011537, -0.140479,
		31.518669, 39.370201, 37.924927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145979, 38.678978, 38.371647>,  <30.825659, 39.378277, 38.023262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145979, 38.678978, 38.371647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413383, 38.975399, 38.346558>,  <31.573826, 39.153252, 38.331505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413383, 38.975399, 38.346558>,  <31.145979, 38.678978, 38.371647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413383, 38.975399, 38.346558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205018, -0.102565, 0.973369,
		0.714885, -0.663567, -0.220495,
		0.668511, 0.741053, -0.062720,
		31.613937, 39.197716, 38.327740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646637, 38.392574, 38.697929>,  <31.145979, 38.678978, 38.371647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646637, 38.392574, 38.697929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.779760, 38.769577, 38.685806>,  <31.859634, 38.995777, 38.678532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.779760, 38.769577, 38.685806>,  <31.646637, 38.392574, 38.697929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779760, 38.769577, 38.685806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300467, -0.075527, 0.950797,
		0.893845, -0.325539, -0.308329,
		0.332809, 0.942508, -0.030304,
		31.879602, 39.052330, 38.676716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172226, 38.327019, 39.088612>,  <31.646637, 38.392574, 38.697929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172226, 38.327019, 39.088612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111126, 38.722198, 39.098522>,  <32.074467, 38.959309, 39.104469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111126, 38.722198, 39.098522>,  <32.172226, 38.327019, 39.088612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111126, 38.722198, 39.098522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185922, 0.004106, 0.982556,
		0.970618, 0.154693, -0.184309,
		-0.152751, 0.987954, 0.024775,
		32.065300, 39.018585, 39.105953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789570, 38.559357, 39.343548>,  <32.172226, 38.327019, 39.088612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789570, 38.559357, 39.343548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492008, 38.815399, 39.420349>,  <32.313473, 38.969025, 39.466431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492008, 38.815399, 39.420349>,  <32.789570, 38.559357, 39.343548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492008, 38.815399, 39.420349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204352, -0.055660, 0.977314,
		0.636276, 0.766264, -0.089402,
		-0.743904, 0.640111, 0.192002,
		32.268837, 39.007431, 39.477951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079079, 38.997345, 39.961861>,  <32.789570, 38.559357, 39.343548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079079, 38.997345, 39.961861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682774, 39.046135, 39.938190>,  <32.444988, 39.075409, 39.923988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682774, 39.046135, 39.938190>,  <33.079079, 38.997345, 39.961861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682774, 39.046135, 39.938190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023408, 0.276001, 0.960872,
		0.133539, 0.953386, -0.270597,
		-0.990767, 0.121979, -0.059174,
		32.385544, 39.082729, 39.920437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923912, 39.710419, 40.205933>,  <33.079079, 38.997345, 39.961861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923912, 39.710419, 40.205933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581692, 39.508045, 40.249866>,  <32.376358, 39.386620, 40.276226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581692, 39.508045, 40.249866>,  <32.923912, 39.710419, 40.205933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581692, 39.508045, 40.249866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073556, 0.328789, 0.941535,
		-0.512468, 0.797451, -0.318510,
		-0.855550, -0.505934, 0.109836,
		32.325027, 39.356266, 40.282818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493370, 40.139469, 40.526001>,  <32.923912, 39.710419, 40.205933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493370, 40.139469, 40.526001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307240, 39.789345, 40.578609>,  <32.195560, 39.579269, 40.610172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307240, 39.789345, 40.578609>,  <32.493370, 40.139469, 40.526001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307240, 39.789345, 40.578609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120398, 0.209795, 0.970304,
		-0.876911, 0.435677, -0.203009,
		-0.465329, -0.875312, 0.131517,
		32.167641, 39.526752, 40.618065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903576, 40.334629, 40.898109>,  <32.493370, 40.139469, 40.526001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903576, 40.334629, 40.898109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910816, 39.940166, 40.964035>,  <31.915161, 39.703487, 41.003590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910816, 39.940166, 40.964035>,  <31.903576, 40.334629, 40.898109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910816, 39.940166, 40.964035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168214, 0.159488, 0.972763,
		-0.985584, -0.045334, -0.162999,
		0.018103, -0.986159, 0.164814,
		31.916246, 39.644318, 41.013481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326250, 40.198376, 41.286278>,  <31.903576, 40.334629, 40.898109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326250, 40.198376, 41.286278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549032, 39.871140, 41.343594>,  <31.682701, 39.674797, 41.377983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549032, 39.871140, 41.343594>,  <31.326250, 40.198376, 41.286278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549032, 39.871140, 41.343594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330401, -0.059952, 0.941935,
		-0.761994, -0.571960, -0.303687,
		0.556956, -0.818087, 0.143293,
		31.716120, 39.625713, 41.386581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.943619, 39.856003, 41.743546>,  <31.326250, 40.198376, 41.286278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.943619, 39.856003, 41.743546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301386, 39.680321, 41.777287>,  <31.516047, 39.574913, 41.797531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301386, 39.680321, 41.777287>,  <30.943619, 39.856003, 41.743546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301386, 39.680321, 41.777287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109814, -0.032830, 0.993410,
		-0.433543, -0.897786, -0.077595,
		0.894417, -0.439207, 0.084357,
		31.569712, 39.548557, 41.802593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888268, 39.156685, 42.072388>,  <30.943619, 39.856003, 41.743546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888268, 39.156685, 42.072388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253967, 39.302044, 42.144039>,  <31.473387, 39.389259, 42.187031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253967, 39.302044, 42.144039>,  <30.888268, 39.156685, 42.072388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253967, 39.302044, 42.144039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183495, -0.022788, 0.982757,
		0.361215, -0.931355, 0.045848,
		0.914250, 0.363399, 0.179130,
		31.528242, 39.411064, 42.197777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087931, 38.905945, 42.701767>,  <30.888268, 39.156685, 42.072388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087931, 38.905945, 42.701767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393435, 39.163258, 42.680401>,  <31.576736, 39.317646, 42.667580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393435, 39.163258, 42.680401>,  <31.087931, 38.905945, 42.701767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393435, 39.163258, 42.680401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064725, 0.006018, 0.997885,
		0.642247, -0.765602, -0.037041,
		0.763760, 0.643287, -0.053418,
		31.622562, 39.356243, 42.664375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573820, 38.721619, 43.189960>,  <31.087931, 38.905945, 42.701767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573820, 38.721619, 43.189960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683361, 39.103634, 43.144527>,  <31.749086, 39.332844, 43.117268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683361, 39.103634, 43.144527>,  <31.573820, 38.721619, 43.189960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683361, 39.103634, 43.144527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271508, 0.036526, 0.961743,
		0.922653, -0.294215, -0.249299,
		0.273853, 0.955041, -0.113582,
		31.765516, 39.390144, 43.110455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278412, 38.844418, 43.538231>,  <31.573820, 38.721619, 43.189960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278412, 38.844418, 43.538231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082275, 39.193016, 43.534977>,  <31.964594, 39.402176, 43.533024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082275, 39.193016, 43.534977>,  <32.278412, 38.844418, 43.538231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082275, 39.193016, 43.534977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371482, 0.217437, 0.902620,
		0.788394, 0.439572, -0.430362,
		-0.490343, 0.871492, -0.008132,
		31.935173, 39.454464, 43.532536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659847, 39.248226, 43.907303>,  <32.278412, 38.844418, 43.538231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659847, 39.248226, 43.907303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311661, 39.444469, 43.923260>,  <32.102749, 39.562214, 43.932835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311661, 39.444469, 43.923260>,  <32.659847, 39.248226, 43.907303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311661, 39.444469, 43.923260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067749, 0.039145, 0.996934,
		0.487543, 0.870500, -0.067312,
		-0.870466, 0.490609, 0.039891,
		32.050522, 39.591652, 43.935226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764614, 39.909054, 44.306118>,  <32.659847, 39.248226, 43.907303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764614, 39.909054, 44.306118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392445, 39.764191, 44.328590>,  <32.169144, 39.677273, 44.342072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392445, 39.764191, 44.328590>,  <32.764614, 39.909054, 44.306118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392445, 39.764191, 44.328590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008691, 0.131446, 0.991285,
		-0.366382, 0.922804, -0.119153,
		-0.930424, -0.362153, 0.056179,
		32.113316, 39.655544, 44.345444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339642, 40.358467, 44.740841>,  <32.764614, 39.909054, 44.306118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339642, 40.358467, 44.740841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168671, 39.996883, 44.745907>,  <32.066090, 39.779934, 44.748947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168671, 39.996883, 44.745907>,  <32.339642, 40.358467, 44.740841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168671, 39.996883, 44.745907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180341, -0.071522, 0.981001,
		-0.885882, 0.421587, 0.193591,
		-0.427423, -0.903963, 0.012669,
		32.040443, 39.725693, 44.749706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200939, 40.239529, 45.404961>,  <32.339642, 40.358467, 44.740841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200939, 40.239529, 45.404961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133026, 39.871552, 45.263607>,  <32.092278, 39.650764, 45.178795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133026, 39.871552, 45.263607>,  <32.200939, 40.239529, 45.404961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133026, 39.871552, 45.263607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410744, -0.392015, 0.823173,
		-0.895802, -0.005386, 0.444420,
		-0.169786, -0.919943, -0.353381,
		32.082092, 39.595570, 45.157593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823984, 40.018944, 45.942509>,  <32.200939, 40.239529, 45.404961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823984, 40.018944, 45.942509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004642, 39.726231, 45.738346>,  <32.113037, 39.550602, 45.615849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004642, 39.726231, 45.738346>,  <31.823984, 40.018944, 45.942509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004642, 39.726231, 45.738346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294544, -0.417707, 0.859514,
		-0.842177, -0.538531, 0.026887,
		0.451644, -0.731783, -0.510404,
		32.140137, 39.506695, 45.585224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488754, 39.360363, 46.116920>,  <31.823984, 40.018944, 45.942509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488754, 39.360363, 46.116920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820225, 39.210735, 45.950371>,  <32.019108, 39.120956, 45.850441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820225, 39.210735, 45.950371>,  <31.488754, 39.360363, 46.116920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820225, 39.210735, 45.950371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171019, -0.539103, 0.824694,
		-0.532956, -0.754615, -0.382772,
		0.828680, -0.374064, -0.416372,
		32.068829, 39.098515, 45.825459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567631, 38.593418, 46.396912>,  <31.488754, 39.360363, 46.116920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567631, 38.593418, 46.396912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931099, 38.706722, 46.274220>,  <32.149181, 38.774704, 46.200603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931099, 38.706722, 46.274220>,  <31.567631, 38.593418, 46.396912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931099, 38.706722, 46.274220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401849, -0.394005, 0.826606,
		0.113291, -0.874371, -0.471848,
		0.908671, 0.283259, -0.306728,
		32.203701, 38.791698, 46.182201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001518, 37.903240, 46.325588>,  <31.567631, 38.593418, 46.396912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001518, 37.903240, 46.325588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206062, 38.236271, 46.410744>,  <32.328789, 38.436089, 46.461838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206062, 38.236271, 46.410744>,  <32.001518, 37.903240, 46.325588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206062, 38.236271, 46.410744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356657, -0.430999, 0.828876,
		0.781861, -0.347924, -0.517341,
		0.511359, 0.832580, 0.212892,
		32.359470, 38.486046, 46.474613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666500, 37.703442, 46.605484>,  <32.001518, 37.903240, 46.325588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666500, 37.703442, 46.605484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634007, 38.088856, 46.707462>,  <32.614510, 38.320107, 46.768650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634007, 38.088856, 46.707462>,  <32.666500, 37.703442, 46.605484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634007, 38.088856, 46.707462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449574, -0.192872, 0.872172,
		0.889542, 0.185465, -0.417514,
		-0.081231, 0.963537, 0.254947,
		32.609638, 38.377918, 46.783947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300312, 37.830105, 46.938656>,  <32.666500, 37.703442, 46.605484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300312, 37.830105, 46.938656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031910, 38.101608, 47.058014>,  <32.870869, 38.264511, 47.129627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031910, 38.101608, 47.058014>,  <33.300312, 37.830105, 46.938656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031910, 38.101608, 47.058014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191050, -0.230577, 0.954114,
		0.716415, 0.697225, 0.025042,
		-0.671006, 0.678757, 0.298394,
		32.830608, 38.305237, 47.147533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704044, 38.079277, 47.545151>,  <33.300312, 37.830105, 46.938656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704044, 38.079277, 47.545151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327389, 38.211216, 47.572052>,  <33.101395, 38.290379, 47.588192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327389, 38.211216, 47.572052>,  <33.704044, 38.079277, 47.545151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327389, 38.211216, 47.572052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027261, -0.273828, 0.961392,
		0.335531, 0.903447, 0.266838,
		-0.941635, 0.329851, 0.067249,
		33.044899, 38.310173, 47.592228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732361, 38.642628, 47.939392>,  <33.704044, 38.079277, 47.545151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732361, 38.642628, 47.939392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371098, 38.477882, 47.987862>,  <33.154339, 38.379036, 48.016945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371098, 38.477882, 47.987862>,  <33.732361, 38.642628, 47.939392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371098, 38.477882, 47.987862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218297, -0.197515, 0.955685,
		-0.369673, 0.889584, 0.268294,
		-0.903155, -0.411859, 0.121178,
		33.100151, 38.354324, 48.024216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582024, 38.826969, 48.566971>,  <33.732361, 38.642628, 47.939392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582024, 38.826969, 48.566971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287739, 38.560989, 48.515499>,  <33.111168, 38.401402, 48.484615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287739, 38.560989, 48.515499>,  <33.582024, 38.826969, 48.566971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287739, 38.560989, 48.515499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186954, -0.381992, 0.905058,
		-0.650975, 0.641810, 0.405354,
		-0.735717, -0.664953, -0.128678,
		33.067024, 38.361504, 48.476894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294449, 38.523956, 49.223389>,  <33.582024, 38.826969, 48.566971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294449, 38.523956, 49.223389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482452, 38.174160, 49.175457>,  <33.595257, 37.964283, 49.146698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482452, 38.174160, 49.175457>,  <33.294449, 38.523956, 49.223389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482452, 38.174160, 49.175457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813928, 0.481924, -0.324455,
		0.341482, 0.054964, 0.938280,
		0.470013, -0.874487, -0.119831,
		33.623455, 37.911816, 49.139507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942268, 38.648792, 49.451946>,  <33.294449, 38.523956, 49.223389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942268, 38.648792, 49.451946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974796, 38.341869, 49.197506>,  <33.994312, 38.157715, 49.044842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974796, 38.341869, 49.197506>,  <33.942268, 38.648792, 49.451946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974796, 38.341869, 49.197506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551409, 0.566279, -0.612598,
		0.830262, -0.300934, 0.469152,
		0.081320, -0.767312, -0.636097,
		33.999191, 38.111675, 49.006676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088562, 38.158329, 49.930046>,  <33.942268, 38.648792, 49.451946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088562, 38.158329, 49.930046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777557, 38.409874, 49.928947>,  <33.590954, 38.560802, 49.928288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777557, 38.409874, 49.928947>,  <34.088562, 38.158329, 49.930046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777557, 38.409874, 49.928947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608520, -0.751237, 0.255628,
		0.158694, 0.200423, 0.966771,
		-0.777508, 0.628867, -0.002744,
		33.544304, 38.598534, 49.928123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792934, 38.061066, 50.699867>,  <34.088562, 38.158329, 49.930046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792934, 38.061066, 50.699867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597534, 38.145203, 50.361134>,  <33.480293, 38.195686, 50.157894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597534, 38.145203, 50.361134>,  <33.792934, 38.061066, 50.699867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597534, 38.145203, 50.361134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273836, -0.958435, -0.080100,
		-0.828484, 0.192765, 0.525791,
		-0.488496, 0.210342, -0.846834,
		33.450985, 38.208305, 50.107082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049759, 37.921299, 50.764740>,  <33.792934, 38.061066, 50.699867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049759, 37.921299, 50.764740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206963, 37.857998, 50.402416>,  <33.301285, 37.820015, 50.185020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206963, 37.857998, 50.402416>,  <33.049759, 37.921299, 50.764740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206963, 37.857998, 50.402416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331677, -0.943162, 0.020874,
		-0.857631, 0.292233, -0.423166,
		0.393014, -0.158256, -0.905812,
		33.324867, 37.810520, 50.130672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568104, 37.512783, 50.516743>,  <33.049759, 37.921299, 50.764740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568104, 37.512783, 50.516743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921509, 37.446312, 50.341572>,  <33.133553, 37.406429, 50.236469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921509, 37.446312, 50.341572>,  <32.568104, 37.512783, 50.516743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921509, 37.446312, 50.341572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225321, -0.970451, -0.086342,
		-0.410644, 0.174960, -0.894852,
		0.883517, -0.166173, -0.437932,
		33.186565, 37.396461, 50.210194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538502, 37.284180, 49.857208>,  <32.568104, 37.512783, 50.516743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538502, 37.284180, 49.857208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878902, 37.159714, 50.026432>,  <33.083141, 37.085033, 50.127964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878902, 37.159714, 50.026432>,  <32.538502, 37.284180, 49.857208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878902, 37.159714, 50.026432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364656, -0.929819, 0.049620,
		0.377925, -0.196497, -0.904744,
		0.850998, -0.311168, 0.423056,
		33.134201, 37.066364, 50.153347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959763, 36.718761, 49.457947>,  <32.538502, 37.284180, 49.857208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959763, 36.718761, 49.457947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982555, 36.709000, 49.857178>,  <32.996231, 36.703144, 50.096718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982555, 36.709000, 49.857178>,  <32.959763, 36.718761, 49.457947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982555, 36.709000, 49.857178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517874, -0.855413, 0.008654,
		0.853557, -0.517371, -0.061383,
		0.056985, -0.024402, 0.998077,
		32.999649, 36.701679, 50.156601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044708, 36.040623, 49.560253>,  <32.959763, 36.718761, 49.457947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044708, 36.040623, 49.560253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874718, 36.222588, 49.873291>,  <32.772724, 36.331768, 50.061111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874718, 36.222588, 49.873291>,  <33.044708, 36.040623, 49.560253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874718, 36.222588, 49.873291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739694, -0.672861, -0.010551,
		0.521775, -0.583362, 0.622446,
		-0.424975, 0.454914, 0.782591,
		32.747227, 36.359062, 50.108067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356255, 35.834103, 49.337795>,  <33.044708, 36.040623, 49.560253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356255, 35.834103, 49.337795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221054, 35.826092, 48.961422>,  <32.139935, 35.821285, 48.735600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221054, 35.826092, 48.961422>,  <32.356255, 35.834103, 49.337795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221054, 35.826092, 48.961422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852810, -0.429402, -0.297201,
		-0.398086, -0.902891, 0.162219,
		-0.337998, -0.020031, -0.940933,
		32.119656, 35.820084, 48.679142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608948, 35.188969, 49.149494>,  <32.356255, 35.834103, 49.337795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608948, 35.188969, 49.149494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534222, 35.399529, 48.817711>,  <32.489384, 35.525864, 48.618641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534222, 35.399529, 48.817711>,  <32.608948, 35.188969, 49.149494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534222, 35.399529, 48.817711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871080, -0.301624, -0.387611,
		-0.454223, -0.794939, -0.402185,
		-0.186819, 0.526398, -0.829460,
		32.478176, 35.557449, 48.568874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884552, 34.753811, 48.657578>,  <32.608948, 35.188969, 49.149494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884552, 34.753811, 48.657578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823296, 35.116844, 48.501198>,  <32.786541, 35.334663, 48.407372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823296, 35.116844, 48.501198>,  <32.884552, 34.753811, 48.657578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823296, 35.116844, 48.501198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813128, -0.109092, -0.571771,
		-0.561580, -0.405449, -0.721276,
		-0.153138, 0.907585, -0.390946,
		32.777355, 35.389118, 48.383915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001755, 34.647980, 48.036720>,  <32.884552, 34.753811, 48.657578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001755, 34.647980, 48.036720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007793, 35.047325, 48.058754>,  <33.011417, 35.286934, 48.071976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007793, 35.047325, 48.058754>,  <33.001755, 34.647980, 48.036720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007793, 35.047325, 48.058754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790628, 0.021809, -0.611908,
		-0.612110, 0.052792, -0.789008,
		0.015096, 0.998367, 0.055088,
		33.012321, 35.346836, 48.075279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072300, 34.867157, 47.400993>,  <33.001755, 34.647980, 48.036720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072300, 34.867157, 47.400993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227222, 35.152485, 47.634636>,  <33.320175, 35.323681, 47.774822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227222, 35.152485, 47.634636>,  <33.072300, 34.867157, 47.400993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227222, 35.152485, 47.634636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819014, 0.024706, -0.573241,
		-0.423333, 0.700407, -0.574647,
		0.387304, 0.713316, 0.584102,
		33.343414, 35.366478, 47.809868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251602, 35.430977, 46.959641>,  <33.072300, 34.867157, 47.400993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251602, 35.430977, 46.959641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459755, 35.444981, 47.300926>,  <33.584648, 35.453384, 47.505699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459755, 35.444981, 47.300926>,  <33.251602, 35.430977, 46.959641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459755, 35.444981, 47.300926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847048, 0.105445, -0.520952,
		-0.108208, 0.993809, 0.025213,
		0.520386, 0.035014, 0.853213,
		33.615871, 35.455486, 47.556889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738380, 35.981369, 46.892960>,  <33.251602, 35.430977, 46.959641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738380, 35.981369, 46.892960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899284, 35.749451, 47.176376>,  <33.995827, 35.610298, 47.346424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899284, 35.749451, 47.176376>,  <33.738380, 35.981369, 46.892960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899284, 35.749451, 47.176376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889700, 0.065034, -0.451890,
		0.215925, 0.812162, 0.542005,
		0.402257, -0.579796, 0.708538,
		34.019962, 35.575512, 47.388939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542641, 36.235657, 47.025764>,  <33.738380, 35.981369, 46.892960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542641, 36.235657, 47.025764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513828, 35.867741, 47.180058>,  <34.496540, 35.646988, 47.272633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513828, 35.867741, 47.180058>,  <34.542641, 36.235657, 47.025764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513828, 35.867741, 47.180058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867827, -0.248417, -0.430309,
		0.491618, 0.303753, 0.816116,
		-0.072030, -0.919795, 0.385732,
		34.492218, 35.591801, 47.295776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200348, 36.150604, 47.204609>,  <34.542641, 36.235657, 47.025764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200348, 36.150604, 47.204609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055973, 35.777744, 47.216141>,  <34.969349, 35.554028, 47.223061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055973, 35.777744, 47.216141>,  <35.200348, 36.150604, 47.204609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055973, 35.777744, 47.216141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828769, -0.334773, -0.448408,
		0.427632, -0.137955, 0.893364,
		-0.360934, -0.932146, 0.028827,
		34.947693, 35.498100, 47.224789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815529, 35.732632, 47.125729>,  <35.200348, 36.150604, 47.204609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815529, 35.732632, 47.125729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491493, 35.526196, 47.014446>,  <35.297073, 35.402332, 46.947678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491493, 35.526196, 47.014446>,  <35.815529, 35.732632, 47.125729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491493, 35.526196, 47.014446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545374, -0.489110, -0.680690,
		0.215225, -0.703148, 0.677688,
		-0.810090, -0.516095, -0.278210,
		35.248466, 35.371368, 46.930984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089272, 35.118813, 47.040890>,  <35.815529, 35.732632, 47.125729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089272, 35.118813, 47.040890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753586, 35.112534, 46.823463>,  <35.552174, 35.108768, 46.693008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753586, 35.112534, 46.823463>,  <36.089272, 35.118813, 47.040890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753586, 35.112534, 46.823463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511584, -0.361702, -0.779393,
		-0.184378, -0.932162, 0.311576,
		-0.839218, -0.015694, -0.543568,
		35.501820, 35.107826, 46.660393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189274, 34.537788, 46.729576>,  <36.089272, 35.118813, 47.040890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189274, 34.537788, 46.729576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894642, 34.719631, 46.529263>,  <35.717861, 34.828735, 46.409077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894642, 34.719631, 46.529263>,  <36.189274, 34.537788, 46.729576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894642, 34.719631, 46.529263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341070, -0.389712, -0.855450,
		-0.584054, -0.800909, 0.132002,
		-0.736581, 0.454608, -0.500780,
		35.673668, 34.856014, 46.379028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844913, 33.995766, 46.250298>,  <36.189274, 34.537788, 46.729576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844913, 33.995766, 46.250298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761459, 34.365097, 46.121346>,  <35.711388, 34.586697, 46.043976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761459, 34.365097, 46.121346>,  <35.844913, 33.995766, 46.250298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761459, 34.365097, 46.121346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282765, -0.258606, -0.923670,
		-0.936224, -0.283868, -0.207132,
		-0.208635, 0.923332, -0.322381,
		35.698868, 34.642097, 46.024632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437836, 33.914902, 45.607513>,  <35.844913, 33.995766, 46.250298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437836, 33.914902, 45.607513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596401, 34.281940, 45.595638>,  <35.691540, 34.502163, 45.588512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596401, 34.281940, 45.595638>,  <35.437836, 33.914902, 45.607513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596401, 34.281940, 45.595638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055864, -0.056391, -0.996845,
		-0.916371, 0.393503, -0.073614,
		0.396413, 0.917592, -0.029692,
		35.715324, 34.557217, 45.586731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156239, 34.221279, 45.160942>,  <35.437836, 33.914902, 45.607513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156239, 34.221279, 45.160942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458637, 34.482914, 45.150791>,  <35.640076, 34.639893, 45.144699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458637, 34.482914, 45.150791>,  <35.156239, 34.221279, 45.160942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458637, 34.482914, 45.150791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036795, -0.081171, -0.996021,
		-0.653541, 0.752054, -0.085432,
		0.755996, 0.654084, -0.025377,
		35.685436, 34.679138, 45.143177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034832, 34.761494, 44.662235>,  <35.156239, 34.221279, 45.160942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034832, 34.761494, 44.662235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428818, 34.729630, 44.723553>,  <35.665211, 34.710510, 44.760345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428818, 34.729630, 44.723553>,  <35.034832, 34.761494, 44.662235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428818, 34.729630, 44.723553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153256, -0.006657, -0.988164,
		0.079736, 0.996800, 0.005651,
		0.984964, -0.079658, 0.153296,
		35.724308, 34.705730, 44.769543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222317, 35.155228, 44.235123>,  <35.034832, 34.761494, 44.662235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222317, 35.155228, 44.235123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548050, 34.935066, 44.308796>,  <35.743488, 34.802971, 44.353001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548050, 34.935066, 44.308796>,  <35.222317, 35.155228, 44.235123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548050, 34.935066, 44.308796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131700, -0.133824, -0.982215,
		0.565262, 0.824104, -0.036489,
		0.814330, -0.550404, 0.184180,
		35.792351, 34.769943, 44.364048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874046, 35.492653, 43.975563>,  <35.222317, 35.155228, 44.235123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874046, 35.492653, 43.975563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926392, 35.096195, 43.984627>,  <35.957798, 34.858322, 43.990067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926392, 35.096195, 43.984627>,  <35.874046, 35.492653, 43.975563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926392, 35.096195, 43.984627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204094, 0.004563, -0.978941,
		0.970166, 0.132729, 0.202883,
		0.130860, -0.991142, 0.022662,
		35.965649, 34.798851, 43.991425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597610, 35.459156, 43.689514>,  <35.874046, 35.492653, 43.975563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597610, 35.459156, 43.689514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443851, 35.091454, 43.655544>,  <36.351597, 34.870834, 43.635162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443851, 35.091454, 43.655544>,  <36.597610, 35.459156, 43.689514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443851, 35.091454, 43.655544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365793, -0.067209, -0.928266,
		0.847605, -0.387887, 0.362092,
		-0.384398, -0.919253, -0.084920,
		36.328533, 34.815678, 43.630070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038940, 35.099850, 43.209606>,  <36.597610, 35.459156, 43.689514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038940, 35.099850, 43.209606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712978, 34.868160, 43.217861>,  <36.517399, 34.729149, 43.222813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712978, 34.868160, 43.217861>,  <37.038940, 35.099850, 43.209606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712978, 34.868160, 43.217861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004361, -0.029473, -0.999556,
		0.579571, -0.814638, 0.021491,
		-0.814910, -0.579220, 0.020634,
		36.468506, 34.694393, 43.224052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136013, 34.627705, 42.651611>,  <37.038940, 35.099850, 43.209606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136013, 34.627705, 42.651611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746727, 34.651806, 42.740360>,  <36.513157, 34.666267, 42.793610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746727, 34.651806, 42.740360>,  <37.136013, 34.627705, 42.651611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746727, 34.651806, 42.740360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210237, 0.157296, -0.964914,
		-0.093042, -0.985711, -0.140414,
		-0.973213, 0.060258, 0.221869,
		36.454762, 34.669884, 42.806919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770927, 34.278488, 42.038719>,  <37.136013, 34.627705, 42.651611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770927, 34.278488, 42.038719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479095, 34.478020, 42.225861>,  <36.303997, 34.597740, 42.338146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479095, 34.478020, 42.225861>,  <36.770927, 34.278488, 42.038719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479095, 34.478020, 42.225861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301102, 0.379939, -0.874634,
		-0.614050, -0.778983, -0.126996,
		-0.729576, 0.498830, 0.467855,
		36.260223, 34.627670, 42.366219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243290, 33.950462, 41.802238>,  <36.770927, 34.278488, 42.038719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243290, 33.950462, 41.802238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154091, 34.319172, 41.929115>,  <36.100571, 34.540398, 42.005241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154091, 34.319172, 41.929115>,  <36.243290, 33.950462, 41.802238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154091, 34.319172, 41.929115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331334, 0.234344, -0.913948,
		-0.916783, -0.308904, 0.253156,
		-0.222996, 0.921771, 0.317193,
		36.087193, 34.595703, 42.024273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638008, 34.129143, 41.346508>,  <36.243290, 33.950462, 41.802238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638008, 34.129143, 41.346508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697937, 34.476830, 41.534985>,  <35.733894, 34.685440, 41.648071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697937, 34.476830, 41.534985>,  <35.638008, 34.129143, 41.346508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697937, 34.476830, 41.534985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452098, 0.484056, -0.749198,
		-0.879296, -0.100778, 0.465492,
		0.149822, 0.869214, 0.471190,
		35.742882, 34.737595, 41.676342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992981, 34.487217, 41.453758>,  <35.638008, 34.129143, 41.346508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992981, 34.487217, 41.453758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276333, 34.769272, 41.441238>,  <35.446342, 34.938507, 41.433727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276333, 34.769272, 41.441238>,  <34.992981, 34.487217, 41.453758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276333, 34.769272, 41.441238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408426, 0.373329, -0.832955,
		-0.575664, 0.602830, 0.552455,
		0.708378, 0.705139, -0.031299,
		35.488846, 34.980812, 41.431850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732155, 35.276733, 41.432838>,  <34.992981, 34.487217, 41.453758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732155, 35.276733, 41.432838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095299, 35.287323, 41.265461>,  <35.313183, 35.293678, 41.165035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095299, 35.287323, 41.265461>,  <34.732155, 35.276733, 41.432838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095299, 35.287323, 41.265461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384928, 0.448260, -0.806780,
		0.166213, 0.893511, 0.417146,
		0.907857, 0.026474, -0.418444,
		35.367657, 35.295265, 41.139927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684628, 35.888279, 41.011803>,  <34.732155, 35.276733, 41.432838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684628, 35.888279, 41.011803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035606, 35.758667, 40.870327>,  <35.246193, 35.680901, 40.785442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035606, 35.758667, 40.870327>,  <34.684628, 35.888279, 41.011803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035606, 35.758667, 40.870327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229972, 0.362915, -0.902998,
		0.420959, 0.873669, 0.243919,
		0.877443, -0.324031, -0.353691,
		35.298840, 35.661457, 40.764221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921238, 36.466858, 40.630577>,  <34.684628, 35.888279, 41.011803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921238, 36.466858, 40.630577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101646, 36.140331, 40.486237>,  <35.209892, 35.944416, 40.399632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101646, 36.140331, 40.486237>,  <34.921238, 36.466858, 40.630577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101646, 36.140331, 40.486237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167056, 0.319956, -0.932588,
		0.876741, 0.480898, 0.007936,
		0.451019, -0.816312, -0.360855,
		35.236954, 35.895439, 40.377979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435356, 36.735680, 40.137291>,  <34.921238, 36.466858, 40.630577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435356, 36.735680, 40.137291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374470, 36.347969, 40.060001>,  <35.337936, 36.115341, 40.013630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374470, 36.347969, 40.060001>,  <35.435356, 36.735680, 40.137291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374470, 36.347969, 40.060001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173129, 0.218626, -0.960328,
		0.973065, -0.112728, -0.201088,
		-0.152219, -0.969275, -0.193221,
		35.328804, 36.057186, 40.002037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688480, 36.640282, 39.476440>,  <35.435356, 36.735680, 40.137291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688480, 36.640282, 39.476440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407856, 36.364346, 39.547909>,  <35.239479, 36.198784, 39.590790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407856, 36.364346, 39.547909>,  <35.688480, 36.640282, 39.476440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407856, 36.364346, 39.547909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248366, 0.001696, -0.968665,
		0.667922, -0.723958, -0.172523,
		-0.701565, -0.689842, 0.178674,
		35.197388, 36.157394, 39.601509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752941, 36.263603, 38.895660>,  <35.688480, 36.640282, 39.476440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752941, 36.263603, 38.895660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414425, 36.080475, 39.004616>,  <35.211315, 35.970596, 39.069988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414425, 36.080475, 39.004616>,  <35.752941, 36.263603, 38.895660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414425, 36.080475, 39.004616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401361, 0.211728, -0.891112,
		0.350296, -0.863464, -0.362934,
		-0.846287, -0.457821, 0.272393,
		35.160538, 35.943127, 39.086334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644016, 35.647282, 38.469177>,  <35.752941, 36.263603, 38.895660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644016, 35.647282, 38.469177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286934, 35.735966, 38.626102>,  <35.072685, 35.789177, 38.720257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286934, 35.735966, 38.626102>,  <35.644016, 35.647282, 38.469177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286934, 35.735966, 38.626102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371161, 0.131958, -0.919144,
		-0.255555, -0.966142, -0.035510,
		-0.892710, 0.221712, 0.392317,
		35.019119, 35.802479, 38.743797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068832, 35.138252, 38.207558>,  <35.644016, 35.647282, 38.469177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068832, 35.138252, 38.207558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854836, 35.453056, 38.330456>,  <34.726437, 35.641941, 38.404194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854836, 35.453056, 38.330456>,  <35.068832, 35.138252, 38.207558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854836, 35.453056, 38.330456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607937, -0.106072, -0.786868,
		-0.586686, -0.607748, 0.535202,
		-0.534988, 0.787014, 0.307241,
		34.694340, 35.689159, 38.422626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373562, 34.967449, 38.088348>,  <35.068832, 35.138252, 38.207558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373562, 34.967449, 38.088348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377171, 35.367249, 38.100491>,  <34.379333, 35.607128, 38.107777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377171, 35.367249, 38.100491>,  <34.373562, 34.967449, 38.088348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377171, 35.367249, 38.100491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590035, 0.029828, -0.806826,
		-0.807327, -0.010633, 0.590008,
		0.009020, 0.999498, 0.030355,
		34.379875, 35.667099, 38.109596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712215, 35.051537, 38.039925>,  <34.373562, 34.967449, 38.088348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712215, 35.051537, 38.039925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887386, 35.392960, 37.927032>,  <33.992489, 35.597813, 37.859299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887386, 35.392960, 37.927032>,  <33.712215, 35.051537, 38.039925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887386, 35.392960, 37.927032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564289, 0.016590, -0.825411,
		-0.699856, 0.520729, 0.488920,
		0.437927, 0.853561, -0.282231,
		34.018764, 35.649029, 37.842361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166424, 35.457668, 37.740986>,  <33.712215, 35.051537, 38.039925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166424, 35.457668, 37.740986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503345, 35.621632, 37.600990>,  <33.705498, 35.720009, 37.516994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503345, 35.621632, 37.600990>,  <33.166424, 35.457668, 37.740986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503345, 35.621632, 37.600990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452247, 0.184212, -0.872662,
		-0.293239, 0.893332, 0.340543,
		0.842308, 0.409908, -0.349989,
		33.756039, 35.744602, 37.495995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999924, 36.130913, 37.400612>,  <33.166424, 35.457668, 37.740986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999924, 36.130913, 37.400612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347481, 36.018944, 37.237312>,  <33.556015, 35.951763, 37.139332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347481, 36.018944, 37.237312>,  <32.999924, 36.130913, 37.400612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347481, 36.018944, 37.237312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395670, 0.102818, -0.912619,
		0.297437, 0.954501, -0.021419,
		0.868894, -0.279922, -0.408249,
		33.608150, 35.934967, 37.114838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980450, 36.535168, 36.746040>,  <32.999924, 36.130913, 37.400612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980450, 36.535168, 36.746040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282307, 36.277054, 36.698509>,  <33.463421, 36.122185, 36.669991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282307, 36.277054, 36.698509>,  <32.980450, 36.535168, 36.746040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282307, 36.277054, 36.698509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219694, -0.077856, -0.972457,
		0.618262, 0.759963, -0.200519,
		0.754643, -0.645286, -0.118824,
		33.508701, 36.083469, 36.662861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384762, 36.761982, 36.199532>,  <32.980450, 36.535168, 36.746040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384762, 36.761982, 36.199532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485432, 36.375717, 36.225327>,  <33.545834, 36.143959, 36.240803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485432, 36.375717, 36.225327>,  <33.384762, 36.761982, 36.199532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485432, 36.375717, 36.225327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118257, -0.035451, -0.992350,
		0.960559, 0.257378, 0.105274,
		0.251677, -0.965660, 0.064490,
		33.560936, 36.086018, 36.244675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933979, 36.680302, 35.752914>,  <33.384762, 36.761982, 36.199532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933979, 36.680302, 35.752914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815186, 36.301708, 35.803459>,  <33.743912, 36.074551, 35.833786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815186, 36.301708, 35.803459>,  <33.933979, 36.680302, 35.752914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815186, 36.301708, 35.803459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289252, -0.215284, -0.932730,
		0.910020, -0.240451, 0.337708,
		-0.296979, -0.946486, 0.126361,
		33.726093, 36.017761, 35.841366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567139, 36.257835, 35.551502>,  <33.933979, 36.680302, 35.752914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567139, 36.257835, 35.551502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234905, 36.036568, 35.525791>,  <34.035564, 35.903809, 35.510365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234905, 36.036568, 35.525791>,  <34.567139, 36.257835, 35.551502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234905, 36.036568, 35.525791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006029, 0.106480, -0.994296,
		0.556859, -0.826235, -0.085106,
		-0.830585, -0.553170, -0.064276,
		33.985729, 35.870617, 35.506508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665363, 35.524845, 35.148746>,  <34.567139, 36.257835, 35.551502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665363, 35.524845, 35.148746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280125, 35.632481, 35.146519>,  <34.048981, 35.697063, 35.145180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280125, 35.632481, 35.146519>,  <34.665363, 35.524845, 35.148746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280125, 35.632481, 35.146519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030831, 0.089729, -0.995489,
		-0.267377, -0.958926, -0.094714,
		-0.963098, 0.269091, -0.005573,
		33.991196, 35.713207, 35.144848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634617, 35.279079, 35.991772>,  <34.665363, 35.524845, 35.148746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634617, 35.279079, 35.991772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971897, 35.309219, 35.778854>,  <35.174263, 35.327301, 35.651104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971897, 35.309219, 35.778854>,  <34.634617, 35.279079, 35.991772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971897, 35.309219, 35.778854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450525, -0.639281, 0.623175,
		-0.293331, -0.765273, -0.572988,
		0.843199, 0.075348, -0.532295,
		35.224857, 35.331825, 35.619167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892399, 34.685062, 36.008835>,  <34.634617, 35.279079, 35.991772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892399, 34.685062, 36.008835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189842, 34.945007, 35.945927>,  <35.368309, 35.100975, 35.908184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189842, 34.945007, 35.945927>,  <34.892399, 34.685062, 36.008835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189842, 34.945007, 35.945927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557422, -0.472655, 0.682552,
		0.369229, -0.595215, -0.713715,
		0.743606, 0.649859, -0.157268,
		35.412926, 35.139965, 35.898746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431362, 34.260994, 35.937794>,  <34.892399, 34.685062, 36.008835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431362, 34.260994, 35.937794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595905, 34.617588, 36.013729>,  <35.694630, 34.831543, 36.059288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595905, 34.617588, 36.013729>,  <35.431362, 34.260994, 35.937794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595905, 34.617588, 36.013729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743920, -0.448718, 0.495212,
		0.526657, -0.062489, -0.847778,
		0.411359, 0.891486, 0.189834,
		35.719315, 34.885033, 36.070679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110893, 34.195824, 35.997200>,  <35.431362, 34.260994, 35.937794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110893, 34.195824, 35.997200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097107, 34.525818, 36.222843>,  <36.088837, 34.723816, 36.358227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097107, 34.525818, 36.222843>,  <36.110893, 34.195824, 35.997200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097107, 34.525818, 36.222843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770518, -0.337539, 0.540712,
		0.636486, 0.453286, -0.624033,
		-0.034462, 0.824984, 0.564104,
		36.086769, 34.773312, 36.392075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763939, 34.230289, 36.203754>,  <36.110893, 34.195824, 35.997200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763939, 34.230289, 36.203754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573990, 34.464012, 36.466991>,  <36.460022, 34.604244, 36.624935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573990, 34.464012, 36.466991>,  <36.763939, 34.230289, 36.203754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573990, 34.464012, 36.466991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581840, -0.352587, 0.732902,
		0.660274, 0.730937, -0.172540,
		-0.474869, 0.584307, 0.658091,
		36.431530, 34.639305, 36.664417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337181, 34.546127, 36.520157>,  <36.763939, 34.230289, 36.203754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337181, 34.546127, 36.520157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040318, 34.631622, 36.774250>,  <36.862202, 34.682919, 36.926708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040318, 34.631622, 36.774250>,  <37.337181, 34.546127, 36.520157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040318, 34.631622, 36.774250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602477, -0.202503, 0.772019,
		0.293646, 0.955672, 0.021517,
		-0.742154, 0.213737, 0.635235,
		36.817673, 34.695744, 36.964821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582096, 34.931095, 37.059692>,  <37.337181, 34.546127, 36.520157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582096, 34.931095, 37.059692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251244, 34.782890, 37.228725>,  <37.052731, 34.693970, 37.330147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251244, 34.782890, 37.228725>,  <37.582096, 34.931095, 37.059692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251244, 34.782890, 37.228725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495085, -0.124502, 0.859878,
		-0.265978, 0.920447, 0.286412,
		-0.827132, -0.370507, 0.422584,
		37.003105, 34.671738, 37.355499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507648, 35.250362, 37.726326>,  <37.582096, 34.931095, 37.059692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507648, 35.250362, 37.726326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273560, 34.929523, 37.773930>,  <37.133106, 34.737022, 37.802490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273560, 34.929523, 37.773930>,  <37.507648, 35.250362, 37.726326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273560, 34.929523, 37.773930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488799, -0.231855, 0.841022,
		-0.646986, 0.550354, 0.527749,
		-0.585222, -0.802093, 0.119006,
		37.097992, 34.688896, 37.809631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164051, 35.301342, 38.357079>,  <37.507648, 35.250362, 37.726326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164051, 35.301342, 38.357079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094654, 34.910126, 38.310894>,  <37.053017, 34.675396, 38.283184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094654, 34.910126, 38.310894>,  <37.164051, 35.301342, 38.357079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094654, 34.910126, 38.310894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370876, -0.173495, 0.912332,
		-0.912332, 0.115465, 0.392833,
		-0.173497, -0.978043, -0.115462,
		37.042606, 34.616714, 38.276257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913837, 35.007591, 39.038395>,  <37.164051, 35.301342, 38.357079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913837, 35.007591, 39.038395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.059658, 34.703911, 38.822723>,  <37.147152, 34.521702, 38.693321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.059658, 34.703911, 38.822723>,  <36.913837, 35.007591, 39.038395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059658, 34.703911, 38.822723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380561, -0.406990, 0.830381,
		-0.849868, -0.507905, 0.140556,
		0.364550, -0.759205, -0.539177,
		37.169022, 34.476151, 38.660969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819614, 34.425766, 39.493320>,  <36.913837, 35.007591, 39.038395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819614, 34.425766, 39.493320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100021, 34.329647, 39.224743>,  <37.268265, 34.271976, 39.063595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100021, 34.329647, 39.224743>,  <36.819614, 34.425766, 39.493320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100021, 34.329647, 39.224743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499589, -0.506416, 0.702818,
		-0.508982, -0.828108, -0.234890,
		0.700962, -0.240374, -0.671471,
		37.310326, 34.257561, 39.023308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850235, 33.648212, 39.453693>,  <36.819614, 34.425766, 39.493320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850235, 33.648212, 39.453693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203682, 33.802414, 39.347397>,  <37.415749, 33.894936, 39.283619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203682, 33.802414, 39.347397>,  <36.850235, 33.648212, 39.453693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203682, 33.802414, 39.347397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427003, -0.430642, 0.795120,
		0.192082, -0.816049, -0.545131,
		0.883614, 0.385501, -0.265737,
		37.468765, 33.918064, 39.267677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364124, 33.115269, 39.545979>,  <36.850235, 33.648212, 39.453693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364124, 33.115269, 39.545979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540958, 33.474049, 39.548599>,  <37.647060, 33.689316, 39.550171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540958, 33.474049, 39.548599>,  <37.364124, 33.115269, 39.545979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540958, 33.474049, 39.548599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640965, -0.321010, 0.697220,
		0.627475, -0.304031, -0.716827,
		0.442085, 0.896949, 0.006552,
		37.673584, 33.743134, 39.550564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016613, 32.930874, 39.859356>,  <37.364124, 33.115269, 39.545979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016613, 32.930874, 39.859356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005074, 33.330128, 39.880882>,  <37.998150, 33.569679, 39.893799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005074, 33.330128, 39.880882>,  <38.016613, 32.930874, 39.859356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005074, 33.330128, 39.880882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572498, -0.027639, 0.819440,
		0.819399, 0.054447, -0.570632,
		-0.028844, 0.998134, 0.053818,
		37.996422, 33.629566, 39.897026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701450, 33.178429, 39.887310>,  <38.016613, 32.930874, 39.859356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701450, 33.178429, 39.887310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445709, 33.437473, 40.053120>,  <38.292263, 33.592899, 40.152603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445709, 33.437473, 40.053120>,  <38.701450, 33.178429, 39.887310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445709, 33.437473, 40.053120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560847, 0.023986, 0.827572,
		0.526000, 0.761595, -0.378544,
		-0.639355, 0.647609, 0.414522,
		38.253902, 33.631756, 40.177475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111336, 33.758137, 40.180454>,  <38.701450, 33.178429, 39.887310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111336, 33.758137, 40.180454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755318, 33.776066, 40.361919>,  <38.541706, 33.786823, 40.470798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755318, 33.776066, 40.361919>,  <39.111336, 33.758137, 40.180454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755318, 33.776066, 40.361919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453004, 0.198481, 0.869133,
		-0.051089, 0.979079, -0.196960,
		-0.890043, 0.044821, 0.453667,
		38.488304, 33.789513, 40.498020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207378, 34.240250, 40.540504>,  <39.111336, 33.758137, 40.180454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207378, 34.240250, 40.540504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881359, 34.069111, 40.696781>,  <38.685749, 33.966427, 40.790546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881359, 34.069111, 40.696781>,  <39.207378, 34.240250, 40.540504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881359, 34.069111, 40.696781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264270, 0.325570, 0.907836,
		-0.515614, 0.843179, -0.152288,
		-0.815048, -0.427848, 0.390695,
		38.636845, 33.940758, 40.813992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010616, 34.657188, 41.117802>,  <39.207378, 34.240250, 40.540504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010616, 34.657188, 41.117802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800705, 34.330502, 41.213783>,  <38.674759, 34.134487, 41.271374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800705, 34.330502, 41.213783>,  <39.010616, 34.657188, 41.117802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800705, 34.330502, 41.213783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003860, 0.279603, 0.960108,
		-0.851233, 0.504766, -0.143576,
		-0.524774, -0.816721, 0.239955,
		38.643272, 34.085484, 41.285770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515907, 34.875622, 41.602051>,  <39.010616, 34.657188, 41.117802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515907, 34.875622, 41.602051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549320, 34.480297, 41.653061>,  <38.569366, 34.243103, 41.683666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549320, 34.480297, 41.653061>,  <38.515907, 34.875622, 41.602051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549320, 34.480297, 41.653061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071621, 0.121690, 0.989981,
		-0.993928, -0.091827, -0.060619,
		0.083530, -0.988311, 0.127528,
		38.574379, 34.183804, 41.691319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960472, 34.591209, 42.013268>,  <38.515907, 34.875622, 41.602051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960472, 34.591209, 42.013268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246078, 34.317142, 42.070866>,  <38.417442, 34.152702, 42.105427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246078, 34.317142, 42.070866>,  <37.960472, 34.591209, 42.013268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246078, 34.317142, 42.070866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142843, 0.058789, 0.987998,
		-0.685406, -0.726012, -0.055895,
		0.714013, -0.685164, 0.144000,
		38.460281, 34.111595, 42.114067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716770, 34.047802, 42.449718>,  <37.960472, 34.591209, 42.013268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716770, 34.047802, 42.449718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110573, 33.990463, 42.490116>,  <38.346855, 33.956059, 42.514355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110573, 33.990463, 42.490116>,  <37.716770, 34.047802, 42.449718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110573, 33.990463, 42.490116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119658, -0.128183, 0.984505,
		-0.128183, -0.981336, -0.143350,
		-0.984505, 0.143350, -0.100994,
		38.405926, 33.947460, 42.520412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739170, 33.550079, 42.856895>,  <37.716770, 34.047802, 42.449718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739170, 33.550079, 42.856895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084915, 33.748646, 42.889027>,  <38.292362, 33.867786, 42.908306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084915, 33.748646, 42.889027>,  <37.739170, 33.550079, 42.856895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084915, 33.748646, 42.889027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031428, -0.106091, 0.993860,
		0.501888, -0.861578, -0.076099,
		0.864361, 0.496415, 0.080323,
		38.344223, 33.897572, 42.913124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107361, 33.122784, 43.296646>,  <37.739170, 33.550079, 42.856895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107361, 33.122784, 43.296646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.294029, 33.476185, 43.312836>,  <38.406029, 33.688225, 43.322548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.294029, 33.476185, 43.312836>,  <38.107361, 33.122784, 43.296646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294029, 33.476185, 43.312836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094914, -0.095522, 0.990892,
		0.879324, -0.458578, -0.128434,
		0.466669, 0.883506, 0.040470,
		38.434029, 33.741238, 43.324978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651943, 33.095688, 43.789772>,  <38.107361, 33.122784, 43.296646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651943, 33.095688, 43.789772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573048, 33.487103, 43.765926>,  <38.525711, 33.721951, 43.751617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573048, 33.487103, 43.765926>,  <38.651943, 33.095688, 43.789772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573048, 33.487103, 43.765926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142922, 0.088864, 0.985737,
		0.969882, 0.185904, -0.157382,
		-0.197238, 0.978541, -0.059618,
		38.513878, 33.780666, 43.748039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066597, 33.555519, 44.440067>,  <38.651943, 33.095688, 43.789772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066597, 33.555519, 44.440067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827133, 33.844948, 44.302628>,  <38.683456, 34.018604, 44.220165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827133, 33.844948, 44.302628>,  <39.066597, 33.555519, 44.440067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827133, 33.844948, 44.302628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002472, 0.427284, 0.904114,
		0.801001, 0.542104, -0.254008,
		-0.598658, 0.723569, -0.343595,
		38.647537, 34.062019, 44.199551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370735, 34.272133, 44.512280>,  <39.066597, 33.555519, 44.440067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370735, 34.272133, 44.512280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975807, 34.328648, 44.483356>,  <38.738850, 34.362556, 44.466003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975807, 34.328648, 44.483356>,  <39.370735, 34.272133, 44.512280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975807, 34.328648, 44.483356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031692, 0.621916, 0.782442,
		0.155522, 0.770232, -0.618510,
		-0.987324, 0.141289, -0.072312,
		38.679611, 34.371033, 44.461662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145298, 34.960304, 44.412270>,  <39.370735, 34.272133, 44.512280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145298, 34.960304, 44.412270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807293, 34.795544, 44.548679>,  <38.604492, 34.696686, 44.630524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807293, 34.795544, 44.548679>,  <39.145298, 34.960304, 44.412270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807293, 34.795544, 44.548679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056828, 0.703280, 0.708638,
		-0.531725, 0.579425, -0.617685,
		-0.845008, -0.411903, 0.341023,
		38.553791, 34.671974, 44.650986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663616, 35.533566, 44.565193>,  <39.145298, 34.960304, 44.412270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663616, 35.533566, 44.565193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503609, 35.252205, 44.800213>,  <38.407604, 35.083389, 44.941223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503609, 35.252205, 44.800213>,  <38.663616, 35.533566, 44.565193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503609, 35.252205, 44.800213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138776, 0.587198, 0.797458,
		-0.905939, 0.400537, -0.137277,
		-0.400020, -0.703398, 0.587551,
		38.383602, 35.041187, 44.976479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285854, 35.872925, 44.987068>,  <38.663616, 35.533566, 44.565193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285854, 35.872925, 44.987068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306393, 35.518669, 45.171680>,  <38.318714, 35.306114, 45.282448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306393, 35.518669, 45.171680>,  <38.285854, 35.872925, 44.987068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306393, 35.518669, 45.171680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032253, 0.460424, 0.887113,
		-0.998160, -0.060432, -0.004926,
		0.051342, -0.885640, 0.461526,
		38.321796, 35.252975, 45.310139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757965, 35.888901, 45.545918>,  <38.285854, 35.872925, 44.987068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757965, 35.888901, 45.545918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039616, 35.625748, 45.652790>,  <38.208607, 35.467854, 45.716915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039616, 35.625748, 45.652790>,  <37.757965, 35.888901, 45.545918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039616, 35.625748, 45.652790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049094, 0.330268, 0.942610,
		-0.708371, -0.676837, 0.200253,
		0.704130, -0.657887, 0.267181,
		38.250854, 35.428383, 45.732944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537941, 35.571056, 46.201855>,  <37.757965, 35.888901, 45.545918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537941, 35.571056, 46.201855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932453, 35.508045, 46.182144>,  <38.169163, 35.470238, 46.170319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932453, 35.508045, 46.182144>,  <37.537941, 35.571056, 46.201855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932453, 35.508045, 46.182144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097634, 0.316121, 0.943681,
		-0.133076, -0.935550, 0.327166,
		0.986285, -0.157524, -0.049274,
		38.228340, 35.460789, 46.167362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629765, 35.371151, 46.850616>,  <37.537941, 35.571056, 46.201855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629765, 35.371151, 46.850616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997662, 35.452194, 46.716137>,  <38.218399, 35.500820, 46.635448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997662, 35.452194, 46.716137>,  <37.629765, 35.371151, 46.850616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997662, 35.452194, 46.716137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253527, 0.347256, 0.902850,
		0.299668, -0.915623, 0.268020,
		0.919741, 0.202605, -0.336196,
		38.273582, 35.512978, 46.615276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070362, 35.031227, 47.368477>,  <37.629765, 35.371151, 46.850616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070362, 35.031227, 47.368477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298630, 35.307743, 47.191185>,  <38.435593, 35.473652, 47.084808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298630, 35.307743, 47.191185>,  <38.070362, 35.031227, 47.368477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298630, 35.307743, 47.191185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376072, 0.259808, 0.889421,
		0.730001, -0.674254, -0.111710,
		0.570673, 0.691289, -0.443228,
		38.469833, 35.515129, 47.058216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698666, 34.980061, 47.666435>,  <38.070362, 35.031227, 47.368477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698666, 34.980061, 47.666435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714355, 35.336704, 47.485996>,  <38.723770, 35.550690, 47.377731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714355, 35.336704, 47.485996>,  <38.698666, 34.980061, 47.666435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714355, 35.336704, 47.485996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309584, 0.418390, 0.853878,
		0.950063, -0.173147, -0.259617,
		0.039226, 0.891611, -0.451100,
		38.726124, 35.604187, 47.350666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375622, 35.155151, 47.770622>,  <38.698666, 34.980061, 47.666435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375622, 35.155151, 47.770622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169495, 35.489140, 47.693398>,  <39.045818, 35.689533, 47.647064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169495, 35.489140, 47.693398>,  <39.375622, 35.155151, 47.770622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169495, 35.489140, 47.693398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427990, 0.445904, 0.786127,
		0.742480, 0.322475, -0.587140,
		-0.515314, 0.834973, -0.193058,
		39.014900, 35.739632, 47.635479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839394, 35.702431, 47.653244>,  <39.375622, 35.155151, 47.770622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839394, 35.702431, 47.653244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510624, 35.896900, 47.771954>,  <39.313362, 36.013580, 47.843178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510624, 35.896900, 47.771954>,  <39.839394, 35.702431, 47.653244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510624, 35.896900, 47.771954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523244, 0.438594, 0.730651,
		0.225061, 0.755825, -0.614879,
		-0.821926, 0.486173, 0.296770,
		39.264046, 36.042751, 47.860985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992027, 36.412823, 47.642780>,  <39.839394, 35.702431, 47.653244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992027, 36.412823, 47.642780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687733, 36.344189, 47.893169>,  <39.505157, 36.303009, 48.043404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687733, 36.344189, 47.893169>,  <39.992027, 36.412823, 47.642780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687733, 36.344189, 47.893169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451499, 0.552955, 0.700278,
		-0.466290, 0.815352, -0.343182,
		-0.760738, -0.171586, 0.625969,
		39.459511, 36.292713, 48.080959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757957, 37.076008, 47.925301>,  <39.992027, 36.412823, 47.642780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757957, 37.076008, 47.925301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645237, 36.779060, 48.168438>,  <39.577602, 36.600891, 48.314320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645237, 36.779060, 48.168438>,  <39.757957, 37.076008, 47.925301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645237, 36.779060, 48.168438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507036, 0.422613, 0.751207,
		-0.814556, 0.519893, 0.257314,
		-0.281803, -0.742368, 0.607846,
		39.560696, 36.556351, 48.350792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279503, 37.583786, 48.192780>,  <39.757957, 37.076008, 47.925301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279503, 37.583786, 48.192780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334732, 37.977074, 48.240463>,  <39.367870, 38.213047, 48.269073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334732, 37.977074, 48.240463>,  <39.279503, 37.583786, 48.192780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334732, 37.977074, 48.240463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404434, 0.053901, -0.912977,
		-0.904085, 0.174270, -0.390206,
		0.138072, 0.983222, 0.119212,
		39.376152, 38.272041, 48.276226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034363, 37.878952, 47.627022>,  <39.279503, 37.583786, 48.192780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034363, 37.878952, 47.627022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276501, 38.174084, 47.746464>,  <39.421783, 38.351162, 47.818130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276501, 38.174084, 47.746464>,  <39.034363, 37.878952, 47.627022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276501, 38.174084, 47.746464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339782, 0.099715, -0.935203,
		-0.719792, 0.667586, -0.190338,
		0.605349, 0.737826, 0.298608,
		39.458107, 38.395432, 47.836044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903076, 38.384983, 47.185860>,  <39.034363, 37.878952, 47.627022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903076, 38.384983, 47.185860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259960, 38.493763, 47.330082>,  <39.474091, 38.559032, 47.416615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259960, 38.493763, 47.330082>,  <38.903076, 38.384983, 47.185860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259960, 38.493763, 47.330082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285810, 0.278120, -0.917040,
		-0.349669, 0.921244, 0.170415,
		0.892213, 0.271954, 0.360551,
		39.527622, 38.575348, 47.438248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968758, 39.049198, 47.013226>,  <38.903076, 38.384983, 47.185860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968758, 39.049198, 47.013226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.343174, 38.914665, 47.054600>,  <39.567825, 38.833946, 47.079426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.343174, 38.914665, 47.054600>,  <38.968758, 39.049198, 47.013226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343174, 38.914665, 47.054600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120425, 0.029996, -0.992269,
		0.330633, 0.941264, 0.068581,
		0.936045, -0.336336, 0.103434,
		39.623989, 38.813763, 47.085629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316677, 39.438473, 46.532185>,  <38.968758, 39.049198, 47.013226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316677, 39.438473, 46.532185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569881, 39.139664, 46.613426>,  <39.721806, 38.960377, 46.662170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569881, 39.139664, 46.613426>,  <39.316677, 39.438473, 46.532185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569881, 39.139664, 46.613426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212883, -0.084273, -0.973436,
		0.744298, 0.659433, 0.105683,
		0.633010, -0.747025, 0.203107,
		39.759785, 38.915558, 46.674358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891727, 39.589577, 46.087326>,  <39.316677, 39.438473, 46.532185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891727, 39.589577, 46.087326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880333, 39.203041, 46.189606>,  <39.873497, 38.971119, 46.250973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880333, 39.203041, 46.189606>,  <39.891727, 39.589577, 46.087326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880333, 39.203041, 46.189606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242446, -0.254848, -0.936094,
		0.969747, 0.035327, 0.241544,
		-0.028488, -0.966336, 0.255703,
		39.871788, 38.913139, 46.266315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436237, 39.285538, 45.689266>,  <39.891727, 39.589577, 46.087326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436237, 39.285538, 45.689266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222340, 38.970249, 45.811092>,  <40.094002, 38.781078, 45.884186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222340, 38.970249, 45.811092>,  <40.436237, 39.285538, 45.689266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222340, 38.970249, 45.811092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080045, -0.311553, -0.946851,
		0.841214, -0.530702, 0.103508,
		-0.534744, -0.788219, 0.304563,
		40.061916, 38.733784, 45.902462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775555, 38.680534, 45.348743>,  <40.436237, 39.285538, 45.689266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775555, 38.680534, 45.348743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422443, 38.535721, 45.468502>,  <40.210579, 38.448833, 45.540356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422443, 38.535721, 45.468502>,  <40.775555, 38.680534, 45.348743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422443, 38.535721, 45.468502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135455, -0.414073, -0.900108,
		0.449845, -0.835147, 0.316493,
		-0.882774, -0.362039, 0.299394,
		40.157612, 38.427109, 45.558319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706867, 37.930260, 45.267086>,  <40.775555, 38.680534, 45.348743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706867, 37.930260, 45.267086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321236, 38.032349, 45.296497>,  <40.089855, 38.093601, 45.314144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321236, 38.032349, 45.296497>,  <40.706867, 37.930260, 45.267086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321236, 38.032349, 45.296497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218684, -0.605639, -0.765100,
		-0.150742, -0.753699, 0.639699,
		-0.964082, 0.255225, 0.073526,
		40.032013, 38.108917, 45.318554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282131, 37.292957, 45.265041>,  <40.706867, 37.930260, 45.267086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282131, 37.292957, 45.265041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.060112, 37.600189, 45.137306>,  <39.926903, 37.784527, 45.060665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.060112, 37.600189, 45.137306>,  <40.282131, 37.292957, 45.265041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060112, 37.600189, 45.137306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257266, -0.523594, -0.812197,
		-0.791037, -0.368650, 0.488219,
		-0.555045, 0.768080, -0.319342,
		39.893597, 37.830612, 45.041504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647938, 37.016487, 44.934788>,  <40.282131, 37.292957, 45.265041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647938, 37.016487, 44.934788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659199, 37.391262, 44.795441>,  <39.665955, 37.616127, 44.711830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659199, 37.391262, 44.795441>,  <39.647938, 37.016487, 44.934788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659199, 37.391262, 44.795441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307428, -0.323501, -0.894894,
		-0.951155, 0.132297, 0.278931,
		0.028157, 0.936934, -0.348371,
		39.667645, 37.672340, 44.690929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108734, 37.049404, 44.574482>,  <39.647938, 37.016487, 44.934788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108734, 37.049404, 44.574482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337109, 37.342865, 44.427086>,  <39.474133, 37.518940, 44.338650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337109, 37.342865, 44.427086>,  <39.108734, 37.049404, 44.574482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337109, 37.342865, 44.427086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368458, -0.172122, -0.913572,
		-0.733670, 0.657364, 0.172050,
		0.570936, 0.733653, -0.368492,
		39.508389, 37.562962, 44.316540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672993, 37.466736, 44.027172>,  <39.108734, 37.049404, 44.574482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672993, 37.466736, 44.027172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066383, 37.512417, 43.970978>,  <39.302418, 37.539825, 43.937260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066383, 37.512417, 43.970978>,  <38.672993, 37.466736, 44.027172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066383, 37.512417, 43.970978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117904, -0.184862, -0.975666,
		-0.137390, 0.976107, -0.168343,
		0.983475, 0.114199, -0.140485,
		39.361427, 37.546677, 43.928833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611736, 37.969746, 43.464134>,  <38.672993, 37.466736, 44.027172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611736, 37.969746, 43.464134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977730, 37.808735, 43.475212>,  <39.197327, 37.712128, 43.481857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977730, 37.808735, 43.475212>,  <38.611736, 37.969746, 43.464134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977730, 37.808735, 43.475212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084483, -0.258246, -0.962378,
		0.394539, 0.878224, -0.270299,
		0.914987, -0.402531, 0.027693,
		39.252228, 37.687977, 43.483521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849545, 38.130951, 42.834507>,  <38.611736, 37.969746, 43.464134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849545, 38.130951, 42.834507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111496, 37.852882, 42.953079>,  <39.268669, 37.686043, 43.024223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111496, 37.852882, 42.953079>,  <38.849545, 38.130951, 42.834507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111496, 37.852882, 42.953079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074558, -0.330897, -0.940717,
		0.752043, 0.638161, -0.164868,
		0.654883, -0.695168, 0.296429,
		39.307961, 37.644333, 43.042007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529999, 38.174988, 42.418076>,  <38.849545, 38.130951, 42.834507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529999, 38.174988, 42.418076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460930, 37.811638, 42.570415>,  <39.419491, 37.593628, 42.661819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460930, 37.811638, 42.570415>,  <39.529999, 38.174988, 42.418076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460930, 37.811638, 42.570415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052762, -0.377576, -0.924474,
		0.983566, -0.179723, 0.017268,
		-0.172670, -0.908370, 0.380853,
		39.409130, 37.539127, 42.684673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052666, 37.695641, 42.126183>,  <39.529999, 38.174988, 42.418076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052666, 37.695641, 42.126183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756943, 37.458473, 42.253849>,  <39.579510, 37.316174, 42.330448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756943, 37.458473, 42.253849>,  <40.052666, 37.695641, 42.126183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756943, 37.458473, 42.253849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142124, -0.600711, -0.786732,
		0.658199, -0.536275, 0.528378,
		-0.739307, -0.592921, 0.319170,
		39.535152, 37.280598, 42.349602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247040, 37.088791, 41.803234>,  <40.052666, 37.695641, 42.126183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247040, 37.088791, 41.803234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871529, 37.046833, 41.934505>,  <39.646221, 37.021660, 42.013268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871529, 37.046833, 41.934505>,  <40.247040, 37.088791, 41.803234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871529, 37.046833, 41.934505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233119, -0.507992, -0.829216,
		0.253689, -0.854952, 0.452437,
		-0.938774, -0.104891, 0.328178,
		39.589897, 37.015366, 42.032959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165417, 36.486618, 41.832413>,  <40.247040, 37.088791, 41.803234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165417, 36.486618, 41.832413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786568, 36.612473, 41.807255>,  <39.559258, 36.687984, 41.792160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786568, 36.612473, 41.807255>,  <40.165417, 36.486618, 41.832413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786568, 36.612473, 41.807255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134220, -0.566546, -0.813026,
		-0.291443, -0.761595, 0.578821,
		-0.947125, 0.314640, -0.062895,
		39.502430, 36.706863, 41.788387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793564, 35.937126, 41.746975>,  <40.165417, 36.486618, 41.832413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793564, 35.937126, 41.746975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523323, 36.192764, 41.599937>,  <39.361179, 36.346146, 41.511715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523323, 36.192764, 41.599937>,  <39.793564, 35.937126, 41.746975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523323, 36.192764, 41.599937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176057, -0.624012, -0.761323,
		-0.715941, -0.449630, 0.534098,
		-0.675598, 0.639095, -0.367595,
		39.320644, 36.384491, 41.489658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258232, 35.533695, 41.433743>,  <39.793564, 35.937126, 41.746975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258232, 35.533695, 41.433743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253010, 35.892017, 41.256042>,  <39.249878, 36.107010, 41.149422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253010, 35.892017, 41.256042>,  <39.258232, 35.533695, 41.433743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253010, 35.892017, 41.256042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199435, -0.437689, -0.876729,
		-0.979824, 0.077154, 0.184369,
		-0.013053, 0.895810, -0.444245,
		39.249092, 36.160759, 41.122768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722622, 35.390205, 41.039078>,  <39.258232, 35.533695, 41.433743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722622, 35.390205, 41.039078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888943, 35.721371, 40.888527>,  <38.988735, 35.920071, 40.798195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888943, 35.721371, 40.888527>,  <38.722622, 35.390205, 41.039078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888943, 35.721371, 40.888527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172392, -0.334595, -0.926460,
		-0.892967, 0.450109, 0.003601,
		0.415803, 0.827918, -0.376377,
		39.013683, 35.969746, 40.775612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227009, 35.875435, 40.634182>,  <38.722622, 35.390205, 41.039078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227009, 35.875435, 40.634182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592323, 35.937286, 40.483452>,  <38.811512, 35.974400, 40.393013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592323, 35.937286, 40.483452>,  <38.227009, 35.875435, 40.634182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592323, 35.937286, 40.483452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328293, -0.268178, -0.905706,
		-0.241108, 0.950878, -0.194158,
		0.913286, 0.154633, -0.376827,
		38.866310, 35.983677, 40.370403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173534, 36.274448, 39.992908>,  <38.227009, 35.875435, 40.634182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173534, 36.274448, 39.992908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540329, 36.120239, 39.951893>,  <38.760406, 36.027714, 39.927284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540329, 36.120239, 39.951893>,  <38.173534, 36.274448, 39.992908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540329, 36.120239, 39.951893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148913, -0.092343, -0.984529,
		0.370086, 0.918068, -0.142085,
		0.916985, -0.385519, -0.102537,
		38.815426, 36.004585, 39.921131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398270, 36.736637, 39.498497>,  <38.173534, 36.274448, 39.992908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398270, 36.736637, 39.498497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644459, 36.421535, 39.488365>,  <38.792171, 36.232475, 39.482288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644459, 36.421535, 39.488365>,  <38.398270, 36.736637, 39.498497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644459, 36.421535, 39.488365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026241, 0.052595, -0.998271,
		0.787723, 0.613742, 0.053042,
		0.615470, -0.787753, -0.025325,
		38.829102, 36.185211, 39.480766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949448, 36.863495, 39.100021>,  <38.398270, 36.736637, 39.498497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949448, 36.863495, 39.100021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966026, 36.464115, 39.114857>,  <38.975975, 36.224487, 39.123756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966026, 36.464115, 39.114857>,  <38.949448, 36.863495, 39.100021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966026, 36.464115, 39.114857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212808, -0.027447, -0.976708,
		0.976214, 0.048378, 0.211341,
		0.041450, -0.998452, 0.037089,
		38.978462, 36.164581, 39.125984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577972, 36.810619, 38.717331>,  <38.949448, 36.863495, 39.100021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577972, 36.810619, 38.717331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370594, 36.469219, 38.738327>,  <39.246166, 36.264381, 38.750923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370594, 36.469219, 38.738327>,  <39.577972, 36.810619, 38.717331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370594, 36.469219, 38.738327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142793, -0.146929, -0.978786,
		0.843103, -0.499954, 0.198049,
		-0.518447, -0.853497, 0.052487,
		39.215061, 36.213169, 38.754074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987152, 36.308163, 38.434036>,  <39.577972, 36.810619, 38.717331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987152, 36.308163, 38.434036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612442, 36.170654, 38.407879>,  <39.387615, 36.088150, 38.392185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612442, 36.170654, 38.407879>,  <39.987152, 36.308163, 38.434036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612442, 36.170654, 38.407879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107375, -0.104523, -0.988709,
		0.333054, -0.933219, 0.134827,
		-0.936774, -0.343771, -0.065393,
		39.331409, 36.067524, 38.388260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943485, 35.741833, 37.896648>,  <39.987152, 36.308163, 38.434036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943485, 35.741833, 37.896648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555679, 35.838078, 37.915161>,  <39.322994, 35.895824, 37.926270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555679, 35.838078, 37.915161>,  <39.943485, 35.741833, 37.896648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555679, 35.838078, 37.915161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096266, -0.200367, -0.974980,
		-0.225323, -0.949714, 0.217422,
		-0.969517, 0.240615, 0.046278,
		39.264824, 35.910259, 37.929047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575016, 35.309120, 37.406223>,  <39.943485, 35.741833, 37.896648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575016, 35.309120, 37.406223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314724, 35.605923, 37.470695>,  <39.158550, 35.784004, 37.509380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314724, 35.605923, 37.470695>,  <39.575016, 35.309120, 37.406223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314724, 35.605923, 37.470695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262580, -0.020721, -0.964688,
		-0.712464, -0.670073, 0.208319,
		-0.650728, 0.742006, 0.161185,
		39.119507, 35.828526, 37.519051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963699, 35.129688, 37.097359>,  <39.575016, 35.309120, 37.406223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963699, 35.129688, 37.097359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963139, 35.529221, 37.116692>,  <38.962803, 35.768940, 37.128292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963139, 35.529221, 37.116692>,  <38.963699, 35.129688, 37.097359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963139, 35.529221, 37.116692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350681, 0.044772, -0.935424,
		-0.936494, -0.018257, 0.350208,
		-0.001398, 0.998830, 0.048331,
		38.962719, 35.828869, 37.131191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397606, 35.270653, 36.636803>,  <38.963699, 35.129688, 37.097359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397606, 35.270653, 36.636803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543530, 35.641411, 36.672092>,  <38.631084, 35.863865, 36.693268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543530, 35.641411, 36.672092>,  <38.397606, 35.270653, 36.636803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543530, 35.641411, 36.672092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159531, 0.155581, -0.974856,
		-0.917314, 0.341559, 0.204625,
		0.364807, 0.926894, 0.088228,
		38.652973, 35.919479, 36.698563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978931, 35.788185, 36.302464>,  <38.397606, 35.270653, 36.636803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978931, 35.788185, 36.302464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345688, 35.947796, 36.306293>,  <38.565742, 36.043564, 36.308594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345688, 35.947796, 36.306293>,  <37.978931, 35.788185, 36.302464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345688, 35.947796, 36.306293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050647, 0.140109, -0.988840,
		-0.395914, 0.906172, 0.148674,
		0.916890, 0.399026, 0.009577,
		38.620754, 36.067505, 36.309166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937336, 36.239872, 35.753254>,  <37.978931, 35.788185, 36.302464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937336, 36.239872, 35.753254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332253, 36.221069, 35.813972>,  <38.569202, 36.209789, 35.850403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332253, 36.221069, 35.813972>,  <37.937336, 36.239872, 35.753254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332253, 36.221069, 35.813972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155299, 0.082974, -0.984377,
		0.033677, 0.995442, 0.089220,
		0.987293, -0.047006, 0.151797,
		38.628441, 36.206966, 35.859512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233646, 36.806030, 35.272556>,  <37.937336, 36.239872, 35.753254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233646, 36.806030, 35.272556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529369, 36.543789, 35.334000>,  <38.706802, 36.386444, 35.370865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529369, 36.543789, 35.334000>,  <38.233646, 36.806030, 35.272556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529369, 36.543789, 35.334000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312866, 0.132447, -0.940517,
		0.596266, 0.743395, 0.303037,
		0.739312, -0.655608, 0.153609,
		38.751163, 36.347107, 35.380081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788490, 37.108833, 34.954281>,  <38.233646, 36.806030, 35.272556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788490, 37.108833, 34.954281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871216, 36.718056, 34.975483>,  <38.920853, 36.483589, 34.988205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871216, 36.718056, 34.975483>,  <38.788490, 37.108833, 34.954281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871216, 36.718056, 34.975483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273660, 0.005745, -0.961809,
		0.939328, 0.213425, 0.268538,
		0.206817, -0.976942, 0.053009,
		38.933262, 36.424973, 34.991386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385113, 37.021397, 34.640865>,  <38.788490, 37.108833, 34.954281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385113, 37.021397, 34.640865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217133, 36.658642, 34.627014>,  <39.116344, 36.440990, 34.618706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217133, 36.658642, 34.627014>,  <39.385113, 37.021397, 34.640865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217133, 36.658642, 34.627014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180703, -0.046167, -0.982454,
		0.889374, -0.418841, 0.183265,
		-0.419953, -0.906885, -0.034626,
		39.091148, 36.386578, 34.616627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869301, 36.697239, 34.272987>,  <39.385113, 37.021397, 34.640865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869301, 36.697239, 34.272987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519398, 36.503586, 34.264786>,  <39.309456, 36.387394, 34.259865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519398, 36.503586, 34.264786>,  <39.869301, 36.697239, 34.272987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519398, 36.503586, 34.264786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057816, 0.146297, -0.987550,
		0.481104, -0.862678, -0.155965,
		-0.874755, -0.484131, -0.020508,
		39.256969, 36.358345, 34.258633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920486, 36.177082, 33.806744>,  <39.869301, 36.697239, 34.272987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920486, 36.177082, 33.806744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527321, 36.242138, 33.841221>,  <39.291420, 36.281170, 33.861908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527321, 36.242138, 33.841221>,  <39.920486, 36.177082, 33.806744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527321, 36.242138, 33.841221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087971, -0.003760, -0.996116,
		-0.161682, -0.986679, 0.018004,
		-0.982914, 0.162638, 0.086191,
		39.232445, 36.290928, 33.867077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565956, 35.673870, 33.321980>,  <39.920486, 36.177082, 33.806744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565956, 35.673870, 33.321980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304157, 35.964382, 33.406017>,  <39.147076, 36.138691, 33.456440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304157, 35.964382, 33.406017>,  <39.565956, 35.673870, 33.321980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304157, 35.964382, 33.406017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091227, 0.199982, -0.975543,
		-0.750537, -0.657660, -0.064632,
		-0.654502, 0.726285, 0.210091,
		39.107807, 36.182266, 33.469044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372593, 35.529247, 33.998871>,  <39.565956, 35.673870, 33.321980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372593, 35.529247, 33.998871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738560, 35.385685, 33.924984>,  <39.958138, 35.299545, 33.880653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738560, 35.385685, 33.924984>,  <39.372593, 35.529247, 33.998871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738560, 35.385685, 33.924984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368001, 0.553617, 0.747050,
		-0.165864, -0.751460, 0.638590,
		0.914912, -0.358910, -0.184713,
		40.013035, 35.278011, 33.869572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633499, 35.211903, 34.579128>,  <39.372593, 35.529247, 33.998871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633499, 35.211903, 34.579128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973068, 35.312233, 34.393044>,  <40.176807, 35.372433, 34.281395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973068, 35.312233, 34.393044>,  <39.633499, 35.211903, 34.579128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973068, 35.312233, 34.393044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325957, 0.444402, 0.834421,
		0.416029, -0.859997, 0.295507,
		0.848924, 0.250821, -0.465207,
		40.227745, 35.387482, 34.253479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179695, 35.012981, 34.911068>,  <39.633499, 35.211903, 34.579128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179695, 35.012981, 34.911068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311054, 35.333927, 34.711720>,  <40.389870, 35.526493, 34.592110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311054, 35.333927, 34.711720>,  <40.179695, 35.012981, 34.911068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311054, 35.333927, 34.711720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397246, 0.361379, 0.843565,
		0.856944, -0.474998, -0.200061,
		0.328394, 0.802361, -0.498372,
		40.409573, 35.574635, 34.562206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917774, 35.068409, 35.007244>,  <40.179695, 35.012981, 34.911068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917774, 35.068409, 35.007244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714691, 35.407223, 34.944305>,  <40.592842, 35.610512, 34.906544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714691, 35.407223, 34.944305>,  <40.917774, 35.068409, 35.007244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714691, 35.407223, 34.944305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225065, 0.306693, 0.924816,
		0.831610, 0.434127, -0.346350,
		-0.507711, 0.847038, -0.157343,
		40.562378, 35.661335, 34.897102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424549, 35.658585, 35.328972>,  <40.917774, 35.068409, 35.007244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.424549, 35.658585, 35.328972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031109, 35.726505, 35.304619>,  <40.795044, 35.767258, 35.290005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031109, 35.726505, 35.304619>,  <41.424549, 35.658585, 35.328972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031109, 35.726505, 35.304619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013945, 0.264940, 0.964164,
		0.179845, 0.949197, -0.258227,
		-0.983596, 0.169799, -0.060884,
		40.736031, 35.777447, 35.286354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.899338, 36.015217, 35.621349>,  <41.424549, 35.658585, 35.328972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.899338, 36.015217, 35.621349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904732, 35.734253, 35.906006>,  <41.907967, 35.565674, 36.076801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904732, 35.734253, 35.906006>,  <41.899338, 36.015217, 35.621349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904732, 35.734253, 35.906006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442444, 0.642434, 0.625717,
		-0.896695, 0.306425, 0.319440,
		0.013484, -0.702411, 0.711643,
		41.908775, 35.523529, 36.119499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546799, 36.298923, 36.201107>,  <41.899338, 36.015217, 35.621349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546799, 36.298923, 36.201107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.828934, 36.035526, 36.306091>,  <41.998215, 35.877487, 36.369080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.828934, 36.035526, 36.306091>,  <41.546799, 36.298923, 36.201107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.828934, 36.035526, 36.306091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372981, 0.659604, 0.652539,
		-0.602809, -0.362371, 0.710850,
		0.705341, -0.658490, 0.262458,
		42.040535, 35.837978, 36.384830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483349, 36.003242, 36.896664>,  <41.546799, 36.298923, 36.201107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483349, 36.003242, 36.896664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848995, 36.041786, 36.739132>,  <42.068382, 36.064911, 36.644611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848995, 36.041786, 36.739132>,  <41.483349, 36.003242, 36.896664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848995, 36.041786, 36.739132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260363, 0.605105, 0.752369,
		0.310804, -0.790293, 0.528051,
		0.914118, 0.096355, -0.393833,
		42.123230, 36.070694, 36.620983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.905571, 36.024670, 37.410995>,  <41.483349, 36.003242, 36.896664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.905571, 36.024670, 37.410995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.150810, 36.150970, 37.121330>,  <42.297955, 36.226749, 36.947529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.150810, 36.150970, 37.121330>,  <41.905571, 36.024670, 37.410995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.150810, 36.150970, 37.121330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349073, 0.714044, 0.606868,
		0.708711, -0.624851, 0.327550,
		0.613088, 0.315756, -0.724170,
		42.334740, 36.245693, 36.904079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599308, 35.961468, 37.617676>,  <41.905571, 36.024670, 37.410995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.599308, 35.961468, 37.617676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.616516, 36.258884, 37.350758>,  <42.626839, 36.437336, 37.190605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.616516, 36.258884, 37.350758>,  <42.599308, 35.961468, 37.617676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.616516, 36.258884, 37.350758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532634, 0.548015, 0.644966,
		0.845252, -0.383170, -0.372464,
		0.043016, 0.743546, -0.667300,
		42.629421, 36.481949, 37.150566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.297035, 36.215782, 37.545208>,  <42.599308, 35.961468, 37.617676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.297035, 36.215782, 37.545208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.079952, 36.522316, 37.407692>,  <42.949703, 36.706238, 37.325180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.079952, 36.522316, 37.407692>,  <43.297035, 36.215782, 37.545208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.079952, 36.522316, 37.407692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420829, 0.602329, 0.678309,
		0.726890, 0.223446, -0.649387,
		-0.542709, 0.766337, -0.343794,
		42.917141, 36.752216, 37.304554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.739735, 36.714909, 37.443916>,  <43.297035, 36.215782, 37.545208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.739735, 36.714909, 37.443916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.387859, 36.901112, 37.482826>,  <43.176735, 37.012833, 37.506172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.387859, 36.901112, 37.482826>,  <43.739735, 36.714909, 37.443916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.387859, 36.901112, 37.482826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387521, 0.583112, 0.714009,
		0.275651, 0.665798, -0.693346,
		-0.879684, 0.465503, 0.097275,
		43.123955, 37.040764, 37.512009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.961266, 37.334297, 37.508533>,  <43.739735, 36.714909, 37.443916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.961266, 37.334297, 37.508533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.581886, 37.378307, 37.627426>,  <43.354259, 37.404713, 37.698761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.581886, 37.378307, 37.627426>,  <43.961266, 37.334297, 37.508533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.581886, 37.378307, 37.627426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272320, 0.762693, 0.586635,
		-0.162156, 0.637334, -0.753334,
		-0.948445, 0.110022, 0.297234,
		43.297352, 37.411312, 37.716595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.718746, 38.052017, 37.399021>,  <43.961266, 37.334297, 37.508533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.718746, 38.052017, 37.399021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.464619, 37.916531, 37.676620>,  <43.312141, 37.835239, 37.843182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.464619, 37.916531, 37.676620>,  <43.718746, 38.052017, 37.399021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.464619, 37.916531, 37.676620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066787, 0.871212, 0.486343,
		-0.769355, 0.355335, -0.530877,
		-0.635321, -0.338715, 0.694003,
		43.274021, 37.814915, 37.884823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185570, 38.623684, 37.501720>,  <43.718746, 38.052017, 37.399021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185570, 38.623684, 37.501720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.179810, 38.378582, 37.817776>,  <43.176353, 38.231522, 38.007408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.179810, 38.378582, 37.817776>,  <43.185570, 38.623684, 37.501720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.179810, 38.378582, 37.817776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211350, 0.770501, 0.601381,
		-0.977304, 0.175659, 0.118407,
		-0.014405, -0.612757, 0.790140,
		43.175488, 38.194756, 38.054817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.890926, 39.037777, 38.011742>,  <43.185570, 38.623684, 37.501720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.890926, 39.037777, 38.011742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.054077, 38.728542, 38.206047>,  <43.151966, 38.542999, 38.322632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.054077, 38.728542, 38.206047>,  <42.890926, 39.037777, 38.011742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.054077, 38.728542, 38.206047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473005, 0.633988, 0.611821,
		-0.780964, -0.019777, 0.624263,
		0.407876, -0.773090, 0.485767,
		43.176441, 38.496616, 38.351776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.684036, 39.115627, 38.660164>,  <42.890926, 39.037777, 38.011742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.684036, 39.115627, 38.660164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.006546, 38.880169, 38.683510>,  <43.200054, 38.738892, 38.697517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.006546, 38.880169, 38.683510>,  <42.684036, 39.115627, 38.660164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.006546, 38.880169, 38.683510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412346, 0.630042, 0.658041,
		-0.424129, -0.506497, 0.750716,
		0.806279, -0.588649, 0.058367,
		43.248428, 38.703575, 38.701019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.881001, 38.916809, 39.419594>,  <42.684036, 39.115627, 38.660164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.881001, 38.916809, 39.419594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.225342, 38.853851, 39.226032>,  <43.431946, 38.816074, 39.109898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.225342, 38.853851, 39.226032>,  <42.881001, 38.916809, 39.419594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.225342, 38.853851, 39.226032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502846, 0.408840, 0.761574,
		0.077969, -0.898930, 0.431098,
		0.860852, -0.157397, -0.483900,
		43.483597, 38.806633, 39.080864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320091, 38.521336, 39.869064>,  <42.881001, 38.916809, 39.419594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.320091, 38.521336, 39.869064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.545540, 38.700394, 39.591377>,  <43.680809, 38.807831, 39.424767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.545540, 38.700394, 39.591377>,  <43.320091, 38.521336, 39.869064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.545540, 38.700394, 39.591377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549286, 0.424578, 0.719734,
		0.616938, -0.786984, -0.006584,
		0.563624, 0.447648, -0.694218,
		43.714626, 38.834686, 39.383110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.870834, 38.656776, 40.188366>,  <43.320091, 38.521336, 39.869064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.870834, 38.656776, 40.188366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985283, 38.852257, 39.858688>,  <44.053951, 38.969547, 39.660881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985283, 38.852257, 39.858688>,  <43.870834, 38.656776, 40.188366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.985283, 38.852257, 39.858688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760841, 0.406992, 0.505449,
		0.582457, -0.771703, -0.255379,
		0.286119, 0.488705, -0.824198,
		44.071117, 38.998867, 39.611427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.619774, 38.599098, 40.093113>,  <43.870834, 38.656776, 40.188366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.619774, 38.599098, 40.093113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.534187, 38.949169, 39.919548>,  <44.482838, 39.159214, 39.815411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.534187, 38.949169, 39.919548>,  <44.619774, 38.599098, 40.093113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.534187, 38.949169, 39.919548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691588, 0.449423, 0.565443,
		0.689874, -0.179101, -0.701425,
		-0.213965, 0.875181, -0.433909,
		44.469997, 39.211723, 39.789375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.334599, 39.010937, 40.129192>,  <44.619774, 38.599098, 40.093113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.334599, 39.010937, 40.129192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.066097, 39.283611, 40.012764>,  <44.904995, 39.447216, 39.942905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.066097, 39.283611, 40.012764>,  <45.334599, 39.010937, 40.129192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.066097, 39.283611, 40.012764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569659, 0.725687, 0.385833,
		0.474243, 0.093182, -0.875449,
		-0.671255, 0.681686, -0.291070,
		44.864719, 39.488117, 39.925442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.644123, 39.692669, 39.949123>,  <45.334599, 39.010937, 40.129192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.644123, 39.692669, 39.949123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.272823, 39.832905, 39.998837>,  <45.050045, 39.917046, 40.028664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.272823, 39.832905, 39.998837>,  <45.644123, 39.692669, 39.949123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.272823, 39.832905, 39.998837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371284, 0.893475, 0.252687,
		-0.022453, 0.280700, -0.959533,
		-0.928248, 0.350586, 0.124281,
		44.994350, 39.938080, 40.036121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.656895, 40.300224, 39.652592>,  <45.644123, 39.692669, 39.949123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.656895, 40.300224, 39.652592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.344471, 40.333923, 39.900089>,  <45.157017, 40.354145, 40.048588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.344471, 40.333923, 39.900089>,  <45.656895, 40.300224, 39.652592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.344471, 40.333923, 39.900089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216664, 0.965865, 0.141989,
		-0.585661, 0.244962, -0.772654,
		-0.781062, 0.084249, 0.618744,
		45.110153, 40.359200, 40.085712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.323395, 40.967884, 39.515366>,  <45.656895, 40.300224, 39.652592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.323395, 40.967884, 39.515366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.217552, 40.863914, 39.886833>,  <45.154045, 40.801533, 40.109715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.217552, 40.863914, 39.886833>,  <45.323395, 40.967884, 39.515366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.217552, 40.863914, 39.886833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159509, 0.937930, 0.307967,
		-0.951073, 0.229621, -0.206723,
		-0.264608, -0.259925, 0.928667,
		45.138168, 40.785938, 40.165432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.940041, 41.514381, 39.754341>,  <45.323395, 40.967884, 39.515366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.940041, 41.514381, 39.754341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.024055, 41.337204, 40.102982>,  <45.074463, 41.230896, 40.312164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.024055, 41.337204, 40.102982>,  <44.940041, 41.514381, 39.754341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.024055, 41.337204, 40.102982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130856, 0.896200, 0.423913,
		-0.968897, 0.025017, 0.246198,
		0.210038, -0.442944, 0.871599,
		45.087067, 41.204319, 40.364460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.442173, 41.752464, 40.274910>,  <44.940041, 41.514381, 39.754341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.442173, 41.752464, 40.274910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.774212, 41.616096, 40.451416>,  <44.973434, 41.534275, 40.557320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.774212, 41.616096, 40.451416>,  <44.442173, 41.752464, 40.274910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.774212, 41.616096, 40.451416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057846, 0.839720, 0.539931,
		-0.554613, -0.422668, 0.716768,
		0.830095, -0.340915, 0.441270,
		45.023239, 41.513821, 40.583797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.357876, 41.791363, 41.089882>,  <44.442173, 41.752464, 40.274910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.357876, 41.791363, 41.089882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.747311, 41.790039, 40.998562>,  <44.980972, 41.789246, 40.943768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.747311, 41.790039, 40.998562>,  <44.357876, 41.791363, 41.089882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.747311, 41.790039, 40.998562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134504, 0.816294, 0.561759,
		0.184504, -0.577627, 0.795176,
		0.973584, -0.003307, -0.228303,
		45.039387, 41.789047, 40.930069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.785648, 41.920120, 41.672909>,  <44.357876, 41.791363, 41.089882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.785648, 41.920120, 41.672909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.008247, 42.031963, 41.359955>,  <45.141808, 42.099068, 41.172180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.008247, 42.031963, 41.359955>,  <44.785648, 41.920120, 41.672909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.008247, 42.031963, 41.359955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084860, 0.917619, 0.388295,
		0.826506, -0.282478, 0.486923,
		0.556495, 0.279608, -0.782389,
		45.175194, 42.115845, 41.125237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.288116, 42.442776, 41.841244>,  <44.785648, 41.920120, 41.672909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.288116, 42.442776, 41.841244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.279221, 42.481758, 41.443249>,  <45.273884, 42.505146, 41.204453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.279221, 42.481758, 41.443249>,  <45.288116, 42.442776, 41.841244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.279221, 42.481758, 41.443249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120882, 0.988198, 0.094088,
		0.992418, -0.118185, -0.033754,
		-0.022236, 0.097455, -0.994991,
		45.272549, 42.510994, 41.144753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.557194, 43.082596, 41.783173>,  <45.288116, 42.442776, 41.841244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.557194, 43.082596, 41.783173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.526669, 42.986950, 41.395977>,  <45.508354, 42.929562, 41.163662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.526669, 42.986950, 41.395977>,  <45.557194, 43.082596, 41.783173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.526669, 42.986950, 41.395977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309108, 0.917315, -0.250969,
		0.947961, -0.318363, 0.003914,
		-0.076309, -0.239119, -0.967987,
		45.503777, 42.915215, 41.105579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.148888, 43.486614, 41.492710>,  <45.557194, 43.082596, 41.783173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.148888, 43.486614, 41.492710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.871735, 43.402119, 41.216946>,  <45.705441, 43.351421, 41.051487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.871735, 43.402119, 41.216946>,  <46.148888, 43.486614, 41.492710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.871735, 43.402119, 41.216946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040557, 0.943194, -0.329759,
		0.719906, -0.256446, -0.644958,
		-0.692886, -0.211238, -0.689411,
		45.663868, 43.338749, 41.010124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.498852, 43.578613, 40.806541>,  <46.148888, 43.486614, 41.492710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.498852, 43.578613, 40.806541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.108829, 43.665394, 40.825287>,  <45.874817, 43.717461, 40.836533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.108829, 43.665394, 40.825287>,  <46.498852, 43.578613, 40.806541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.108829, 43.665394, 40.825287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200555, 0.951634, -0.232746,
		-0.095092, -0.217542, -0.971408,
		-0.975057, 0.216953, 0.046864,
		45.816311, 43.730480, 40.839348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.215427, 43.300549, 40.608486>,  <46.498852, 43.578613, 40.806541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.215427, 43.300549, 40.608486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.039795, 43.003433, 40.810661>,  <46.934414, 42.825165, 40.931969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.039795, 43.003433, 40.810661>,  <47.215427, 43.300549, 40.608486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.039795, 43.003433, 40.810661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504788, 0.261425, 0.822706,
		-0.743231, 0.616379, 0.260162,
		-0.439086, -0.742788, 0.505440,
		46.908070, 42.780598, 40.962292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.060444, 43.990788, 40.298855>,  <47.215427, 43.300549, 40.608486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.060444, 43.990788, 40.298855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.410545, 43.998577, 40.105549>,  <47.620605, 44.003250, 39.989563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.410545, 43.998577, 40.105549>,  <47.060444, 43.990788, 40.298855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.410545, 43.998577, 40.105549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359371, -0.642538, -0.676755,
		-0.323694, 0.766006, -0.555388,
		0.875257, 0.019471, -0.483267,
		47.673122, 44.004417, 39.960567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.947250, 44.034180, 39.511013>,  <47.060444, 43.990788, 40.298855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.947250, 44.034180, 39.511013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.315273, 43.891846, 39.576588>,  <47.536087, 43.806446, 39.615932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.315273, 43.891846, 39.576588>,  <46.947250, 44.034180, 39.511013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.315273, 43.891846, 39.576588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115868, -0.646854, -0.753760,
		0.374253, 0.674510, -0.636373,
		0.920059, -0.355832, 0.163933,
		47.591290, 43.785095, 39.625767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.418999, 44.030605, 38.839428>,  <46.947250, 44.034180, 39.511013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.418999, 44.030605, 38.839428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.470222, 43.733898, 39.102757>,  <47.500957, 43.555874, 39.260754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.470222, 43.733898, 39.102757>,  <47.418999, 44.030605, 38.839428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.470222, 43.733898, 39.102757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176138, -0.670242, -0.720938,
		0.976000, -0.023630, -0.216486,
		0.128063, -0.741767, 0.658318,
		47.508640, 43.511368, 39.300251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.028339, 43.546661, 38.672070>,  <47.418999, 44.030605, 38.839428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.028339, 43.546661, 38.672070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.726040, 43.368328, 38.863934>,  <47.544659, 43.261330, 38.979053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.726040, 43.368328, 38.863934>,  <48.028339, 43.546661, 38.672070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.726040, 43.368328, 38.863934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027085, -0.710561, -0.703114,
		0.654299, -0.544370, 0.524932,
		-0.755750, -0.445829, 0.479664,
		47.499313, 43.234581, 39.007832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.140221, 42.681087, 38.670639>,  <48.028339, 43.546661, 38.672070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.140221, 42.681087, 38.670639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.760899, 42.793121, 38.730335>,  <47.533306, 42.860340, 38.766151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.760899, 42.793121, 38.730335>,  <48.140221, 42.681087, 38.670639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.760899, 42.793121, 38.730335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316471, -0.799316, -0.510822,
		-0.023782, -0.531645, 0.846633,
		-0.948304, 0.280084, 0.149241,
		47.476406, 42.877148, 38.775108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.771442, 42.103420, 38.964149>,  <48.140221, 42.681087, 38.670639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.771442, 42.103420, 38.964149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.498840, 42.339695, 38.791344>,  <47.335278, 42.481461, 38.687660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.498840, 42.339695, 38.791344>,  <47.771442, 42.103420, 38.964149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.498840, 42.339695, 38.791344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537324, -0.804668, -0.252571,
		-0.496821, 0.060005, 0.865776,
		-0.681507, 0.590684, -0.432018,
		47.294388, 42.516899, 38.661739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.199829, 41.784828, 39.188450>,  <47.771442, 42.103420, 38.964149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.199829, 41.784828, 39.188450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.102791, 41.992012, 38.860336>,  <47.044567, 42.116322, 38.663467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.102791, 41.992012, 38.860336>,  <47.199829, 41.784828, 39.188450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.102791, 41.992012, 38.860336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468241, -0.803046, -0.368602,
		-0.849646, 0.294669, 0.437346,
		-0.242593, 0.517964, -0.820281,
		47.030014, 42.147400, 38.614250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.588615, 41.550900, 39.027557>,  <47.199829, 41.784828, 39.188450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.588615, 41.550900, 39.027557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.687572, 41.719849, 38.678753>,  <46.746944, 41.821220, 38.469471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.687572, 41.719849, 38.678753>,  <46.588615, 41.550900, 39.027557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.687572, 41.719849, 38.678753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528818, -0.695261, -0.486790,
		-0.811881, 0.581560, 0.051360,
		0.247388, 0.422375, -0.872008,
		46.761787, 41.846561, 38.417149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.012810, 41.517921, 38.515232>,  <46.588615, 41.550900, 39.027557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.012810, 41.517921, 38.515232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.344143, 41.530193, 38.291477>,  <46.542942, 41.537556, 38.157223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.344143, 41.530193, 38.291477>,  <46.012810, 41.517921, 38.515232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.344143, 41.530193, 38.291477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376138, -0.709534, -0.595888,
		-0.415186, 0.704003, -0.576194,
		0.828336, 0.030676, -0.559391,
		46.592644, 41.539394, 38.123661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.722618, 41.281609, 37.922825>,  <46.012810, 41.517921, 38.515232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.722618, 41.281609, 37.922825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.110043, 41.298985, 37.824841>,  <46.342495, 41.309410, 37.766048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.110043, 41.298985, 37.824841>,  <45.722618, 41.281609, 37.922825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.110043, 41.298985, 37.824841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114822, -0.795433, -0.595064,
		-0.220700, 0.604482, -0.765436,
		0.968559, 0.043442, -0.244960,
		46.400612, 41.312016, 37.751354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.765835, 41.303555, 37.150410>,  <45.722618, 41.281609, 37.922825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.765835, 41.303555, 37.150410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.110413, 41.155502, 37.289497>,  <46.317162, 41.066669, 37.372952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.110413, 41.155502, 37.289497>,  <45.765835, 41.303555, 37.150410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.110413, 41.155502, 37.289497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148066, -0.838004, -0.525191,
		0.485781, 0.400939, -0.776701,
		0.861448, -0.370131, 0.347721,
		46.368847, 41.044464, 37.393814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.011467, 40.953842, 36.585205>,  <45.765835, 41.303555, 37.150410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.011467, 40.953842, 36.585205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.205433, 40.808949, 36.903610>,  <46.321812, 40.722012, 37.094654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.205433, 40.808949, 36.903610>,  <46.011467, 40.953842, 36.585205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.205433, 40.808949, 36.903610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054283, -0.895971, -0.440784,
		0.872873, 0.256955, -0.414810,
		0.484919, -0.362231, 0.796017,
		46.350910, 40.700279, 37.142414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.399479, 40.540783, 36.310482>,  <46.011467, 40.953842, 36.585205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.399479, 40.540783, 36.310482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.426067, 40.400639, 36.684181>,  <46.442020, 40.316551, 36.908401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.426067, 40.400639, 36.684181>,  <46.399479, 40.540783, 36.310482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.426067, 40.400639, 36.684181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069926, -0.935656, -0.345915,
		0.995335, -0.042335, -0.086693,
		0.066470, -0.350363, 0.934252,
		46.446007, 40.295528, 36.964458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.926830, 39.919174, 36.383553>,  <46.399479, 40.540783, 36.310482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.926830, 39.919174, 36.383553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.685589, 39.894165, 36.701637>,  <46.540844, 39.879158, 36.892487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.685589, 39.894165, 36.701637>,  <46.926830, 39.919174, 36.383553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.685589, 39.894165, 36.701637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113397, -0.980077, -0.163062,
		0.789562, -0.188517, 0.583997,
		-0.603102, -0.062524, 0.795209,
		46.504658, 39.875408, 36.940201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.188465, 39.297390, 36.797108>,  <46.926830, 39.919174, 36.383553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.188465, 39.297390, 36.797108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.803741, 39.380493, 36.868393>,  <46.572906, 39.430355, 36.911163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.803741, 39.380493, 36.868393>,  <47.188465, 39.297390, 36.797108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.803741, 39.380493, 36.868393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235952, -0.959307, -0.155105,
		0.138737, -0.191231, 0.971691,
		-0.961810, 0.207753, 0.178213,
		46.515198, 39.442818, 36.921856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.882832, 38.711708, 37.191658>,  <47.188465, 39.297390, 36.797108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.882832, 38.711708, 37.191658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.549316, 38.882412, 37.051559>,  <46.349205, 38.984833, 36.967503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.549316, 38.882412, 37.051559>,  <46.882832, 38.711708, 37.191658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.549316, 38.882412, 37.051559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303814, -0.884392, -0.354328,
		-0.460963, -0.189027, 0.867054,
		-0.833792, 0.426755, -0.350243,
		46.299179, 39.010437, 36.946487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.324974, 38.391121, 37.531818>,  <46.882832, 38.711708, 37.191658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.324974, 38.391121, 37.531818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.152027, 38.565796, 37.216259>,  <46.048260, 38.670601, 37.026924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.152027, 38.565796, 37.216259>,  <46.324974, 38.391121, 37.531818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.152027, 38.565796, 37.216259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495536, -0.846018, -0.196718,
		-0.753326, 0.305873, 0.582187,
		-0.432369, 0.436688, -0.788898,
		46.022316, 38.696804, 36.979591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.600029, 38.423668, 37.637138>,  <46.324974, 38.391121, 37.531818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.600029, 38.423668, 37.637138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.644875, 38.447456, 37.240372>,  <45.671783, 38.461727, 37.002312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.644875, 38.447456, 37.240372>,  <45.600029, 38.423668, 37.637138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.644875, 38.447456, 37.240372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486290, -0.867227, -0.106958,
		-0.866575, 0.494349, -0.068313,
		0.112117, 0.059467, -0.991914,
		45.678509, 38.465298, 36.942799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.954411, 38.239834, 37.363617>,  <45.600029, 38.423668, 37.637138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.954411, 38.239834, 37.363617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.211830, 38.212860, 37.058647>,  <45.366283, 38.196674, 36.875664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.211830, 38.212860, 37.058647>,  <44.954411, 38.239834, 37.363617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.211830, 38.212860, 37.058647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505214, -0.785716, -0.356943,
		-0.574980, 0.614900, -0.539719,
		0.643550, -0.067439, -0.762427,
		45.404896, 38.192627, 36.829918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.487141, 37.976570, 36.836693>,  <44.954411, 38.239834, 37.363617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.487141, 37.976570, 36.836693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.854816, 37.884735, 36.708702>,  <45.075420, 37.829636, 36.631908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.854816, 37.884735, 36.708702>,  <44.487141, 37.976570, 36.836693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.854816, 37.884735, 36.708702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340948, -0.870560, -0.354796,
		-0.197102, 0.435220, -0.878485,
		0.919187, -0.229587, -0.319976,
		45.130573, 37.815861, 36.612709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.365887, 37.794865, 36.199020>,  <44.487141, 37.976570, 36.836693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.365887, 37.794865, 36.199020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.720169, 37.630310, 36.285080>,  <44.932739, 37.531578, 36.336716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.720169, 37.630310, 36.285080>,  <44.365887, 37.794865, 36.199020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.720169, 37.630310, 36.285080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305588, -0.865500, -0.396896,
		0.349486, 0.285787, -0.892292,
		0.885706, -0.411383, 0.215147,
		44.985882, 37.506893, 36.349625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.665924, 37.584396, 35.546974>,  <44.365887, 37.794865, 36.199020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.665924, 37.584396, 35.546974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.825920, 37.326694, 35.807724>,  <44.921917, 37.172073, 35.964172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.825920, 37.326694, 35.807724>,  <44.665924, 37.584396, 35.546974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.825920, 37.326694, 35.807724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138100, -0.745496, -0.652046,
		0.906056, 0.170788, -0.387163,
		0.399990, -0.644257, 0.651875,
		44.945915, 37.133419, 36.003288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.054104, 37.107319, 35.223209>,  <44.665924, 37.584396, 35.546974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.054104, 37.107319, 35.223209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.037090, 36.915714, 35.573921>,  <45.026882, 36.800751, 35.784348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.037090, 36.915714, 35.573921>,  <45.054104, 37.107319, 35.223209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.037090, 36.915714, 35.573921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088755, -0.872291, -0.480866,
		0.995145, -0.098271, -0.005414,
		-0.042532, -0.479012, 0.876778,
		45.024330, 36.772011, 35.836956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.502411, 36.602428, 35.237297>,  <45.054104, 37.107319, 35.223209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.502411, 36.602428, 35.237297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.239941, 36.486710, 35.516079>,  <45.082458, 36.417278, 35.683346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.239941, 36.486710, 35.516079>,  <45.502411, 36.602428, 35.237297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.239941, 36.486710, 35.516079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114667, -0.874641, -0.471014,
		0.745845, -0.388985, 0.540746,
		-0.656176, -0.289297, 0.696950,
		45.043087, 36.399921, 35.725163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.746819, 35.894348, 35.571377>,  <45.502411, 36.602428, 35.237297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.746819, 35.894348, 35.571377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.359791, 35.995094, 35.563622>,  <45.127575, 36.055542, 35.558968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.359791, 35.995094, 35.563622>,  <45.746819, 35.894348, 35.571377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.359791, 35.995094, 35.563622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190791, -0.778936, -0.597375,
		-0.165561, -0.574302, 0.801727,
		-0.967568, 0.251864, -0.019389,
		45.069519, 36.070652, 35.557804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.372612, 35.597599, 35.788559>,  <45.746819, 35.894348, 35.571377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.372612, 35.597599, 35.788559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.549450, 35.240372, 35.755157>,  <46.655552, 35.026035, 35.735115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.549450, 35.240372, 35.755157>,  <46.372612, 35.597599, 35.788559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.549450, 35.240372, 35.755157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335486, 0.250978, -0.907997,
		0.831865, 0.373407, 0.410570,
		0.442097, -0.893072, -0.083507,
		46.682079, 34.972450, 35.730106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.011093, 35.721554, 35.536343>,  <46.372612, 35.597599, 35.788559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.011093, 35.721554, 35.536343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.986042, 35.329411, 35.461544>,  <46.971012, 35.094124, 35.416664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.986042, 35.329411, 35.461544>,  <47.011093, 35.721554, 35.536343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.986042, 35.329411, 35.461544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581755, 0.116380, -0.804995,
		0.810949, -0.159201, 0.563042,
		-0.062629, -0.980362, -0.186995,
		46.967255, 35.035301, 35.405445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.753860, 35.304844, 35.469280>,  <47.011093, 35.721554, 35.536343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.753860, 35.304844, 35.469280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.445881, 35.173290, 35.250549>,  <47.261093, 35.094360, 35.119312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.445881, 35.173290, 35.250549>,  <47.753860, 35.304844, 35.469280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.445881, 35.173290, 35.250549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519276, 0.175113, -0.836473,
		0.370856, -0.927994, 0.035952,
		-0.769947, -0.328881, -0.546827,
		47.214897, 35.074627, 35.086502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.092201, 35.010960, 34.907047>,  <47.753860, 35.304844, 35.469280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.092201, 35.010960, 34.907047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.727882, 35.133564, 34.796410>,  <47.509293, 35.207127, 34.730026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.727882, 35.133564, 34.796410>,  <48.092201, 35.010960, 34.907047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.727882, 35.133564, 34.796410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384719, 0.386988, -0.837993,
		-0.149821, -0.869649, -0.470388,
		-0.910794, 0.306516, -0.276591,
		47.454643, 35.225517, 34.713432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.673004, 40.572548, 41.159725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.314781, 40.544376, 41.335461>,  <35.099846, 40.527473, 41.440903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.314781, 40.544376, 41.335461>,  <35.673004, 40.572548, 41.159725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314781, 40.544376, 41.335461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442076, 0.028848, -0.896514,
		0.050487, -0.997098, -0.056980,
		-0.895556, -0.070452, 0.439336,
		35.046116, 40.523247, 41.467262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330685, 39.886814, 40.950027>,  <35.673004, 40.572548, 41.159725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330685, 39.886814, 40.950027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.081280, 40.182083, 41.053047>,  <34.931637, 40.359245, 41.114861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.081280, 40.182083, 41.053047>,  <35.330685, 39.886814, 40.950027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081280, 40.182083, 41.053047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350932, 0.030123, -0.935916,
		-0.698623, -0.673943, 0.240265,
		-0.623517, 0.738169, 0.257553,
		34.894226, 40.403534, 41.130314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602261, 39.726425, 40.636414>,  <35.330685, 39.886814, 40.950027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602261, 39.726425, 40.636414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.554008, 40.112389, 40.729713>,  <34.525055, 40.343967, 40.785694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.554008, 40.112389, 40.729713>,  <34.602261, 39.726425, 40.636414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554008, 40.112389, 40.729713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492612, 0.145811, -0.857947,
		-0.861848, -0.218399, 0.457734,
		-0.120632, 0.964905, 0.233253,
		34.517818, 40.401859, 40.799690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861629, 39.902946, 40.706226>,  <34.602261, 39.726425, 40.636414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861629, 39.902946, 40.706226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.077488, 40.224644, 40.606647>,  <34.207001, 40.417664, 40.546898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.077488, 40.224644, 40.606647>,  <33.861629, 39.902946, 40.706226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077488, 40.224644, 40.606647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443823, 0.020487, -0.895880,
		-0.715406, 0.593946, 0.367998,
		0.539643, 0.804244, -0.248951,
		34.239380, 40.465916, 40.531963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462185, 40.223873, 40.220257>,  <33.861629, 39.902946, 40.706226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462185, 40.223873, 40.220257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.791149, 40.444298, 40.163731>,  <33.988529, 40.576553, 40.129814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.791149, 40.444298, 40.163731>,  <33.462185, 40.223873, 40.220257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791149, 40.444298, 40.163731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280126, 0.176065, -0.943679,
		-0.495149, 0.815676, 0.299165,
		0.822409, 0.551066, -0.141313,
		34.037872, 40.609619, 40.121338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250217, 40.877522, 39.923042>,  <33.462185, 40.223873, 40.220257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250217, 40.877522, 39.923042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.632320, 40.821602, 39.818779>,  <33.861584, 40.788052, 39.756222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.632320, 40.821602, 39.818779>,  <33.250217, 40.877522, 39.923042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632320, 40.821602, 39.818779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239035, 0.154160, -0.958695,
		0.174204, 0.978106, 0.113846,
		0.955257, -0.139796, -0.260657,
		33.918896, 40.779663, 39.740582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390217, 41.274818, 39.282642>,  <33.250217, 40.877522, 39.923042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390217, 41.274818, 39.282642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.686008, 41.006416, 39.261036>,  <33.863483, 40.845375, 39.248074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.686008, 41.006416, 39.261036>,  <33.390217, 41.274818, 39.282642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686008, 41.006416, 39.261036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030852, 0.046369, -0.998448,
		0.672467, 0.740002, 0.013588,
		0.739483, -0.671004, -0.054012,
		33.907852, 40.805115, 39.244831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704887, 41.336689, 38.541012>,  <33.390217, 41.274818, 39.282642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704887, 41.336689, 38.541012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.846489, 40.982502, 38.661427>,  <33.931450, 40.769989, 38.733677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.846489, 40.982502, 38.661427>,  <33.704887, 41.336689, 38.541012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846489, 40.982502, 38.661427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069503, -0.296087, -0.952629,
		0.932659, 0.358154, -0.043272,
		0.354000, -0.885471, 0.301041,
		33.952690, 40.716862, 38.751740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399261, 41.189693, 38.183739>,  <33.704887, 41.336689, 38.541012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399261, 41.189693, 38.183739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.289856, 40.812500, 38.259605>,  <34.224213, 40.586185, 38.305126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.289856, 40.812500, 38.259605>,  <34.399261, 41.189693, 38.183739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289856, 40.812500, 38.259605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079372, -0.218639, -0.972572,
		0.958586, -0.250962, 0.134648,
		-0.273518, -0.942982, 0.189665,
		34.207802, 40.529606, 38.316505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823505, 40.742088, 37.714001>,  <34.399261, 41.189693, 38.183739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823505, 40.742088, 37.714001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.518547, 40.509777, 37.828156>,  <34.335571, 40.370392, 37.896648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.518547, 40.509777, 37.828156>,  <34.823505, 40.742088, 37.714001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518547, 40.509777, 37.828156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022603, -0.416850, -0.908694,
		0.646713, -0.699237, 0.304678,
		-0.762398, -0.580778, 0.285387,
		34.289829, 40.335545, 37.913773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975304, 40.037197, 37.453999>,  <34.823505, 40.742088, 37.714001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975304, 40.037197, 37.453999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.583931, 40.049099, 37.535767>,  <34.349106, 40.056240, 37.584827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.583931, 40.049099, 37.535767>,  <34.975304, 40.037197, 37.453999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583931, 40.049099, 37.535767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177858, -0.624663, -0.760370,
		0.105072, -0.780328, 0.616481,
		-0.978430, 0.029752, 0.204422,
		34.290401, 40.058025, 37.597092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696438, 39.294487, 37.527233>,  <34.975304, 40.037197, 37.453999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696438, 39.294487, 37.527233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.377651, 39.514225, 37.426788>,  <34.186378, 39.646069, 37.366520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.377651, 39.514225, 37.426788>,  <34.696438, 39.294487, 37.527233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377651, 39.514225, 37.426788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188246, -0.620929, -0.760928,
		-0.573935, -0.559166, 0.598274,
		-0.796970, 0.549346, -0.251112,
		34.138561, 39.679028, 37.351456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249149, 38.769547, 37.212181>,  <34.696438, 39.294487, 37.527233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249149, 38.769547, 37.212181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.106216, 39.126926, 37.103321>,  <34.020454, 39.341354, 37.038006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.106216, 39.126926, 37.103321>,  <34.249149, 38.769547, 37.212181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106216, 39.126926, 37.103321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068570, -0.315701, -0.946378,
		-0.931455, -0.319514, 0.174075,
		-0.357336, 0.893445, -0.272152,
		33.999016, 39.394958, 37.021675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579021, 38.777359, 36.896561>,  <34.249149, 38.769547, 37.212181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579021, 38.777359, 36.896561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.754246, 39.102451, 36.742905>,  <33.859383, 39.297508, 36.650711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.754246, 39.102451, 36.742905>,  <33.579021, 38.777359, 36.896561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754246, 39.102451, 36.742905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015147, -0.433940, -0.900815,
		-0.898816, 0.388796, -0.202404,
		0.438064, 0.812732, -0.384143,
		33.885666, 39.346272, 36.627663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307419, 38.894978, 36.181927>,  <33.579021, 38.777359, 36.896561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307419, 38.894978, 36.181927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.642956, 39.112724, 36.181484>,  <33.844280, 39.243374, 36.181217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.642956, 39.112724, 36.181484>,  <33.307419, 38.894978, 36.181927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642956, 39.112724, 36.181484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086114, -0.134710, -0.987136,
		-0.537517, 0.827958, -0.159879,
		0.838844, 0.544371, -0.001110,
		33.894608, 39.276035, 36.181152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289619, 39.278400, 35.621735>,  <33.307419, 38.894978, 36.181927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289619, 39.278400, 35.621735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.675911, 39.328938, 35.712425>,  <33.907684, 39.359261, 35.766838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.675911, 39.328938, 35.712425>,  <33.289619, 39.278400, 35.621735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675911, 39.328938, 35.712425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256203, -0.324115, -0.910664,
		-0.041571, 0.937543, -0.345377,
		0.965729, 0.126344, 0.226728,
		33.965630, 39.366840, 35.780445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681999, 39.603756, 34.986206>,  <33.289619, 39.278400, 35.621735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681999, 39.603756, 34.986206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.977936, 39.431229, 35.192741>,  <34.155499, 39.327713, 35.316662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.977936, 39.431229, 35.192741>,  <33.681999, 39.603756, 34.986206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977936, 39.431229, 35.192741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490204, -0.180056, -0.852807,
		0.460799, 0.884051, 0.078220,
		0.739840, -0.431317, 0.516335,
		34.199886, 39.301834, 35.347641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339493, 39.892147, 34.733658>,  <33.681999, 39.603756, 34.986206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339493, 39.892147, 34.733658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.393257, 39.532822, 34.900974>,  <34.425514, 39.317226, 35.001362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.393257, 39.532822, 34.900974>,  <34.339493, 39.892147, 34.733658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393257, 39.532822, 34.900974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322251, -0.359548, -0.875717,
		0.937064, 0.252497, 0.241156,
		0.134409, -0.898315, 0.418287,
		34.433578, 39.263329, 35.026459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874050, 39.629841, 34.282761>,  <34.339493, 39.892147, 34.733658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874050, 39.629841, 34.282761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.698593, 39.326969, 34.476372>,  <34.593319, 39.145248, 34.592537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.698593, 39.326969, 34.476372>,  <34.874050, 39.629841, 34.282761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698593, 39.326969, 34.476372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027884, -0.549812, -0.834823,
		0.898230, -0.352690, 0.262283,
		-0.438640, -0.757176, 0.484023,
		34.567001, 39.099815, 34.621578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330093, 39.015842, 34.271309>,  <34.874050, 39.629841, 34.282761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330093, 39.015842, 34.271309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.956154, 38.875031, 34.289776>,  <34.731789, 38.790543, 34.300858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.956154, 38.875031, 34.289776>,  <35.330093, 39.015842, 34.271309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956154, 38.875031, 34.289776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168183, -0.553592, -0.815629,
		0.312682, -0.754726, 0.576731,
		-0.934850, -0.352029, 0.046166,
		34.675697, 38.769421, 34.303627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433006, 38.305233, 34.124950>,  <35.330093, 39.015842, 34.271309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433006, 38.305233, 34.124950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.039879, 38.365112, 34.081757>,  <34.804001, 38.401039, 34.055840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.039879, 38.365112, 34.081757>,  <35.433006, 38.305233, 34.124950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039879, 38.365112, 34.081757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012597, -0.638062, -0.769882,
		-0.184148, -0.755293, 0.628984,
		-0.982818, 0.149696, -0.107983,
		34.745033, 38.410023, 34.049362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189541, 37.714035, 34.117016>,  <35.433006, 38.305233, 34.124950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189541, 37.714035, 34.117016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.925766, 37.937225, 33.915501>,  <34.767502, 38.071140, 33.794594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.925766, 37.937225, 33.915501>,  <35.189541, 37.714035, 34.117016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925766, 37.937225, 33.915501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007841, -0.665004, -0.746799,
		-0.751714, -0.496421, 0.434156,
		-0.659442, 0.557975, -0.503785,
		34.727932, 38.104618, 33.764366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523754, 37.184898, 34.385147>,  <35.189541, 37.714035, 34.117016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523754, 37.184898, 34.385147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.823776, 37.337322, 34.168922>,  <36.003792, 37.428776, 34.039188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.823776, 37.337322, 34.168922>,  <35.523754, 37.184898, 34.385147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823776, 37.337322, 34.168922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381298, 0.418672, 0.824212,
		0.540393, -0.824321, 0.168729,
		0.750058, 0.381062, -0.540560,
		36.048794, 37.451641, 34.006756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079899, 37.031471, 34.780369>,  <35.523754, 37.184898, 34.385147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079899, 37.031471, 34.780369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.207489, 37.327663, 34.543747>,  <36.284042, 37.505379, 34.401772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.207489, 37.327663, 34.543747>,  <36.079899, 37.031471, 34.780369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207489, 37.327663, 34.543747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464626, 0.421842, 0.778571,
		0.826062, -0.523198, -0.209490,
		0.318975, 0.740482, -0.591559,
		36.303181, 37.549809, 34.366280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793598, 37.173885, 34.999424>,  <36.079899, 37.031471, 34.780369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793598, 37.173885, 34.999424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.663082, 37.492382, 34.795643>,  <36.584774, 37.683479, 34.673374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.663082, 37.492382, 34.795643>,  <36.793598, 37.173885, 34.999424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663082, 37.492382, 34.795643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339098, 0.601670, 0.723191,
		0.882353, 0.063218, -0.466323,
		-0.326291, 0.796239, -0.509448,
		36.565193, 37.731255, 34.642807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428982, 37.637665, 34.870808>,  <36.793598, 37.173885, 34.999424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428982, 37.637665, 34.870808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.090832, 37.850998, 34.858761>,  <36.887943, 37.978996, 34.851532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.090832, 37.850998, 34.858761>,  <37.428982, 37.637665, 34.870808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090832, 37.850998, 34.858761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313760, 0.541382, 0.780038,
		0.432321, 0.649974, -0.625007,
		-0.845372, 0.533329, -0.030115,
		36.837219, 38.010998, 34.849728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620708, 38.429153, 34.798550>,  <37.428982, 37.637665, 34.870808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620708, 38.429153, 34.798550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.253811, 38.396210, 34.954441>,  <37.033672, 38.376442, 35.047977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.253811, 38.396210, 34.954441>,  <37.620708, 38.429153, 34.798550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253811, 38.396210, 34.954441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265480, 0.603017, 0.752257,
		-0.296970, 0.793465, -0.531245,
		-0.917240, -0.082363, 0.389728,
		36.978638, 38.371502, 35.071358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487030, 39.110771, 34.826962>,  <37.620708, 38.429153, 34.798550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487030, 39.110771, 34.826962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.214260, 38.938965, 35.063770>,  <37.050598, 38.835880, 35.205856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.214260, 38.938965, 35.063770>,  <37.487030, 39.110771, 34.826962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214260, 38.938965, 35.063770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163158, 0.699686, 0.695571,
		-0.712989, 0.570922, -0.407056,
		-0.681928, -0.429520, 0.592019,
		37.009682, 38.810108, 35.241375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267906, 39.660847, 35.195183>,  <37.487030, 39.110771, 34.826962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267906, 39.660847, 35.195183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.163033, 39.339462, 35.408989>,  <37.100109, 39.146633, 35.537273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.163033, 39.339462, 35.408989>,  <37.267906, 39.660847, 35.195183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163033, 39.339462, 35.408989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258853, 0.475041, 0.841030,
		-0.929653, 0.358866, 0.083430,
		-0.262184, -0.803462, 0.534517,
		37.084377, 39.098423, 35.569344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751415, 39.840828, 35.657753>,  <37.267906, 39.660847, 35.195183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751415, 39.840828, 35.657753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.924366, 39.521507, 35.825451>,  <37.028137, 39.329914, 35.926071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.924366, 39.521507, 35.825451>,  <36.751415, 39.840828, 35.657753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924366, 39.521507, 35.825451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016510, 0.471886, 0.881505,
		-0.901542, -0.374219, 0.217212,
		0.432375, -0.798300, 0.419247,
		37.054077, 39.282017, 35.951225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384571, 39.685535, 36.421864>,  <36.751415, 39.840828, 35.657753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384571, 39.685535, 36.421864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.713703, 39.459923, 36.449642>,  <36.911182, 39.324554, 36.466309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.713703, 39.459923, 36.449642>,  <36.384571, 39.685535, 36.421864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713703, 39.459923, 36.449642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183879, 0.379871, 0.906579,
		-0.537720, -0.733189, 0.416282,
		0.822828, -0.564032, 0.069447,
		36.960552, 39.290714, 36.470474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300831, 39.291389, 37.005634>,  <36.384571, 39.685535, 36.421864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300831, 39.291389, 37.005634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.696560, 39.257622, 36.958115>,  <36.933998, 39.237362, 36.929604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.696560, 39.257622, 36.958115>,  <36.300831, 39.291389, 37.005634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696560, 39.257622, 36.958115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118075, -0.013544, 0.992912,
		-0.085430, -0.996338, -0.003431,
		0.989323, -0.084419, -0.118799,
		36.993359, 39.232296, 36.922474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526886, 38.892990, 37.522961>,  <36.300831, 39.291389, 37.005634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526886, 38.892990, 37.522961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.837990, 39.108700, 37.393799>,  <37.024651, 39.238125, 37.316299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.837990, 39.108700, 37.393799>,  <36.526886, 38.892990, 37.522961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837990, 39.108700, 37.393799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241852, 0.217422, 0.945640,
		0.580170, -0.813577, 0.038677,
		0.777760, 0.539277, -0.322907,
		37.071320, 39.270485, 37.296928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116962, 38.700970, 37.908844>,  <36.526886, 38.892990, 37.522961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116962, 38.700970, 37.908844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.264015, 39.041927, 37.760105>,  <37.352249, 39.246502, 37.670860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.264015, 39.041927, 37.760105>,  <37.116962, 38.700970, 37.908844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264015, 39.041927, 37.760105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383108, 0.225526, 0.895749,
		0.847392, -0.471766, -0.243648,
		0.367635, 0.852394, -0.371846,
		37.374306, 39.297646, 37.648552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818626, 38.747707, 38.006573>,  <37.116962, 38.700970, 37.908844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818626, 38.747707, 38.006573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.712669, 39.128735, 37.946659>,  <37.649094, 39.357353, 37.910709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.712669, 39.128735, 37.946659>,  <37.818626, 38.747707, 38.006573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712669, 39.128735, 37.946659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240918, 0.215790, 0.946253,
		0.933696, 0.214572, -0.286653,
		-0.264896, 0.952572, -0.149788,
		37.633202, 39.414505, 37.901722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348442, 39.275127, 38.201633>,  <37.818626, 38.747707, 38.006573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348442, 39.275127, 38.201633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.019493, 39.498135, 38.247032>,  <37.822124, 39.631939, 38.274273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.019493, 39.498135, 38.247032>,  <38.348442, 39.275127, 38.201633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019493, 39.498135, 38.247032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243691, 0.164897, 0.955732,
		0.514119, 0.813626, -0.271468,
		-0.822372, 0.557514, 0.113496,
		37.772781, 39.665390, 38.281082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496506, 39.680969, 38.768288>,  <38.348442, 39.275127, 38.201633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496506, 39.680969, 38.768288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.100872, 39.730209, 38.735889>,  <37.863491, 39.759754, 38.716450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.100872, 39.730209, 38.735889>,  <38.496506, 39.680969, 38.768288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100872, 39.730209, 38.735889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054784, 0.203107, 0.977623,
		0.136793, 0.971388, -0.194146,
		-0.989084, 0.123096, -0.081000,
		37.804146, 39.767139, 38.711590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352112, 40.283569, 39.121666>,  <38.496506, 39.680969, 38.768288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352112, 40.283569, 39.121666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.999260, 40.096767, 39.097137>,  <37.787548, 39.984684, 39.082420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.999260, 40.096767, 39.097137>,  <38.352112, 40.283569, 39.121666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999260, 40.096767, 39.097137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207118, 0.267668, 0.940987,
		-0.423034, 0.842768, -0.332842,
		-0.882125, -0.467007, -0.061321,
		37.734623, 39.956665, 39.078743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833179, 40.691944, 39.507977>,  <38.352112, 40.283569, 39.121666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833179, 40.691944, 39.507977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.702473, 40.313904, 39.507351>,  <37.624046, 40.087078, 39.506977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.702473, 40.313904, 39.507351>,  <37.833179, 40.691944, 39.507977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702473, 40.313904, 39.507351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152091, 0.050956, 0.987052,
		-0.932786, 0.322777, -0.160392,
		-0.326770, -0.945103, -0.001560,
		37.604443, 40.030373, 39.506882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412178, 40.732471, 39.945320>,  <37.833179, 40.691944, 39.507977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412178, 40.732471, 39.945320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.491425, 40.340912, 39.925255>,  <37.538971, 40.105976, 39.913216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.491425, 40.340912, 39.925255>,  <37.412178, 40.732471, 39.945320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491425, 40.340912, 39.925255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047844, -0.060769, 0.997005,
		-0.979011, -0.195119, -0.058874,
		0.198112, -0.978895, -0.050159,
		37.550858, 40.047245, 39.910206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.790825, 40.410702, 40.147259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.073174, 40.128429, 40.171757>,  <37.242584, 39.959064, 40.186455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.073174, 40.128429, 40.171757>,  <36.790825, 40.410702, 40.147259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073174, 40.128429, 40.171757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254048, -0.171512, 0.951863,
		-0.661211, -0.687454, -0.300344,
		0.705875, -0.705684, 0.061241,
		37.284935, 39.916725, 40.190128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471996, 39.877487, 40.408619>,  <36.790825, 40.410702, 40.147259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471996, 39.877487, 40.408619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.861000, 39.818775, 40.480927>,  <37.094402, 39.783546, 40.524311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.861000, 39.818775, 40.480927>,  <36.471996, 39.877487, 40.408619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861000, 39.818775, 40.480927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212572, -0.242712, 0.946522,
		-0.095059, -0.958929, -0.267243,
		0.972511, -0.146783, 0.180770,
		37.152752, 39.774738, 40.535156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455482, 39.371819, 40.882633>,  <36.471996, 39.877487, 40.408619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455482, 39.371819, 40.882633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.836090, 39.486538, 40.927101>,  <37.064453, 39.555370, 40.953781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.836090, 39.486538, 40.927101>,  <36.455482, 39.371819, 40.882633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836090, 39.486538, 40.927101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065529, -0.164107, 0.984264,
		0.300526, -0.943831, -0.137357,
		0.951520, 0.286796, 0.111167,
		37.121548, 39.572578, 40.960453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697155, 38.796757, 41.144806>,  <36.455482, 39.371819, 40.882633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697155, 38.796757, 41.144806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.898254, 39.127567, 41.245422>,  <37.018913, 39.326054, 41.305790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.898254, 39.127567, 41.245422>,  <36.697155, 38.796757, 41.144806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898254, 39.127567, 41.245422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138328, -0.210266, 0.967808,
		0.853296, -0.521355, 0.008691,
		0.502745, 0.827029, 0.251537,
		37.049076, 39.375675, 41.320885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820908, 38.744228, 41.786915>,  <36.697155, 38.796757, 41.144806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820908, 38.744228, 41.786915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.955410, 39.120525, 41.769314>,  <37.036110, 39.346302, 41.758755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.955410, 39.120525, 41.769314>,  <36.820908, 38.744228, 41.786915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955410, 39.120525, 41.769314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017139, 0.052830, 0.998456,
		0.941616, -0.334980, 0.033888,
		0.336254, 0.940743, -0.044004,
		37.056286, 39.402748, 41.756111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319393, 38.775894, 42.301636>,  <36.820908, 38.744228, 41.786915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319393, 38.775894, 42.301636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.193226, 39.151917, 42.249783>,  <37.117527, 39.377529, 42.218670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.193226, 39.151917, 42.249783>,  <37.319393, 38.775894, 42.301636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193226, 39.151917, 42.249783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132026, 0.178750, 0.974996,
		0.939725, 0.290413, -0.180493,
		-0.315415, 0.940058, -0.129634,
		37.098602, 39.433933, 42.210892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816208, 39.099392, 42.608322>,  <37.319393, 38.775894, 42.301636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816208, 39.099392, 42.608322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.490601, 39.331558, 42.599422>,  <37.295235, 39.470856, 42.594082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.490601, 39.331558, 42.599422>,  <37.816208, 39.099392, 42.608322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490601, 39.331558, 42.599422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058177, 0.119582, 0.991118,
		0.577917, 0.805495, -0.131109,
		-0.814019, 0.580412, -0.022247,
		37.246395, 39.505680, 42.592747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077499, 39.645874, 43.040157>,  <37.816208, 39.099392, 42.608322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077499, 39.645874, 43.040157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.682873, 39.707859, 43.019459>,  <37.446098, 39.745052, 43.007042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.682873, 39.707859, 43.019459>,  <38.077499, 39.645874, 43.040157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682873, 39.707859, 43.019459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000821, 0.312013, 0.950078,
		0.163374, 0.937355, -0.307693,
		-0.986564, 0.154965, -0.051745,
		37.386902, 39.754349, 43.003937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905750, 40.328327, 43.266502>,  <38.077499, 39.645874, 43.040157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905750, 40.328327, 43.266502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.575985, 40.112648, 43.335323>,  <37.378124, 39.983238, 43.376617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.575985, 40.112648, 43.335323>,  <37.905750, 40.328327, 43.266502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575985, 40.112648, 43.335323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029094, 0.263214, 0.964299,
		-0.565236, 0.799989, -0.201310,
		-0.824416, -0.539200, 0.172053,
		37.328659, 39.950890, 43.386940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336327, 40.815277, 43.635704>,  <37.905750, 40.328327, 43.266502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336327, 40.815277, 43.635704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.268288, 40.430260, 43.720154>,  <37.227467, 40.199249, 43.770824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.268288, 40.430260, 43.720154>,  <37.336327, 40.815277, 43.635704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268288, 40.430260, 43.720154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118870, 0.232727, 0.965250,
		-0.978232, 0.139086, -0.154003,
		-0.170094, -0.962545, 0.211128,
		37.217258, 40.141495, 43.783493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764969, 40.883060, 44.115200>,  <37.336327, 40.815277, 43.635704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764969, 40.883060, 44.115200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.904926, 40.510025, 44.150650>,  <36.988903, 40.286205, 44.171921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.904926, 40.510025, 44.150650>,  <36.764969, 40.883060, 44.115200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904926, 40.510025, 44.150650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199650, 0.018197, 0.979698,
		-0.915266, -0.360487, -0.179824,
		0.349896, -0.932587, 0.088626,
		37.009895, 40.230247, 44.177238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311604, 40.609509, 44.617195>,  <36.764969, 40.883060, 44.115200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311604, 40.609509, 44.617195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.621101, 40.356392, 44.605186>,  <36.806801, 40.204521, 44.597980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.621101, 40.356392, 44.605186>,  <36.311604, 40.609509, 44.617195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621101, 40.356392, 44.605186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048523, -0.106450, 0.993134,
		-0.631641, -0.766971, -0.113069,
		0.773741, -0.632791, -0.030022,
		36.853222, 40.166553, 44.596180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080341, 39.990921, 44.919563>,  <36.311604, 40.609509, 44.617195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080341, 39.990921, 44.919563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.477287, 39.977043, 44.966919>,  <36.715454, 39.968716, 44.995331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.477287, 39.977043, 44.966919>,  <36.080341, 39.990921, 44.919563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477287, 39.977043, 44.966919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120517, -0.067478, 0.990415,
		-0.026366, -0.997118, -0.071143,
		0.992361, -0.034687, 0.118391,
		36.774994, 39.966637, 45.002438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237022, 39.519367, 45.418457>,  <36.080341, 39.990921, 44.919563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237022, 39.519367, 45.418457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.570995, 39.739494, 45.420517>,  <36.771381, 39.871571, 45.421753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.570995, 39.739494, 45.420517>,  <36.237022, 39.519367, 45.418457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570995, 39.739494, 45.420517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072267, -0.118916, 0.990271,
		0.545582, -0.826441, -0.139058,
		0.834936, 0.550323, 0.005154,
		36.821476, 39.904591, 45.422062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682186, 39.149323, 45.940311>,  <36.237022, 39.519367, 45.418457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682186, 39.149323, 45.940311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.850723, 39.509396, 45.896225>,  <36.951847, 39.725437, 45.869774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.850723, 39.509396, 45.896225>,  <36.682186, 39.149323, 45.940311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850723, 39.509396, 45.896225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174031, 0.039020, 0.983967,
		0.890046, -0.433770, -0.140218,
		0.421344, 0.900178, -0.110219,
		36.977127, 39.779449, 45.863159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387825, 39.111382, 46.152122>,  <36.682186, 39.149323, 45.940311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387825, 39.111382, 46.152122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.282635, 39.496700, 46.173691>,  <37.219521, 39.727890, 46.186634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.282635, 39.496700, 46.173691>,  <37.387825, 39.111382, 46.152122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282635, 39.496700, 46.173691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279772, 0.022648, 0.959799,
		0.923348, 0.267490, -0.275459,
		-0.262976, 0.963294, 0.053924,
		37.203743, 39.785690, 46.189869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917721, 39.378620, 46.473190>,  <37.387825, 39.111382, 46.152122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917721, 39.378620, 46.473190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.650906, 39.673267, 46.517838>,  <37.490818, 39.850056, 46.544624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.650906, 39.673267, 46.517838>,  <37.917721, 39.378620, 46.473190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650906, 39.673267, 46.517838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307380, 0.135630, 0.941872,
		0.678661, 0.662571, -0.316891,
		-0.667036, 0.736617, 0.111614,
		37.450794, 39.894253, 46.551323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326477, 39.835125, 46.881557>,  <37.917721, 39.378620, 46.473190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326477, 39.835125, 46.881557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.940529, 39.932621, 46.920773>,  <37.708958, 39.991119, 46.944302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.940529, 39.932621, 46.920773>,  <38.326477, 39.835125, 46.881557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940529, 39.932621, 46.920773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150269, 0.205935, 0.966959,
		0.215495, 0.947725, -0.235327,
		-0.964873, 0.243738, 0.098036,
		37.651066, 40.005741, 46.950184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385338, 40.311928, 47.302902>,  <38.326477, 39.835125, 46.881557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385338, 40.311928, 47.302902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.993538, 40.235844, 47.329460>,  <37.758457, 40.190193, 47.345394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.993538, 40.235844, 47.329460>,  <38.385338, 40.311928, 47.302902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993538, 40.235844, 47.329460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055328, 0.062931, 0.996483,
		-0.193718, 0.979724, -0.051117,
		-0.979496, -0.190209, 0.066398,
		37.699688, 40.178780, 47.349380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099815, 40.829075, 47.741486>,  <38.385338, 40.311928, 47.302902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099815, 40.829075, 47.741486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.823017, 40.542519, 47.777111>,  <37.656937, 40.370586, 47.798485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.823017, 40.542519, 47.777111>,  <38.099815, 40.829075, 47.741486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823017, 40.542519, 47.777111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125961, 0.241298, 0.962242,
		-0.710827, 0.654649, -0.257213,
		-0.691996, -0.716387, 0.089061,
		37.615417, 40.327602, 47.803829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635170, 41.143036, 48.170727>,  <38.099815, 40.829075, 47.741486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635170, 41.143036, 48.170727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.577785, 40.747791, 48.192837>,  <37.543354, 40.510643, 48.206104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.577785, 40.747791, 48.192837>,  <37.635170, 41.143036, 48.170727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577785, 40.747791, 48.192837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058651, 0.064247, 0.996209,
		-0.987917, 0.139672, -0.067170,
		-0.143458, -0.988111, 0.055278,
		37.534748, 40.451359, 48.209419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127476, 41.021496, 48.725567>,  <37.635170, 41.143036, 48.170727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127476, 41.021496, 48.725567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.299477, 40.663963, 48.674709>,  <37.402676, 40.449444, 48.644196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.299477, 40.663963, 48.674709>,  <37.127476, 41.021496, 48.725567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299477, 40.663963, 48.674709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020935, -0.130917, 0.991172,
		-0.902585, -0.428868, -0.037582,
		0.430002, -0.893830, -0.127142,
		37.428478, 40.395813, 48.636566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889706, 40.525997, 49.199604>,  <37.127476, 41.021496, 48.725567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889706, 40.525997, 49.199604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.269077, 40.426067, 49.121548>,  <37.496700, 40.366108, 49.074715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.269077, 40.426067, 49.121548>,  <36.889706, 40.525997, 49.199604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269077, 40.426067, 49.121548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134287, -0.240978, 0.961195,
		-0.287161, -0.937824, -0.195000,
		0.948423, -0.249832, -0.195137,
		37.553604, 40.351120, 49.063007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191174, 40.611988, 49.407219>,  <36.889706, 40.525997, 49.199604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191174, 40.611988, 49.407219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.842239, 40.499691, 49.567326>,  <35.632877, 40.432312, 49.663391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.842239, 40.499691, 49.567326>,  <36.191174, 40.611988, 49.407219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842239, 40.499691, 49.567326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385355, -0.109030, -0.916304,
		0.300889, -0.953570, -0.013076,
		-0.872335, -0.280744, 0.400269,
		35.580540, 40.415466, 49.687405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918995, 39.946194, 48.989956>,  <36.191174, 40.611988, 49.407219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918995, 39.946194, 48.989956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.627937, 40.148560, 49.175251>,  <35.453304, 40.269978, 49.286427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.627937, 40.148560, 49.175251>,  <35.918995, 39.946194, 48.989956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627937, 40.148560, 49.175251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604896, -0.154781, -0.781117,
		-0.323479, -0.848583, 0.418651,
		-0.727641, 0.505915, 0.463236,
		35.409645, 40.300335, 49.314220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277554, 39.512146, 48.984612>,  <35.918995, 39.946194, 48.989956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277554, 39.512146, 48.984612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.164288, 39.890182, 49.049877>,  <35.096329, 40.117004, 49.089035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.164288, 39.890182, 49.049877>,  <35.277554, 39.512146, 48.984612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164288, 39.890182, 49.049877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650818, -0.064389, -0.756498,
		-0.704454, -0.320400, 0.633315,
		-0.283161, 0.945091, 0.163163,
		35.079338, 40.173710, 49.098827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543205, 39.562588, 48.948055>,  <35.277554, 39.512146, 48.984612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543205, 39.562588, 48.948055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.688782, 39.927025, 48.870651>,  <34.776127, 40.145687, 48.824207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.688782, 39.927025, 48.870651>,  <34.543205, 39.562588, 48.948055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688782, 39.927025, 48.870651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597843, 0.069194, -0.798622,
		-0.714232, 0.406342, 0.569875,
		0.363945, 0.911097, -0.193508,
		34.797966, 40.200356, 48.812599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964237, 39.906559, 48.726955>,  <34.543205, 39.562588, 48.948055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964237, 39.906559, 48.726955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.290691, 40.092388, 48.589497>,  <34.486565, 40.203888, 48.507023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.290691, 40.092388, 48.589497>,  <33.964237, 39.906559, 48.726955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290691, 40.092388, 48.589497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448792, 0.134971, -0.883385,
		-0.364016, 0.875188, 0.318652,
		0.816136, 0.464575, -0.343645,
		34.535534, 40.231762, 48.486404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709652, 40.281620, 48.206356>,  <33.964237, 39.906559, 48.726955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709652, 40.281620, 48.206356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.101460, 40.309727, 48.130882>,  <34.336544, 40.326591, 48.085598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.101460, 40.309727, 48.130882>,  <33.709652, 40.281620, 48.206356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101460, 40.309727, 48.130882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196191, 0.122452, -0.972890,
		-0.045254, 0.989984, 0.133729,
		0.979521, 0.070263, -0.188684,
		34.395317, 40.330807, 48.074276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752895, 40.906685, 47.764286>,  <33.709652, 40.281620, 48.206356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752895, 40.906685, 47.764286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.081715, 40.684177, 47.715607>,  <34.279007, 40.550674, 47.686398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.081715, 40.684177, 47.715607>,  <33.752895, 40.906685, 47.764286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081715, 40.684177, 47.715607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003883, 0.219195, -0.975673,
		0.569410, 0.801574, 0.182348,
		0.822044, -0.556266, -0.121699,
		34.328327, 40.517296, 47.679096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122849, 41.200390, 47.213577>,  <33.752895, 40.906685, 47.764286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122849, 41.200390, 47.213577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.266594, 40.827454, 47.229603>,  <34.352840, 40.603691, 47.239216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.266594, 40.827454, 47.229603>,  <34.122849, 41.200390, 47.213577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266594, 40.827454, 47.229603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004293, -0.041277, -0.999138,
		0.933189, 0.359222, -0.010831,
		0.359360, -0.932339, 0.040062,
		34.374401, 40.547752, 47.241623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611954, 41.144184, 46.692142>,  <34.122849, 41.200390, 47.213577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611954, 41.144184, 46.692142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.562984, 40.751858, 46.752819>,  <34.533604, 40.516460, 46.789223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.562984, 40.751858, 46.752819>,  <34.611954, 41.144184, 46.692142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562984, 40.751858, 46.752819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089313, -0.163106, -0.982558,
		0.988451, -0.106740, 0.107568,
		-0.122424, -0.980818, 0.151689,
		34.526257, 40.457611, 46.798325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200676, 40.906555, 46.345390>,  <34.611954, 41.144184, 46.692142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200676, 40.906555, 46.345390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.972763, 40.579762, 46.380936>,  <34.836018, 40.383686, 46.402264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.972763, 40.579762, 46.380936>,  <35.200676, 40.906555, 46.345390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972763, 40.579762, 46.380936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232056, -0.263676, -0.936283,
		0.788354, -0.512853, 0.339822,
		-0.569778, -0.816980, 0.088859,
		34.801830, 40.334667, 46.407593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595688, 40.329353, 46.027721>,  <35.200676, 40.906555, 46.345390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595688, 40.329353, 46.027721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.206841, 40.242062, 45.993393>,  <34.973534, 40.189686, 45.972794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.206841, 40.242062, 45.993393>,  <35.595688, 40.329353, 46.027721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206841, 40.242062, 45.993393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091936, -0.017985, -0.995602,
		0.215731, -0.975731, 0.037547,
		-0.972115, -0.218234, -0.085825,
		34.915207, 40.176590, 45.967644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456089, 39.684284, 45.610687>,  <35.595688, 40.329353, 46.027721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456089, 39.684284, 45.610687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.114975, 39.893158, 45.607063>,  <34.910309, 40.018482, 45.604889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.114975, 39.893158, 45.607063>,  <35.456089, 39.684284, 45.610687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114975, 39.893158, 45.607063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101213, -0.182262, -0.978027,
		-0.512365, -0.833127, 0.208282,
		-0.852782, 0.522188, -0.009062,
		34.859138, 40.049812, 45.604343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017506, 39.198185, 45.280102>,  <35.456089, 39.684284, 45.610687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017506, 39.198185, 45.280102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.860580, 39.564346, 45.244049>,  <34.766426, 39.784042, 45.222420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.860580, 39.564346, 45.244049>,  <35.017506, 39.198185, 45.280102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860580, 39.564346, 45.244049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127035, -0.150966, -0.980342,
		-0.911019, -0.373148, 0.175515,
		-0.392310, 0.915407, -0.090130,
		34.742889, 39.838970, 45.217010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652699, 39.145798, 44.657845>,  <35.017506, 39.198185, 45.280102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652699, 39.145798, 44.657845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.625267, 39.543514, 44.690536>,  <34.608807, 39.782143, 44.710152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.625267, 39.543514, 44.690536>,  <34.652699, 39.145798, 44.657845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625267, 39.543514, 44.690536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005781, 0.081521, -0.996655,
		-0.997629, -0.068822, 0.000158,
		-0.068579, 0.994293, 0.081725,
		34.604694, 39.841801, 44.715054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174049, 39.379265, 44.213783>,  <34.652699, 39.145798, 44.657845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174049, 39.379265, 44.213783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.376888, 39.718296, 44.276333>,  <34.498592, 39.921715, 44.313862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.376888, 39.718296, 44.276333>,  <34.174049, 39.379265, 44.213783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376888, 39.718296, 44.276333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006004, 0.184906, -0.982738,
		-0.861867, 0.497406, 0.098854,
		0.507099, 0.847583, 0.156378,
		34.529018, 39.972572, 44.323246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805149, 39.976788, 43.831223>,  <34.174049, 39.379265, 44.213783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805149, 39.976788, 43.831223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.178829, 40.109352, 43.884041>,  <34.403038, 40.188892, 43.915733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.178829, 40.109352, 43.884041>,  <33.805149, 39.976788, 43.831223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178829, 40.109352, 43.884041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050034, 0.244773, -0.968289,
		-0.353226, 0.911181, 0.212085,
		0.934199, 0.331413, 0.132050,
		34.459087, 40.208775, 43.923656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876755, 40.604263, 43.508186>,  <33.805149, 39.976788, 43.831223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876755, 40.604263, 43.508186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.251637, 40.469864, 43.545624>,  <34.476566, 40.389225, 43.568085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.251637, 40.469864, 43.545624>,  <33.876755, 40.604263, 43.508186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251637, 40.469864, 43.545624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169919, 0.205496, -0.963794,
		0.304600, 0.919172, 0.249684,
		0.937201, -0.335997, 0.093590,
		34.532799, 40.369064, 43.573700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264469, 41.078838, 43.192211>,  <33.876755, 40.604263, 43.508186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264469, 41.078838, 43.192211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.490498, 40.749428, 43.172207>,  <34.626114, 40.551781, 43.160206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.490498, 40.749428, 43.172207>,  <34.264469, 41.078838, 43.192211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490498, 40.749428, 43.172207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354493, 0.297080, -0.886611,
		0.745003, 0.483269, 0.459805,
		0.565071, -0.823526, -0.050010,
		34.660019, 40.502369, 43.157204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907646, 41.294636, 42.970196>,  <34.264469, 41.078838, 43.192211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907646, 41.294636, 42.970196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.887909, 40.901722, 42.897873>,  <34.876068, 40.665974, 42.854481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.887909, 40.901722, 42.897873>,  <34.907646, 41.294636, 42.970196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887909, 40.901722, 42.897873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190122, 0.168481, -0.967196,
		0.980520, -0.082099, 0.178439,
		-0.049342, -0.982280, -0.180807,
		34.873108, 40.607037, 42.843632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295418, 41.304241, 42.395973>,  <34.907646, 41.294636, 42.970196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295418, 41.304241, 42.395973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.122272, 40.943756, 42.404430>,  <35.018383, 40.727467, 42.409504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.122272, 40.943756, 42.404430>,  <35.295418, 41.304241, 42.395973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122272, 40.943756, 42.404430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030866, -0.008625, -0.999486,
		0.900929, -0.433297, -0.024083,
		-0.432867, -0.901210, 0.021144,
		34.992413, 40.673393, 42.410774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718758, 40.926266, 41.935810>,  <35.295418, 41.304241, 42.395973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718758, 40.926266, 41.935810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.373035, 40.726349, 41.958355>,  <35.165600, 40.606400, 41.971882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.373035, 40.726349, 41.958355>,  <35.718758, 40.926266, 41.935810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373035, 40.726349, 41.958355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018043, -0.142791, -0.989588,
		0.502640, -0.854292, 0.132433,
		-0.864307, -0.499796, 0.056358,
		35.113743, 40.576408, 41.975262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.240162, 41.580231, 40.990192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.842251, 41.620705, 40.995556>,  <45.603504, 41.644989, 40.998775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.842251, 41.620705, 40.995556>,  <46.240162, 41.580231, 40.990192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.842251, 41.620705, 40.995556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101698, -0.971374, -0.214686,
		-0.008699, -0.214928, 0.976591,
		-0.994777, 0.101185, 0.013408,
		45.543819, 41.651062, 40.999577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.941978, 40.966667, 41.324844>,  <46.240162, 41.580231, 40.990192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.941978, 40.966667, 41.324844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.665394, 41.140572, 41.094067>,  <45.499443, 41.244915, 40.955601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.665394, 41.140572, 41.094067>,  <45.941978, 40.966667, 41.324844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.665394, 41.140572, 41.094067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295125, -0.898954, -0.323702,
		-0.659381, -0.053556, 0.749899,
		-0.691460, 0.434757, -0.576948,
		45.457954, 41.271000, 40.920982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.359688, 40.550232, 41.423149>,  <45.941978, 40.966667, 41.324844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.359688, 40.550232, 41.423149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.261585, 40.768692, 41.102757>,  <45.202724, 40.899769, 40.910522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.261585, 40.768692, 41.102757>,  <45.359688, 40.550232, 41.423149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.261585, 40.768692, 41.102757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377295, -0.814849, -0.440078,
		-0.893027, 0.194274, 0.405908,
		-0.245258, 0.546149, -0.800981,
		45.188007, 40.932537, 40.862461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.749313, 40.359367, 41.334991>,  <45.359688, 40.550232, 41.423149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.749313, 40.359367, 41.334991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.859592, 40.516796, 40.984200>,  <44.925758, 40.611252, 40.773724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.859592, 40.516796, 40.984200>,  <44.749313, 40.359367, 41.334991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.859592, 40.516796, 40.984200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400163, -0.782534, -0.476980,
		-0.873992, 0.482436, -0.058248,
		0.275694, 0.393568, -0.876982,
		44.942299, 40.634865, 40.721104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.199173, 40.368668, 40.985260>,  <44.749313, 40.359367, 41.334991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.199173, 40.368668, 40.985260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.482010, 40.382347, 40.702744>,  <44.651714, 40.390556, 40.533234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.482010, 40.382347, 40.702744>,  <44.199173, 40.368668, 40.985260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.482010, 40.382347, 40.702744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424794, -0.777964, -0.462949,
		-0.565303, 0.627377, -0.535566,
		0.707095, 0.034201, -0.706291,
		44.694138, 40.392609, 40.490856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.827251, 40.391232, 40.354359>,  <44.199173, 40.368668, 40.985260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.827251, 40.391232, 40.354359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.190346, 40.246456, 40.269489>,  <44.408203, 40.159592, 40.218567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.190346, 40.246456, 40.269489>,  <43.827251, 40.391232, 40.354359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.190346, 40.246456, 40.269489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391313, -0.548018, -0.739290,
		0.151302, 0.754106, -0.639087,
		0.907734, -0.361939, -0.212175,
		44.462666, 40.137875, 40.205837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.951950, 40.481785, 39.682884>,  <43.827251, 40.391232, 40.354359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.951950, 40.481785, 39.682884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.193501, 40.167809, 39.738304>,  <44.338432, 39.979424, 39.771557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.193501, 40.167809, 39.738304>,  <43.951950, 40.481785, 39.682884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.193501, 40.167809, 39.738304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431780, -0.468257, -0.770909,
		0.669996, 0.405713, -0.621693,
		0.603880, -0.784941, 0.138552,
		44.374664, 39.932327, 39.779869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.057575, 40.248100, 39.101128>,  <43.951950, 40.481785, 39.682884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.057575, 40.248100, 39.101128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.190624, 39.932629, 39.307949>,  <44.270454, 39.743343, 39.432041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.190624, 39.932629, 39.307949>,  <44.057575, 40.248100, 39.101128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.190624, 39.932629, 39.307949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430099, -0.614797, -0.661090,
		0.839271, -0.002489, -0.543707,
		0.332624, -0.788681, 0.517052,
		44.290413, 39.696026, 39.463066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.351246, 39.783375, 38.671177>,  <44.057575, 40.248100, 39.101128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.351246, 39.783375, 38.671177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.272675, 39.545212, 38.982792>,  <44.225533, 39.402313, 39.169762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.272675, 39.545212, 38.982792>,  <44.351246, 39.783375, 38.671177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.272675, 39.545212, 38.982792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235996, -0.742452, -0.626953,
		0.951694, -0.307001, 0.005323,
		-0.196427, -0.595412, 0.779039,
		44.213745, 39.366589, 39.216503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.514648, 39.140041, 38.425087>,  <44.351246, 39.783375, 38.671177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.514648, 39.140041, 38.425087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.264812, 39.048569, 38.723778>,  <44.114910, 38.993683, 38.902992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.264812, 39.048569, 38.723778>,  <44.514648, 39.140041, 38.425087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.264812, 39.048569, 38.723778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333329, -0.786631, -0.519714,
		0.706245, -0.573511, 0.415093,
		-0.624587, -0.228683, 0.746722,
		44.077435, 38.979965, 38.947796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.554585, 38.422985, 38.435661>,  <44.514648, 39.140041, 38.425087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.554585, 38.422985, 38.435661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.221737, 38.537201, 38.625839>,  <44.022030, 38.605728, 38.739948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.221737, 38.537201, 38.625839>,  <44.554585, 38.422985, 38.435661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.221737, 38.537201, 38.625839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515462, -0.714519, -0.473035,
		0.204647, -0.638695, 0.741747,
		-0.832117, 0.285537, 0.475447,
		43.972103, 38.622864, 38.768475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.242405, 37.853561, 38.729721>,  <44.554585, 38.422985, 38.435661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.242405, 37.853561, 38.729721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.949036, 38.125240, 38.718555>,  <43.773014, 38.288246, 38.711857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.949036, 38.125240, 38.718555>,  <44.242405, 37.853561, 38.729721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.949036, 38.125240, 38.718555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576792, -0.643528, -0.503172,
		-0.359716, -0.352939, 0.863735,
		-0.733427, 0.679195, -0.027915,
		43.729008, 38.328999, 38.710182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.690231, 37.488297, 39.062725>,  <44.242405, 37.853561, 38.729721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.690231, 37.488297, 39.062725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.529789, 37.784306, 38.846771>,  <43.433525, 37.961910, 38.717197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.529789, 37.784306, 38.846771>,  <43.690231, 37.488297, 39.062725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.529789, 37.784306, 38.846771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582027, -0.661002, -0.473625,
		-0.707360, 0.124254, 0.695847,
		-0.401106, 0.740025, -0.539886,
		43.409458, 38.006313, 38.684807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121910, 37.235233, 38.985439>,  <43.690231, 37.488297, 39.062725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121910, 37.235233, 38.985439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.140179, 37.542061, 38.729465>,  <43.151138, 37.726158, 38.575882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.140179, 37.542061, 38.729465>,  <43.121910, 37.235233, 38.985439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.140179, 37.542061, 38.729465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534935, -0.522236, -0.664164,
		-0.843658, 0.372658, 0.386481,
		0.045672, 0.767070, -0.639936,
		43.153881, 37.772182, 38.537483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.422085, 37.342705, 38.714630>,  <43.121910, 37.235233, 38.985439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.422085, 37.342705, 38.714630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.687595, 37.490929, 38.454758>,  <42.846901, 37.579865, 38.298836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.687595, 37.490929, 38.454758>,  <42.422085, 37.342705, 38.714630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.687595, 37.490929, 38.454758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517236, -0.400009, -0.756611,
		-0.540247, 0.838260, -0.073851,
		0.663777, 0.370558, -0.649682,
		42.886730, 37.602097, 38.259853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.050266, 37.479874, 38.125057>,  <42.422085, 37.342705, 38.714630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.050266, 37.479874, 38.125057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.428204, 37.465370, 37.994854>,  <42.654964, 37.456669, 37.916733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.428204, 37.465370, 37.994854>,  <42.050266, 37.479874, 38.125057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.428204, 37.465370, 37.994854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302140, -0.480135, -0.823518,
		-0.126427, 0.876445, -0.464607,
		0.944843, -0.036261, -0.325511,
		42.711655, 37.454491, 37.897202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024555, 37.720242, 37.441307>,  <42.050266, 37.479874, 38.125057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024555, 37.720242, 37.441307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.349068, 37.490738, 37.486252>,  <42.543774, 37.353035, 37.513218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.349068, 37.490738, 37.486252>,  <42.024555, 37.720242, 37.441307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349068, 37.490738, 37.486252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246043, -0.509381, -0.824618,
		0.530368, 0.641349, -0.554420,
		0.811278, -0.573762, 0.112360,
		42.592453, 37.318611, 37.519958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309731, 37.698524, 36.749573>,  <42.024555, 37.720242, 37.441307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.309731, 37.698524, 36.749573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.489132, 37.402489, 36.950020>,  <42.596771, 37.224869, 37.070286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.489132, 37.402489, 36.950020>,  <42.309731, 37.698524, 36.749573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.489132, 37.402489, 36.950020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190624, -0.626976, -0.755357,
		0.873216, 0.243256, -0.422279,
		0.448504, -0.740086, 0.501115,
		42.623684, 37.180462, 37.100353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571014, 37.353424, 36.233585>,  <42.309731, 37.698524, 36.749573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571014, 37.353424, 36.233585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.575340, 37.089821, 36.534409>,  <42.577938, 36.931660, 36.714905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.575340, 37.089821, 36.534409>,  <42.571014, 37.353424, 36.233585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.575340, 37.089821, 36.534409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184543, -0.740502, -0.646221,
		0.982765, -0.131798, -0.129625,
		0.010816, -0.659004, 0.752061,
		42.578587, 36.892120, 36.760029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.977348, 36.855415, 35.896481>,  <42.571014, 37.353424, 36.233585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.977348, 36.855415, 35.896481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.785431, 36.675999, 36.198105>,  <42.670280, 36.568348, 36.379078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.785431, 36.675999, 36.198105>,  <42.977348, 36.855415, 35.896481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785431, 36.675999, 36.198105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213068, -0.774152, -0.596063,
		0.851115, -0.446655, 0.275866,
		-0.479797, -0.448539, 0.754060,
		42.641491, 36.541435, 36.424324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.339748, 36.173756, 36.180870>,  <42.977348, 36.855415, 35.896481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.339748, 36.173756, 36.180870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.947796, 36.182743, 36.260189>,  <42.712624, 36.188137, 36.307781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.947796, 36.182743, 36.260189>,  <43.339748, 36.173756, 36.180870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.947796, 36.182743, 36.260189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128180, -0.832435, -0.539094,
		0.152954, -0.553667, 0.818570,
		-0.979885, 0.022468, 0.198294,
		42.653831, 36.189484, 36.319675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.988270, 36.074696, 35.880791>,  <43.339748, 36.173756, 36.180870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.988270, 36.074696, 35.880791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.377510, 35.984276, 35.898540>,  <44.611053, 35.930023, 35.909191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.377510, 35.984276, 35.898540>,  <43.988270, 36.074696, 35.880791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.377510, 35.984276, 35.898540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194110, 0.908344, 0.370449,
		-0.124048, -0.351872, 0.927792,
		0.973105, -0.226048, 0.044377,
		44.669441, 35.916462, 35.911854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.274647, 36.016174, 36.656769>,  <43.988270, 36.074696, 35.880791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.274647, 36.016174, 36.656769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.528858, 36.129822, 36.369610>,  <44.681385, 36.198009, 36.197315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.528858, 36.129822, 36.369610>,  <44.274647, 36.016174, 36.656769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.528858, 36.129822, 36.369610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258592, 0.797794, 0.544661,
		0.727482, -0.531792, 0.433552,
		0.635532, 0.284118, -0.717897,
		44.719517, 36.215057, 36.154240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.984318, 36.063953, 36.967087>,  <44.274647, 36.016174, 36.656769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.984318, 36.063953, 36.967087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.962776, 36.275742, 36.628441>,  <44.949852, 36.402813, 36.425251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.962776, 36.275742, 36.628441>,  <44.984318, 36.063953, 36.967087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.962776, 36.275742, 36.628441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451517, 0.769132, 0.452291,
		0.890636, -0.357907, -0.280482,
		-0.053850, 0.529469, -0.846618,
		44.946621, 36.434582, 36.374454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.664379, 36.369621, 36.861172>,  <44.984318, 36.063953, 36.967087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.664379, 36.369621, 36.861172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.464287, 36.608776, 36.610638>,  <45.344231, 36.752270, 36.460320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.464287, 36.608776, 36.610638>,  <45.664379, 36.369621, 36.861172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.464287, 36.608776, 36.610638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289524, 0.797198, 0.529765,
		0.816052, 0.083669, -0.571890,
		-0.500235, 0.597892, -0.626331,
		45.314217, 36.788143, 36.422737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.097542, 36.882236, 36.562027>,  <45.664379, 36.369621, 36.861172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.097542, 36.882236, 36.562027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.760361, 37.085571, 36.491573>,  <45.558052, 37.207573, 36.449303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.760361, 37.085571, 36.491573>,  <46.097542, 36.882236, 36.562027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.760361, 37.085571, 36.491573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449724, 0.845506, 0.287867,
		0.295256, 0.163447, -0.941334,
		-0.842955, 0.508335, -0.176135,
		45.507473, 37.238071, 36.438732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.380730, 37.460419, 36.271416>,  <46.097542, 36.882236, 36.562027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.380730, 37.460419, 36.271416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.007267, 37.562832, 36.371597>,  <45.783188, 37.624279, 36.431705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.007267, 37.562832, 36.371597>,  <46.380730, 37.460419, 36.271416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.007267, 37.562832, 36.371597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282448, 0.956322, 0.075306,
		-0.220236, 0.141051, -0.965195,
		-0.933659, 0.256032, 0.250456,
		45.727169, 37.639641, 36.446735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.235649, 38.051228, 35.821747>,  <46.380730, 37.460419, 36.271416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.235649, 38.051228, 35.821747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.972218, 38.082058, 36.121170>,  <45.814159, 38.100555, 36.300823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.972218, 38.082058, 36.121170>,  <46.235649, 38.051228, 35.821747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.972218, 38.082058, 36.121170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165318, 0.985258, 0.043995,
		-0.734130, 0.152724, -0.661611,
		-0.658577, 0.077078, 0.748556,
		45.774643, 38.105183, 36.345737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.697132, 38.623455, 35.675766>,  <46.235649, 38.051228, 35.821747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.697132, 38.623455, 35.675766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.711021, 38.574478, 36.072514>,  <45.719353, 38.545094, 36.310562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.711021, 38.574478, 36.072514>,  <45.697132, 38.623455, 35.675766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.711021, 38.574478, 36.072514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137076, 0.983671, 0.116628,
		-0.989952, 0.131912, 0.050937,
		0.034720, -0.122438, 0.991869,
		45.721439, 38.537746, 36.370075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.548492, 39.190231, 35.915844>,  <45.697132, 38.623455, 35.675766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.548492, 39.190231, 35.915844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.700661, 39.036949, 36.252518>,  <45.791962, 38.944981, 36.454521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.700661, 39.036949, 36.252518>,  <45.548492, 39.190231, 35.915844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.700661, 39.036949, 36.252518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207862, 0.922256, 0.325940,
		-0.901151, 0.050960, 0.430500,
		0.380421, -0.383205, 0.841685,
		45.814789, 38.921989, 36.505024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.234184, 39.612915, 36.488789>,  <45.548492, 39.190231, 35.915844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.234184, 39.612915, 36.488789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.570198, 39.437729, 36.616863>,  <45.771809, 39.332615, 36.693710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.570198, 39.437729, 36.616863>,  <45.234184, 39.612915, 36.488789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.570198, 39.437729, 36.616863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284919, 0.858378, 0.426624,
		-0.461693, -0.267151, 0.845855,
		0.840036, -0.437969, 0.320190,
		45.822208, 39.306339, 36.712921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.258919, 39.688240, 37.263496>,  <45.234184, 39.612915, 36.488789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.258919, 39.688240, 37.263496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.635952, 39.624794, 37.145931>,  <45.862171, 39.586727, 37.075390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.635952, 39.624794, 37.145931>,  <45.258919, 39.688240, 37.263496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.635952, 39.624794, 37.145931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300348, 0.787439, 0.538267,
		0.146065, -0.595636, 0.789862,
		0.942580, -0.158611, -0.293915,
		45.918724, 39.577209, 37.057758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.631039, 39.863079, 37.896862>,  <45.258919, 39.688240, 37.263496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.631039, 39.863079, 37.896862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.898148, 39.862774, 37.599117>,  <46.058414, 39.862591, 37.420471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.898148, 39.862774, 37.599117>,  <45.631039, 39.863079, 37.896862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.898148, 39.862774, 37.599117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407706, 0.837033, 0.364899,
		0.622777, -0.547151, 0.559262,
		0.667775, -0.000764, -0.744362,
		46.098480, 39.862545, 37.375809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.263092, 39.832905, 38.156017>,  <45.631039, 39.863079, 37.896862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.263092, 39.832905, 38.156017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.365711, 39.969658, 37.794399>,  <46.427280, 40.051712, 37.577427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.365711, 39.969658, 37.794399>,  <46.263092, 39.832905, 38.156017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.365711, 39.969658, 37.794399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405508, 0.810975, 0.421761,
		0.877353, -0.474799, 0.069415,
		0.256546, 0.341885, -0.904046,
		46.442677, 40.072224, 37.523186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.020962, 40.089260, 38.062840>,  <46.263092, 39.832905, 38.156017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.020962, 40.089260, 38.062840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.808453, 40.286335, 37.787155>,  <46.680946, 40.404579, 37.621746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.808453, 40.286335, 37.787155>,  <47.020962, 40.089260, 38.062840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.808453, 40.286335, 37.787155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301265, 0.870208, 0.389842,
		0.791825, -0.000521, -0.610748,
		-0.531275, 0.492684, -0.689209,
		46.649071, 40.434139, 37.580391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.511307, 40.649578, 37.867638>,  <47.020962, 40.089260, 38.062840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.511307, 40.649578, 37.867638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.151081, 40.760826, 37.733986>,  <46.934948, 40.827576, 37.653793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.151081, 40.760826, 37.733986>,  <47.511307, 40.649578, 37.867638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.151081, 40.760826, 37.733986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220673, 0.954653, 0.199851,
		0.374560, 0.106244, -0.921095,
		-0.900560, 0.278118, -0.334130,
		46.880913, 40.844261, 37.633747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.646687, 41.166351, 37.314671>,  <47.511307, 40.649578, 37.867638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.646687, 41.166351, 37.314671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.284065, 41.231121, 37.470589>,  <47.066490, 41.269985, 37.564140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.284065, 41.231121, 37.470589>,  <47.646687, 41.166351, 37.314671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.284065, 41.231121, 37.470589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247617, 0.951904, 0.180457,
		-0.341823, 0.260113, -0.903050,
		-0.906556, 0.161926, 0.389791,
		47.012100, 41.279697, 37.587524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.496571, 41.860458, 37.308880>,  <47.646687, 41.166351, 37.314671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.496571, 41.860458, 37.308880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.200752, 41.756264, 37.557140>,  <47.023262, 41.693748, 37.706097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.200752, 41.756264, 37.557140>,  <47.496571, 41.860458, 37.308880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.200752, 41.756264, 37.557140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081217, 0.880813, 0.466446,
		-0.668183, 0.395368, -0.630250,
		-0.739550, -0.260485, 0.620655,
		46.978886, 41.678120, 37.743336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.171295, 42.461647, 37.366219>,  <47.496571, 41.860458, 37.308880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.171295, 42.461647, 37.366219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.052296, 42.246948, 37.682041>,  <46.980896, 42.118130, 37.871536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.052296, 42.246948, 37.682041>,  <47.171295, 42.461647, 37.366219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.052296, 42.246948, 37.682041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054477, 0.835196, 0.547247,
		-0.953168, 0.119791, -0.277708,
		-0.297496, -0.536747, 0.789556,
		46.963047, 42.085922, 37.918907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.640732, 42.891075, 37.642265>,  <47.171295, 42.461647, 37.366219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.640732, 42.891075, 37.642265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.759911, 42.655941, 37.943111>,  <46.831417, 42.514862, 38.123619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.759911, 42.655941, 37.943111>,  <46.640732, 42.891075, 37.642265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.759911, 42.655941, 37.943111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064532, 0.798501, 0.598525,
		-0.952398, -0.129795, 0.275846,
		0.297949, -0.587835, 0.752115,
		46.849297, 42.479591, 38.168747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.338940, 43.214211, 38.198006>,  <46.640732, 42.891075, 37.642265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.338940, 43.214211, 38.198006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.636009, 42.985664, 38.337708>,  <46.814251, 42.848537, 38.421528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.636009, 42.985664, 38.337708>,  <46.338940, 43.214211, 38.198006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.636009, 42.985664, 38.337708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213442, 0.696311, 0.685269,
		-0.634726, -0.434387, 0.639086,
		0.742675, -0.571365, 0.349250,
		46.858810, 42.814255, 38.442482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.161961, 42.966305, 38.867794>,  <46.338940, 43.214211, 38.198006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.161961, 42.966305, 38.867794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.556755, 43.007118, 38.818085>,  <46.793633, 43.031605, 38.788261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.556755, 43.007118, 38.818085>,  <46.161961, 42.966305, 38.867794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.556755, 43.007118, 38.818085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038091, 0.602499, 0.797210,
		0.156211, -0.791571, 0.590773,
		0.986989, 0.102029, -0.124269,
		46.852852, 43.037727, 38.780804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.694317, 40.392159, 37.158035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610989, 40.039806, 37.328053>,  <37.560993, 39.828396, 37.430061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610989, 40.039806, 37.328053>,  <37.694317, 40.392159, 37.158035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610989, 40.039806, 37.328053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028561, -0.428910, -0.902895,
		0.977644, -0.200231, 0.064192,
		-0.208320, -0.880877, 0.425040,
		37.548492, 39.775543, 37.455566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071732, 39.897713, 36.807117>,  <37.694317, 40.392159, 37.158035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071732, 39.897713, 36.807117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776901, 39.690498, 36.980717>,  <37.600002, 39.566170, 37.084877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776901, 39.690498, 36.980717>,  <38.071732, 39.897713, 36.807117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776901, 39.690498, 36.980717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078908, -0.571831, -0.816568,
		0.671186, -0.636119, 0.380606,
		-0.737077, -0.518036, 0.434000,
		37.555779, 39.535088, 37.110916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287735, 39.132298, 36.790253>,  <38.071732, 39.897713, 36.807117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287735, 39.132298, 36.790253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892941, 39.176815, 36.836697>,  <37.656063, 39.203526, 36.864563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892941, 39.176815, 36.836697>,  <38.287735, 39.132298, 36.790253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892941, 39.176815, 36.836697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142233, -0.267009, -0.953140,
		-0.075075, -0.957246, 0.279362,
		-0.986982, 0.111292, 0.116106,
		37.596848, 39.210201, 36.871529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047306, 38.636292, 36.338413>,  <38.287735, 39.132298, 36.790253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047306, 38.636292, 36.338413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704739, 38.837334, 36.385628>,  <37.499199, 38.957958, 36.413956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704739, 38.837334, 36.385628>,  <38.047306, 38.636292, 36.338413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704739, 38.837334, 36.385628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367928, -0.433775, -0.822477,
		-0.362174, -0.747818, 0.556415,
		-0.856422, 0.502601, 0.118041,
		37.447811, 38.988113, 36.421040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561996, 38.096024, 36.267796>,  <38.047306, 38.636292, 36.338413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561996, 38.096024, 36.267796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383251, 38.447723, 36.201794>,  <37.276005, 38.658745, 36.162193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383251, 38.447723, 36.201794>,  <37.561996, 38.096024, 36.267796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383251, 38.447723, 36.201794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391735, -0.358140, -0.847513,
		-0.804272, -0.314089, 0.504475,
		-0.446868, 0.879251, -0.165003,
		37.249191, 38.711498, 36.152294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749386, 37.935551, 36.175106>,  <37.561996, 38.096024, 36.267796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749386, 37.935551, 36.175106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862408, 38.278992, 36.004009>,  <36.930222, 38.485058, 35.901352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862408, 38.278992, 36.004009>,  <36.749386, 37.935551, 36.175106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862408, 38.278992, 36.004009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570333, -0.208162, -0.794600,
		-0.771286, 0.468474, 0.430872,
		0.282558, 0.858604, -0.427739,
		36.947174, 38.536572, 35.875687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165653, 38.261700, 36.006535>,  <36.749386, 37.935551, 36.175106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165653, 38.261700, 36.006535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446507, 38.428940, 35.775990>,  <36.615021, 38.529285, 35.637665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446507, 38.428940, 35.775990>,  <36.165653, 38.261700, 36.006535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446507, 38.428940, 35.775990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445086, -0.374105, -0.813599,
		-0.555790, 0.827788, -0.076581,
		0.702137, 0.418105, -0.576361,
		36.657146, 38.554371, 35.603081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760826, 38.346649, 35.458656>,  <36.165653, 38.261700, 36.006535>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760826, 38.346649, 35.458656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139439, 38.361275, 35.330444>,  <36.366608, 38.370049, 35.253517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139439, 38.361275, 35.330444>,  <35.760826, 38.346649, 35.458656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139439, 38.361275, 35.330444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276585, -0.419482, -0.864601,
		-0.166068, 0.907027, -0.386942,
		0.946532, 0.036560, -0.320532,
		36.423397, 38.372242, 35.234283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764317, 38.722717, 34.802670>,  <35.760826, 38.346649, 35.458656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764317, 38.722717, 34.802670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102917, 38.509823, 34.807640>,  <36.306076, 38.382084, 34.810623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102917, 38.509823, 34.807640>,  <35.764317, 38.722717, 34.802670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102917, 38.509823, 34.807640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225227, -0.379160, -0.897502,
		0.482396, 0.756940, -0.440835,
		0.846503, -0.532240, 0.012422,
		36.356869, 38.350151, 34.811367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158630, 38.827076, 34.134209>,  <35.764317, 38.722717, 34.802670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158630, 38.827076, 34.134209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336990, 38.493050, 34.263107>,  <36.444004, 38.292633, 34.340446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336990, 38.493050, 34.263107>,  <36.158630, 38.827076, 34.134209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336990, 38.493050, 34.263107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239226, -0.458099, -0.856106,
		0.862525, 0.304645, -0.404034,
		0.445895, -0.835067, 0.322242,
		36.470760, 38.242531, 34.359779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668461, 38.546478, 33.662331>,  <36.158630, 38.827076, 34.134209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668461, 38.546478, 33.662331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589615, 38.210049, 33.863823>,  <36.542309, 38.008190, 33.984718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589615, 38.210049, 33.863823>,  <36.668461, 38.546478, 33.662331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589615, 38.210049, 33.863823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251201, -0.453332, -0.855212,
		0.947652, -0.295112, -0.121921,
		-0.197113, -0.841070, 0.503733,
		36.530479, 37.957729, 34.014942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976967, 37.934711, 33.281380>,  <36.668461, 38.546478, 33.662331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976967, 37.934711, 33.281380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687725, 37.798004, 33.521484>,  <36.514179, 37.715981, 33.665546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687725, 37.798004, 33.521484>,  <36.976967, 37.934711, 33.281380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687725, 37.798004, 33.521484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399550, -0.501919, -0.767097,
		0.563452, -0.794526, 0.226386,
		-0.723106, -0.341770, 0.600260,
		36.470795, 37.695473, 33.701561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594574, 37.565189, 33.564007>,  <36.976967, 37.934711, 33.281380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594574, 37.565189, 33.564007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896885, 37.826092, 33.587193>,  <38.078274, 37.982632, 33.601105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896885, 37.826092, 33.587193>,  <37.594574, 37.565189, 33.564007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896885, 37.826092, 33.587193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584672, -0.632301, -0.508285,
		-0.294881, 0.418041, -0.859236,
		0.755780, 0.652255, 0.057963,
		38.123619, 38.021767, 33.604580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831455, 37.620491, 32.845913>,  <37.594574, 37.565189, 33.564007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831455, 37.620491, 32.845913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127129, 37.714325, 33.098446>,  <38.304531, 37.770626, 33.249966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127129, 37.714325, 33.098446>,  <37.831455, 37.620491, 32.845913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127129, 37.714325, 33.098446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632351, -0.564381, -0.530666,
		0.231828, 0.791482, -0.565519,
		0.739181, 0.234583, 0.631334,
		38.348885, 37.784698, 33.287846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149193, 37.105434, 33.407322>,  <37.831455, 37.620491, 32.845913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149193, 37.105434, 33.407322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406204, 36.806076, 33.473122>,  <38.560413, 36.626461, 33.512600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406204, 36.806076, 33.473122>,  <38.149193, 37.105434, 33.407322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406204, 36.806076, 33.473122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194335, 0.048497, 0.979736,
		-0.741206, -0.661479, -0.114278,
		0.642533, -0.748394, 0.164495,
		38.598965, 36.581558, 33.522469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978863, 36.588181, 34.012150>,  <38.149193, 37.105434, 33.407322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978863, 36.588181, 34.012150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364044, 36.493965, 33.959633>,  <38.595154, 36.437435, 33.928123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364044, 36.493965, 33.959633>,  <37.978863, 36.588181, 34.012150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364044, 36.493965, 33.959633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031397, -0.385623, 0.922122,
		-0.267827, -0.892085, -0.363942,
		0.962955, -0.235542, -0.131289,
		38.652931, 36.423302, 33.920246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110516, 35.862190, 34.164009>,  <37.978863, 36.588181, 34.012150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110516, 35.862190, 34.164009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492226, 35.979359, 34.187889>,  <38.721252, 36.049660, 34.202217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492226, 35.979359, 34.187889>,  <38.110516, 35.862190, 34.164009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492226, 35.979359, 34.187889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028762, -0.288731, 0.956978,
		0.297558, -0.911499, -0.283952,
		0.954270, 0.292924, 0.059698,
		38.778507, 36.067234, 34.205799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317299, 35.306801, 34.676727>,  <38.110516, 35.862190, 34.164009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317299, 35.306801, 34.676727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590038, 35.598217, 34.650463>,  <38.753681, 35.773067, 34.634705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590038, 35.598217, 34.650463>,  <38.317299, 35.306801, 34.676727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590038, 35.598217, 34.650463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147958, -0.049453, 0.987756,
		0.716371, -0.683218, -0.141513,
		0.681851, 0.728538, -0.065661,
		38.794594, 35.816780, 34.630764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020206, 35.147358, 35.054581>,  <38.317299, 35.306801, 34.676727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020206, 35.147358, 35.054581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983566, 35.545662, 35.051395>,  <38.961582, 35.784645, 35.049484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983566, 35.545662, 35.051395>,  <39.020206, 35.147358, 35.054581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983566, 35.545662, 35.051395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113288, 0.018362, 0.993393,
		0.989331, 0.090094, -0.114490,
		-0.091601, 0.995764, -0.007960,
		38.956085, 35.844391, 35.049007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504547, 35.301285, 35.615768>,  <39.020206, 35.147358, 35.054581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504547, 35.301285, 35.615768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295845, 35.638279, 35.562107>,  <39.170624, 35.840473, 35.529911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295845, 35.638279, 35.562107>,  <39.504547, 35.301285, 35.615768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295845, 35.638279, 35.562107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038514, 0.180362, 0.982846,
		0.852226, 0.507637, -0.126552,
		-0.521754, 0.842481, -0.134158,
		39.139320, 35.891022, 35.521858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887764, 35.918907, 36.039444>,  <39.504547, 35.301285, 35.615768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887764, 35.918907, 36.039444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505253, 36.023918, 35.987900>,  <39.275745, 36.086926, 35.956974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505253, 36.023918, 35.987900>,  <39.887764, 35.918907, 36.039444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505253, 36.023918, 35.987900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069984, 0.222388, 0.972443,
		0.283952, 0.938947, -0.194292,
		-0.956281, 0.262530, -0.128858,
		39.218369, 36.102676, 35.949242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734058, 36.639225, 36.350449>,  <39.887764, 35.918907, 36.039444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734058, 36.639225, 36.350449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388317, 36.438259, 36.341835>,  <39.180870, 36.317680, 36.336666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388317, 36.438259, 36.341835>,  <39.734058, 36.639225, 36.350449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388317, 36.438259, 36.341835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144549, 0.207203, 0.967560,
		-0.481658, 0.839430, -0.251721,
		-0.864356, -0.502419, -0.021538,
		39.129009, 36.287533, 36.335373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252968, 37.096951, 36.696651>,  <39.734058, 36.639225, 36.350449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252968, 37.096951, 36.696651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097408, 36.728954, 36.716156>,  <39.004074, 36.508156, 36.727859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097408, 36.728954, 36.716156>,  <39.252968, 37.096951, 36.696651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097408, 36.728954, 36.716156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133051, 0.108461, 0.985157,
		-0.911624, 0.376634, -0.164586,
		-0.388895, -0.919991, 0.048764,
		38.980740, 36.452957, 36.730785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834316, 37.093628, 37.273827>,  <39.252968, 37.096951, 36.696651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834316, 37.093628, 37.273827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866745, 36.697292, 37.230606>,  <38.886200, 36.459492, 37.204674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866745, 36.697292, 37.230606>,  <38.834316, 37.093628, 37.273827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866745, 36.697292, 37.230606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001235, -0.108507, 0.994095,
		-0.996708, -0.080457, -0.010020,
		0.081070, -0.990834, -0.108051,
		38.891068, 36.400043, 37.198193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262215, 36.782562, 37.765671>,  <38.834316, 37.093628, 37.273827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262215, 36.782562, 37.765671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518616, 36.484646, 37.691483>,  <38.672459, 36.305897, 37.646969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518616, 36.484646, 37.691483>,  <38.262215, 36.782562, 37.765671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518616, 36.484646, 37.691483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032952, -0.214716, 0.976121,
		-0.766828, -0.631811, -0.113092,
		0.641006, -0.744790, -0.185470,
		38.710918, 36.261208, 37.635841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004307, 36.208767, 38.100128>,  <38.262215, 36.782562, 37.765671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004307, 36.208767, 38.100128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391312, 36.117649, 38.056244>,  <38.623512, 36.062981, 38.029915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391312, 36.117649, 38.056244>,  <38.004307, 36.208767, 38.100128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391312, 36.117649, 38.056244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025752, -0.342889, 0.939023,
		-0.251516, -0.911340, -0.325882,
		0.967510, -0.227788, -0.109710,
		38.681564, 36.049313, 38.023331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153870, 35.527611, 38.245979>,  <38.004307, 36.208767, 38.100128>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153870, 35.527611, 38.245979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485638, 35.740574, 38.313637>,  <38.684700, 35.868351, 38.354229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485638, 35.740574, 38.313637>,  <38.153870, 35.527611, 38.245979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485638, 35.740574, 38.313637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037193, -0.249476, 0.967666,
		0.557385, -0.808893, -0.187119,
		0.829421, 0.532403, 0.169140,
		38.734463, 35.900295, 38.364380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412918, 35.206532, 38.795937>,  <38.153870, 35.527611, 38.245979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412918, 35.206532, 38.795937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660309, 35.520550, 38.782146>,  <38.808743, 35.708961, 38.773872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660309, 35.520550, 38.782146>,  <38.412918, 35.206532, 38.795937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660309, 35.520550, 38.782146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198895, -0.113947, 0.973374,
		0.760216, -0.608864, -0.226616,
		0.618475, 0.785047, -0.034476,
		38.845852, 35.756065, 38.771805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569405, 34.424973, 38.789871>,  <38.412918, 35.206532, 38.795937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569405, 34.424973, 38.789871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233334, 34.277840, 38.949268>,  <38.031689, 34.189560, 39.044907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233334, 34.277840, 38.949268>,  <38.569405, 34.424973, 38.789871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233334, 34.277840, 38.949268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459862, 0.093761, -0.883026,
		0.287446, -0.925151, -0.247930,
		-0.840180, -0.367836, 0.398490,
		37.981281, 34.167488, 39.068817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303932, 33.949417, 38.328056>,  <38.569405, 34.424973, 38.789871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303932, 33.949417, 38.328056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971878, 34.034615, 38.534168>,  <37.772644, 34.085732, 38.657833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971878, 34.034615, 38.534168>,  <38.303932, 33.949417, 38.328056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971878, 34.034615, 38.534168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480377, 0.195926, -0.854898,
		-0.283044, -0.957208, -0.060327,
		-0.830135, 0.212994, 0.515276,
		37.722839, 34.098515, 38.688751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758648, 33.586235, 37.963997>,  <38.303932, 33.949417, 38.328056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758648, 33.586235, 37.963997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575123, 33.871758, 38.175644>,  <37.465008, 34.043072, 38.302631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575123, 33.871758, 38.175644>,  <37.758648, 33.586235, 37.963997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575123, 33.871758, 38.175644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514709, 0.271892, -0.813111,
		-0.724269, -0.645408, 0.242657,
		-0.458812, 0.713809, 0.529121,
		37.437481, 34.085899, 38.334381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975521, 33.385777, 37.901573>,  <37.758648, 33.586235, 37.963997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975521, 33.385777, 37.901573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002590, 33.767059, 38.019432>,  <37.018833, 33.995831, 38.090149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002590, 33.767059, 38.019432>,  <36.975521, 33.385777, 37.901573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002590, 33.767059, 38.019432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646610, 0.266809, -0.714638,
		-0.759813, -0.142162, 0.634408,
		0.067671, 0.953206, 0.294649,
		37.022892, 34.053020, 38.107826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280300, 33.679176, 37.913559>,  <36.975521, 33.385777, 37.901573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280300, 33.679176, 37.913559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533138, 33.988487, 37.893597>,  <36.684841, 34.174076, 37.881618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533138, 33.988487, 37.893597>,  <36.280300, 33.679176, 37.913559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533138, 33.988487, 37.893597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563040, 0.414088, -0.715204,
		-0.532389, 0.480177, 0.697132,
		0.632098, 0.773280, -0.049903,
		36.722767, 34.220470, 37.878624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842350, 34.206856, 37.741875>,  <36.280300, 33.679176, 37.913559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842350, 34.206856, 37.741875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196220, 34.370876, 37.653141>,  <36.408543, 34.469288, 37.599899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196220, 34.370876, 37.653141>,  <35.842350, 34.206856, 37.741875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196220, 34.370876, 37.653141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444001, 0.595905, -0.669149,
		-0.142191, 0.690474, 0.709244,
		0.884672, 0.410052, -0.221839,
		36.461620, 34.493893, 37.586590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801640, 34.950691, 37.781872>,  <35.842350, 34.206856, 37.741875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801640, 34.950691, 37.781872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110893, 34.869690, 37.541451>,  <36.296444, 34.821091, 37.397198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110893, 34.869690, 37.541451>,  <35.801640, 34.950691, 37.781872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110893, 34.869690, 37.541451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419674, 0.547197, -0.724189,
		0.475543, 0.812138, 0.338069,
		0.773131, -0.202505, -0.601049,
		36.342834, 34.808937, 37.361137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031509, 35.561752, 37.513374>,  <35.801640, 34.950691, 37.781872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031509, 35.561752, 37.513374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144920, 35.283302, 37.249550>,  <36.212967, 35.116234, 37.091255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144920, 35.283302, 37.249550>,  <36.031509, 35.561752, 37.513374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144920, 35.283302, 37.249550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398836, 0.539883, -0.741253,
		0.872091, 0.473223, -0.124568,
		0.283526, -0.696123, -0.659565,
		36.229977, 35.074467, 37.051682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983727, 35.922108, 36.980385>,  <36.031509, 35.561752, 37.513374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983727, 35.922108, 36.980385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029312, 35.560261, 36.816105>,  <36.056664, 35.343151, 36.717537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029312, 35.560261, 36.816105>,  <35.983727, 35.922108, 36.980385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029312, 35.560261, 36.816105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400298, 0.336539, -0.852352,
		0.909271, 0.261536, -0.323766,
		0.113961, -0.904622, -0.410698,
		36.063499, 35.288876, 36.692894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312733, 36.013550, 36.374378>,  <35.983727, 35.922108, 36.980385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312733, 36.013550, 36.374378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129524, 35.669697, 36.283833>,  <36.019600, 35.463383, 36.229504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129524, 35.669697, 36.283833>,  <36.312733, 36.013550, 36.374378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129524, 35.669697, 36.283833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302443, 0.390149, -0.869662,
		0.835908, -0.329865, -0.438688,
		-0.458025, -0.859635, -0.226363,
		35.992115, 35.411808, 36.215923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440407, 35.890560, 35.677189>,  <36.312733, 36.013550, 36.374378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440407, 35.890560, 35.677189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110035, 35.675804, 35.745987>,  <35.911812, 35.546951, 35.787266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110035, 35.675804, 35.745987>,  <36.440407, 35.890560, 35.677189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110035, 35.675804, 35.745987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295860, 0.153075, -0.942886,
		0.479900, -0.829647, -0.285274,
		-0.825932, -0.536892, 0.171999,
		35.862255, 35.514736, 35.797588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328140, 35.627495, 35.029526>,  <36.440407, 35.890560, 35.677189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328140, 35.627495, 35.029526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988728, 35.568863, 35.232903>,  <35.785080, 35.533684, 35.354931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988728, 35.568863, 35.232903>,  <36.328140, 35.627495, 35.029526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988728, 35.568863, 35.232903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527848, 0.167054, -0.832748,
		0.037125, -0.974991, -0.219121,
		-0.848527, -0.146579, 0.508445,
		35.734169, 35.524891, 35.385437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.684612, 33.857708, 42.605286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.285702, 33.879585, 42.585468>,  <39.046356, 33.892712, 42.573578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.285702, 33.879585, 42.585468>,  <39.684612, 33.857708, 42.605286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285702, 33.879585, 42.585468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027638, -0.345719, -0.937931,
		-0.068427, -0.936743, 0.343265,
		-0.997273, 0.054693, -0.049546,
		38.986519, 33.895992, 42.570602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433949, 33.255409, 42.253574>,  <39.684612, 33.857708, 42.605286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433949, 33.255409, 42.253574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.145233, 33.528736, 42.209557>,  <38.972004, 33.692730, 42.183144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.145233, 33.528736, 42.209557>,  <39.433949, 33.255409, 42.253574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145233, 33.528736, 42.209557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109512, -0.269751, -0.956682,
		-0.683399, -0.678467, 0.269534,
		-0.721784, 0.683313, -0.110047,
		38.928699, 33.733730, 42.176544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801460, 32.934338, 41.963104>,  <39.433949, 33.255409, 42.253574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801460, 32.934338, 41.963104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.746258, 33.315907, 41.856529>,  <38.713135, 33.544849, 41.792583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.746258, 33.315907, 41.856529>,  <38.801460, 32.934338, 41.963104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746258, 33.315907, 41.856529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316856, -0.297396, -0.900643,
		-0.938380, -0.039871, 0.343297,
		-0.138005, 0.953922, -0.266437,
		38.704857, 33.602081, 41.776600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121887, 32.956516, 41.651554>,  <38.801460, 32.934338, 41.963104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121887, 32.956516, 41.651554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.305244, 33.294659, 41.541832>,  <38.415260, 33.497543, 41.475998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.305244, 33.294659, 41.541832>,  <38.121887, 32.956516, 41.651554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305244, 33.294659, 41.541832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449874, -0.045471, -0.891934,
		-0.766478, 0.532257, 0.359462,
		0.458393, 0.845360, -0.274301,
		38.442764, 33.548267, 41.459541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588745, 33.292053, 41.248051>,  <38.121887, 32.956516, 41.651554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588745, 33.292053, 41.248051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.901722, 33.517189, 41.141468>,  <38.089508, 33.652271, 41.077518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.901722, 33.517189, 41.141468>,  <37.588745, 33.292053, 41.248051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901722, 33.517189, 41.141468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414084, 0.150665, -0.897683,
		-0.465102, 0.812721, 0.350948,
		0.782442, 0.562836, -0.266460,
		38.136456, 33.686039, 41.061531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373814, 34.046757, 41.059006>,  <37.588745, 33.292053, 41.248051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373814, 34.046757, 41.059006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.715633, 33.945953, 40.877350>,  <37.920727, 33.885471, 40.768356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.715633, 33.945953, 40.877350>,  <37.373814, 34.046757, 41.059006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715633, 33.945953, 40.877350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398891, 0.241523, -0.884620,
		0.332612, 0.937102, 0.105871,
		0.854550, -0.252004, -0.454136,
		37.972000, 33.870354, 40.741108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543751, 34.577309, 40.722275>,  <37.373814, 34.046757, 41.059006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543751, 34.577309, 40.722275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.769451, 34.299595, 40.543575>,  <37.904869, 34.132965, 40.436356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.769451, 34.299595, 40.543575>,  <37.543751, 34.577309, 40.722275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769451, 34.299595, 40.543575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251716, 0.370686, -0.893997,
		0.786297, 0.616891, 0.034396,
		0.564249, -0.694289, -0.446750,
		37.938725, 34.091309, 40.409550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901691, 34.860165, 40.144062>,  <37.543751, 34.577309, 40.722275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901691, 34.860165, 40.144062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.924046, 34.470688, 40.055695>,  <37.937458, 34.237003, 40.002674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.924046, 34.470688, 40.055695>,  <37.901691, 34.860165, 40.144062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924046, 34.470688, 40.055695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257776, 0.199694, -0.945343,
		0.964587, 0.109781, -0.239833,
		0.055888, -0.973689, -0.220921,
		37.940811, 34.178581, 39.989418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384174, 34.813091, 39.583382>,  <37.901691, 34.860165, 40.144062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384174, 34.813091, 39.583382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.154598, 34.485596, 39.576797>,  <38.016853, 34.289101, 39.572849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.154598, 34.485596, 39.576797>,  <38.384174, 34.813091, 39.583382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154598, 34.485596, 39.576797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330427, 0.249924, -0.910141,
		0.749277, -0.516925, -0.413973,
		-0.573936, -0.818735, -0.016456,
		37.982418, 34.239975, 39.571861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036732, 34.895016, 39.213757>,  <38.384174, 34.813091, 39.583382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036732, 34.895016, 39.213757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.051254, 35.293224, 39.178837>,  <39.059967, 35.532150, 39.157887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.051254, 35.293224, 39.178837>,  <39.036732, 34.895016, 39.213757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051254, 35.293224, 39.178837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340629, 0.069794, 0.937604,
		0.939496, -0.063779, -0.336569,
		0.036309, 0.995521, -0.087296,
		39.062145, 35.591881, 39.152649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621368, 35.012203, 39.588726>,  <39.036732, 34.895016, 39.213757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621368, 35.012203, 39.588726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.414257, 35.350758, 39.538879>,  <39.289989, 35.553890, 39.508972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.414257, 35.350758, 39.538879>,  <39.621368, 35.012203, 39.588726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414257, 35.350758, 39.538879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105393, 0.207660, 0.972507,
		0.848997, 0.490411, -0.196725,
		-0.517780, 0.846389, -0.124617,
		39.258923, 35.604675, 39.501495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013954, 35.589359, 39.878391>,  <39.621368, 35.012203, 39.588726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013954, 35.589359, 39.878391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.640884, 35.733574, 39.873810>,  <39.417042, 35.820103, 39.871059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.640884, 35.733574, 39.873810>,  <40.013954, 35.589359, 39.878391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640884, 35.733574, 39.873810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114551, 0.326151, 0.938351,
		0.342043, 0.873866, -0.345493,
		-0.932676, 0.360533, -0.011455,
		39.361080, 35.841732, 39.870373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010975, 36.395580, 39.941654>,  <40.013954, 35.589359, 39.878391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010975, 36.395580, 39.941654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.668648, 36.232960, 40.069592>,  <39.463253, 36.135387, 40.146355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.668648, 36.232960, 40.069592>,  <40.010975, 36.395580, 39.941654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668648, 36.232960, 40.069592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126256, 0.435445, 0.891318,
		-0.501637, 0.803185, -0.321331,
		-0.855815, -0.406548, 0.319843,
		39.411903, 36.110996, 40.165543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693443, 36.920509, 40.259274>,  <40.010975, 36.395580, 39.941654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693443, 36.920509, 40.259274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.461437, 36.635323, 40.416885>,  <39.322235, 36.464211, 40.511452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.461437, 36.635323, 40.416885>,  <39.693443, 36.920509, 40.259274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461437, 36.635323, 40.416885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164839, 0.576423, 0.800353,
		-0.797754, 0.399264, -0.451858,
		-0.580014, -0.712969, 0.394029,
		39.287434, 36.421432, 40.535095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919563, 37.200035, 40.440159>,  <39.693443, 36.920509, 40.259274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919563, 37.200035, 40.440159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.023148, 36.880669, 40.657589>,  <39.085297, 36.689049, 40.788048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.023148, 36.880669, 40.657589>,  <38.919563, 37.200035, 40.440159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023148, 36.880669, 40.657589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306039, 0.465952, 0.830198,
		-0.916122, -0.381343, -0.123683,
		0.258960, -0.798415, 0.543575,
		39.100834, 36.641144, 40.820660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512444, 37.234146, 41.004116>,  <38.919563, 37.200035, 40.440159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512444, 37.234146, 41.004116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.761860, 36.960529, 41.155525>,  <38.911510, 36.796360, 41.246368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.761860, 36.960529, 41.155525>,  <38.512444, 37.234146, 41.004116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761860, 36.960529, 41.155525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080675, 0.425286, 0.901456,
		-0.777616, -0.592633, 0.209998,
		0.623542, -0.684046, 0.378519,
		38.948921, 36.755314, 41.269081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312252, 37.228607, 41.668571>,  <38.512444, 37.234146, 41.004116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312252, 37.228607, 41.668571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.665020, 37.043060, 41.702156>,  <38.876682, 36.931732, 41.722305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.665020, 37.043060, 41.702156>,  <38.312252, 37.228607, 41.668571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665020, 37.043060, 41.702156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067505, 0.300539, 0.951377,
		-0.466541, -0.833371, 0.296365,
		0.881920, -0.463863, 0.083957,
		38.929596, 36.903900, 41.727345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306885, 36.840935, 42.284996>,  <38.312252, 37.228607, 41.668571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306885, 36.840935, 42.284996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.694748, 36.901119, 42.207920>,  <38.927464, 36.937229, 42.161674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.694748, 36.901119, 42.207920>,  <38.306885, 36.840935, 42.284996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694748, 36.901119, 42.207920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145277, 0.279277, 0.949157,
		0.196624, -0.948349, 0.248944,
		0.969656, 0.150461, -0.192686,
		38.985645, 36.946259, 42.150116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601280, 36.592079, 42.844700>,  <38.306885, 36.840935, 42.284996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601280, 36.592079, 42.844700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.901989, 36.789211, 42.669445>,  <39.082413, 36.907490, 42.564293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.901989, 36.789211, 42.669445>,  <38.601280, 36.592079, 42.844700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901989, 36.789211, 42.669445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267592, 0.379273, 0.885746,
		0.602694, -0.783118, 0.153249,
		0.751767, 0.492826, -0.438142,
		39.127518, 36.937057, 42.538002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220913, 36.348701, 43.182850>,  <38.601280, 36.592079, 42.844700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220913, 36.348701, 43.182850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.288395, 36.713345, 43.032909>,  <39.328884, 36.932129, 42.942944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.288395, 36.713345, 43.032909>,  <39.220913, 36.348701, 43.182850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288395, 36.713345, 43.032909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381149, 0.290385, 0.877725,
		0.908990, -0.290956, -0.298466,
		0.168709, 0.911604, -0.374855,
		39.339008, 36.986824, 42.920452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877941, 36.548134, 43.493786>,  <39.220913, 36.348701, 43.182850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877941, 36.548134, 43.493786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.739048, 36.894520, 43.349823>,  <39.655712, 37.102352, 43.263447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.739048, 36.894520, 43.349823>,  <39.877941, 36.548134, 43.493786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739048, 36.894520, 43.349823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247856, 0.454887, 0.855363,
		0.904432, 0.207804, -0.372586,
		-0.347233, 0.865965, -0.359909,
		39.634880, 37.154308, 43.241852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421318, 37.119297, 43.513103>,  <39.877941, 36.548134, 43.493786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421318, 37.119297, 43.513103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.063683, 37.298454, 43.512470>,  <39.849102, 37.405949, 43.512093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.063683, 37.298454, 43.512470>,  <40.421318, 37.119297, 43.513103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063683, 37.298454, 43.512470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266405, 0.534627, 0.801999,
		0.360054, 0.716636, -0.597323,
		-0.894086, 0.447893, -0.001579,
		39.795456, 37.432823, 43.511997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547279, 37.864029, 43.612034>,  <40.421318, 37.119297, 43.513103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547279, 37.864029, 43.612034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.175270, 37.766762, 43.722252>,  <39.952065, 37.708401, 43.788383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.175270, 37.766762, 43.722252>,  <40.547279, 37.864029, 43.612034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175270, 37.766762, 43.722252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174744, 0.366986, 0.913666,
		-0.323295, 0.897881, -0.298814,
		-0.930024, -0.243168, 0.275544,
		39.896263, 37.693810, 43.804916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.522902, 40.666874, 43.353397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.648548, 40.290756, 43.405815>,  <31.723936, 40.065086, 43.437267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.648548, 40.290756, 43.405815>,  <31.522902, 40.666874, 43.353397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648548, 40.290756, 43.405815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158195, -0.084265, -0.983806,
		0.936112, 0.329759, 0.122281,
		0.314115, -0.940297, 0.131048,
		31.742783, 40.008667, 43.445129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063931, 40.643055, 42.961273>,  <31.522902, 40.666874, 43.353397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063931, 40.643055, 42.961273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.959288, 40.259941, 43.008949>,  <31.896502, 40.030071, 43.037556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.959288, 40.259941, 43.008949>,  <32.063931, 40.643055, 42.961273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959288, 40.259941, 43.008949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074380, -0.143128, -0.986905,
		0.962304, -0.249317, 0.108683,
		-0.261608, -0.957787, 0.119188,
		31.880806, 39.972607, 43.044704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469505, 40.309181, 42.552231>,  <32.063931, 40.643055, 42.961273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469505, 40.309181, 42.552231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.192303, 40.023762, 42.593391>,  <32.025982, 39.852509, 42.618088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.192303, 40.023762, 42.593391>,  <32.469505, 40.309181, 42.552231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192303, 40.023762, 42.593391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153453, -0.285463, -0.946025,
		0.704409, -0.639812, 0.307324,
		-0.693008, -0.713549, 0.102902,
		31.984400, 39.809696, 42.624260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765442, 39.717976, 42.277088>,  <32.469505, 40.309181, 42.552231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765442, 39.717976, 42.277088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.376812, 39.624355, 42.262894>,  <32.143635, 39.568184, 42.254375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.376812, 39.624355, 42.262894>,  <32.765442, 39.717976, 42.277088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376812, 39.624355, 42.262894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089118, -0.222743, -0.970795,
		0.219309, -0.946365, 0.237270,
		-0.971577, -0.234050, -0.035489,
		32.085339, 39.554142, 42.252247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766224, 39.102039, 41.972370>,  <32.765442, 39.717976, 42.277088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766224, 39.102039, 41.972370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.398987, 39.254295, 41.928162>,  <32.178646, 39.345650, 41.901638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.398987, 39.254295, 41.928162>,  <32.766224, 39.102039, 41.972370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398987, 39.254295, 41.928162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006911, -0.294168, -0.955729,
		-0.396306, -0.876684, 0.272704,
		-0.918093, 0.380645, -0.110522,
		32.123558, 39.368488, 41.895004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375805, 38.574192, 41.755573>,  <32.766224, 39.102039, 41.972370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375805, 38.574192, 41.755573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.171635, 38.897400, 41.637882>,  <32.049133, 39.091324, 41.567268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.171635, 38.897400, 41.637882>,  <32.375805, 38.574192, 41.755573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171635, 38.897400, 41.637882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222377, -0.206484, -0.952845,
		-0.830671, -0.551785, -0.074290,
		-0.510426, 0.808021, -0.294225,
		32.018505, 39.139805, 41.549614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120548, 38.344925, 41.195019>,  <32.375805, 38.574192, 41.755573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120548, 38.344925, 41.195019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.050457, 38.736538, 41.153461>,  <32.008400, 38.971504, 41.128529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.050457, 38.736538, 41.153461>,  <32.120548, 38.344925, 41.195019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050457, 38.736538, 41.153461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010847, -0.103600, -0.994560,
		-0.984467, -0.175406, 0.007535,
		-0.175232, 0.979030, -0.103894,
		31.997887, 39.030247, 41.122292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548258, 38.381165, 40.755489>,  <32.120548, 38.344925, 41.195019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548258, 38.381165, 40.755489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.759325, 38.720364, 40.735653>,  <31.885965, 38.923885, 40.723751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.759325, 38.720364, 40.735653>,  <31.548258, 38.381165, 40.755489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759325, 38.720364, 40.735653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028454, -0.040706, -0.998766,
		-0.848974, 0.528429, 0.002650,
		0.527669, 0.848001, -0.049594,
		31.917625, 38.974766, 40.720776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242367, 38.700275, 40.264912>,  <31.548258, 38.381165, 40.755489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242367, 38.700275, 40.264912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.581879, 38.910736, 40.285858>,  <31.785585, 39.037010, 40.298428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.581879, 38.910736, 40.285858>,  <31.242367, 38.700275, 40.264912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581879, 38.910736, 40.285858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051332, 0.180565, -0.982223,
		-0.526250, 0.831002, 0.180268,
		0.848779, 0.526149, 0.052365,
		31.836512, 39.068581, 40.301567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067545, 39.211468, 39.874283>,  <31.242367, 38.700275, 40.264912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067545, 39.211468, 39.874283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.466770, 39.197826, 39.895115>,  <31.706305, 39.189644, 39.907612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.466770, 39.197826, 39.895115>,  <31.067545, 39.211468, 39.874283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466770, 39.197826, 39.895115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058032, 0.207095, -0.976598,
		0.022517, 0.977726, 0.208673,
		0.998061, -0.034100, 0.052076,
		31.766188, 39.187595, 39.910736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212297, 39.860447, 39.584286>,  <31.067545, 39.211468, 39.874283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212297, 39.860447, 39.584286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.522774, 39.608395, 39.575703>,  <31.709061, 39.457165, 39.570553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.522774, 39.608395, 39.575703>,  <31.212297, 39.860447, 39.584286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522774, 39.608395, 39.575703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180462, 0.254650, -0.950046,
		0.604118, 0.733545, 0.311372,
		0.776192, -0.630131, -0.021461,
		31.755630, 39.419353, 39.569263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842983, 40.209713, 39.358463>,  <31.212297, 39.860447, 39.584286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842983, 40.209713, 39.358463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.881805, 39.827770, 39.246155>,  <31.905098, 39.598606, 39.178768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.881805, 39.827770, 39.246155>,  <31.842983, 40.209713, 39.358463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881805, 39.827770, 39.246155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053700, 0.286715, -0.956510,
		0.993829, 0.077757, 0.079103,
		0.097055, -0.954855, -0.280770,
		31.910921, 39.541313, 39.161922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093067, 40.311001, 38.686661>,  <31.842983, 40.209713, 39.358463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093067, 40.311001, 38.686661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.041225, 39.914608, 38.673107>,  <32.010120, 39.676773, 38.664974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.041225, 39.914608, 38.673107>,  <32.093067, 40.311001, 38.686661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041225, 39.914608, 38.673107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061579, 0.026061, -0.997762,
		0.989652, -0.131403, 0.057647,
		-0.129607, -0.990986, -0.033883,
		32.002342, 39.617313, 38.662941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521652, 40.139603, 38.178753>,  <32.093067, 40.311001, 38.686661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521652, 40.139603, 38.178753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.267723, 39.834000, 38.224865>,  <32.115364, 39.650639, 38.252533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.267723, 39.834000, 38.224865>,  <32.521652, 40.139603, 38.178753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267723, 39.834000, 38.224865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085844, -0.218023, -0.972161,
		0.767872, -0.607256, 0.203992,
		-0.634826, -0.764006, 0.115284,
		32.077274, 39.604797, 38.259449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210140, 39.797001, 38.330860>,  <32.521652, 40.139603, 38.178753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210140, 39.797001, 38.330860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.557308, 39.943741, 38.196915>,  <33.765610, 40.031784, 38.116547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.557308, 39.943741, 38.196915>,  <33.210140, 39.797001, 38.330860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557308, 39.943741, 38.196915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231124, 0.298463, 0.926014,
		0.439649, -0.881104, 0.174256,
		0.867923, 0.366846, -0.334863,
		33.817684, 40.053795, 38.096455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698082, 39.445923, 38.720520>,  <33.210140, 39.797001, 38.330860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698082, 39.445923, 38.720520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.839485, 39.788784, 38.570683>,  <33.924328, 39.994499, 38.480782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.839485, 39.788784, 38.570683>,  <33.698082, 39.445923, 38.720520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839485, 39.788784, 38.570683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337971, 0.256360, 0.905569,
		0.872242, -0.446729, -0.199067,
		0.353511, 0.857154, -0.374590,
		33.945538, 40.045929, 38.458305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456879, 39.491192, 38.913486>,  <33.698082, 39.445923, 38.720520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456879, 39.491192, 38.913486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.298206, 39.856647, 38.877907>,  <34.203003, 40.075920, 38.856560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.298206, 39.856647, 38.877907>,  <34.456879, 39.491192, 38.913486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298206, 39.856647, 38.877907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405193, 0.261223, 0.876117,
		0.823686, 0.311502, -0.473822,
		-0.396686, 0.913635, -0.088948,
		34.179199, 40.130737, 38.851223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844063, 39.983925, 39.177219>,  <34.456879, 39.491192, 38.913486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844063, 39.983925, 39.177219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.552311, 40.256889, 39.196491>,  <34.377258, 40.420670, 39.208054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.552311, 40.256889, 39.196491>,  <34.844063, 39.983925, 39.177219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552311, 40.256889, 39.196491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236261, 0.185181, 0.953881,
		0.642018, 0.707122, -0.296294,
		-0.729378, 0.682412, 0.048176,
		34.333496, 40.461613, 39.210945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211441, 40.572189, 39.483524>,  <34.844063, 39.983925, 39.177219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211441, 40.572189, 39.483524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.825142, 40.636490, 39.565002>,  <34.593365, 40.675072, 39.613892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.825142, 40.636490, 39.565002>,  <35.211441, 40.572189, 39.483524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825142, 40.636490, 39.565002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236036, 0.218080, 0.946957,
		0.107807, 0.962600, -0.248554,
		-0.965746, 0.160756, 0.203698,
		34.535419, 40.684715, 39.626110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112331, 41.223839, 39.817287>,  <35.211441, 40.572189, 39.483524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112331, 41.223839, 39.817287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.780422, 41.023758, 39.916306>,  <34.581276, 40.903709, 39.975716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.780422, 41.023758, 39.916306>,  <35.112331, 41.223839, 39.817287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780422, 41.023758, 39.916306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158046, 0.214797, 0.963786,
		-0.535257, 0.838846, -0.099178,
		-0.829772, -0.500199, 0.247548,
		34.531490, 40.873699, 39.990570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796326, 41.657333, 40.340702>,  <35.112331, 41.223839, 39.817287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796326, 41.657333, 40.340702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.636578, 41.295048, 40.397530>,  <34.540730, 41.077675, 40.431625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.636578, 41.295048, 40.397530>,  <34.796326, 41.657333, 40.340702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636578, 41.295048, 40.397530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296654, 0.018962, 0.954797,
		-0.867466, 0.423467, 0.261110,
		-0.399374, -0.905713, 0.142072,
		34.516766, 41.023335, 40.440151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505260, 41.692005, 40.935375>,  <34.796326, 41.657333, 40.340702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505260, 41.692005, 40.935375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.521107, 41.295975, 40.881443>,  <34.530617, 41.058357, 40.849083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.521107, 41.295975, 40.881443>,  <34.505260, 41.692005, 40.935375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521107, 41.295975, 40.881443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141315, -0.128033, 0.981651,
		-0.989172, -0.057945, 0.134840,
		0.039618, -0.990076, -0.134835,
		34.532993, 40.998951, 40.840992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092968, 41.316895, 41.489834>,  <34.505260, 41.692005, 40.935375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092968, 41.316895, 41.489834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.358379, 41.041542, 41.372631>,  <34.517628, 40.876331, 41.302311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.358379, 41.041542, 41.372631>,  <34.092968, 41.316895, 41.489834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358379, 41.041542, 41.372631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139273, -0.271140, 0.952411,
		-0.735070, -0.672763, -0.084037,
		0.663532, -0.688384, -0.293005,
		34.557438, 40.835026, 41.284729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904697, 40.712013, 41.912006>,  <34.092968, 41.316895, 41.489834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904697, 40.712013, 41.912006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.265091, 40.607468, 41.773487>,  <34.481327, 40.544743, 41.690376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.265091, 40.607468, 41.773487>,  <33.904697, 40.712013, 41.912006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265091, 40.607468, 41.773487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210124, -0.435456, 0.875343,
		-0.379574, -0.861435, -0.337422,
		0.900984, -0.261357, -0.346296,
		34.535385, 40.529060, 41.669598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947441, 40.055584, 42.035011>,  <33.904697, 40.712013, 41.912006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947441, 40.055584, 42.035011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.331165, 40.166691, 42.014725>,  <34.561398, 40.233356, 42.002552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.331165, 40.166691, 42.014725>,  <33.947441, 40.055584, 42.035011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331165, 40.166691, 42.014725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111477, -0.207558, 0.971850,
		0.259422, -0.937958, -0.230077,
		0.959309, 0.277767, -0.050715,
		34.618958, 40.250019, 41.999512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487263, 39.458252, 42.382130>,  <33.947441, 40.055584, 42.035011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487263, 39.458252, 42.382130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.654003, 39.821720, 42.391510>,  <34.754047, 40.039803, 42.397141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.654003, 39.821720, 42.391510>,  <34.487263, 39.458252, 42.382130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654003, 39.821720, 42.391510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295611, -0.159919, 0.941828,
		0.859565, -0.385666, -0.335276,
		0.416849, 0.908674, 0.023454,
		34.779057, 40.094322, 42.398544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218853, 39.403915, 42.545834>,  <34.487263, 39.458252, 42.382130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218853, 39.403915, 42.545834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.064583, 39.750172, 42.673538>,  <34.972019, 39.957924, 42.750160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.064583, 39.750172, 42.673538>,  <35.218853, 39.403915, 42.545834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064583, 39.750172, 42.673538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068353, -0.318272, 0.945532,
		0.920099, 0.386491, 0.063581,
		-0.385676, 0.865637, 0.319259,
		34.948879, 40.009861, 42.769318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409454, 39.397305, 43.205822>,  <35.218853, 39.403915, 42.545834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409454, 39.397305, 43.205822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.190121, 39.731663, 43.195904>,  <35.058521, 39.932278, 43.189953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.190121, 39.731663, 43.195904>,  <35.409454, 39.397305, 43.205822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190121, 39.731663, 43.195904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013228, 0.038318, 0.999178,
		0.836154, 0.547556, -0.032068,
		-0.548335, 0.835891, -0.024797,
		35.025620, 39.982430, 43.188465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047375, 39.776958, 43.007748>,  <35.409454, 39.397305, 43.205822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047375, 39.776958, 43.007748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.445232, 39.736183, 43.014580>,  <36.683949, 39.711716, 43.018677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.445232, 39.736183, 43.014580>,  <36.047375, 39.776958, 43.007748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445232, 39.736183, 43.014580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017182, 0.000166, -0.999852,
		0.101925, 0.994790, 0.001917,
		0.994644, -0.101942, 0.017076,
		36.743626, 39.705601, 43.019703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158745, 40.315681, 42.553719>,  <36.047375, 39.776958, 43.007748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158745, 40.315681, 42.553719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.479939, 40.077427, 42.562134>,  <36.672653, 39.934475, 42.567184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.479939, 40.077427, 42.562134>,  <36.158745, 40.315681, 42.553719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479939, 40.077427, 42.562134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070102, 0.059337, -0.995773,
		0.591866, 0.801063, 0.089401,
		0.802982, -0.595632, 0.021037,
		36.720833, 39.898739, 42.568443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519138, 40.560249, 42.035496>,  <36.158745, 40.315681, 42.553719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519138, 40.560249, 42.035496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.722866, 40.221115, 42.094521>,  <36.845104, 40.017635, 42.129936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.722866, 40.221115, 42.094521>,  <36.519138, 40.560249, 42.035496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722866, 40.221115, 42.094521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350446, 0.047725, -0.935366,
		0.785990, 0.528115, 0.321427,
		0.509321, -0.847831, 0.147564,
		36.875664, 39.966766, 42.138790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174721, 40.682072, 41.693905>,  <36.519138, 40.560249, 42.035496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174721, 40.682072, 41.693905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.133183, 40.285103, 41.720181>,  <37.108257, 40.046921, 41.735947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.133183, 40.285103, 41.720181>,  <37.174721, 40.682072, 41.693905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133183, 40.285103, 41.720181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372317, -0.100034, -0.922699,
		0.922277, -0.071365, 0.379884,
		-0.103850, -0.992422, 0.065688,
		37.102028, 39.987377, 41.739887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859665, 40.243168, 41.833881>,  <37.174721, 40.682072, 41.693905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859665, 40.243168, 41.833881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.599342, 39.993980, 41.660275>,  <37.443150, 39.844467, 41.556110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.599342, 39.993980, 41.660275>,  <37.859665, 40.243168, 41.833881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599342, 39.993980, 41.660275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599828, -0.071410, -0.796936,
		0.465470, -0.778983, 0.420146,
		-0.650802, -0.622966, -0.434016,
		37.404102, 39.807091, 41.530071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266914, 40.066406, 41.257244>,  <37.859665, 40.243168, 41.833881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266914, 40.066406, 41.257244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.943504, 39.858139, 41.147552>,  <37.749458, 39.733181, 41.081738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.943504, 39.858139, 41.147552>,  <38.266914, 40.066406, 41.257244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943504, 39.858139, 41.147552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394769, -0.134311, -0.908910,
		0.436406, -0.843131, 0.314136,
		-0.808522, -0.520665, -0.274228,
		37.700947, 39.701939, 41.065285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451561, 39.498306, 40.738586>,  <38.266914, 40.066406, 41.257244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451561, 39.498306, 40.738586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.063534, 39.565968, 40.668892>,  <37.830719, 39.606564, 40.627075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.063534, 39.565968, 40.668892>,  <38.451561, 39.498306, 40.738586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063534, 39.565968, 40.668892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156129, -0.115104, -0.981007,
		-0.186001, -0.978844, 0.085248,
		-0.970065, 0.169159, -0.174235,
		37.772514, 39.616714, 40.616623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258030, 39.084713, 40.257641>,  <38.451561, 39.498306, 40.738586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258030, 39.084713, 40.257641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.936951, 39.323006, 40.246464>,  <37.744305, 39.465981, 40.239758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.936951, 39.323006, 40.246464>,  <38.258030, 39.084713, 40.257641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936951, 39.323006, 40.246464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044725, -0.106848, -0.993269,
		-0.594705, -0.796046, 0.112411,
		-0.802699, 0.595730, -0.027940,
		37.696140, 39.501724, 40.238083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720909, 38.740158, 39.844910>,  <38.258030, 39.084713, 40.257641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720909, 38.740158, 39.844910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.662743, 39.135769, 39.855282>,  <37.627842, 39.373135, 39.861507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.662743, 39.135769, 39.855282>,  <37.720909, 38.740158, 39.844910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662743, 39.135769, 39.855282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127683, 0.007233, -0.991789,
		-0.981097, -0.147531, 0.125231,
		-0.145414, 0.989031, 0.025934,
		37.619118, 39.432480, 39.863064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145618, 38.827133, 39.394249>,  <37.720909, 38.740158, 39.844910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145618, 38.827133, 39.394249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.289429, 39.197334, 39.441879>,  <37.375713, 39.419456, 39.470455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.289429, 39.197334, 39.441879>,  <37.145618, 38.827133, 39.394249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289429, 39.197334, 39.441879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037056, 0.141664, -0.989221,
		-0.932399, 0.351239, 0.085227,
		0.359527, 0.925507, 0.119071,
		37.397285, 39.474987, 39.477600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642147, 39.291679, 39.021507>,  <37.145618, 38.827133, 39.394249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642147, 39.291679, 39.021507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.995991, 39.477989, 39.030567>,  <37.208298, 39.589775, 39.036003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.995991, 39.477989, 39.030567>,  <36.642147, 39.291679, 39.021507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995991, 39.477989, 39.030567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079599, 0.198685, -0.976826,
		-0.459482, 0.862309, 0.212835,
		0.884613, 0.465775, 0.022654,
		37.261375, 39.617722, 39.037365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467888, 39.907074, 38.599304>,  <36.642147, 39.291679, 39.021507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467888, 39.907074, 38.599304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.862179, 39.844910, 38.625179>,  <37.098755, 39.807610, 38.640705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.862179, 39.844910, 38.625179>,  <36.467888, 39.907074, 38.599304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862179, 39.844910, 38.625179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082287, 0.109629, -0.990561,
		0.146851, 0.981748, 0.120853,
		0.985730, -0.155410, 0.064686,
		37.157898, 39.798286, 38.644585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785221, 40.488163, 38.321293>,  <36.467888, 39.907074, 38.599304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785221, 40.488163, 38.321293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.071842, 40.209641, 38.304760>,  <37.243813, 40.042526, 38.294842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.071842, 40.209641, 38.304760>,  <36.785221, 40.488163, 38.321293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071842, 40.209641, 38.304760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133259, 0.194814, -0.971745,
		0.684687, 0.690797, 0.232384,
		0.716551, -0.696309, -0.041332,
		37.286808, 40.000748, 38.292362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195107, 40.622211, 37.674282>,  <36.785221, 40.488163, 38.321293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195107, 40.622211, 37.674282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.325916, 40.255512, 37.766041>,  <37.404400, 40.035492, 37.821098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.325916, 40.255512, 37.766041>,  <37.195107, 40.622211, 37.674282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325916, 40.255512, 37.766041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027019, -0.251719, -0.967423,
		0.944630, 0.310170, -0.107087,
		0.327022, -0.916751, 0.229401,
		37.424023, 39.980488, 37.834862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.881384, 29.801914, 34.056374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.255157, 29.660431, 34.072990>,  <29.479422, 29.575541, 34.082962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.255157, 29.660431, 34.072990>,  <28.881384, 29.801914, 34.056374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.255157, 29.660431, 34.072990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302497, 0.849830, 0.431606,
		-0.187965, -0.390741, 0.901105,
		0.934433, -0.353709, 0.041541,
		29.535488, 29.554317, 34.085453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.158335, 29.639677, 34.830383>,  <28.881384, 29.801914, 34.056374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.158335, 29.639677, 34.830383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.445963, 29.744724, 34.573021>,  <29.618540, 29.807753, 34.418602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.445963, 29.744724, 34.573021>,  <29.158335, 29.639677, 34.830383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445963, 29.744724, 34.573021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059650, 0.899105, 0.433649,
		0.692374, -0.350203, 0.630854,
		0.719069, 0.262617, -0.643407,
		29.661684, 29.823509, 34.379997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611647, 30.012476, 35.262150>,  <29.158335, 29.639677, 34.830383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611647, 30.012476, 35.262150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.707050, 30.134405, 34.893326>,  <29.764292, 30.207561, 34.672031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.707050, 30.134405, 34.893326>,  <29.611647, 30.012476, 35.262150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707050, 30.134405, 34.893326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100420, 0.936632, 0.335613,
		0.965935, -0.172640, 0.192785,
		0.238508, 0.304821, -0.922062,
		29.778603, 30.225851, 34.616707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147718, 30.439327, 35.292797>,  <29.611647, 30.012476, 35.262150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147718, 30.439327, 35.292797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.982092, 30.562927, 34.950321>,  <29.882715, 30.637087, 34.744835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.982092, 30.562927, 34.950321>,  <30.147718, 30.439327, 35.292797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982092, 30.562927, 34.950321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066132, 0.948344, 0.310275,
		0.907841, 0.071853, -0.413112,
		-0.414067, 0.309000, -0.856194,
		29.857872, 30.655628, 34.693462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540419, 31.062071, 35.066154>,  <30.147718, 30.439327, 35.292797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540419, 31.062071, 35.066154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.187695, 31.094940, 34.880398>,  <29.976061, 31.114662, 34.768944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.187695, 31.094940, 34.880398>,  <30.540419, 31.062071, 35.066154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187695, 31.094940, 34.880398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001464, 0.984220, 0.176941,
		0.471606, 0.156708, -0.867774,
		-0.881809, 0.082176, -0.464393,
		29.923153, 31.119593, 34.741081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582230, 31.676014, 34.888275>,  <30.540419, 31.062071, 35.066154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582230, 31.676014, 34.888275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.192818, 31.613733, 34.821342>,  <29.959171, 31.576365, 34.781181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.192818, 31.613733, 34.821342>,  <30.582230, 31.676014, 34.888275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192818, 31.613733, 34.821342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168932, 0.983286, 0.067904,
		0.153964, 0.094375, -0.983559,
		-0.973528, -0.155700, -0.167334,
		29.900759, 31.567024, 34.771141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.482119, 32.248444, 34.511009>,  <30.582230, 31.676014, 34.888275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.482119, 32.248444, 34.511009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.117182, 32.127659, 34.621609>,  <29.898220, 32.055187, 34.687969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.117182, 32.127659, 34.621609>,  <30.482119, 32.248444, 34.511009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117182, 32.127659, 34.621609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328305, 0.943063, -0.053373,
		-0.244643, -0.139472, -0.959530,
		-0.912341, -0.301961, 0.276503,
		29.843479, 32.037071, 34.704559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045279, 32.569603, 34.016239>,  <30.482119, 32.248444, 34.511009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045279, 32.569603, 34.016239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.820129, 32.493076, 34.337879>,  <29.685040, 32.447159, 34.530861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.820129, 32.493076, 34.337879>,  <30.045279, 32.569603, 34.016239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820129, 32.493076, 34.337879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363475, 0.931022, -0.032914,
		-0.742336, -0.310796, -0.593585,
		-0.562871, -0.191320, 0.804098,
		29.651268, 32.435680, 34.579109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495409, 32.995613, 33.876415>,  <30.045279, 32.569603, 34.016239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495409, 32.995613, 33.876415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.431528, 32.881290, 34.254372>,  <29.393200, 32.812698, 34.481144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.431528, 32.881290, 34.254372>,  <29.495409, 32.995613, 33.876415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431528, 32.881290, 34.254372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669672, 0.734612, 0.109016,
		-0.725283, -0.615354, -0.308715,
		-0.159702, -0.285805, 0.944887,
		29.383617, 32.795547, 34.537838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775274, 33.030891, 33.925987>,  <29.495409, 32.995613, 33.876415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775274, 33.030891, 33.925987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.940279, 33.057365, 34.289406>,  <29.039282, 33.073250, 34.507458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.940279, 33.057365, 34.289406>,  <28.775274, 33.030891, 33.925987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.940279, 33.057365, 34.289406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488534, 0.857876, 0.159322,
		-0.768874, -0.509577, 0.386217,
		0.412514, 0.066182, 0.908544,
		29.064034, 33.077221, 34.561970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268980, 33.275360, 34.318497>,  <28.775274, 33.030891, 33.925987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268980, 33.275360, 34.318497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.617554, 33.350773, 34.499634>,  <28.826698, 33.396019, 34.608315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.617554, 33.350773, 34.499634>,  <28.268980, 33.275360, 34.318497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.617554, 33.350773, 34.499634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274952, 0.952262, 0.132661,
		-0.406211, -0.240114, 0.881668,
		0.871432, 0.188528, 0.452839,
		28.878983, 33.407330, 34.635487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105280, 33.619839, 34.993286>,  <28.268980, 33.275360, 34.318497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105280, 33.619839, 34.993286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.485193, 33.715256, 34.912285>,  <28.713140, 33.772507, 34.863682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.485193, 33.715256, 34.912285>,  <28.105280, 33.619839, 34.993286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.485193, 33.715256, 34.912285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246789, 0.968935, -0.016119,
		0.192371, 0.065286, 0.979148,
		0.949783, 0.238543, -0.202507,
		28.770128, 33.786819, 34.851532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168999, 34.177601, 35.426922>,  <28.105280, 33.619839, 34.993286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168999, 34.177601, 35.426922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.457300, 34.181309, 35.149670>,  <28.630281, 34.183533, 34.983318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.457300, 34.181309, 35.149670>,  <28.168999, 34.177601, 35.426922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.457300, 34.181309, 35.149670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142577, 0.980515, -0.135140,
		0.678372, 0.196227, 0.708030,
		0.720752, 0.009274, -0.693131,
		28.673525, 34.184090, 34.941730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.509958, 34.652401, 35.619244>,  <28.168999, 34.177601, 35.426922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.509958, 34.652401, 35.619244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.584402, 34.593712, 35.230640>,  <28.629068, 34.558498, 34.997478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.584402, 34.593712, 35.230640>,  <28.509958, 34.652401, 35.619244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584402, 34.593712, 35.230640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323486, 0.924510, -0.201591,
		0.927750, 0.351788, 0.124600,
		0.186111, -0.146720, -0.971512,
		28.640236, 34.549694, 34.939186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.685366, 35.339962, 35.429314>,  <28.509958, 34.652401, 35.619244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.685366, 35.339962, 35.429314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.585245, 35.131809, 35.102741>,  <28.525173, 35.006920, 34.906799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.585245, 35.131809, 35.102741>,  <28.685366, 35.339962, 35.429314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585245, 35.131809, 35.102741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584180, 0.753642, -0.301260,
		0.772064, 0.401537, -0.492631,
		-0.250301, -0.520377, -0.816430,
		28.510155, 34.975697, 34.857811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.836094, 35.830845, 34.941376>,  <28.685366, 35.339962, 35.429314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.836094, 35.830845, 34.941376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.581478, 35.555580, 34.802094>,  <28.428709, 35.390419, 34.718525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.581478, 35.555580, 34.802094>,  <28.836094, 35.830845, 34.941376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.581478, 35.555580, 34.802094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631499, 0.724242, -0.276916,
		0.442748, 0.043622, -0.895585,
		-0.636540, -0.688165, -0.348204,
		28.390516, 35.349129, 34.697632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.600784, 36.161079, 34.386951>,  <28.836094, 35.830845, 34.941376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.600784, 36.161079, 34.386951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.323463, 35.885357, 34.471043>,  <28.157072, 35.719925, 34.521496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.323463, 35.885357, 34.471043>,  <28.600784, 36.161079, 34.386951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.323463, 35.885357, 34.471043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714637, 0.695214, -0.077271,
		-0.092889, -0.203808, -0.974594,
		-0.693300, -0.689304, 0.210226,
		28.115473, 35.678566, 34.534111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999262, 36.328598, 33.981865>,  <28.600784, 36.161079, 34.386951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999262, 36.328598, 33.981865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.894625, 36.102924, 34.295109>,  <27.831842, 35.967522, 34.483055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.894625, 36.102924, 34.295109>,  <27.999262, 36.328598, 33.981865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894625, 36.102924, 34.295109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680107, 0.683461, 0.265207,
		-0.684852, -0.463224, -0.562495,
		-0.261594, -0.564184, 0.783112,
		27.816147, 35.933670, 34.530041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925043, 36.997433, 33.540951>,  <27.999262, 36.328598, 33.981865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925043, 36.997433, 33.540951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.213156, 37.185699, 33.337120>,  <28.386023, 37.298660, 33.214821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.213156, 37.185699, 33.337120>,  <27.925043, 36.997433, 33.540951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213156, 37.185699, 33.337120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200453, -0.844479, -0.496663,
		-0.664089, 0.255591, -0.702609,
		0.720281, 0.470668, -0.509575,
		28.429239, 37.326900, 33.184246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.854763, 36.818089, 32.786694>,  <27.925043, 36.997433, 33.540951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.854763, 36.818089, 32.786694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.231672, 36.904884, 32.888706>,  <28.457817, 36.956963, 32.949913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.231672, 36.904884, 32.888706>,  <27.854763, 36.818089, 32.786694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231672, 36.904884, 32.888706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291523, -0.906301, -0.305996,
		0.164734, 0.362678, -0.917239,
		0.942272, 0.216988, 0.255027,
		28.514355, 36.969982, 32.965214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.238354, 36.794048, 32.163895>,  <27.854763, 36.818089, 32.786694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.238354, 36.794048, 32.163895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.493431, 36.709808, 32.460270>,  <28.646477, 36.659264, 32.638096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.493431, 36.709808, 32.460270>,  <28.238354, 36.794048, 32.163895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.493431, 36.709808, 32.460270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300292, -0.817826, -0.490903,
		0.709346, 0.535544, -0.458280,
		0.637693, -0.210602, 0.740941,
		28.684738, 36.646629, 32.682552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808994, 36.665215, 31.733749>,  <28.238354, 36.794048, 32.163895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808994, 36.665215, 31.733749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.841795, 36.511211, 32.101456>,  <28.861475, 36.418808, 32.322079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.841795, 36.511211, 32.101456>,  <28.808994, 36.665215, 31.733749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.841795, 36.511211, 32.101456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426701, -0.819993, -0.381493,
		0.900667, 0.423534, 0.097043,
		0.082001, -0.385007, 0.919264,
		28.866396, 36.395710, 32.377235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541008, 36.349796, 31.837944>,  <28.808994, 36.665215, 31.733749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541008, 36.349796, 31.837944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.354874, 36.183342, 32.150429>,  <29.243193, 36.083469, 32.337921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.354874, 36.183342, 32.150429>,  <29.541008, 36.349796, 31.837944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.354874, 36.183342, 32.150429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542778, -0.831329, -0.119521,
		0.699182, 0.368408, 0.612715,
		-0.465335, -0.416135, 0.781213,
		29.215273, 36.058502, 32.384792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027132, 35.857765, 32.114094>,  <29.541008, 36.349796, 31.837944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027132, 35.857765, 32.114094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.684456, 35.743916, 32.286171>,  <29.478849, 35.675606, 32.389420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.684456, 35.743916, 32.286171>,  <30.027132, 35.857765, 32.114094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.684456, 35.743916, 32.286171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320363, -0.947228, 0.011272,
		0.404286, 0.147476, 0.902665,
		-0.856692, -0.284624, 0.430196,
		29.427448, 35.658527, 32.415230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258507, 35.397945, 32.661911>,  <30.027132, 35.857765, 32.114094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258507, 35.397945, 32.661911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.894228, 35.327404, 32.512497>,  <29.675661, 35.285080, 32.422848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.894228, 35.327404, 32.512497>,  <30.258507, 35.397945, 32.661911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.894228, 35.327404, 32.512497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196176, -0.980448, -0.015398,
		-0.363520, -0.087303, 0.927487,
		-0.910697, -0.176353, -0.373539,
		29.621019, 35.274498, 32.400436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079784, 34.689281, 32.974705>,  <30.258507, 35.397945, 32.661911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079784, 34.689281, 32.974705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.808407, 34.737202, 32.684780>,  <29.645580, 34.765953, 32.510826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.808407, 34.737202, 32.684780>,  <30.079784, 34.689281, 32.974705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808407, 34.737202, 32.684780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178971, -0.983842, 0.004904,
		-0.712517, 0.133048, 0.688925,
		-0.678446, 0.119803, -0.724816,
		29.604874, 34.773144, 32.467335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.448620, 34.205025, 33.050835>,  <30.079784, 34.689281, 32.974705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.448620, 34.205025, 33.050835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.468103, 34.275497, 32.657574>,  <29.479794, 34.317780, 32.421616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.468103, 34.275497, 32.657574>,  <29.448620, 34.205025, 33.050835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468103, 34.275497, 32.657574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033088, -0.983496, -0.177881,
		-0.998265, 0.041195, -0.042074,
		0.048708, 0.176180, -0.983152,
		29.482716, 34.328350, 32.362629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.008137, 33.616829, 32.736336>,  <29.448620, 34.205025, 33.050835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.008137, 33.616829, 32.736336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.179792, 33.767521, 32.407967>,  <29.282785, 33.857937, 32.210945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.179792, 33.767521, 32.407967>,  <29.008137, 33.616829, 32.736336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.179792, 33.767521, 32.407967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057819, -0.895543, -0.441202,
		-0.901385, 0.236803, -0.362532,
		0.429141, 0.376732, -0.820921,
		29.308535, 33.880539, 32.161690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.599573, 33.463299, 32.119835>,  <29.008137, 33.616829, 32.736336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.599573, 33.463299, 32.119835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.975525, 33.521427, 31.996218>,  <29.201096, 33.556305, 31.922049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.975525, 33.521427, 31.996218>,  <28.599573, 33.463299, 32.119835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975525, 33.521427, 31.996218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041899, -0.947174, -0.317971,
		-0.338923, 0.285907, -0.896320,
		0.939881, 0.145323, -0.309040,
		29.257488, 33.565025, 31.903505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.642599, 33.271652, 31.413658>,  <28.599573, 33.463299, 32.119835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.642599, 33.271652, 31.413658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.018541, 33.255692, 31.549353>,  <29.244106, 33.246113, 31.630770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.018541, 33.255692, 31.549353>,  <28.642599, 33.271652, 31.413658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.018541, 33.255692, 31.549353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042925, -0.971482, -0.233195,
		0.338869, 0.233731, -0.911338,
		0.939854, -0.039903, 0.339238,
		29.300497, 33.243721, 31.651125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.049183, 33.139263, 30.839325>,  <28.642599, 33.271652, 31.413658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.049183, 33.139263, 30.839325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.181595, 33.001572, 31.190763>,  <29.261042, 32.918957, 31.401627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.181595, 33.001572, 31.190763>,  <29.049183, 33.139263, 30.839325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.181595, 33.001572, 31.190763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228858, -0.932577, -0.279147,
		0.915447, -0.108667, -0.387491,
		0.331031, -0.344225, 0.878594,
		29.280905, 32.898304, 31.454342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.983717, 32.437046, 30.849594>,  <29.049183, 33.139263, 30.839325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.983717, 32.437046, 30.849594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.204678, 32.428642, 31.182919>,  <29.337254, 32.423599, 31.382914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.204678, 32.428642, 31.182919>,  <28.983717, 32.437046, 30.849594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204678, 32.428642, 31.182919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024821, -0.999654, -0.008750,
		0.833208, -0.015850, -0.552733,
		0.552403, -0.021010, 0.833313,
		29.370398, 32.422340, 31.432913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526802, 31.898010, 30.651146>,  <28.983717, 32.437046, 30.849594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.526802, 31.898010, 30.651146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.528605, 31.931414, 31.049746>,  <29.529686, 31.951456, 31.288904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.528605, 31.931414, 31.049746>,  <29.526802, 31.898010, 30.651146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528605, 31.931414, 31.049746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039923, -0.995727, 0.083265,
		0.999193, 0.039408, -0.007819,
		0.004505, 0.083510, 0.996497,
		29.529955, 31.956467, 31.348694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170441, 31.527586, 30.833927>,  <29.526802, 31.898010, 30.651146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170441, 31.527586, 30.833927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.910124, 31.537476, 31.137468>,  <29.753933, 31.543409, 31.319593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.910124, 31.537476, 31.137468>,  <30.170441, 31.527586, 30.833927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910124, 31.537476, 31.137468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010996, -0.999672, 0.023141,
		0.759175, 0.006715, 0.650852,
		-0.650793, 0.024725, 0.758852,
		29.714886, 31.544893, 31.365124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471369, 31.019857, 31.258999>,  <30.170441, 31.527586, 30.833927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471369, 31.019857, 31.258999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.092920, 31.069145, 31.378778>,  <29.865850, 31.098719, 31.450645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.092920, 31.069145, 31.378778>,  <30.471369, 31.019857, 31.258999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.092920, 31.069145, 31.378778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085652, -0.987062, 0.135547,
		0.312275, 0.102596, 0.944436,
		-0.946123, 0.123221, 0.299447,
		29.809084, 31.106112, 31.468613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618141, 30.405205, 31.719162>,  <30.471369, 31.019857, 31.258999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618141, 30.405205, 31.719162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.227106, 30.487297, 31.700375>,  <29.992485, 30.536552, 31.689102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.227106, 30.487297, 31.700375>,  <30.618141, 30.405205, 31.719162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227106, 30.487297, 31.700375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210393, -0.960546, 0.181895,
		-0.007785, 0.187700, 0.982196,
		-0.977586, 0.205231, -0.046969,
		29.933830, 30.548866, 31.686283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.238251, 30.073654, 32.350967>,  <30.618141, 30.405205, 31.719162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.238251, 30.073654, 32.350967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.944683, 30.146151, 32.089123>,  <29.768543, 30.189648, 31.932016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.944683, 30.146151, 32.089123>,  <30.238251, 30.073654, 32.350967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.944683, 30.146151, 32.089123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418684, -0.879593, 0.225877,
		-0.534852, 0.439850, 0.721434,
		-0.733920, 0.181242, -0.654610,
		29.724506, 30.200523, 31.892740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596109, 29.973499, 32.685280>,  <30.238251, 30.073654, 32.350967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596109, 29.973499, 32.685280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.550579, 29.891371, 32.296459>,  <29.523260, 29.842094, 32.063168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.550579, 29.891371, 32.296459>,  <29.596109, 29.973499, 32.685280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.550579, 29.891371, 32.296459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343657, -0.909877, 0.232429,
		-0.932171, 0.360510, 0.033007,
		-0.113826, -0.205321, -0.972053,
		29.516432, 29.829775, 32.004845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893297, 29.671644, 32.696613>,  <29.596109, 29.973499, 32.685280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893297, 29.671644, 32.696613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.051771, 29.571625, 32.343227>,  <29.146854, 29.511614, 32.131195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.051771, 29.571625, 32.343227>,  <28.893297, 29.671644, 32.696613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.051771, 29.571625, 32.343227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392901, -0.915826, 0.083013,
		-0.829860, 0.314226, -0.461080,
		0.396184, -0.250048, -0.883467,
		29.170626, 29.496611, 32.078186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.312637, 29.362921, 32.347103>,  <28.893297, 29.671644, 32.696613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.312637, 29.362921, 32.347103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.644140, 29.236015, 32.162708>,  <28.843042, 29.159872, 32.052071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.644140, 29.236015, 32.162708>,  <28.312637, 29.362921, 32.347103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644140, 29.236015, 32.162708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422779, -0.894666, -0.144331,
		-0.366635, 0.314509, -0.875593,
		0.828756, -0.317265, -0.460984,
		28.892767, 29.140835, 32.024414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.063112, 28.970781, 31.888893>,  <28.312637, 29.362921, 32.347103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.063112, 28.970781, 31.888893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.448795, 28.868284, 31.916143>,  <28.680206, 28.806786, 31.932493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.448795, 28.868284, 31.916143>,  <28.063112, 28.970781, 31.888893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.448795, 28.868284, 31.916143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246892, -0.961373, -0.121680,
		0.096675, 0.100505, -0.990229,
		0.964209, -0.256243, 0.068127,
		28.738058, 28.791410, 31.936581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184393, 28.606688, 31.264345>,  <28.063112, 28.970781, 31.888893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.184393, 28.606688, 31.264345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.412010, 28.506508, 31.577641>,  <28.548580, 28.446400, 31.765617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.412010, 28.506508, 31.577641>,  <28.184393, 28.606688, 31.264345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412010, 28.506508, 31.577641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311267, -0.947219, -0.076742,
		0.761120, -0.200127, -0.616964,
		0.569042, -0.250451, 0.783241,
		28.582724, 28.431374, 31.812613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.218834, 38.494038, 43.810963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.019032, 38.190804, 43.978676>,  <39.899151, 38.008862, 44.079304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.019032, 38.190804, 43.978676>,  <40.218834, 38.494038, 43.810963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019032, 38.190804, 43.978676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072361, 0.445786, 0.892210,
		-0.863285, 0.476001, -0.167816,
		-0.499503, -0.758088, 0.419285,
		39.869183, 37.963379, 44.104462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662804, 38.834080, 44.083481>,  <40.218834, 38.494038, 43.810963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662804, 38.834080, 44.083481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.716145, 38.495949, 44.290413>,  <39.748150, 38.293068, 44.414574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.716145, 38.495949, 44.290413>,  <39.662804, 38.834080, 44.083481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716145, 38.495949, 44.290413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095470, 0.508609, 0.855688,
		-0.986459, -0.163499, -0.012879,
		0.133354, -0.845331, 0.517332,
		39.756149, 38.242348, 44.445614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224907, 38.865768, 44.666546>,  <39.662804, 38.834080, 44.083481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224907, 38.865768, 44.666546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.442715, 38.549576, 44.778725>,  <39.573399, 38.359859, 44.846031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.442715, 38.549576, 44.778725>,  <39.224907, 38.865768, 44.666546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442715, 38.549576, 44.778725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038929, 0.310181, 0.949880,
		-0.837847, -0.528142, 0.138126,
		0.544516, -0.790477, 0.280444,
		39.606068, 38.312431, 44.862858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845989, 38.587601, 45.240417>,  <39.224907, 38.865768, 44.666546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845989, 38.587601, 45.240417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.208206, 38.426655, 45.294228>,  <39.425537, 38.330086, 45.326511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.208206, 38.426655, 45.294228>,  <38.845989, 38.587601, 45.240417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208206, 38.426655, 45.294228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063556, 0.184844, 0.980711,
		-0.419468, -0.896625, 0.141811,
		0.905542, -0.402364, 0.134522,
		39.479870, 38.305946, 45.334583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895477, 38.057377, 45.802059>,  <38.845989, 38.587601, 45.240417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895477, 38.057377, 45.802059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.277279, 38.158287, 45.738457>,  <39.506359, 38.218834, 45.700294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.277279, 38.158287, 45.738457>,  <38.895477, 38.057377, 45.802059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277279, 38.158287, 45.738457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171085, -0.026532, 0.984899,
		0.244251, -0.967291, -0.068487,
		0.954501, 0.252279, -0.159009,
		39.563629, 38.233971, 45.690754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456566, 37.602634, 46.214237>,  <38.895477, 38.057377, 45.802059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456566, 37.602634, 46.214237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.628387, 37.952503, 46.124409>,  <39.731480, 38.162422, 46.070511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.628387, 37.952503, 46.124409>,  <39.456566, 37.602634, 46.214237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628387, 37.952503, 46.124409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303865, 0.094181, 0.948048,
		0.850380, -0.475482, -0.225325,
		0.429558, 0.874670, -0.224571,
		39.757256, 38.214905, 46.057037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073006, 37.618549, 46.508755>,  <39.456566, 37.602634, 46.214237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073006, 37.618549, 46.508755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.038113, 38.013607, 46.456665>,  <40.017178, 38.250641, 46.425411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.038113, 38.013607, 46.456665>,  <40.073006, 37.618549, 46.508755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038113, 38.013607, 46.456665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176612, 0.143983, 0.973693,
		0.980408, 0.061934, -0.186988,
		-0.087228, 0.987640, -0.130223,
		40.011944, 38.309898, 46.417599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556969, 37.934490, 46.873589>,  <40.073006, 37.618549, 46.508755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556969, 37.934490, 46.873589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.303017, 38.241245, 46.836037>,  <40.150646, 38.425297, 46.813507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.303017, 38.241245, 46.836037>,  <40.556969, 37.934490, 46.873589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303017, 38.241245, 46.836037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096628, 0.199365, 0.975150,
		0.766541, 0.610036, -0.200676,
		-0.634884, 0.766883, -0.093875,
		40.112553, 38.471310, 46.807873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785294, 38.303307, 47.315018>,  <40.556969, 37.934490, 46.873589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785294, 38.303307, 47.315018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.432800, 38.478889, 47.244884>,  <40.221306, 38.584240, 47.202805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.432800, 38.478889, 47.244884>,  <40.785294, 38.303307, 47.315018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432800, 38.478889, 47.244884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103112, 0.183479, 0.977601,
		0.461298, 0.879573, -0.116425,
		-0.881233, 0.438961, -0.175333,
		40.168430, 38.610577, 47.192284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709904, 38.794277, 47.900608>,  <40.785294, 38.303307, 47.315018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709904, 38.794277, 47.900608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.342281, 38.717743, 47.762783>,  <40.121708, 38.671822, 47.680088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.342281, 38.717743, 47.762783>,  <40.709904, 38.794277, 47.900608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342281, 38.717743, 47.762783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358093, 0.040233, 0.932819,
		-0.164617, 0.980700, -0.105492,
		-0.919060, -0.191334, -0.344559,
		40.066563, 38.660343, 47.659416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213226, 39.370102, 48.189953>,  <40.709904, 38.794277, 47.900608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213226, 39.370102, 48.189953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.977013, 39.066711, 48.079697>,  <39.835285, 38.884678, 48.013542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.977013, 39.066711, 48.079697>,  <40.213226, 39.370102, 48.189953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977013, 39.066711, 48.079697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459221, 0.034965, 0.887634,
		-0.663611, 0.650762, -0.368957,
		-0.590539, -0.758476, -0.275641,
		39.799850, 38.839169, 47.997005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486702, 39.561699, 48.270157>,  <40.213226, 39.370102, 48.189953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486702, 39.561699, 48.270157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.463215, 39.164337, 48.309540>,  <39.449123, 38.925919, 48.333168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.463215, 39.164337, 48.309540>,  <39.486702, 39.561699, 48.270157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463215, 39.164337, 48.309540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530838, 0.114596, 0.839690,
		-0.845437, -0.002964, -0.534067,
		-0.058713, -0.993408, 0.098458,
		39.445602, 38.866314, 48.339077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779137, 39.310753, 48.432659>,  <39.486702, 39.561699, 48.270157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779137, 39.310753, 48.432659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.069099, 39.081211, 48.585079>,  <39.243076, 38.943485, 48.676533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.069099, 39.081211, 48.585079>,  <38.779137, 39.310753, 48.432659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069099, 39.081211, 48.585079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401143, 0.098029, 0.910755,
		-0.559999, -0.813066, -0.159139,
		0.724903, -0.573859, 0.381052,
		39.286572, 38.909054, 48.699394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444405, 39.655857, 49.018211>,  <38.779137, 39.310753, 48.432659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444405, 39.655857, 49.018211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.065880, 39.784798, 49.027802>,  <37.838764, 39.862164, 49.033558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.065880, 39.784798, 49.027802>,  <38.444405, 39.655857, 49.018211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065880, 39.784798, 49.027802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015621, 0.028484, -0.999472,
		-0.322865, -0.946191, -0.021920,
		-0.946316, 0.322352, 0.023977,
		37.781986, 39.881504, 49.034996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981602, 39.245377, 48.536686>,  <38.444405, 39.655857, 49.018211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981602, 39.245377, 48.536686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.791183, 39.595100, 48.574528>,  <37.676933, 39.804935, 48.597233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.791183, 39.595100, 48.574528>,  <37.981602, 39.245377, 48.536686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791183, 39.595100, 48.574528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266398, -0.040844, -0.962997,
		-0.838098, -0.483639, 0.252359,
		-0.476050, 0.874314, 0.094609,
		37.648369, 39.857395, 48.602909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309673, 39.173382, 48.290291>,  <37.981602, 39.245377, 48.536686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309673, 39.173382, 48.290291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.358585, 39.570183, 48.277775>,  <37.387932, 39.808262, 48.270264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.358585, 39.570183, 48.277775>,  <37.309673, 39.173382, 48.290291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358585, 39.570183, 48.277775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228327, -0.002565, -0.973581,
		-0.965875, 0.126195, 0.226187,
		0.122281, 0.992002, -0.031291,
		37.395271, 39.867783, 48.268387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783669, 39.371704, 47.901344>,  <37.309673, 39.173382, 48.290291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783669, 39.371704, 47.901344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.034084, 39.680065, 47.854374>,  <37.184334, 39.865082, 47.826191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.034084, 39.680065, 47.854374>,  <36.783669, 39.371704, 47.901344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034084, 39.680065, 47.854374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160925, -0.019617, -0.986772,
		-0.763005, 0.636655, 0.111776,
		0.626040, 0.770899, -0.117421,
		37.221897, 39.911335, 47.819149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444515, 39.895294, 47.560905>,  <36.783669, 39.371704, 47.901344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444515, 39.895294, 47.560905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.830402, 39.972378, 47.489143>,  <37.061935, 40.018627, 47.446087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.830402, 39.972378, 47.489143>,  <36.444515, 39.895294, 47.560905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830402, 39.972378, 47.489143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160107, -0.111578, -0.980773,
		-0.209022, 0.974891, -0.076787,
		0.964715, 0.192709, -0.179409,
		37.119816, 40.030190, 47.435322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364620, 40.366932, 47.118008>,  <36.444515, 39.895294, 47.560905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364620, 40.366932, 47.118008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.746502, 40.262878, 47.060226>,  <36.975632, 40.200447, 47.025558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.746502, 40.262878, 47.060226>,  <36.364620, 40.366932, 47.118008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746502, 40.262878, 47.060226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108294, 0.148412, -0.982978,
		0.277146, 0.954098, 0.113519,
		0.954706, -0.260135, -0.144455,
		37.032913, 40.184837, 47.016891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797810, 40.890274, 46.858959>,  <36.364620, 40.366932, 47.118008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797810, 40.890274, 46.858959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.950104, 40.540707, 46.738087>,  <37.041481, 40.330967, 46.665562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.950104, 40.540707, 46.738087>,  <36.797810, 40.890274, 46.858959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950104, 40.540707, 46.738087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168830, 0.255601, -0.951927,
		0.909140, 0.413452, -0.050227,
		0.380738, -0.873914, -0.302180,
		37.064323, 40.278534, 46.647434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873096, 41.063797, 46.184834>,  <36.797810, 40.890274, 46.858959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873096, 41.063797, 46.184834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.997734, 40.684017, 46.200104>,  <37.072517, 40.456150, 46.209267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.997734, 40.684017, 46.200104>,  <36.873096, 41.063797, 46.184834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997734, 40.684017, 46.200104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071682, -0.016578, -0.997290,
		0.947507, 0.313488, 0.062893,
		0.311595, -0.949448, 0.038179,
		37.091213, 40.399181, 46.211559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435806, 41.046585, 45.715946>,  <36.873096, 41.063797, 46.184834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435806, 41.046585, 45.715946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.316658, 40.668552, 45.769764>,  <37.245171, 40.441734, 45.802055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.316658, 40.668552, 45.769764>,  <37.435806, 41.046585, 45.715946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316658, 40.668552, 45.769764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060668, -0.159399, -0.985348,
		0.952677, -0.285344, 0.104816,
		-0.297870, -0.945077, 0.134545,
		37.227299, 40.385029, 45.810127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831753, 40.709850, 45.300770>,  <37.435806, 41.046585, 45.715946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831753, 40.709850, 45.300770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.543171, 40.440628, 45.365879>,  <37.370022, 40.279095, 45.404945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.543171, 40.440628, 45.365879>,  <37.831753, 40.709850, 45.300770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543171, 40.440628, 45.365879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031578, -0.266794, -0.963236,
		0.691739, -0.689793, 0.213735,
		-0.721457, -0.673057, 0.162770,
		37.326733, 40.238712, 45.414711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078575, 40.019756, 45.131519>,  <37.831753, 40.709850, 45.300770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078575, 40.019756, 45.131519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.681728, 39.985210, 45.095188>,  <37.443623, 39.964481, 45.073391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.681728, 39.985210, 45.095188>,  <38.078575, 40.019756, 45.131519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681728, 39.985210, 45.095188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112227, -0.289513, -0.950572,
		0.055804, -0.953270, 0.296922,
		-0.992114, -0.086368, -0.090827,
		37.384094, 39.959301, 45.067940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999958, 39.513466, 44.671261>,  <38.078575, 40.019756, 45.131519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999958, 39.513466, 44.671261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.642441, 39.691914, 44.652889>,  <37.427929, 39.798981, 44.641865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.642441, 39.691914, 44.652889>,  <37.999958, 39.513466, 44.671261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642441, 39.691914, 44.652889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113717, -0.324511, -0.939021,
		-0.433821, -0.834069, 0.340778,
		-0.893794, 0.446119, -0.045932,
		37.374302, 39.825748, 44.639111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499142, 39.014282, 44.364647>,  <37.999958, 39.513466, 44.671261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499142, 39.014282, 44.364647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.351189, 39.380486, 44.301365>,  <37.262417, 39.600208, 44.263397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.351189, 39.380486, 44.301365>,  <37.499142, 39.014282, 44.364647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351189, 39.380486, 44.301365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178830, -0.237254, -0.954846,
		-0.911705, -0.324891, 0.251477,
		-0.369884, 0.915509, -0.158205,
		37.240223, 39.655140, 44.253902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764397, 38.984509, 43.999752>,  <37.499142, 39.014282, 44.364647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764397, 38.984509, 43.999752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.900509, 39.354912, 43.934368>,  <36.982178, 39.577152, 43.895138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.900509, 39.354912, 43.934368>,  <36.764397, 38.984509, 43.999752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900509, 39.354912, 43.934368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279855, -0.066220, -0.957756,
		-0.897713, 0.371653, 0.236614,
		0.340284, 0.926007, -0.163456,
		37.002594, 39.632713, 43.885330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246967, 39.297237, 43.599342>,  <36.764397, 38.984509, 43.999752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246967, 39.297237, 43.599342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.598377, 39.478382, 43.538536>,  <36.809223, 39.587067, 43.502052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.598377, 39.478382, 43.538536>,  <36.246967, 39.297237, 43.599342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598377, 39.478382, 43.538536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165610, -0.009752, -0.986143,
		-0.448065, 0.891529, 0.066431,
		0.878528, 0.452858, -0.152016,
		36.861935, 39.614239, 43.492931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689278, 39.901367, 43.636971>,  <36.246967, 39.297237, 43.599342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689278, 39.901367, 43.636971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.331825, 40.079578, 43.615292>,  <35.117355, 40.186504, 43.602283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.331825, 40.079578, 43.615292>,  <35.689278, 39.901367, 43.636971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331825, 40.079578, 43.615292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037707, 0.045800, 0.998239,
		0.447222, 0.894098, -0.024128,
		-0.893628, 0.445524, -0.054196,
		35.063736, 40.213234, 43.599033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710110, 40.379711, 44.244278>,  <35.689278, 39.901367, 43.636971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710110, 40.379711, 44.244278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.329155, 40.370869, 44.122643>,  <35.100582, 40.365562, 44.049664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.329155, 40.370869, 44.122643>,  <35.710110, 40.379711, 44.244278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329155, 40.370869, 44.122643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304739, 0.037987, 0.951678,
		-0.009490, 0.999034, -0.042916,
		-0.952389, -0.022109, -0.304084,
		35.043438, 40.364235, 44.031418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323471, 40.913670, 44.608692>,  <35.710110, 40.379711, 44.244278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323471, 40.913670, 44.608692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.064449, 40.626141, 44.507530>,  <34.909035, 40.453621, 44.446835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.064449, 40.626141, 44.507530>,  <35.323471, 40.913670, 44.608692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064449, 40.626141, 44.507530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345586, -0.018765, 0.938200,
		-0.679148, 0.694937, -0.236264,
		-0.647556, -0.718826, -0.252905,
		34.870182, 40.410492, 44.431660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700253, 41.099937, 44.916119>,  <35.323471, 40.913670, 44.608692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700253, 41.099937, 44.916119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.681850, 40.704082, 44.861706>,  <34.670807, 40.466572, 44.829056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.681850, 40.704082, 44.861706>,  <34.700253, 41.099937, 44.916119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681850, 40.704082, 44.861706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350130, -0.111565, 0.930033,
		-0.935570, 0.090419, -0.341368,
		-0.046008, -0.989635, -0.136035,
		34.668049, 40.407192, 44.820896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105076, 40.956348, 45.088730>,  <34.700253, 41.099937, 44.916119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105076, 40.956348, 45.088730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.316212, 40.620838, 45.142151>,  <34.442894, 40.419533, 45.174206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.316212, 40.620838, 45.142151>,  <34.105076, 40.956348, 45.088730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316212, 40.620838, 45.142151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371545, -0.086629, 0.924364,
		-0.763766, -0.537539, -0.357370,
		0.527840, -0.838777, 0.133555,
		34.474564, 40.369205, 45.182217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706501, 40.545834, 45.500061>,  <34.105076, 40.956348, 45.088730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706501, 40.545834, 45.500061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.057976, 40.359631, 45.542404>,  <34.268860, 40.247910, 45.567810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.057976, 40.359631, 45.542404>,  <33.706501, 40.545834, 45.500061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057976, 40.359631, 45.542404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146477, -0.051841, 0.987855,
		-0.454368, -0.883523, -0.113739,
		0.878689, -0.465510, 0.105861,
		34.321583, 40.219978, 45.574162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719818, 39.846146, 45.768780>,  <33.706501, 40.545834, 45.500061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719818, 39.846146, 45.768780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.087990, 39.976955, 45.854443>,  <34.308895, 40.055439, 45.905838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.087990, 39.976955, 45.854443>,  <33.719818, 39.846146, 45.768780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087990, 39.976955, 45.854443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125544, -0.271516, 0.954211,
		0.370195, -0.905171, -0.208856,
		0.920432, 0.327023, 0.214153,
		34.364120, 40.075062, 45.918690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421982, 39.094128, 45.898777>,  <33.719818, 39.846146, 45.768780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421982, 39.094128, 45.898777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.038166, 39.024704, 45.987469>,  <32.807877, 38.983051, 46.040684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.038166, 39.024704, 45.987469>,  <33.421982, 39.094128, 45.898777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038166, 39.024704, 45.987469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265668, 0.297026, -0.917167,
		0.093319, -0.938964, -0.331116,
		-0.959537, -0.173556, 0.221734,
		32.750305, 38.972637, 46.053989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182652, 38.937004, 45.226677>,  <33.421982, 39.094128, 45.898777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182652, 38.937004, 45.226677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.843731, 38.982910, 45.434101>,  <32.640377, 39.010456, 45.558556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.843731, 38.982910, 45.434101>,  <33.182652, 38.937004, 45.226677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843731, 38.982910, 45.434101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484982, 0.230793, -0.843521,
		-0.216490, -0.966211, -0.139891,
		-0.847305, 0.114769, 0.518559,
		32.589539, 39.017342, 45.589668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645489, 38.501160, 44.793823>,  <33.182652, 38.937004, 45.226677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645489, 38.501160, 44.793823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.491859, 38.778992, 45.037148>,  <32.399681, 38.945690, 45.183144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.491859, 38.778992, 45.037148>,  <32.645489, 38.501160, 44.793823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491859, 38.778992, 45.037148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630583, 0.283923, -0.722324,
		-0.674427, -0.661017, 0.328944,
		-0.384074, 0.694582, 0.608312,
		32.376637, 38.987366, 45.219643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946447, 38.351200, 44.738010>,  <32.645489, 38.501160, 44.793823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946447, 38.351200, 44.738010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.993456, 38.724213, 44.874584>,  <32.021660, 38.948021, 44.956528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.993456, 38.724213, 44.874584>,  <31.946447, 38.351200, 44.738010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993456, 38.724213, 44.874584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566887, 0.345294, -0.747938,
		-0.815370, -0.105659, 0.569217,
		0.117521, 0.932528, 0.341439,
		32.028713, 39.003971, 44.977016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257072, 38.775581, 44.776466>,  <31.946447, 38.351200, 44.738010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257072, 38.775581, 44.776466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.528027, 39.068443, 44.747921>,  <31.690599, 39.244160, 44.730793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.528027, 39.068443, 44.747921>,  <31.257072, 38.775581, 44.776466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528027, 39.068443, 44.747921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520208, 0.408171, -0.750187,
		-0.520126, 0.545291, 0.657364,
		0.677386, 0.732157, -0.071365,
		31.731243, 39.288090, 44.726513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928543, 39.269176, 44.333611>,  <31.257072, 38.775581, 44.776466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928543, 39.269176, 44.333611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.303125, 39.409435, 44.329681>,  <31.527876, 39.493591, 44.327324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.303125, 39.409435, 44.329681>,  <30.928543, 39.269176, 44.333611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303125, 39.409435, 44.329681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218205, 0.560378, -0.798976,
		-0.274655, 0.750349, 0.601282,
		0.936457, 0.350646, -0.009819,
		31.584063, 39.514629, 44.326736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858263, 40.024345, 44.139755>,  <30.928543, 39.269176, 44.333611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858263, 40.024345, 44.139755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.222437, 39.890472, 44.042515>,  <31.440941, 39.810150, 43.984169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.222437, 39.890472, 44.042515>,  <30.858263, 40.024345, 44.139755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222437, 39.890472, 44.042515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078903, 0.436400, -0.896287,
		0.406060, 0.835191, 0.370906,
		0.910434, -0.334680, -0.243104,
		31.495567, 39.790070, 43.969585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.001266, 35.907478, 49.095913> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.143036, 36.229038, 48.904861>,  <39.228100, 36.421974, 48.790230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.143036, 36.229038, 48.904861>,  <39.001266, 35.907478, 49.095913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143036, 36.229038, 48.904861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592393, -0.202176, -0.779869,
		-0.723500, 0.559352, 0.404566,
		0.354428, 0.803897, -0.477630,
		39.249363, 36.470207, 48.761574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420506, 36.359886, 48.775475>,  <39.001266, 35.907478, 49.095913>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420506, 36.359886, 48.775475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.756939, 36.375404, 48.559669>,  <38.958797, 36.384716, 48.430187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.756939, 36.375404, 48.559669>,  <38.420506, 36.359886, 48.775475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756939, 36.375404, 48.559669> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507679, -0.287579, -0.812134,
		-0.186659, 0.956971, -0.222183,
		0.841083, 0.038795, -0.539513,
		39.009262, 36.387043, 48.397816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197887, 36.705494, 48.188541>,  <38.420506, 36.359886, 48.775475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197887, 36.705494, 48.188541> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.534286, 36.514133, 48.087463>,  <38.736126, 36.399319, 48.026817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.534286, 36.514133, 48.087463>,  <38.197887, 36.705494, 48.188541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534286, 36.514133, 48.087463> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397145, -0.228691, -0.888806,
		0.367416, 0.847841, -0.382324,
		0.841000, -0.478400, -0.252691,
		38.786587, 36.370613, 48.011658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404690, 36.883457, 47.498020>,  <38.197887, 36.705494, 48.188541>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404690, 36.883457, 47.498020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.607254, 36.539215, 47.519608>,  <38.728794, 36.332672, 47.532562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.607254, 36.539215, 47.519608>,  <38.404690, 36.883457, 47.498020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607254, 36.539215, 47.519608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274713, -0.220347, -0.935938,
		0.817363, 0.459141, -0.348005,
		0.506409, -0.860602, 0.053972,
		38.759178, 36.281033, 47.535801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534687, 36.752251, 46.769295>,  <38.404690, 36.883457, 47.498020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534687, 36.752251, 46.769295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.612865, 36.408871, 46.958973>,  <38.659775, 36.202843, 47.072781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.612865, 36.408871, 46.958973>,  <38.534687, 36.752251, 46.769295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612865, 36.408871, 46.958973> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032590, -0.488939, -0.871709,
		0.980172, 0.154921, -0.123540,
		0.195449, -0.858451, 0.474195,
		38.671501, 36.151337, 47.101231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024319, 36.434395, 46.297470>,  <38.534687, 36.752251, 46.769295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024319, 36.434395, 46.297470> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.900406, 36.141708, 46.540329>,  <38.826057, 35.966095, 46.686043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.900406, 36.141708, 46.540329>,  <39.024319, 36.434395, 46.297470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900406, 36.141708, 46.540329> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091182, -0.658475, -0.747058,
		0.946425, -0.176066, 0.270704,
		-0.309784, -0.731717, 0.607143,
		38.807472, 35.922192, 46.722473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469021, 35.887917, 46.221104>,  <39.024319, 36.434395, 46.297470>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469021, 35.887917, 46.221104> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.126369, 35.727135, 46.350491>,  <38.920780, 35.630665, 46.428123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.126369, 35.727135, 46.350491>,  <39.469021, 35.887917, 46.221104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126369, 35.727135, 46.350491> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036499, -0.578157, -0.815109,
		0.514648, -0.710048, 0.480593,
		-0.856624, -0.401953, 0.323464,
		38.869381, 35.606548, 46.447529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493660, 35.155251, 46.134483>,  <39.469021, 35.887917, 46.221104>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493660, 35.155251, 46.134483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.106476, 35.255161, 46.144741>,  <38.874165, 35.315109, 46.150898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.106476, 35.255161, 46.144741>,  <39.493660, 35.155251, 46.134483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106476, 35.255161, 46.144741> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204745, -0.726027, -0.656479,
		-0.145354, -0.640698, 0.753909,
		-0.967962, 0.249780, 0.025649,
		38.816086, 35.330097, 46.152435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080360, 34.505066, 46.115021>,  <39.493660, 35.155251, 46.134483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080360, 34.505066, 46.115021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.828960, 34.791016, 45.992424>,  <38.678120, 34.962585, 45.918865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.828960, 34.791016, 45.992424>,  <39.080360, 34.505066, 46.115021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828960, 34.791016, 45.992424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339278, -0.606553, -0.719016,
		-0.699910, -0.347917, 0.623762,
		-0.628503, 0.714875, -0.306493,
		38.640408, 35.005478, 45.900478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400436, 34.225258, 46.071869>,  <39.080360, 34.505066, 46.115021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400436, 34.225258, 46.071869> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.406879, 34.530956, 45.813976>,  <38.410748, 34.714375, 45.659241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.406879, 34.530956, 45.813976>,  <38.400436, 34.225258, 46.071869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406879, 34.530956, 45.813976> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379709, -0.591830, -0.711026,
		-0.924966, 0.256264, 0.280655,
		0.016111, 0.764242, -0.644728,
		38.411713, 34.760227, 45.620560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914444, 34.012676, 45.585068>,  <38.400436, 34.225258, 46.071869>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914444, 34.012676, 45.585068> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.091885, 34.318932, 45.398727>,  <38.198349, 34.502686, 45.286922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.091885, 34.318932, 45.398727>,  <37.914444, 34.012676, 45.585068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091885, 34.318932, 45.398727> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158735, -0.444456, -0.881625,
		-0.882056, 0.465036, -0.075627,
		0.443600, 0.765638, -0.465852,
		38.224964, 34.548622, 45.258972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472515, 34.097420, 44.995491>,  <37.914444, 34.012676, 45.585068>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472515, 34.097420, 44.995491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.823441, 34.270073, 44.911575>,  <38.033997, 34.373665, 44.861225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.823441, 34.270073, 44.911575>,  <37.472515, 34.097420, 44.995491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823441, 34.270073, 44.911575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040217, -0.369477, -0.928369,
		-0.478229, 0.822908, -0.306789,
		0.877314, 0.431635, -0.209789,
		38.086636, 34.399563, 44.848637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979126, 34.623016, 44.879360>,  <37.472515, 34.097420, 44.995491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979126, 34.623016, 44.879360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.580570, 34.640743, 44.850380>,  <36.341438, 34.651379, 44.832993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.580570, 34.640743, 44.850380>,  <36.979126, 34.623016, 44.879360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580570, 34.640743, 44.850380> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054180, 0.325244, 0.944077,
		0.065400, 0.944591, -0.321668,
		-0.996387, 0.044315, -0.072449,
		36.281654, 34.654037, 44.828644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758812, 35.307083, 45.363548>,  <36.979126, 34.623016, 44.879360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758812, 35.307083, 45.363548> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.412487, 35.121590, 45.288368>,  <36.204693, 35.010296, 45.243259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.412487, 35.121590, 45.288368>,  <36.758812, 35.307083, 45.363548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412487, 35.121590, 45.288368> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353180, 0.300279, 0.886057,
		-0.354453, 0.833538, -0.423764,
		-0.865810, -0.463731, -0.187954,
		36.152744, 34.982471, 45.231983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155807, 35.784523, 45.530193>,  <36.758812, 35.307083, 45.363548>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155807, 35.784523, 45.530193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.009045, 35.412647, 45.543224>,  <35.920986, 35.189522, 45.551044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.009045, 35.412647, 45.543224>,  <36.155807, 35.784523, 45.530193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009045, 35.412647, 45.543224> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513166, 0.231483, 0.826484,
		-0.775914, 0.286524, -0.562016,
		-0.366905, -0.929688, 0.032577,
		35.898972, 35.133739, 45.552998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422142, 35.884853, 45.567398>,  <36.155807, 35.784523, 45.530193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422142, 35.884853, 45.567398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.489338, 35.508461, 45.684925>,  <35.529655, 35.282623, 45.755440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.489338, 35.508461, 45.684925>,  <35.422142, 35.884853, 45.567398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489338, 35.508461, 45.684925> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568652, 0.150961, 0.808607,
		-0.805241, -0.302919, -0.509732,
		0.167993, -0.940984, 0.293816,
		35.539738, 35.226166, 45.773071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789268, 35.514801, 45.653522>,  <35.422142, 35.884853, 45.567398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789268, 35.514801, 45.653522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.055031, 35.325779, 45.885132>,  <35.214489, 35.212368, 46.024097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.055031, 35.325779, 45.885132>,  <34.789268, 35.514801, 45.653522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055031, 35.325779, 45.885132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611898, 0.100898, 0.784474,
		-0.429127, -0.875508, -0.222117,
		0.664402, -0.472552, 0.579020,
		35.254353, 35.184013, 46.058838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366676, 35.130646, 45.983028>,  <34.789268, 35.514801, 45.653522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366676, 35.130646, 45.983028> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.707108, 35.103447, 46.191277>,  <34.911366, 35.087128, 46.316227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.707108, 35.103447, 46.191277>,  <34.366676, 35.130646, 45.983028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707108, 35.103447, 46.191277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521026, 0.013107, 0.853440,
		-0.064860, -0.997599, -0.024276,
		0.851073, -0.068003, 0.520625,
		34.962429, 35.083046, 46.347466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386929, 34.528709, 46.450191>,  <34.366676, 35.130646, 45.983028>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386929, 34.528709, 46.450191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.643799, 34.779758, 46.626240>,  <34.797920, 34.930386, 46.731869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.643799, 34.779758, 46.626240>,  <34.386929, 34.528709, 46.450191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643799, 34.779758, 46.626240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479479, -0.119101, 0.869433,
		0.598092, -0.769356, 0.224447,
		0.642172, 0.627619, 0.440124,
		34.836452, 34.968044, 46.758278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331730, 34.340153, 47.153404>,  <34.386929, 34.528709, 46.450191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331730, 34.340153, 47.153404> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.534145, 34.682888, 47.192898>,  <34.655594, 34.888531, 47.216595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.534145, 34.682888, 47.192898>,  <34.331730, 34.340153, 47.153404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534145, 34.682888, 47.192898> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396125, 0.129198, 0.909061,
		0.766165, -0.499132, 0.404796,
		0.506040, 0.856840, 0.098732,
		34.685959, 34.939941, 47.222519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468967, 34.458965, 47.882725>,  <34.331730, 34.340153, 47.153404>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468967, 34.458965, 47.882725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.474689, 34.813171, 47.696972>,  <34.478123, 35.025696, 47.585522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.474689, 34.813171, 47.696972>,  <34.468967, 34.458965, 47.882725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474689, 34.813171, 47.696972> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750858, 0.316211, 0.579847,
		0.660309, 0.340392, 0.669422,
		0.014303, 0.885519, -0.464383,
		34.478981, 35.078827, 47.557655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476562, 34.959476, 48.455093>,  <34.468967, 34.458965, 47.882725>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476562, 34.959476, 48.455093> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.335564, 35.150166, 48.132980>,  <34.250961, 35.264580, 47.939713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.335564, 35.150166, 48.132980>,  <34.476562, 34.959476, 48.455093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335564, 35.150166, 48.132980> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800213, 0.292592, 0.523497,
		0.485182, 0.828930, 0.278342,
		-0.352502, 0.476724, -0.805281,
		34.229813, 35.293182, 47.891396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281956, 35.667961, 48.663372>,  <34.476562, 34.959476, 48.455093>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281956, 35.667961, 48.663372> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.087746, 35.606041, 48.319210>,  <33.971218, 35.568890, 48.112713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.087746, 35.606041, 48.319210>,  <34.281956, 35.667961, 48.663372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087746, 35.606041, 48.319210> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813104, 0.441495, 0.379400,
		0.321131, 0.883809, -0.340230,
		-0.485527, -0.154805, -0.860406,
		33.942089, 35.559601, 48.061089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811508, 36.268021, 48.583984>,  <34.281956, 35.667961, 48.663372>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811508, 36.268021, 48.583984> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.661812, 36.014095, 48.313591>,  <33.571995, 35.861740, 48.151356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.661812, 36.014095, 48.313591>,  <33.811508, 36.268021, 48.583984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661812, 36.014095, 48.313591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914322, 0.130922, 0.383241,
		-0.154787, 0.761491, -0.629422,
		-0.374240, -0.634816, -0.675983,
		33.549541, 35.823650, 48.110798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299454, 36.615593, 48.252522>,  <33.811508, 36.268021, 48.583984>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299454, 36.615593, 48.252522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.232151, 36.222965, 48.216297>,  <33.191769, 35.987389, 48.194561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.232151, 36.222965, 48.216297>,  <33.299454, 36.615593, 48.252522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232151, 36.222965, 48.216297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961953, 0.143441, 0.232534,
		-0.215259, 0.126241, -0.968363,
		-0.168259, -0.981574, -0.090561,
		33.181675, 35.928493, 48.189129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694599, 36.561722, 47.854588>,  <33.299454, 36.615593, 48.252522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694599, 36.561722, 47.854588> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.725243, 36.198990, 48.020374>,  <32.743629, 35.981350, 48.119846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.725243, 36.198990, 48.020374>,  <32.694599, 36.561722, 47.854588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725243, 36.198990, 48.020374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967506, 0.032846, 0.250706,
		-0.240962, -0.420209, -0.874849,
		0.076613, -0.906833, 0.414469,
		32.748226, 35.926941, 48.144714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819740, 37.120258, 48.460918>,  <32.694599, 36.561722, 47.854588>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819740, 37.120258, 48.460918> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.780849, 37.491489, 48.604702>,  <32.757515, 37.714230, 48.690971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.780849, 37.491489, 48.604702>,  <32.819740, 37.120258, 48.460918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780849, 37.491489, 48.604702> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267888, 0.323442, -0.907536,
		-0.958532, -0.184530, 0.217175,
		-0.097224, 0.928081, 0.359463,
		32.751682, 37.769913, 48.712540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388901, 37.408546, 48.065392>,  <32.819740, 37.120258, 48.460918>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388901, 37.408546, 48.065392> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.559559, 37.730473, 48.230438>,  <32.661953, 37.923630, 48.329468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.559559, 37.730473, 48.230438>,  <32.388901, 37.408546, 48.065392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559559, 37.730473, 48.230438> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211589, 0.532380, -0.819635,
		-0.879322, 0.262385, 0.397426,
		0.426642, 0.804814, 0.412616,
		32.687550, 37.971916, 48.354221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887682, 37.922653, 48.045723>,  <32.388901, 37.408546, 48.065392>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887682, 37.922653, 48.045723> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.265789, 38.052719, 48.034874>,  <32.492653, 38.130760, 48.028366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.265789, 38.052719, 48.034874>,  <31.887682, 37.922653, 48.045723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265789, 38.052719, 48.034874> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165497, 0.406146, -0.898697,
		-0.281211, 0.853998, 0.437731,
		0.945268, 0.325167, -0.027122,
		32.549370, 38.150269, 48.026737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813787, 38.532623, 47.828053>,  <31.887682, 37.922653, 48.045723>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813787, 38.532623, 47.828053> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.198517, 38.462925, 47.743637>,  <32.429356, 38.421104, 47.692989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.198517, 38.462925, 47.743637>,  <31.813787, 38.532623, 47.828053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198517, 38.462925, 47.743637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101993, 0.487344, -0.867233,
		0.253964, 0.855648, 0.450965,
		0.961821, -0.174250, -0.211038,
		32.487064, 38.410648, 47.680325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096767, 39.219925, 47.612503>,  <31.813787, 38.532623, 47.828053>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096767, 39.219925, 47.612503> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.339565, 38.937939, 47.465759>,  <32.485245, 38.768749, 47.377712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.339565, 38.937939, 47.465759>,  <32.096767, 39.219925, 47.612503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339565, 38.937939, 47.465759> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090666, 0.397181, -0.913251,
		0.789514, 0.587603, 0.177172,
		0.606998, -0.704961, -0.366856,
		32.521664, 38.726452, 47.355701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470158, 39.592022, 47.096924>,  <32.096767, 39.219925, 47.612503>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470158, 39.592022, 47.096924> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.523369, 39.203812, 47.016548>,  <32.555294, 38.970886, 46.968323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.523369, 39.203812, 47.016548>,  <32.470158, 39.592022, 47.096924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523369, 39.203812, 47.016548> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013799, 0.200912, -0.979512,
		0.991017, 0.133072, 0.013334,
		0.133025, -0.970529, -0.200943,
		32.563274, 38.912651, 46.956264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996151, 39.629002, 46.686447>,  <32.470158, 39.592022, 47.096924>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996151, 39.629002, 46.686447> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.804798, 39.288536, 46.600037>,  <32.689987, 39.084255, 46.548191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.804798, 39.288536, 46.600037>,  <32.996151, 39.629002, 46.686447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804798, 39.288536, 46.600037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057599, 0.275887, -0.959463,
		0.876262, -0.446545, -0.181005,
		-0.478380, -0.851166, -0.216028,
		32.661285, 39.033188, 46.535229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801933, 39.506172, 46.450424>,  <32.996151, 39.629002, 46.686447>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801933, 39.506172, 46.450424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.117558, 39.751503, 46.436520>,  <34.306934, 39.898701, 46.428177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.117558, 39.751503, 46.436520>,  <33.801933, 39.506172, 46.450424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117558, 39.751503, 46.436520> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008140, 0.046146, 0.998902,
		0.614257, -0.788481, 0.031419,
		0.789064, 0.613326, -0.034763,
		34.354279, 39.935501, 46.426090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232792, 39.238884, 47.020588>,  <33.801933, 39.506172, 46.450424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232792, 39.238884, 47.020588> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.348602, 39.613724, 46.942589>,  <34.418091, 39.838627, 46.895790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.348602, 39.613724, 46.942589>,  <34.232792, 39.238884, 47.020588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348602, 39.613724, 46.942589> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071802, 0.181887, 0.980694,
		0.954473, -0.297939, -0.014624,
		0.289528, 0.937096, -0.194999,
		34.435459, 39.894852, 46.884090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863094, 39.339764, 47.354836>,  <34.232792, 39.238884, 47.020588>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863094, 39.339764, 47.354836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.699139, 39.703480, 47.326038>,  <34.600765, 39.921711, 47.308762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.699139, 39.703480, 47.326038>,  <34.863094, 39.339764, 47.354836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699139, 39.703480, 47.326038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307778, 0.212175, 0.927499,
		0.858640, 0.358015, -0.366828,
		-0.409890, 0.909289, -0.071993,
		34.576172, 39.976265, 47.304440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433720, 39.720299, 47.553005>,  <34.863094, 39.339764, 47.354836>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433720, 39.720299, 47.553005> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.104111, 39.943756, 47.590755>,  <34.906345, 40.077831, 47.613407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.104111, 39.943756, 47.590755>,  <35.433720, 39.720299, 47.553005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104111, 39.943756, 47.590755> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348591, 0.368596, 0.861755,
		0.446625, 0.743004, -0.498469,
		-0.824021, 0.558643, 0.094380,
		34.856903, 40.111347, 47.619068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650768, 40.322067, 47.798637>,  <35.433720, 39.720299, 47.553005>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650768, 40.322067, 47.798637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.259529, 40.327763, 47.881702>,  <35.024784, 40.331181, 47.931541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.259529, 40.327763, 47.881702>,  <35.650768, 40.322067, 47.798637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259529, 40.327763, 47.881702> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203291, 0.279645, 0.938334,
		-0.044713, 0.959998, -0.276414,
		-0.978097, 0.014236, 0.207663,
		34.966099, 40.332035, 47.944000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530567, 40.996647, 48.096706>,  <35.650768, 40.322067, 47.798637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530567, 40.996647, 48.096706> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.207527, 40.793381, 48.216412>,  <35.013702, 40.671421, 48.288235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.207527, 40.793381, 48.216412>,  <35.530567, 40.996647, 48.096706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207527, 40.793381, 48.216412> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248195, 0.167446, 0.954128,
		-0.534961, 0.844828, -0.009106,
		-0.807599, -0.508161, 0.299260,
		34.965248, 40.640934, 48.306190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283203, 41.363224, 48.694275>,  <35.530567, 40.996647, 48.096706>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283203, 41.363224, 48.694275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.109657, 41.003529, 48.716656>,  <35.005531, 40.787712, 48.730083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.109657, 41.003529, 48.716656>,  <35.283203, 41.363224, 48.694275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109657, 41.003529, 48.716656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148940, -0.010339, 0.988792,
		-0.888582, 0.437336, 0.138418,
		-0.433866, -0.899239, 0.055950,
		34.979496, 40.733757, 48.733440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832218, 41.406483, 49.307640>,  <35.283203, 41.363224, 48.694275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832218, 41.406483, 49.307640> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.903679, 41.021675, 49.225079>,  <34.946556, 40.790791, 49.175541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.903679, 41.021675, 49.225079>,  <34.832218, 41.406483, 49.307640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903679, 41.021675, 49.225079> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363694, -0.130357, 0.922352,
		-0.914228, -0.239844, 0.326593,
		0.178647, -0.962020, -0.206406,
		34.957272, 40.733070, 49.163158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542728, 41.123249, 49.855789>,  <34.832218, 41.406483, 49.307640>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542728, 41.123249, 49.855789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.813606, 40.884293, 49.683956>,  <34.976131, 40.740921, 49.580856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.813606, 40.884293, 49.683956>,  <34.542728, 41.123249, 49.855789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813606, 40.884293, 49.683956> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487788, -0.072619, 0.869936,
		-0.550887, -0.798657, 0.242222,
		0.677190, -0.597390, -0.429581,
		35.016762, 40.705074, 49.555080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.845676, 38.762844, 33.337048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052521, 38.467724, 33.510601>,  <34.176628, 38.290653, 33.614735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052521, 38.467724, 33.510601>,  <33.845676, 38.762844, 33.337048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052521, 38.467724, 33.510601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122026, 0.438197, 0.890558,
		-0.847178, -0.513458, 0.136564,
		0.517106, -0.737796, 0.433886,
		34.207653, 38.246384, 33.640766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435326, 38.625591, 33.936157>,  <33.845676, 38.762844, 33.337048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435326, 38.625591, 33.936157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829735, 38.564922, 33.963711>,  <34.066380, 38.528522, 33.980244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829735, 38.564922, 33.963711>,  <33.435326, 38.625591, 33.936157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829735, 38.564922, 33.963711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007306, 0.373726, 0.927510,
		-0.166422, -0.915054, 0.367396,
		0.986028, -0.151674, 0.068882,
		34.125542, 38.519421, 33.984375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604824, 38.189564, 34.587093>,  <33.435326, 38.625591, 33.936157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604824, 38.189564, 34.587093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937832, 38.393677, 34.500824>,  <34.137638, 38.516144, 34.449062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937832, 38.393677, 34.500824>,  <33.604824, 38.189564, 34.587093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937832, 38.393677, 34.500824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046305, 0.323850, 0.944975,
		0.552051, -0.796700, 0.245984,
		0.832523, 0.510284, -0.215673,
		34.187588, 38.546761, 34.436123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993462, 38.115414, 35.190956>,  <33.604824, 38.189564, 34.587093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993462, 38.115414, 35.190956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191174, 38.412235, 35.009830>,  <34.309799, 38.590328, 34.901154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191174, 38.412235, 35.009830>,  <33.993462, 38.115414, 35.190956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191174, 38.412235, 35.009830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047876, 0.496867, 0.866505,
		0.867983, -0.449976, 0.210066,
		0.494281, 0.742054, -0.452815,
		34.339458, 38.634853, 34.873985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669113, 38.150696, 35.623997>,  <33.993462, 38.115414, 35.190956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669113, 38.150696, 35.623997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584198, 38.488255, 35.426910>,  <34.533249, 38.690792, 35.308659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584198, 38.488255, 35.426910>,  <34.669113, 38.150696, 35.623997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584198, 38.488255, 35.426910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039378, 0.496407, 0.867197,
		0.976413, 0.203499, -0.072151,
		-0.212289, 0.843901, -0.492711,
		34.520512, 38.741425, 35.279099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143196, 38.658848, 35.938931>,  <34.669113, 38.150696, 35.623997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143196, 38.658848, 35.938931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874985, 38.884678, 35.746414>,  <34.714058, 39.020176, 35.630905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874985, 38.884678, 35.746414>,  <35.143196, 38.658848, 35.938931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874985, 38.884678, 35.746414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099738, 0.574252, 0.812580,
		0.735147, 0.592863, -0.328744,
		-0.670531, 0.564578, -0.481291,
		34.673824, 39.054050, 35.602028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202770, 39.347610, 36.160751>,  <35.143196, 38.658848, 35.938931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202770, 39.347610, 36.160751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826889, 39.342007, 36.024075>,  <34.601360, 39.338642, 35.942066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826889, 39.342007, 36.024075>,  <35.202770, 39.347610, 36.160751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826889, 39.342007, 36.024075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302365, 0.500852, 0.811001,
		0.159775, 0.865419, -0.474890,
		-0.939706, -0.014013, -0.341696,
		34.544979, 39.337803, 35.921566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944984, 39.980316, 36.472557>,  <35.202770, 39.347610, 36.160751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944984, 39.980316, 36.472557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614319, 39.782780, 36.364670>,  <34.415920, 39.664257, 36.299938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614319, 39.782780, 36.364670>,  <34.944984, 39.980316, 36.472557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614319, 39.782780, 36.364670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477957, 0.363292, 0.799735,
		-0.296954, 0.790027, -0.536355,
		-0.826665, -0.493839, -0.269718,
		34.366318, 39.634628, 36.283756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356937, 40.547123, 36.371948>,  <34.944984, 39.980316, 36.472557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356937, 40.547123, 36.371948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218121, 40.176819, 36.431999>,  <34.134830, 39.954636, 36.468029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218121, 40.176819, 36.431999>,  <34.356937, 40.547123, 36.371948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218121, 40.176819, 36.431999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307708, 0.263607, 0.914236,
		-0.885933, 0.271086, -0.376345,
		-0.347044, -0.925756, 0.150123,
		34.114006, 39.899094, 36.477036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583023, 40.616142, 36.567719>,  <34.356937, 40.547123, 36.371948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583023, 40.616142, 36.567719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726734, 40.271328, 36.710720>,  <33.812962, 40.064438, 36.796524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726734, 40.271328, 36.710720>,  <33.583023, 40.616142, 36.567719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726734, 40.271328, 36.710720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230983, 0.289027, 0.929037,
		-0.904195, -0.416357, -0.095276,
		0.359274, -0.862038, 0.357509,
		33.834515, 40.012718, 36.817974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079620, 40.389145, 37.036736>,  <33.583023, 40.616142, 36.567719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079620, 40.389145, 37.036736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421860, 40.204723, 37.130867>,  <33.627205, 40.094070, 37.187347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421860, 40.204723, 37.130867>,  <33.079620, 40.389145, 37.036736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421860, 40.204723, 37.130867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158340, 0.199720, 0.966975,
		-0.492831, -0.864603, 0.097876,
		0.855597, -0.461057, 0.235329,
		33.678539, 40.066406, 37.201466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949795, 40.100933, 37.609825>,  <33.079620, 40.389145, 37.036736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949795, 40.100933, 37.609825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349045, 40.101410, 37.634315>,  <33.588593, 40.101696, 37.649010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349045, 40.101410, 37.634315>,  <32.949795, 40.100933, 37.609825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349045, 40.101410, 37.634315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059012, 0.285954, 0.956425,
		-0.016371, -0.958243, 0.285488,
		0.998123, 0.001190, 0.061229,
		33.648483, 40.101768, 37.652683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791531, 39.303139, 37.734234>,  <32.949795, 40.100933, 37.609825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791531, 39.303139, 37.734234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394196, 39.322239, 37.776196>,  <32.155796, 39.333698, 37.801373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394196, 39.322239, 37.776196>,  <32.791531, 39.303139, 37.734234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394196, 39.322239, 37.776196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113100, -0.228519, -0.966947,
		-0.022203, -0.972368, 0.232397,
		-0.993335, 0.047754, 0.104900,
		32.096195, 39.336567, 37.807667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527905, 38.781624, 37.386120>,  <32.791531, 39.303139, 37.734234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527905, 38.781624, 37.386120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.214569, 39.028862, 37.412468>,  <32.026569, 39.177204, 37.428276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.214569, 39.028862, 37.412468>,  <32.527905, 38.781624, 37.386120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214569, 39.028862, 37.412468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226519, -0.185162, -0.956245,
		-0.578856, -0.763983, 0.285055,
		-0.783336, 0.618098, 0.065874,
		31.979568, 39.214291, 37.432232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956066, 38.467937, 36.962719>,  <32.527905, 38.781624, 37.386120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956066, 38.467937, 36.962719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850327, 38.853256, 36.981373>,  <31.786882, 39.084450, 36.992565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850327, 38.853256, 36.981373>,  <31.956066, 38.467937, 36.962719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850327, 38.853256, 36.981373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179460, -0.001619, -0.983764,
		-0.947584, -0.268425, 0.173302,
		-0.264348, 0.963299, 0.046637,
		31.771023, 39.142246, 36.995365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326206, 38.495609, 36.549488>,  <31.956066, 38.467937, 36.962719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326206, 38.495609, 36.549488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456518, 38.873425, 36.566078>,  <31.534706, 39.100113, 36.576031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456518, 38.873425, 36.566078>,  <31.326206, 38.495609, 36.549488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456518, 38.873425, 36.566078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346602, 0.160128, -0.924244,
		-0.879622, 0.286725, 0.379544,
		0.325779, 0.944536, 0.041473,
		31.554253, 39.156784, 36.578522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784178, 38.845161, 36.275909>,  <31.326206, 38.495609, 36.549488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784178, 38.845161, 36.275909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113958, 39.064705, 36.220718>,  <31.311827, 39.196430, 36.187603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113958, 39.064705, 36.220718>,  <30.784178, 38.845161, 36.275909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113958, 39.064705, 36.220718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216101, 0.079989, -0.973089,
		-0.523052, 0.832079, 0.184556,
		0.824450, 0.548859, -0.137975,
		31.361294, 39.229362, 36.179325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536539, 39.306633, 35.774376>,  <30.784178, 38.845161, 36.275909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536539, 39.306633, 35.774376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926861, 39.382366, 35.730629>,  <31.161053, 39.427807, 35.704380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926861, 39.382366, 35.730629>,  <30.536539, 39.306633, 35.774376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926861, 39.382366, 35.730629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132197, 0.112442, -0.984825,
		-0.174164, 0.975453, 0.134751,
		0.975803, 0.189335, -0.109368,
		31.219601, 39.439167, 35.697819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626711, 39.893066, 35.511677>,  <30.536539, 39.306633, 35.774376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626711, 39.893066, 35.511677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961477, 39.695824, 35.416668>,  <31.162336, 39.577477, 35.359661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961477, 39.695824, 35.416668>,  <30.626711, 39.893066, 35.511677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961477, 39.695824, 35.416668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168197, 0.181262, -0.968945,
		0.520846, 0.850876, 0.068762,
		0.836916, -0.493106, -0.237525,
		31.212553, 39.547894, 35.345409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906536, 40.295925, 34.943073>,  <30.626711, 39.893066, 35.511677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906536, 40.295925, 34.943073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089821, 39.940403, 34.946163>,  <31.199793, 39.727089, 34.948017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089821, 39.940403, 34.946163>,  <30.906536, 40.295925, 34.943073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089821, 39.940403, 34.946163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045158, -0.031961, -0.998469,
		0.887694, 0.457164, -0.054782,
		0.458214, -0.888808, 0.007727,
		31.227285, 39.673759, 34.948483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.301453, 40.290298, 34.342804>,  <30.906536, 40.295925, 34.943073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.301453, 40.290298, 34.342804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270828, 39.908726, 34.458843>,  <31.252455, 39.679783, 34.528469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270828, 39.908726, 34.458843>,  <31.301453, 40.290298, 34.342804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270828, 39.908726, 34.458843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250500, -0.263221, -0.931646,
		0.965085, -0.143996, -0.218807,
		-0.076559, -0.953929, 0.290101,
		31.247860, 39.622547, 34.545876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642939, 39.855980, 33.819225>,  <31.301453, 40.290298, 34.342804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642939, 39.855980, 33.819225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415087, 39.574421, 33.988956>,  <31.278376, 39.405487, 34.090794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415087, 39.574421, 33.988956>,  <31.642939, 39.855980, 33.819225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415087, 39.574421, 33.988956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388851, -0.224031, -0.893647,
		0.724098, -0.674046, -0.146097,
		-0.569629, -0.703898, 0.424323,
		31.244198, 39.363251, 34.116253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856956, 39.197315, 33.618660>,  <31.642939, 39.855980, 33.819225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856956, 39.197315, 33.618660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475048, 39.150490, 33.727993>,  <31.245903, 39.122395, 33.793594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475048, 39.150490, 33.727993>,  <31.856956, 39.197315, 33.618660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475048, 39.150490, 33.727993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184428, -0.487925, -0.853180,
		0.233243, -0.865000, 0.444265,
		-0.954769, -0.117063, 0.273335,
		31.188618, 39.115372, 33.809994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733986, 38.475273, 33.665131>,  <31.856956, 39.197315, 33.618660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733986, 38.475273, 33.665131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366991, 38.627762, 33.619720>,  <31.146795, 38.719257, 33.592476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366991, 38.627762, 33.619720>,  <31.733986, 38.475273, 33.665131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366991, 38.627762, 33.619720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169059, -0.632073, -0.756242,
		-0.360052, -0.674650, 0.644368,
		-0.917487, 0.381223, -0.113524,
		31.091745, 38.742130, 33.585663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254959, 38.125526, 34.215107>,  <31.733986, 38.475273, 33.665131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254959, 38.125526, 34.215107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092934, 38.009636, 34.561974>,  <31.995718, 37.940102, 34.770096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092934, 38.009636, 34.561974>,  <32.254959, 38.125526, 34.215107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092934, 38.009636, 34.561974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149641, -0.914666, -0.375493,
		0.901960, -0.281862, 0.327141,
		-0.405062, -0.289726, 0.867170,
		31.971415, 37.922718, 34.822124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555309, 37.499710, 34.136665>,  <32.254959, 38.125526, 34.215107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555309, 37.499710, 34.136665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270763, 37.528309, 34.416336>,  <32.100037, 37.545467, 34.584141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270763, 37.528309, 34.416336>,  <32.555309, 37.499710, 34.136665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270763, 37.528309, 34.416336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326232, -0.914739, -0.238381,
		0.622526, -0.397671, 0.674033,
		-0.711361, 0.071493, 0.699181,
		32.057354, 37.549755, 34.626091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570244, 36.971146, 34.704437>,  <32.555309, 37.499710, 34.136665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570244, 36.971146, 34.704437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213146, 37.112923, 34.593166>,  <31.998888, 37.197990, 34.526402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213146, 37.112923, 34.593166>,  <32.570244, 36.971146, 34.704437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213146, 37.112923, 34.593166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373383, -0.927531, 0.016452,
		-0.252188, 0.118555, 0.960389,
		-0.892741, 0.354444, -0.278179,
		31.945324, 37.219257, 34.509712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130455, 36.610901, 35.062244>,  <32.570244, 36.971146, 34.704437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130455, 36.610901, 35.062244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344219, 36.305447, 34.917320>,  <33.472477, 36.122173, 34.830364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344219, 36.305447, 34.917320>,  <33.130455, 36.610901, 35.062244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344219, 36.305447, 34.917320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077738, -0.471247, 0.878569,
		-0.841645, -0.441348, -0.311201,
		0.534407, -0.763635, -0.362313,
		33.504539, 36.076355, 34.808628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710037, 36.039280, 35.193539>,  <33.130455, 36.610901, 35.062244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710037, 36.039280, 35.193539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094753, 35.932480, 35.169277>,  <33.325581, 35.868401, 35.154720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094753, 35.932480, 35.169277>,  <32.710037, 36.039280, 35.193539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094753, 35.932480, 35.169277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052181, -0.396197, 0.916681,
		-0.268782, -0.878487, -0.394989,
		0.961786, -0.266999, -0.060650,
		33.383289, 35.852379, 35.151081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762177, 35.255219, 35.345993>,  <32.710037, 36.039280, 35.193539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762177, 35.255219, 35.345993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081467, 35.485420, 35.417133>,  <33.273041, 35.623539, 35.459816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081467, 35.485420, 35.417133>,  <32.762177, 35.255219, 35.345993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081467, 35.485420, 35.417133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027120, -0.329290, 0.943839,
		0.601743, -0.748576, -0.278457,
		0.798229, 0.575501, 0.177846,
		33.320934, 35.658070, 35.470486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061310, 34.920670, 35.907276>,  <32.762177, 35.255219, 35.345993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061310, 34.920670, 35.907276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246887, 35.274967, 35.901474>,  <33.358234, 35.487545, 35.897995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246887, 35.274967, 35.901474>,  <33.061310, 34.920670, 35.907276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246887, 35.274967, 35.901474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341095, -0.163507, 0.925700,
		0.817562, -0.434422, -0.377981,
		0.463947, 0.885744, -0.014502,
		33.386070, 35.540691, 35.897121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724819, 34.780956, 36.277493>,  <33.061310, 34.920670, 35.907276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724819, 34.780956, 36.277493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695576, 35.179852, 36.282711>,  <33.678028, 35.419189, 36.285843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695576, 35.179852, 36.282711>,  <33.724819, 34.780956, 36.277493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695576, 35.179852, 36.282711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274798, 0.007570, 0.961472,
		0.958718, 0.073879, -0.274593,
		-0.073112, 0.997238, 0.013044,
		33.673641, 35.479023, 36.286625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324017, 35.028389, 36.615986>,  <33.724819, 34.780956, 36.277493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324017, 35.028389, 36.615986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107468, 35.364124, 36.596233>,  <33.977539, 35.565563, 36.584381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107468, 35.364124, 36.596233>,  <34.324017, 35.028389, 36.615986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107468, 35.364124, 36.596233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393646, 0.304923, 0.867217,
		0.742942, 0.450045, -0.495476,
		-0.541368, 0.839334, -0.049382,
		33.945057, 35.615925, 36.581417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782650, 35.573940, 36.656662>,  <34.324017, 35.028389, 36.615986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782650, 35.573940, 36.656662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424061, 35.684017, 36.795570>,  <34.208908, 35.750061, 36.878918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424061, 35.684017, 36.795570>,  <34.782650, 35.573940, 36.656662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424061, 35.684017, 36.795570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401537, 0.173186, 0.899319,
		0.187341, 0.945662, -0.265756,
		-0.896477, 0.275190, 0.347273,
		34.155117, 35.766575, 36.899754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853764, 36.223392, 37.043079>,  <34.782650, 35.573940, 36.656662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853764, 36.223392, 37.043079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504433, 36.091709, 37.186703>,  <34.294834, 36.012699, 37.272877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504433, 36.091709, 37.186703>,  <34.853764, 36.223392, 37.043079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504433, 36.091709, 37.186703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343649, 0.106059, 0.933090,
		-0.345267, 0.938280, 0.020510,
		-0.873325, -0.329213, 0.359058,
		34.242435, 35.992947, 37.294422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697334, 36.756878, 37.436897>,  <34.853764, 36.223392, 37.043079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697334, 36.756878, 37.436897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504570, 36.424412, 37.547840>,  <34.388912, 36.224934, 37.614407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504570, 36.424412, 37.547840>,  <34.697334, 36.756878, 37.436897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504570, 36.424412, 37.547840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383116, 0.084803, 0.919799,
		-0.788026, 0.549521, 0.277565,
		-0.481910, -0.831165, 0.277358,
		34.359997, 36.175064, 37.631046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404556, 36.951096, 38.172920>,  <34.697334, 36.756878, 37.436897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404556, 36.951096, 38.172920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376793, 36.552185, 38.162979>,  <34.360134, 36.312840, 38.157013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376793, 36.552185, 38.162979>,  <34.404556, 36.951096, 38.172920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376793, 36.552185, 38.162979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318224, -0.045746, 0.946911,
		-0.945471, 0.057817, 0.320533,
		-0.069411, -0.997279, -0.024853,
		34.355968, 36.253002, 38.155521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045544, 36.698475, 38.797527>,  <34.404556, 36.951096, 38.172920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045544, 36.698475, 38.797527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259426, 36.379669, 38.685204>,  <34.387756, 36.188385, 38.617809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259426, 36.379669, 38.685204>,  <34.045544, 36.698475, 38.797527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259426, 36.379669, 38.685204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235066, -0.178905, 0.955373,
		-0.811685, -0.576855, 0.091689,
		0.534707, -0.797014, -0.280813,
		34.419838, 36.140564, 38.600960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820683, 36.060047, 39.186954>,  <34.045544, 36.698475, 38.797527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820683, 36.060047, 39.186954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190022, 35.965775, 39.065712>,  <34.411625, 35.909210, 38.992966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190022, 35.965775, 39.065712>,  <33.820683, 36.060047, 39.186954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190022, 35.965775, 39.065712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258087, -0.203514, 0.944443,
		-0.284276, -0.950282, -0.127088,
		0.923352, -0.235683, -0.303110,
		34.467026, 35.895069, 38.974777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033581, 35.368172, 39.517563>,  <33.820683, 36.060047, 39.186954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033581, 35.368172, 39.517563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367516, 35.556419, 39.403324>,  <34.567875, 35.669369, 39.334782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367516, 35.556419, 39.403324>,  <34.033581, 35.368172, 39.517563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367516, 35.556419, 39.403324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464044, -0.322506, 0.825017,
		0.296159, -0.821286, -0.487627,
		0.834837, 0.470616, -0.285600,
		34.617966, 35.697605, 39.317642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520161, 35.010242, 39.785538>,  <34.033581, 35.368172, 39.517563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520161, 35.010242, 39.785538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727863, 35.343266, 39.708366>,  <34.852486, 35.543079, 39.662064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727863, 35.343266, 39.708366>,  <34.520161, 35.010242, 39.785538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727863, 35.343266, 39.708366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718034, -0.302588, 0.626791,
		0.463463, -0.463992, -0.754926,
		0.519258, 0.832557, -0.192924,
		34.883640, 35.593033, 39.650490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158798, 34.746738, 39.771698>,  <34.520161, 35.010242, 39.785538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158798, 34.746738, 39.771698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219147, 35.140999, 39.801998>,  <35.255356, 35.377556, 39.820179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219147, 35.140999, 39.801998>,  <35.158798, 34.746738, 39.771698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219147, 35.140999, 39.801998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623378, -0.154331, 0.766539,
		0.767227, -0.068431, -0.637714,
		0.150874, 0.985646, 0.075749,
		35.264408, 35.436691, 39.824722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926449, 34.948795, 39.882957>,  <35.158798, 34.746738, 39.771698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926449, 34.948795, 39.882957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679310, 35.215611, 40.049488>,  <35.531029, 35.375698, 40.149406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679310, 35.215611, 40.049488>,  <35.926449, 34.948795, 39.882957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679310, 35.215611, 40.049488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483142, -0.095677, 0.870299,
		0.620356, 0.738854, -0.263161,
		-0.617845, 0.667039, 0.416325,
		35.493958, 35.415722, 40.174385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368679, 35.091480, 40.381145>,  <35.926449, 34.948795, 39.882957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368679, 35.091480, 40.381145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022598, 35.256771, 40.494759>,  <35.814949, 35.355946, 40.562927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022598, 35.256771, 40.494759>,  <36.368679, 35.091480, 40.381145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022598, 35.256771, 40.494759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301730, -0.023380, 0.953107,
		0.400491, 0.910328, -0.104455,
		-0.865197, 0.413228, 0.284036,
		35.763039, 35.380741, 40.579971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530540, 35.633717, 40.801620>,  <36.368679, 35.091480, 40.381145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530540, 35.633717, 40.801620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165833, 35.518021, 40.918255>,  <35.947010, 35.448605, 40.988235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165833, 35.518021, 40.918255>,  <36.530540, 35.633717, 40.801620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165833, 35.518021, 40.918255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310265, -0.019899, 0.950442,
		-0.269100, 0.957051, 0.107884,
		-0.911768, -0.289237, 0.291584,
		35.892303, 35.431248, 41.005730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325569, 35.955147, 41.403175>,  <36.530540, 35.633717, 40.801620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325569, 35.955147, 41.403175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076290, 35.643261, 41.427383>,  <35.926723, 35.456127, 41.441906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076290, 35.643261, 41.427383>,  <36.325569, 35.955147, 41.403175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076290, 35.643261, 41.427383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249215, -0.124649, 0.960393,
		-0.741291, 0.613600, 0.271998,
		-0.623201, -0.779717, 0.060517,
		35.889328, 35.409348, 41.445538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094074, 35.940941, 42.056953>,  <36.325569, 35.955147, 41.403175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094074, 35.940941, 42.056953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999489, 35.566658, 41.952232>,  <35.942738, 35.342091, 41.889400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999489, 35.566658, 41.952232>,  <36.094074, 35.940941, 42.056953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999489, 35.566658, 41.952232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105509, -0.292581, 0.950402,
		-0.965895, 0.197113, 0.167910,
		-0.236464, -0.935705, -0.261805,
		35.928551, 35.285946, 41.873692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603756, 35.760101, 42.538692>,  <36.094074, 35.940941, 42.056953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603756, 35.760101, 42.538692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734077, 35.414444, 42.385273>,  <35.812271, 35.207050, 42.293221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734077, 35.414444, 42.385273>,  <35.603756, 35.760101, 42.538692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734077, 35.414444, 42.385273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232047, -0.320183, 0.918497,
		-0.916519, -0.388250, 0.096205,
		0.325803, -0.864144, -0.383545,
		35.831818, 35.155201, 42.270210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267357, 35.272614, 42.897755>,  <35.603756, 35.760101, 42.538692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267357, 35.272614, 42.897755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560272, 35.052826, 42.736839>,  <35.736023, 34.920956, 42.640289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560272, 35.052826, 42.736839>,  <35.267357, 35.272614, 42.897755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560272, 35.052826, 42.736839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076948, -0.520196, 0.850573,
		-0.676633, -0.653820, -0.338654,
		0.732288, -0.549467, -0.402292,
		35.779961, 34.887985, 42.616150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172714, 34.634418, 43.128120>,  <35.267357, 35.272614, 42.897755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172714, 34.634418, 43.128120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558674, 34.640945, 43.023270>,  <35.790249, 34.644859, 42.960358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558674, 34.640945, 43.023270>,  <35.172714, 34.634418, 43.128120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558674, 34.640945, 43.023270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232747, -0.515511, 0.824668,
		-0.121675, -0.856727, -0.501212,
		0.964896, 0.016314, -0.262126,
		35.848141, 34.645840, 42.944633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389137, 34.000298, 43.249401>,  <35.172714, 34.634418, 43.128120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389137, 34.000298, 43.249401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725643, 34.216412, 43.257065>,  <35.927547, 34.346081, 43.261665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725643, 34.216412, 43.257065>,  <35.389137, 34.000298, 43.249401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725643, 34.216412, 43.257065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166673, -0.292913, 0.941500,
		0.514289, -0.788857, -0.336468,
		0.841265, 0.540283, 0.019161,
		35.978024, 34.378498, 43.262814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066414, 33.566032, 43.486008>,  <35.389137, 34.000298, 43.249401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066414, 33.566032, 43.486008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109333, 33.960186, 43.538918>,  <36.135086, 34.196678, 43.570663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109333, 33.960186, 43.538918>,  <36.066414, 33.566032, 43.486008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109333, 33.960186, 43.538918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267253, -0.156735, 0.950794,
		0.957634, -0.066667, -0.280165,
		0.107299, 0.985388, 0.132278,
		36.141521, 34.255802, 43.578602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372517, 33.584137, 44.168221>,  <36.066414, 33.566032, 43.486008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372517, 33.584137, 44.168221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266510, 33.965401, 44.109894>,  <36.202908, 34.194157, 44.074898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266510, 33.965401, 44.109894>,  <36.372517, 33.584137, 44.168221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266510, 33.965401, 44.109894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043367, 0.139291, 0.989301,
		0.963269, 0.268504, 0.004421,
		-0.265015, 0.953155, -0.145819,
		36.187004, 34.251347, 44.066147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818329, 33.999775, 44.551929>,  <36.372517, 33.584137, 44.168221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818329, 33.999775, 44.551929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494011, 34.226925, 44.495163>,  <36.299419, 34.363213, 44.461102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494011, 34.226925, 44.495163>,  <36.818329, 33.999775, 44.551929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494011, 34.226925, 44.495163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039868, 0.295466, 0.954521,
		0.583978, 0.768258, -0.262201,
		-0.810790, 0.567872, -0.141917,
		36.250774, 34.397285, 44.452587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349598, 34.467171, 44.292767>,  <36.818329, 33.999775, 44.551929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349598, 34.467171, 44.292767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742802, 34.448170, 44.363689>,  <37.978725, 34.436771, 44.406242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742802, 34.448170, 44.363689>,  <37.349598, 34.467171, 44.292767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742802, 34.448170, 44.363689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161072, -0.240001, -0.957317,
		0.088024, 0.969610, -0.228272,
		0.983010, -0.047499, 0.177302,
		38.037704, 34.433922, 44.416882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590645, 34.687458, 43.719837>,  <37.349598, 34.467171, 44.292767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590645, 34.687458, 43.719837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915485, 34.516010, 43.878212>,  <38.110390, 34.413139, 43.973236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915485, 34.516010, 43.878212>,  <37.590645, 34.687458, 43.719837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915485, 34.516010, 43.878212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368518, -0.149358, -0.917544,
		0.452417, 0.891053, 0.036661,
		0.812104, -0.428623, 0.395941,
		38.159115, 34.387424, 43.996994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198105, 35.043003, 43.534740>,  <37.590645, 34.687458, 43.719837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198105, 35.043003, 43.534740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316658, 34.666115, 43.597202>,  <38.387791, 34.439983, 43.634682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316658, 34.666115, 43.597202>,  <38.198105, 35.043003, 43.534740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316658, 34.666115, 43.597202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195833, -0.100076, -0.975517,
		0.934777, 0.319704, 0.154857,
		0.296379, -0.942218, 0.156158,
		38.405571, 34.383450, 43.644051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985565, 34.876972, 43.432579>,  <38.198105, 35.043003, 43.534740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985565, 34.876972, 43.432579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831821, 34.509670, 43.394466>,  <38.739574, 34.289291, 43.371597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831821, 34.509670, 43.394466>,  <38.985565, 34.876972, 43.432579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831821, 34.509670, 43.394466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270360, -0.013277, -0.962668,
		0.882706, -0.395775, 0.253362,
		-0.384364, -0.918252, -0.095282,
		38.716511, 34.234196, 43.365883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533226, 34.498283, 43.156372>,  <38.985565, 34.876972, 43.432579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533226, 34.498283, 43.156372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176018, 34.336964, 43.076508>,  <38.961693, 34.240173, 43.028587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176018, 34.336964, 43.076508>,  <39.533226, 34.498283, 43.156372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176018, 34.336964, 43.076508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222780, -0.010704, -0.974810,
		0.391001, -0.915007, 0.099406,
		-0.893021, -0.403297, -0.199660,
		38.908112, 34.215973, 43.016609>
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
