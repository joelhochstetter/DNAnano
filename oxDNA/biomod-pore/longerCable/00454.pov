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
	<24.187023, 34.774559, 34.418320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.361134, 34.860222, 34.768101>,  <24.465599, 34.911621, 34.977970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.361134, 34.860222, 34.768101>,  <24.187023, 34.774559, 34.418320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.361134, 34.860222, 34.768101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361016, 0.848263, -0.387450,
		-0.824743, 0.484340, 0.291913,
		0.435277, 0.214161, 0.874454,
		24.491716, 34.924469, 35.030437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.158604, 35.537575, 34.607414>,  <24.187023, 34.774559, 34.418320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.158604, 35.537575, 34.607414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.461988, 35.419178, 34.839664>,  <24.644020, 35.348141, 34.979015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.461988, 35.419178, 34.839664>,  <24.158604, 35.537575, 34.607414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.461988, 35.419178, 34.839664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405380, 0.911856, -0.064695,
		-0.510297, 0.284442, 0.811597,
		0.758462, -0.295991, 0.580624,
		24.689528, 35.330379, 35.013851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.252844, 35.941208, 35.266884>,  <24.158604, 35.537575, 34.607414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.252844, 35.941208, 35.266884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.595657, 35.786236, 35.131004>,  <24.801346, 35.693253, 35.049477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.595657, 35.786236, 35.131004>,  <24.252844, 35.941208, 35.266884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.595657, 35.786236, 35.131004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405819, 0.913770, -0.018324,
		0.317503, -0.122151, 0.940356,
		0.857031, -0.387432, -0.339696,
		24.852766, 35.670006, 35.029095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.790548, 36.276188, 35.654980>,  <24.252844, 35.941208, 35.266884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.790548, 36.276188, 35.654980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.917303, 36.166317, 35.291851>,  <24.993355, 36.100395, 35.073975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.917303, 36.166317, 35.291851>,  <24.790548, 36.276188, 35.654980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.917303, 36.166317, 35.291851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284122, 0.940684, -0.185442,
		0.904907, -0.199168, 0.376131,
		0.316886, -0.274675, -0.907820,
		25.012369, 36.083916, 35.019505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.451792, 36.556507, 35.636894>,  <24.790548, 36.276188, 35.654980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.451792, 36.556507, 35.636894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.338936, 36.484726, 35.259918>,  <25.271223, 36.441658, 35.033733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.338936, 36.484726, 35.259918>,  <25.451792, 36.556507, 35.636894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.338936, 36.484726, 35.259918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340214, 0.899791, -0.273186,
		0.897020, -0.397710, -0.192825,
		-0.282151, -0.179451, -0.942437,
		25.254293, 36.430889, 34.977188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.085726, 36.734676, 35.140598>,  <25.451792, 36.556507, 35.636894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.085726, 36.734676, 35.140598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.737223, 36.806412, 34.957844>,  <25.528120, 36.849453, 34.848190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.737223, 36.806412, 34.957844>,  <26.085726, 36.734676, 35.140598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.737223, 36.806412, 34.957844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267092, 0.954199, -0.134784,
		0.411792, -0.239463, -0.879253,
		-0.871258, 0.179338, -0.456890,
		25.475845, 36.860214, 34.820778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.280954, 36.946648, 34.374741>,  <26.085726, 36.734676, 35.140598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.280954, 36.946648, 34.374741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.939194, 37.079388, 34.534679>,  <25.734138, 37.159031, 34.630642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.939194, 37.079388, 34.534679>,  <26.280954, 36.946648, 34.374741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.939194, 37.079388, 34.534679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255115, 0.938273, -0.233581,
		-0.452679, -0.097565, -0.886320,
		-0.854399, 0.331851, 0.399846,
		25.682875, 37.178944, 34.654633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.963392, 37.429096, 33.852211>,  <26.280954, 36.946648, 34.374741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.963392, 37.429096, 33.852211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.845034, 37.517063, 34.224033>,  <25.774019, 37.569843, 34.447128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.845034, 37.517063, 34.224033>,  <25.963392, 37.429096, 33.852211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.845034, 37.517063, 34.224033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280328, 0.950280, -0.135585,
		-0.913160, 0.220462, -0.342834,
		-0.295897, 0.219917, 0.929560,
		25.756264, 37.583038, 34.502903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.593056, 38.088539, 33.842934>,  <25.963392, 37.429096, 33.852211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.593056, 38.088539, 33.842934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.702349, 38.076931, 34.227539>,  <25.767925, 38.069965, 34.458302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.702349, 38.076931, 34.227539>,  <25.593056, 38.088539, 33.842934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.702349, 38.076931, 34.227539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404311, 0.910434, -0.087417,
		-0.872855, 0.412635, 0.260493,
		0.273234, -0.029018, 0.961510,
		25.784319, 38.068226, 34.515991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.366777, 38.682640, 34.066055>,  <25.593056, 38.088539, 33.842934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.366777, 38.682640, 34.066055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.626398, 38.570065, 34.348763>,  <25.782169, 38.502522, 34.518387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.626398, 38.570065, 34.348763>,  <25.366777, 38.682640, 34.066055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.626398, 38.570065, 34.348763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326190, 0.942271, 0.075662,
		-0.687265, 0.181434, 0.703384,
		0.649051, -0.281437, 0.706772,
		25.821114, 38.485634, 34.560795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.250652, 39.139484, 34.542858>,  <25.366777, 38.682640, 34.066055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.250652, 39.139484, 34.542858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.614265, 38.981834, 34.597004>,  <25.832434, 38.887245, 34.629490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.614265, 38.981834, 34.597004>,  <25.250652, 39.139484, 34.542858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.614265, 38.981834, 34.597004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402094, 0.914870, -0.036510,
		-0.109450, 0.087617, 0.990123,
		0.909033, -0.394126, 0.135363,
		25.886976, 38.863598, 34.637611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.648504, 39.630344, 34.187820>,  <25.250652, 39.139484, 34.542858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.648504, 39.630344, 34.187820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.496088, 39.879848, 34.460800>,  <25.404638, 40.029549, 34.624588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.496088, 39.879848, 34.460800>,  <25.648504, 39.630344, 34.187820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.496088, 39.879848, 34.460800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320387, 0.781482, -0.535386,
		-0.867272, 0.014644, -0.497619,
		-0.381040, 0.623756, 0.682449,
		25.381777, 40.066975, 34.665535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.121424, 40.052372, 33.691425>,  <25.648504, 39.630344, 34.187820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.121424, 40.052372, 33.691425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.509302, 40.064247, 33.788422>,  <26.742029, 40.071373, 33.846619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.509302, 40.064247, 33.788422>,  <26.121424, 40.052372, 33.691425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.509302, 40.064247, 33.788422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070704, -0.916015, 0.394863,
		0.233851, -0.400044, -0.886160,
		0.969698, 0.029684, 0.242496,
		26.800211, 40.073151, 33.861172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.461849, 39.500412, 33.436668>,  <26.121424, 40.052372, 33.691425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.461849, 39.500412, 33.436668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.627008, 39.631836, 33.776447>,  <26.726105, 39.710690, 33.980316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.627008, 39.631836, 33.776447>,  <26.461849, 39.500412, 33.436668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.627008, 39.631836, 33.776447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261150, -0.850793, 0.456017,
		0.872534, -0.410122, -0.265488,
		0.412898, 0.328559, 0.849450,
		26.750877, 39.730404, 34.031281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.056522, 39.030373, 33.800285>,  <26.461849, 39.500412, 33.436668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.056522, 39.030373, 33.800285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.841499, 39.195026, 34.094658>,  <26.712484, 39.293819, 34.271282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.841499, 39.195026, 34.094658>,  <27.056522, 39.030373, 33.800285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.841499, 39.195026, 34.094658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019329, -0.878538, 0.477280,
		0.843004, 0.242342, 0.480223,
		-0.537559, 0.411631, 0.735928,
		26.680231, 39.318516, 34.315437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.235474, 38.891121, 34.402996>,  <27.056522, 39.030373, 33.800285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.235474, 38.891121, 34.402996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.861540, 38.975769, 34.517048>,  <26.637180, 39.026558, 34.585480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.861540, 38.975769, 34.517048>,  <27.235474, 38.891121, 34.402996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.861540, 38.975769, 34.517048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106468, -0.933105, 0.343481,
		0.338746, 0.290740, 0.894830,
		-0.934835, 0.211623, 0.285131,
		26.581089, 39.039257, 34.602589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.125551, 38.401390, 34.926426>,  <27.235474, 38.891121, 34.402996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.125551, 38.401390, 34.926426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761683, 38.551125, 34.854458>,  <26.543362, 38.640965, 34.811275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761683, 38.551125, 34.854458>,  <27.125551, 38.401390, 34.926426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.761683, 38.551125, 34.854458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415253, -0.811340, 0.411452,
		0.008041, 0.449000, 0.893496,
		-0.909671, 0.374336, -0.179924,
		26.488781, 38.663425, 34.800480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.737957, 38.106064, 35.375515>,  <27.125551, 38.401390, 34.926426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.737957, 38.106064, 35.375515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451542, 38.236015, 35.128372>,  <26.279692, 38.313988, 34.980087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451542, 38.236015, 35.128372>,  <26.737957, 38.106064, 35.375515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.451542, 38.236015, 35.128372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605684, -0.729169, 0.318526,
		-0.347038, 0.602301, 0.718887,
		-0.716039, 0.324878, -0.617853,
		26.236731, 38.333477, 34.943016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.151781, 38.042347, 35.783638>,  <26.737957, 38.106064, 35.375515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.151781, 38.042347, 35.783638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.039124, 38.020443, 35.400455>,  <25.971529, 38.007301, 35.170547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.039124, 38.020443, 35.400455>,  <26.151781, 38.042347, 35.783638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.039124, 38.020443, 35.400455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645073, -0.728276, 0.231288,
		-0.710322, 0.683092, 0.169787,
		-0.281643, -0.054764, -0.957955,
		25.954630, 38.004013, 35.113068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.421806, 38.013435, 35.708378>,  <26.151781, 38.042347, 35.783638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.421806, 38.013435, 35.708378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536360, 37.867485, 35.354012>,  <25.605091, 37.779915, 35.141392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536360, 37.867485, 35.354012>,  <25.421806, 38.013435, 35.708378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.536360, 37.867485, 35.354012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661537, -0.744168, 0.092645,
		-0.693076, 0.559536, -0.454494,
		0.286382, -0.364875, -0.885919,
		25.622274, 37.758022, 35.088238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.907747, 38.062199, 35.130638>,  <25.421806, 38.013435, 35.708378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.907747, 38.062199, 35.130638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.157316, 37.751965, 35.092300>,  <25.307058, 37.565823, 35.069298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.157316, 37.751965, 35.092300>,  <24.907747, 38.062199, 35.130638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.157316, 37.751965, 35.092300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781167, -0.615459, -0.104823,
		0.022309, 0.140274, -0.989861,
		0.623923, -0.775586, -0.095848,
		25.344494, 37.519287, 35.063545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.440905, 37.490623, 34.954647>,  <24.907747, 38.062199, 35.130638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.440905, 37.490623, 34.954647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.821707, 37.419868, 34.854729>,  <25.050188, 37.377415, 34.794777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.821707, 37.419868, 34.854729>,  <24.440905, 37.490623, 34.954647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.821707, 37.419868, 34.854729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277847, -0.841795, -0.462799,
		-0.128414, 0.509992, -0.850540,
		0.952003, -0.176890, -0.249798,
		25.107307, 37.366802, 34.779789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.359539, 37.159195, 34.309910>,  <24.440905, 37.490623, 34.954647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.359539, 37.159195, 34.309910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.715265, 37.059719, 34.463413>,  <24.928701, 37.000034, 34.555515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.715265, 37.059719, 34.463413>,  <24.359539, 37.159195, 34.309910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.715265, 37.059719, 34.463413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165943, -0.957495, -0.235937,
		0.426119, 0.146141, -0.892785,
		0.889317, -0.248688, 0.383756,
		24.982061, 36.985111, 34.578541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.389019, 36.403603, 34.168934>,  <24.359539, 37.159195, 34.309910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.389019, 36.403603, 34.168934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.721537, 36.515533, 34.361038>,  <24.921047, 36.582691, 34.476299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.721537, 36.515533, 34.361038>,  <24.389019, 36.403603, 34.168934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.721537, 36.515533, 34.361038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341198, -0.938985, -0.043479,
		0.438788, 0.200007, -0.876049,
		0.831294, 0.279828, 0.480257,
		24.970924, 36.599483, 34.505116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.981321, 36.145859, 33.769669>,  <24.389019, 36.403603, 34.168934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.981321, 36.145859, 33.769669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.085302, 36.228794, 34.146908>,  <25.147692, 36.278557, 34.373253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.085302, 36.228794, 34.146908>,  <24.981321, 36.145859, 33.769669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.085302, 36.228794, 34.146908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321837, -0.939435, 0.117826,
		0.910409, 0.272894, -0.310939,
		0.259953, 0.207341, 0.943098,
		25.163288, 36.290997, 34.429836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.556326, 35.676243, 33.882401>,  <24.981321, 36.145859, 33.769669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.556326, 35.676243, 33.882401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.381151, 35.802364, 34.219162>,  <25.276047, 35.878036, 34.421219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.381151, 35.802364, 34.219162>,  <25.556326, 35.676243, 33.882401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.381151, 35.802364, 34.219162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062096, -0.944853, 0.321554,
		0.896860, 0.088541, 0.433363,
		-0.437935, 0.315299, 0.841902,
		25.249771, 35.896954, 34.471733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.827530, 35.299316, 34.301174>,  <25.556326, 35.676243, 33.882401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.827530, 35.299316, 34.301174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.482771, 35.385456, 34.484810>,  <25.275915, 35.437141, 34.594990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.482771, 35.385456, 34.484810>,  <25.827530, 35.299316, 34.301174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.482771, 35.385456, 34.484810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040818, -0.931866, 0.360500,
		0.505440, 0.291974, 0.811961,
		-0.861896, 0.215353, 0.459085,
		25.224201, 35.450062, 34.622536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.865126, 35.238407, 35.077091>,  <25.827530, 35.299316, 34.301174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.865126, 35.238407, 35.077091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.494127, 35.152233, 34.954887>,  <25.271528, 35.100529, 34.881565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.494127, 35.152233, 34.954887>,  <25.865126, 35.238407, 35.077091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.494127, 35.152233, 34.954887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050346, -0.881784, 0.468958,
		-0.370425, 0.419576, 0.828698,
		-0.927497, -0.215435, -0.305511,
		25.215878, 35.087601, 34.863235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.278976, 34.652134, 35.415394>,  <25.865126, 35.238407, 35.077091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.278976, 34.652134, 35.415394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906954, 34.790390, 35.465233>,  <25.683741, 34.873344, 35.495136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906954, 34.790390, 35.465233>,  <26.278976, 34.652134, 35.415394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.906954, 34.790390, 35.465233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157411, 0.068418, 0.985160,
		0.331989, 0.935868, -0.118040,
		-0.930056, 0.345643, 0.124602,
		25.627937, 34.894085, 35.502613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.306332, 35.320614, 35.804115>,  <26.278976, 34.652134, 35.415394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.306332, 35.320614, 35.804115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.973860, 35.111958, 35.881092>,  <25.774376, 34.986763, 35.927277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.973860, 35.111958, 35.881092>,  <26.306332, 35.320614, 35.804115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.973860, 35.111958, 35.881092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196754, 0.047763, 0.979289,
		-0.520026, 0.851828, 0.062935,
		-0.831180, -0.521639, 0.192439,
		25.724506, 34.955467, 35.938824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.039579, 35.383255, 36.394932>,  <26.306332, 35.320614, 35.804115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.039579, 35.383255, 36.394932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.345135, 35.639229, 36.428299>,  <26.528467, 35.792812, 36.448318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.345135, 35.639229, 36.428299>,  <26.039579, 35.383255, 36.394932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.345135, 35.639229, 36.428299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397315, 0.364491, 0.842192,
		0.508545, -0.676482, 0.532686,
		0.763886, 0.639937, 0.083416,
		26.574301, 35.831211, 36.453323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.623436, 35.263237, 37.025669>,  <26.039579, 35.383255, 36.394932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.623436, 35.263237, 37.025669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519457, 35.627693, 36.897762>,  <26.457069, 35.846367, 36.821018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519457, 35.627693, 36.897762>,  <26.623436, 35.263237, 37.025669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.519457, 35.627693, 36.897762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445809, 0.180506, 0.876740,
		0.856552, 0.370462, 0.359272,
		-0.259948, 0.911140, -0.319768,
		26.441473, 35.901035, 36.801830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.893543, 35.746819, 37.455093>,  <26.623436, 35.263237, 37.025669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.893543, 35.746819, 37.455093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.557394, 35.888706, 37.291168>,  <26.355703, 35.973839, 37.192814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.557394, 35.888706, 37.291168>,  <26.893543, 35.746819, 37.455093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.557394, 35.888706, 37.291168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399462, 0.105701, 0.910636,
		0.366334, 0.928980, 0.052867,
		-0.840374, 0.354716, -0.409814,
		26.305283, 35.995121, 37.168224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.718687, 36.160404, 37.937134>,  <26.893543, 35.746819, 37.455093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.718687, 36.160404, 37.937134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.379200, 36.152874, 37.725731>,  <26.175508, 36.148354, 37.598888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.379200, 36.152874, 37.725731>,  <26.718687, 36.160404, 37.937134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.379200, 36.152874, 37.725731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528342, -0.013456, 0.848925,
		-0.023097, 0.999732, 0.001471,
		-0.848717, -0.018830, -0.528511,
		26.124584, 36.147224, 37.567177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.319149, 36.701084, 38.073002>,  <26.718687, 36.160404, 37.937134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.319149, 36.701084, 38.073002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.075512, 36.407974, 37.951645>,  <25.929329, 36.232109, 37.878830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.075512, 36.407974, 37.951645>,  <26.319149, 36.701084, 38.073002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.075512, 36.407974, 37.951645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472786, 0.028336, 0.880721,
		-0.636772, 0.679883, -0.363704,
		-0.609093, -0.732773, -0.303395,
		25.892784, 36.188141, 37.860626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.736290, 36.772808, 38.500481>,  <26.319149, 36.701084, 38.073002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.736290, 36.772808, 38.500481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.672388, 36.417969, 38.327263>,  <25.634047, 36.205063, 38.223331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.672388, 36.417969, 38.327263>,  <25.736290, 36.772808, 38.500481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.672388, 36.417969, 38.327263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390986, -0.345942, 0.852910,
		-0.906426, 0.305572, -0.291578,
		-0.159756, -0.887102, -0.433045,
		25.624462, 36.151836, 38.197350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.815393, 37.341751, 37.977627>,  <25.736290, 36.772808, 38.500481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.815393, 37.341751, 37.977627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719118, 36.977787, 37.842491>,  <25.661354, 36.759411, 37.761410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719118, 36.977787, 37.842491>,  <25.815393, 37.341751, 37.977627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.719118, 36.977787, 37.842491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853420, 0.032598, 0.520204,
		-0.462325, 0.413526, -0.784380,
		-0.240687, -0.909908, -0.337841,
		25.646912, 36.704815, 37.741138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.060305, 37.236034, 37.675880>,  <25.815393, 37.341751, 37.977627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.060305, 37.236034, 37.675880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.168686, 36.868389, 37.790295>,  <25.233715, 36.647800, 37.858944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.168686, 36.868389, 37.790295>,  <25.060305, 37.236034, 37.675880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.168686, 36.868389, 37.790295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799455, -0.049359, 0.598695,
		-0.536151, -0.390887, -0.748164,
		0.270951, -0.919114, 0.286033,
		25.249971, 36.592655, 37.876106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.431871, 36.904991, 37.679508>,  <25.060305, 37.236034, 37.675880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.431871, 36.904991, 37.679508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.666248, 36.662815, 37.894958>,  <24.806873, 36.517509, 38.024227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.666248, 36.662815, 37.894958>,  <24.431871, 36.904991, 37.679508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.666248, 36.662815, 37.894958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760107, -0.180219, 0.624307,
		-0.280913, -0.775216, -0.565799,
		0.585940, -0.605443, 0.538621,
		24.842031, 36.481182, 38.056545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.970058, 36.572914, 38.032944>,  <24.431871, 36.904991, 37.679508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.970058, 36.572914, 38.032944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.314266, 36.508797, 38.226360>,  <24.520790, 36.470325, 38.342411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.314266, 36.508797, 38.226360>,  <23.970058, 36.572914, 38.032944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.314266, 36.508797, 38.226360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474665, 0.092292, 0.875314,
		-0.184936, -0.982745, 0.003332,
		0.860518, -0.160295, 0.483543,
		24.572422, 36.460709, 38.371422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.110073, 36.671097, 38.786743>,  <23.970058, 36.572914, 38.032944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.110073, 36.671097, 38.786743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.193605, 36.343830, 39.001030>,  <24.243725, 36.147472, 39.129604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.193605, 36.343830, 39.001030>,  <24.110073, 36.671097, 38.786743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.193605, 36.343830, 39.001030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638126, -0.301109, -0.708610,
		0.741070, 0.489838, 0.459211,
		0.208831, -0.818164, 0.535721,
		24.256254, 36.098381, 39.161747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.854471, 36.639458, 38.942921>,  <24.110073, 36.671097, 38.786743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.854471, 36.639458, 38.942921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.667192, 36.289097, 38.896297>,  <24.554825, 36.078880, 38.868324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.667192, 36.289097, 38.896297>,  <24.854471, 36.639458, 38.942921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.667192, 36.289097, 38.896297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578170, -0.203922, -0.790023,
		0.668214, -0.437277, 0.601896,
		-0.468199, -0.875902, -0.116557,
		24.526733, 36.026325, 38.861332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.453899, 36.054272, 38.983734>,  <24.854471, 36.639458, 38.942921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.453899, 36.054272, 38.983734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.139931, 36.027206, 38.737381>,  <24.951550, 36.010967, 38.589569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.139931, 36.027206, 38.737381>,  <25.453899, 36.054272, 38.983734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.139931, 36.027206, 38.737381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617806, -0.010048, -0.786266,
		0.047013, -0.997658, 0.049690,
		-0.784924, -0.067664, -0.615886,
		24.904453, 36.006908, 38.552616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.440886, 35.385502, 38.531063>,  <25.453899, 36.054272, 38.983734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.440886, 35.385502, 38.531063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.252539, 35.698078, 38.367290>,  <25.139530, 35.885624, 38.269028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.252539, 35.698078, 38.367290>,  <25.440886, 35.385502, 38.531063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.252539, 35.698078, 38.367290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672689, 0.017766, -0.739713,
		-0.570767, -0.623727, -0.534032,
		-0.470866, 0.781440, -0.409434,
		25.111279, 35.932510, 38.244461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.524481, 35.321247, 37.962025>,  <25.440886, 35.385502, 38.531063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.524481, 35.321247, 37.962025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.429909, 35.709862, 37.956043>,  <25.373165, 35.943031, 37.952454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.429909, 35.709862, 37.956043>,  <25.524481, 35.321247, 37.962025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.429909, 35.709862, 37.956043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500463, 0.108570, -0.858923,
		-0.832848, -0.210562, -0.511886,
		-0.236432, 0.971533, -0.014956,
		25.358978, 36.001320, 37.951557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.126087, 35.506760, 37.340302>,  <25.524481, 35.321247, 37.962025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.126087, 35.506760, 37.340302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.317783, 35.829433, 37.478630>,  <25.432800, 36.023037, 37.561626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.317783, 35.829433, 37.478630>,  <25.126087, 35.506760, 37.340302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.317783, 35.829433, 37.478630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536605, 0.042494, -0.842763,
		-0.694538, 0.589453, -0.412506,
		0.479241, 0.806684, 0.345817,
		25.461555, 36.071438, 37.582375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.034611, 36.039825, 36.816826>,  <25.126087, 35.506760, 37.340302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.034611, 36.039825, 36.816826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.362368, 36.081612, 37.042278>,  <25.559021, 36.106686, 37.177551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.362368, 36.081612, 37.042278>,  <25.034611, 36.039825, 36.816826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.362368, 36.081612, 37.042278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551467, 0.124725, -0.824820,
		-0.156468, 0.986676, 0.044587,
		0.819391, 0.104470, 0.563635,
		25.608185, 36.112953, 37.211369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.399605, 36.685387, 36.571777>,  <25.034611, 36.039825, 36.816826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.399605, 36.685387, 36.571777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667515, 36.450840, 36.754017>,  <25.828260, 36.310112, 36.863361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667515, 36.450840, 36.754017>,  <25.399605, 36.685387, 36.571777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.667515, 36.450840, 36.754017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668831, 0.209823, -0.713189,
		0.322597, 0.782397, 0.532716,
		0.669773, -0.586370, 0.455603,
		25.868446, 36.274929, 36.890697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.897375, 37.089512, 36.542179>,  <25.399605, 36.685387, 36.571777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.897375, 37.089512, 36.542179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.025385, 36.712681, 36.582325>,  <26.102190, 36.486584, 36.606411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.025385, 36.712681, 36.582325>,  <25.897375, 37.089512, 36.542179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.025385, 36.712681, 36.582325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736519, 0.180753, -0.651819,
		0.595923, 0.282518, 0.751704,
		0.320024, -0.942078, 0.100365,
		26.121391, 36.430058, 36.612434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.588009, 37.113934, 36.639305>,  <25.897375, 37.089512, 36.542179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.588009, 37.113934, 36.639305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494696, 36.759777, 36.478474>,  <26.438707, 36.547283, 36.381977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494696, 36.759777, 36.478474>,  <26.588009, 37.113934, 36.639305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.494696, 36.759777, 36.478474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637167, 0.173173, -0.751019,
		0.734573, -0.431389, 0.523743,
		-0.233283, -0.885390, -0.402075,
		26.424711, 36.494160, 36.357853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.210140, 36.662720, 36.560097>,  <26.588009, 37.113934, 36.639305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.210140, 36.662720, 36.560097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970705, 36.649715, 36.239937>,  <26.827044, 36.641914, 36.047840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970705, 36.649715, 36.239937>,  <27.210140, 36.662720, 36.560097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.970705, 36.649715, 36.239937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800331, 0.018200, -0.599282,
		0.034048, -0.999306, 0.015122,
		-0.598590, -0.032507, -0.800396,
		26.791128, 36.639965, 35.999817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.441643, 36.104240, 36.099903>,  <27.210140, 36.662720, 36.560097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.441643, 36.104240, 36.099903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.274343, 36.385117, 35.869427>,  <27.173964, 36.553642, 35.731140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.274343, 36.385117, 35.869427>,  <27.441643, 36.104240, 36.099903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.274343, 36.385117, 35.869427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859521, 0.100809, -0.501061,
		-0.293754, -0.704817, -0.645710,
		-0.418249, 0.702190, -0.576191,
		27.148869, 36.595772, 35.696568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.602692, 36.013470, 35.296413>,  <27.441643, 36.104240, 36.099903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.602692, 36.013470, 35.296413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.570406, 36.387100, 35.435551>,  <27.551035, 36.611279, 35.519032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.570406, 36.387100, 35.435551>,  <27.602692, 36.013470, 35.296413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.570406, 36.387100, 35.435551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961253, 0.165235, -0.220658,
		-0.263586, 0.316551, -0.911218,
		-0.080715, 0.934073, 0.347840,
		27.546192, 36.667324, 35.539902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708277, 36.533054, 34.685085>,  <27.602692, 36.013470, 35.296413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.708277, 36.533054, 34.685085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.841167, 36.624538, 35.051105>,  <27.920902, 36.679428, 35.270718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.841167, 36.624538, 35.051105>,  <27.708277, 36.533054, 34.685085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.841167, 36.624538, 35.051105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930522, 0.079055, -0.357603,
		-0.154125, 0.970280, -0.186552,
		0.332227, 0.228707, 0.915051,
		27.940836, 36.693150, 35.325623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145176, 37.293888, 34.789017>,  <27.708277, 36.533054, 34.685085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145176, 37.293888, 34.789017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.262718, 36.985764, 35.015385>,  <28.333242, 36.800888, 35.151203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.262718, 36.985764, 35.015385>,  <28.145176, 37.293888, 34.789017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.262718, 36.985764, 35.015385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951045, 0.176332, -0.253813,
		0.095726, 0.612797, 0.784421,
		0.293855, -0.770316, 0.565918,
		28.350874, 36.754669, 35.185162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720230, 37.427620, 35.199024>,  <28.145176, 37.293888, 34.789017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.720230, 37.427620, 35.199024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.734491, 37.030128, 35.156628>,  <28.743048, 36.791634, 35.131187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.734491, 37.030128, 35.156628>,  <28.720230, 37.427620, 35.199024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.734491, 37.030128, 35.156628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984883, 0.052929, -0.164940,
		0.169515, -0.098512, 0.980592,
		0.035653, -0.993727, -0.105995,
		28.745188, 36.732010, 35.124828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224131, 37.142921, 35.682854>,  <28.720230, 37.427620, 35.199024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224131, 37.142921, 35.682854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172354, 36.923153, 35.352669>,  <29.141287, 36.791290, 35.154560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172354, 36.923153, 35.352669>,  <29.224131, 37.142921, 35.682854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172354, 36.923153, 35.352669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922502, 0.238559, -0.303444,
		0.363640, -0.800765, 0.475963,
		-0.129442, -0.549422, -0.825458,
		29.133522, 36.758327, 35.105030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.817738, 36.669304, 35.529701>,  <29.224131, 37.142921, 35.682854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.817738, 36.669304, 35.529701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.700375, 36.650482, 35.147770>,  <29.629957, 36.639187, 34.918610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.700375, 36.650482, 35.147770>,  <29.817738, 36.669304, 35.529701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700375, 36.650482, 35.147770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954845, -0.063229, -0.290298,
		-0.046712, -0.996889, 0.063487,
		-0.293409, -0.047060, -0.954828,
		29.612352, 36.636364, 34.861320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180740, 36.132759, 35.161228>,  <29.817738, 36.669304, 35.529701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180740, 36.132759, 35.161228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088146, 36.422115, 34.901039>,  <30.032589, 36.595730, 34.744926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088146, 36.422115, 34.901039>,  <30.180740, 36.132759, 35.161228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088146, 36.422115, 34.901039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936173, -0.016191, -0.351166,
		-0.264563, -0.690245, -0.673475,
		-0.231486, 0.723395, -0.650472,
		30.018700, 36.639133, 34.705898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361877, 35.912827, 34.401432>,  <30.180740, 36.132759, 35.161228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361877, 35.912827, 34.401432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369423, 36.307228, 34.467701>,  <30.373951, 36.543869, 34.507462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369423, 36.307228, 34.467701>,  <30.361877, 35.912827, 34.401432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369423, 36.307228, 34.467701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931164, 0.043018, -0.362053,
		-0.364111, 0.161099, -0.917317,
		0.018866, 0.986000, 0.165673,
		30.375082, 36.603027, 34.517403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570126, 36.289783, 33.783882>,  <30.361877, 35.912827, 34.401432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570126, 36.289783, 33.783882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369221, 36.007889, 33.583450>,  <30.248678, 35.838753, 33.463192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369221, 36.007889, 33.583450>,  <30.570126, 36.289783, 33.783882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369221, 36.007889, 33.583450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664884, 0.055754, -0.744863,
		0.552868, -0.707277, 0.440564,
		-0.502261, -0.704735, -0.501081,
		30.218542, 35.796467, 33.433125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444098, 36.375950, 33.571686>,  <30.570126, 36.289783, 33.783882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444098, 36.375950, 33.571686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781389, 36.178104, 33.655891>,  <31.983765, 36.059395, 33.706413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781389, 36.178104, 33.655891>,  <31.444098, 36.375950, 33.571686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781389, 36.178104, 33.655891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317302, 0.141870, -0.937652,
		0.433914, 0.857453, 0.276573,
		0.843230, -0.494618, 0.210512,
		32.034359, 36.029720, 33.719044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068924, 36.784882, 33.432499>,  <31.444098, 36.375950, 33.571686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068924, 36.784882, 33.432499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177399, 36.400578, 33.409184>,  <32.242485, 36.169994, 33.395195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177399, 36.400578, 33.409184>,  <32.068924, 36.784882, 33.432499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177399, 36.400578, 33.409184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347259, 0.154141, -0.925014,
		0.897701, 0.230613, 0.375434,
		0.271190, -0.960759, -0.058290,
		32.258755, 36.112350, 33.391697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700012, 36.728073, 33.095001>,  <32.068924, 36.784882, 33.432499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700012, 36.728073, 33.095001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540150, 36.364403, 33.048218>,  <32.444233, 36.146202, 33.020149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540150, 36.364403, 33.048218>,  <32.700012, 36.728073, 33.095001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540150, 36.364403, 33.048218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404116, -0.060225, -0.912723,
		0.822780, -0.412038, 0.391481,
		-0.399654, -0.909174, -0.116960,
		32.420254, 36.091652, 33.013130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157887, 36.260525, 32.647804>,  <32.700012, 36.728073, 33.095001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157887, 36.260525, 32.647804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799168, 36.083630, 32.653103>,  <32.583935, 35.977493, 32.656281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799168, 36.083630, 32.653103>,  <33.157887, 36.260525, 32.647804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799168, 36.083630, 32.653103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155054, -0.342181, -0.926753,
		0.414377, -0.829058, 0.375438,
		-0.896800, -0.442238, 0.013243,
		32.530128, 35.950958, 32.657074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096279, 35.428120, 32.663780>,  <33.157887, 36.260525, 32.647804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096279, 35.428120, 32.663780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830379, 35.645664, 32.458908>,  <32.670841, 35.776192, 32.335983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830379, 35.645664, 32.458908>,  <33.096279, 35.428120, 32.663780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830379, 35.645664, 32.458908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329256, -0.402124, -0.854334,
		-0.670600, -0.736552, 0.088240,
		-0.664745, 0.543863, -0.512179,
		32.630955, 35.808823, 32.305256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707951, 35.040920, 32.381279>,  <33.096279, 35.428120, 32.663780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707951, 35.040920, 32.381279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781376, 35.377384, 32.177807>,  <32.825432, 35.579262, 32.055725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781376, 35.377384, 32.177807>,  <32.707951, 35.040920, 32.381279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781376, 35.377384, 32.177807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398534, -0.536716, -0.743712,
		-0.898597, -0.066208, -0.433752,
		0.183562, 0.841162, -0.508677,
		32.836445, 35.629734, 32.025204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554737, 34.917206, 31.682007>,  <32.707951, 35.040920, 32.381279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554737, 34.917206, 31.682007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814156, 35.221432, 31.669838>,  <32.969807, 35.403969, 31.662537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814156, 35.221432, 31.669838>,  <32.554737, 34.917206, 31.682007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814156, 35.221432, 31.669838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399983, -0.374534, -0.836504,
		-0.647610, 0.530344, -0.547116,
		0.648548, 0.760566, -0.030424,
		33.008720, 35.449600, 31.660711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510090, 35.137901, 31.011698>,  <32.554737, 34.917206, 31.682007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510090, 35.137901, 31.011698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852051, 35.293827, 31.148628>,  <33.057228, 35.387383, 31.230787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852051, 35.293827, 31.148628>,  <32.510090, 35.137901, 31.011698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852051, 35.293827, 31.148628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443641, -0.207254, -0.871911,
		-0.268936, 0.897268, -0.350120,
		0.854901, 0.389816, 0.342327,
		33.108521, 35.410770, 31.251326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716530, 35.594177, 30.514660>,  <32.510090, 35.137901, 31.011698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716530, 35.594177, 30.514660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040016, 35.515190, 30.736284>,  <33.234108, 35.467796, 30.869259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040016, 35.515190, 30.736284>,  <32.716530, 35.594177, 30.514660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040016, 35.515190, 30.736284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535251, -0.143512, -0.832413,
		0.243891, 0.969747, -0.010364,
		0.808717, -0.197471, 0.554059,
		33.282631, 35.455948, 30.902502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276043, 35.816715, 30.198788>,  <32.716530, 35.594177, 30.514660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276043, 35.816715, 30.198788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443108, 35.560337, 30.456390>,  <33.543346, 35.406509, 30.610952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443108, 35.560337, 30.456390>,  <33.276043, 35.816715, 30.198788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443108, 35.560337, 30.456390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750835, -0.155674, -0.641882,
		0.511669, 0.751631, 0.416228,
		0.417662, -0.640950, 0.644004,
		33.568405, 35.368053, 30.649591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966858, 35.885029, 30.029894>,  <33.276043, 35.816715, 30.198788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966858, 35.885029, 30.029894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929028, 35.539223, 30.227345>,  <33.906330, 35.331738, 30.345816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929028, 35.539223, 30.227345>,  <33.966858, 35.885029, 30.029894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929028, 35.539223, 30.227345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695679, -0.412077, -0.588407,
		0.712100, 0.287758, 0.640398,
		-0.094574, -0.864516, 0.493627,
		33.900654, 35.279869, 30.375433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593201, 35.753395, 30.288061>,  <33.966858, 35.885029, 30.029894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593201, 35.753395, 30.288061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392212, 35.408722, 30.259706>,  <34.271618, 35.201920, 30.242695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392212, 35.408722, 30.259706>,  <34.593201, 35.753395, 30.288061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392212, 35.408722, 30.259706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732661, -0.380834, -0.564069,
		0.459053, -0.335364, 0.822680,
		-0.502473, -0.861682, -0.070885,
		34.241470, 35.150219, 30.238441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054832, 35.258839, 30.457531>,  <34.593201, 35.753395, 30.288061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054832, 35.258839, 30.457531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768581, 35.063999, 30.257286>,  <34.596828, 34.947098, 30.137138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768581, 35.063999, 30.257286>,  <35.054832, 35.258839, 30.457531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768581, 35.063999, 30.257286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693321, -0.408420, -0.593716,
		0.084735, -0.771966, 0.629991,
		-0.715629, -0.487095, -0.500613,
		34.553894, 34.917870, 30.107101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316898, 34.628433, 30.472372>,  <35.054832, 35.258839, 30.457531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316898, 34.628433, 30.472372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041698, 34.618862, 30.182247>,  <34.876579, 34.613121, 30.008171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041698, 34.618862, 30.182247>,  <35.316898, 34.628433, 30.472372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041698, 34.618862, 30.182247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692378, -0.321057, -0.646170,
		-0.217407, -0.946758, 0.237454,
		-0.688002, -0.023925, -0.725314,
		34.835297, 34.611687, 29.964653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487190, 33.987926, 30.084438>,  <35.316898, 34.628433, 30.472372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487190, 33.987926, 30.084438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261723, 34.207943, 29.837952>,  <35.126442, 34.339954, 29.690060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261723, 34.207943, 29.837952>,  <35.487190, 33.987926, 30.084438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261723, 34.207943, 29.837952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517710, -0.346048, -0.782450,
		-0.643622, -0.760068, -0.089705,
		-0.563673, 0.550043, -0.616219,
		35.092621, 34.372955, 29.653086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343426, 33.519215, 29.442877>,  <35.487190, 33.987926, 30.084438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343426, 33.519215, 29.442877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261002, 33.897335, 29.341734>,  <35.211548, 34.124207, 29.281048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261002, 33.897335, 29.341734>,  <35.343426, 33.519215, 29.442877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261002, 33.897335, 29.341734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461070, -0.134123, -0.877169,
		-0.863106, -0.297338, -0.408213,
		-0.206065, 0.945305, -0.252856,
		35.199181, 34.180927, 29.265877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955143, 33.481518, 28.740328>,  <35.343426, 33.519215, 29.442877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955143, 33.481518, 28.740328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129040, 33.835548, 28.806828>,  <35.233379, 34.047966, 28.846727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129040, 33.835548, 28.806828>,  <34.955143, 33.481518, 28.740328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129040, 33.835548, 28.806828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361725, -0.002561, -0.932281,
		-0.824715, 0.465438, -0.321267,
		0.434742, 0.885077, 0.166249,
		35.259464, 34.101070, 28.856703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843800, 33.858456, 28.070574>,  <34.955143, 33.481518, 28.740328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843800, 33.858456, 28.070574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160851, 34.015888, 28.256834>,  <35.351082, 34.110348, 28.368589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160851, 34.015888, 28.256834>,  <34.843800, 33.858456, 28.070574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160851, 34.015888, 28.256834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496119, 0.027590, -0.867816,
		-0.354407, 0.918874, -0.173396,
		0.792629, 0.393585, 0.465649,
		35.398640, 34.133965, 28.396528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172745, 34.359497, 27.556265>,  <34.843800, 33.858456, 28.070574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172745, 34.359497, 27.556265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454369, 34.290974, 27.831930>,  <35.623344, 34.249859, 27.997330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454369, 34.290974, 27.831930>,  <35.172745, 34.359497, 27.556265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454369, 34.290974, 27.831930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706538, 0.071402, -0.704063,
		0.071402, 0.982627, 0.171306,
		0.704063, -0.171306, 0.689165,
		35.665588, 34.239582, 28.038679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670383, 34.864525, 27.458616>,  <35.172745, 34.359497, 27.556265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670383, 34.864525, 27.458616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888229, 34.586315, 27.646076>,  <36.018936, 34.419388, 27.758553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888229, 34.586315, 27.646076>,  <35.670383, 34.864525, 27.458616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888229, 34.586315, 27.646076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708586, 0.082661, -0.700766,
		0.448662, 0.713730, 0.537859,
		0.544618, -0.695527, 0.468651,
		36.051613, 34.377659, 27.786671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292820, 35.100876, 27.374895>,  <35.670383, 34.864525, 27.458616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292820, 35.100876, 27.374895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338913, 34.712120, 27.457018>,  <36.366570, 34.478867, 27.506290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338913, 34.712120, 27.457018>,  <36.292820, 35.100876, 27.374895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338913, 34.712120, 27.457018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717186, -0.061603, -0.694154,
		0.687289, 0.227229, 0.689928,
		0.115230, -0.971891, 0.205305,
		36.373482, 34.420551, 27.518610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942574, 35.072849, 27.334433>,  <36.292820, 35.100876, 27.374895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942574, 35.072849, 27.334433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819759, 34.693707, 27.300289>,  <36.746071, 34.466221, 27.279802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819759, 34.693707, 27.300289>,  <36.942574, 35.072849, 27.334433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819759, 34.693707, 27.300289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687619, -0.158939, -0.708462,
		0.657957, -0.276221, 0.700568,
		-0.307039, -0.947861, -0.085359,
		36.727646, 34.409348, 27.274681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521431, 34.700600, 27.293348>,  <36.942574, 35.072849, 27.334433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521431, 34.700600, 27.293348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259388, 34.442196, 27.136631>,  <37.102161, 34.287155, 27.042601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259388, 34.442196, 27.136631>,  <37.521431, 34.700600, 27.293348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259388, 34.442196, 27.136631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681096, -0.280511, -0.676329,
		0.327012, -0.709920, 0.623759,
		-0.655111, -0.646008, -0.391794,
		37.062855, 34.248394, 27.019093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946537, 34.168396, 27.106323>,  <37.521431, 34.700600, 27.293348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946537, 34.168396, 27.106323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610077, 34.160580, 26.890141>,  <37.408203, 34.155888, 26.760431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610077, 34.160580, 26.890141>,  <37.946537, 34.168396, 27.106323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610077, 34.160580, 26.890141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511631, -0.352570, -0.783536,
		-0.175234, -0.935581, 0.306562,
		-0.841146, -0.019544, -0.540455,
		37.357735, 34.154716, 26.728004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840542, 33.422241, 26.868086>,  <37.946537, 34.168396, 27.106323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840542, 33.422241, 26.868086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650620, 33.666908, 26.614969>,  <37.536667, 33.813709, 26.463099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650620, 33.666908, 26.614969>,  <37.840542, 33.422241, 26.868086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650620, 33.666908, 26.614969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539949, -0.365334, -0.758278,
		-0.694994, -0.701708, -0.156807,
		-0.474803, 0.611666, -0.632792,
		37.508179, 33.850407, 26.425131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770508, 33.016178, 26.282942>,  <37.840542, 33.422241, 26.868086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770508, 33.016178, 26.282942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644802, 33.369194, 26.143026>,  <37.569378, 33.581005, 26.059076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644802, 33.369194, 26.143026>,  <37.770508, 33.016178, 26.282942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644802, 33.369194, 26.143026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401795, -0.210177, -0.891284,
		-0.860115, -0.420644, -0.288550,
		-0.314266, 0.882544, -0.349789,
		37.550522, 33.633957, 26.038090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467159, 32.893562, 25.608561>,  <37.770508, 33.016178, 26.282942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467159, 32.893562, 25.608561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546406, 33.284927, 25.585024>,  <37.593952, 33.519745, 25.570902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546406, 33.284927, 25.585024>,  <37.467159, 32.893562, 25.608561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546406, 33.284927, 25.585024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415290, -0.138166, -0.899135,
		-0.887854, 0.153694, -0.433697,
		0.198114, 0.978411, -0.058843,
		37.605839, 33.578449, 25.567371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206558, 33.063942, 24.981449>,  <37.467159, 32.893562, 25.608561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206558, 33.063942, 24.981449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458488, 33.362854, 25.066200>,  <37.609646, 33.542202, 25.117052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458488, 33.362854, 25.066200>,  <37.206558, 33.063942, 24.981449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458488, 33.362854, 25.066200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234970, 0.076698, -0.968972,
		-0.740345, 0.660067, -0.127283,
		0.629824, 0.747281, 0.211879,
		37.647434, 33.587040, 25.129765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108925, 33.617603, 24.402903>,  <37.206558, 33.063942, 24.981449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108925, 33.617603, 24.402903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456482, 33.642811, 24.599291>,  <37.665016, 33.657936, 24.717123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456482, 33.642811, 24.599291>,  <37.108925, 33.617603, 24.402903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456482, 33.642811, 24.599291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494886, -0.131653, -0.858927,
		0.010512, 0.989291, -0.145577,
		0.868894, 0.063015, 0.490970,
		37.717152, 33.661716, 24.746582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580730, 34.157436, 24.064777>,  <37.108925, 33.617603, 24.402903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580730, 34.157436, 24.064777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816063, 33.910904, 24.274157>,  <37.957264, 33.762985, 24.399784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816063, 33.910904, 24.274157>,  <37.580730, 34.157436, 24.064777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816063, 33.910904, 24.274157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594457, -0.109170, -0.796683,
		0.548167, 0.779882, 0.302156,
		0.588332, -0.616333, 0.523449,
		37.992561, 33.726006, 24.431190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259617, 34.310398, 23.808197>,  <37.580730, 34.157436, 24.064777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259617, 34.310398, 23.808197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326473, 33.973503, 24.013214>,  <38.366585, 33.771366, 24.136225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326473, 33.973503, 24.013214>,  <38.259617, 34.310398, 23.808197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326473, 33.973503, 24.013214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696553, -0.267043, -0.665959,
		0.697767, 0.468322, 0.542029,
		0.167138, -0.842237, 0.512545,
		38.376614, 33.720833, 24.166977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963223, 34.241905, 23.898489>,  <38.259617, 34.310398, 23.808197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963223, 34.241905, 23.898489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826607, 33.866661, 23.921473>,  <38.744637, 33.641514, 23.935263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826607, 33.866661, 23.921473>,  <38.963223, 34.241905, 23.898489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826607, 33.866661, 23.921473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744178, -0.307261, -0.593118,
		0.574064, -0.159815, 0.803062,
		-0.341539, -0.938110, 0.057457,
		38.724144, 33.585228, 23.938709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535152, 33.838539, 24.099281>,  <38.963223, 34.241905, 23.898489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535152, 33.838539, 24.099281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260048, 33.596447, 23.938946>,  <39.094986, 33.451191, 23.842745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260048, 33.596447, 23.938946>,  <39.535152, 33.838539, 24.099281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260048, 33.596447, 23.938946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706914, -0.432822, -0.559409,
		0.165083, -0.668099, 0.725528,
		-0.687765, -0.605235, -0.400837,
		39.053719, 33.414875, 23.818695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951946, 33.257927, 23.857731>,  <39.535152, 33.838539, 24.099281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951946, 33.257927, 23.857731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.588589, 33.208717, 23.697884>,  <39.370575, 33.179192, 23.601976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.588589, 33.208717, 23.697884>,  <39.951946, 33.257927, 23.857731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588589, 33.208717, 23.697884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405841, -0.489365, -0.771891,
		-0.100599, -0.863358, 0.494462,
		-0.908390, -0.123021, -0.399616,
		39.316071, 33.171810, 23.577999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892586, 32.549393, 23.523746>,  <39.951946, 33.257927, 23.857731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892586, 32.549393, 23.523746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635509, 32.786831, 23.330008>,  <39.481262, 32.929295, 23.213764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635509, 32.786831, 23.330008>,  <39.892586, 32.549393, 23.523746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635509, 32.786831, 23.330008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298972, -0.387757, -0.871929,
		-0.705379, -0.705190, 0.071742,
		-0.642694, 0.593592, -0.484348,
		39.442699, 32.964909, 23.184704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803253, 32.281933, 22.972137>,  <39.892586, 32.549393, 23.523746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803253, 32.281933, 22.972137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624763, 32.623997, 22.866623>,  <39.517670, 32.829235, 22.803314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624763, 32.623997, 22.866623>,  <39.803253, 32.281933, 22.972137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624763, 32.623997, 22.866623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219463, -0.181191, -0.958648,
		-0.867593, -0.485666, -0.106824,
		-0.446227, 0.855160, -0.263786,
		39.490894, 32.880543, 22.787487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298969, 32.172298, 22.439522>,  <39.803253, 32.281933, 22.972137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298969, 32.172298, 22.439522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407295, 32.553368, 22.384285>,  <39.472290, 32.782009, 22.351143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407295, 32.553368, 22.384285>,  <39.298969, 32.172298, 22.439522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407295, 32.553368, 22.384285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215515, -0.199814, -0.955839,
		-0.938197, 0.229091, -0.259428,
		0.270812, 0.952676, -0.138093,
		39.488537, 32.839169, 22.342857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129517, 32.274113, 21.795843>,  <39.298969, 32.172298, 22.439522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129517, 32.274113, 21.795843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338207, 32.603855, 21.883692>,  <39.463421, 32.801701, 21.936401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338207, 32.603855, 21.883692>,  <39.129517, 32.274113, 21.795843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338207, 32.603855, 21.883692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389145, -0.000869, -0.921176,
		-0.759186, 0.566072, -0.321247,
		0.521731, 0.824355, 0.219624,
		39.494728, 32.851162, 21.949579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034775, 32.692299, 21.176893>,  <39.129517, 32.274113, 21.795843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034775, 32.692299, 21.176893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360249, 32.803600, 21.381050>,  <39.555531, 32.870380, 21.503544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360249, 32.803600, 21.381050>,  <39.034775, 32.692299, 21.176893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360249, 32.803600, 21.381050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495661, 0.126632, -0.859235,
		-0.303716, 0.952124, -0.034881,
		0.813681, 0.278253, 0.510391,
		39.604351, 32.887077, 21.534168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225441, 33.176338, 20.735817>,  <39.034775, 32.692299, 21.176893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225441, 33.176338, 20.735817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544388, 33.107143, 20.967087>,  <39.735756, 33.065628, 21.105848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544388, 33.107143, 20.967087>,  <39.225441, 33.176338, 20.735817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544388, 33.107143, 20.967087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587557, 0.003779, -0.809174,
		0.137792, 0.984917, 0.104653,
		0.797365, -0.172987, 0.578174,
		39.783596, 33.055248, 21.140539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725941, 33.721066, 20.613338>,  <39.225441, 33.176338, 20.735817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725941, 33.721066, 20.613338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946358, 33.419392, 20.756199>,  <40.078606, 33.238388, 20.841915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946358, 33.419392, 20.756199>,  <39.725941, 33.721066, 20.613338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946358, 33.419392, 20.756199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662666, 0.135356, -0.736581,
		0.507179, 0.642556, 0.574362,
		0.551038, -0.754189, 0.357150,
		40.111668, 33.193134, 20.863344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376751, 33.913441, 20.510155>,  <39.725941, 33.721066, 20.613338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376751, 33.913441, 20.510155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391922, 33.514774, 20.539040>,  <40.401024, 33.275574, 20.556370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391922, 33.514774, 20.539040>,  <40.376751, 33.913441, 20.510155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391922, 33.514774, 20.539040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632091, -0.032040, -0.774231,
		0.773965, 0.075009, 0.628770,
		0.037928, -0.996668, 0.072211,
		40.403301, 33.215775, 20.560703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078529, 33.835705, 20.520100>,  <40.376751, 33.913441, 20.510155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078529, 33.835705, 20.520100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920433, 33.493168, 20.387156>,  <40.825573, 33.287647, 20.307388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920433, 33.493168, 20.387156>,  <41.078529, 33.835705, 20.520100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920433, 33.493168, 20.387156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567520, 0.056858, -0.821394,
		0.722290, -0.513273, 0.463518,
		-0.395244, -0.856340, -0.332360,
		40.801861, 33.236267, 20.287447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.651161, 33.433449, 20.223454>,  <41.078529, 33.835705, 20.520100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.651161, 33.433449, 20.223454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358192, 33.212746, 20.063889>,  <41.182411, 33.080326, 19.968149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358192, 33.212746, 20.063889>,  <41.651161, 33.433449, 20.223454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358192, 33.212746, 20.063889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420435, 0.094331, -0.902406,
		0.535536, -0.828655, 0.162887,
		-0.732418, -0.551755, -0.398913,
		41.138466, 33.047218, 19.944214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994732, 32.976513, 19.789076>,  <41.651161, 33.433449, 20.223454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.994732, 32.976513, 19.789076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620712, 32.981709, 19.647360>,  <41.396301, 32.984825, 19.562330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620712, 32.981709, 19.647360>,  <41.994732, 32.976513, 19.789076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620712, 32.981709, 19.647360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353896, 0.093876, -0.930562,
		0.021168, -0.995499, -0.092377,
		-0.935045, 0.012993, -0.354290,
		41.340199, 32.985607, 19.541073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.933338, 32.488297, 19.266077>,  <41.994732, 32.976513, 19.789076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.933338, 32.488297, 19.266077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663315, 32.775604, 19.198692>,  <41.501301, 32.947990, 19.158260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663315, 32.775604, 19.198692>,  <41.933338, 32.488297, 19.266077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663315, 32.775604, 19.198692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359214, 0.120553, -0.925436,
		-0.644404, -0.685241, -0.339393,
		-0.675062, 0.718270, -0.168463,
		41.460796, 32.991085, 19.148153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634510, 32.293270, 18.622431>,  <41.933338, 32.488297, 19.266077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.634510, 32.293270, 18.622431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536484, 32.677532, 18.674723>,  <41.477669, 32.908089, 18.706099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536484, 32.677532, 18.674723>,  <41.634510, 32.293270, 18.622431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536484, 32.677532, 18.674723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364147, 0.216174, -0.905906,
		-0.898522, -0.174399, -0.402795,
		-0.245063, 0.960653, 0.130730,
		41.462963, 32.965729, 18.713942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386673, 32.397472, 17.958675>,  <41.634510, 32.293270, 18.622431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386673, 32.397472, 17.958675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.435596, 32.756317, 18.128492>,  <41.464951, 32.971622, 18.230383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.435596, 32.756317, 18.128492>,  <41.386673, 32.397472, 17.958675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.435596, 32.756317, 18.128492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149395, 0.406237, -0.901472,
		-0.981184, 0.173681, -0.084338,
		0.122308, 0.897110, 0.424541,
		41.472290, 33.025452, 18.255854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929470, 32.881966, 17.658070>,  <41.386673, 32.397472, 17.958675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929470, 32.881966, 17.658070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.225651, 33.107635, 17.804190>,  <41.403358, 33.243038, 17.891861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.225651, 33.107635, 17.804190>,  <40.929470, 32.881966, 17.658070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.225651, 33.107635, 17.804190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173451, 0.364700, -0.914827,
		-0.649345, 0.740745, 0.172186,
		0.740450, 0.564173, 0.365299,
		41.447784, 33.276886, 17.913780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959766, 33.616924, 17.374542>,  <40.929470, 32.881966, 17.658070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959766, 33.616924, 17.374542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.334717, 33.534786, 17.487089>,  <41.559685, 33.485504, 17.554617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.334717, 33.534786, 17.487089>,  <40.959766, 33.616924, 17.374542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334717, 33.534786, 17.487089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345469, 0.444709, -0.826369,
		0.044563, 0.871818, 0.487797,
		0.937372, -0.205345, 0.281368,
		41.615929, 33.473183, 17.571499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398495, 34.277729, 17.592604>,  <40.959766, 33.616924, 17.374542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398495, 34.277729, 17.592604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.583717, 33.977474, 17.404081>,  <41.694851, 33.797321, 17.290968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.583717, 33.977474, 17.404081>,  <41.398495, 34.277729, 17.592604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.583717, 33.977474, 17.404081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353674, 0.644063, -0.678304,
		0.812710, 0.147403, 0.563716,
		0.463053, -0.750636, -0.471304,
		41.722633, 33.752285, 17.262690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088596, 34.746944, 18.122187>,  <41.398495, 34.277729, 17.592604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088596, 34.746944, 18.122187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.313244, 35.071026, 18.189316>,  <41.448032, 35.265472, 18.229593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.313244, 35.071026, 18.189316>,  <41.088596, 34.746944, 18.122187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.313244, 35.071026, 18.189316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159733, -0.305183, 0.938802,
		0.811835, -0.500437, -0.300811,
		0.561614, 0.810201, 0.167822,
		41.481728, 35.314087, 18.239662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741768, 34.893814, 17.686508>,  <41.088596, 34.746944, 18.122187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741768, 34.893814, 17.686508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069084, 35.105633, 17.775928>,  <42.265472, 35.232723, 17.829580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069084, 35.105633, 17.775928>,  <41.741768, 34.893814, 17.686508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069084, 35.105633, 17.775928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494801, -0.451019, -0.742801,
		-0.292526, 0.718441, -0.631088,
		0.818291, 0.529551, 0.223551,
		42.314571, 35.264500, 17.842995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100796, 35.154499, 17.088406>,  <41.741768, 34.893814, 17.686508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100796, 35.154499, 17.088406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357548, 35.101299, 17.390480>,  <42.511597, 35.069378, 17.571724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357548, 35.101299, 17.390480>,  <42.100796, 35.154499, 17.088406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357548, 35.101299, 17.390480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702822, -0.291804, -0.648762,
		0.306653, 0.947186, -0.093826,
		0.641877, -0.133002, 0.755185,
		42.550110, 35.061398, 17.617035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.728714, 35.368492, 16.855335>,  <42.100796, 35.154499, 17.088406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.728714, 35.368492, 16.855335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.784779, 35.099171, 17.145718>,  <42.818417, 34.937576, 17.319946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.784779, 35.099171, 17.145718>,  <42.728714, 35.368492, 16.855335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.784779, 35.099171, 17.145718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706886, -0.445345, -0.549527,
		0.693301, 0.590190, 0.413532,
		0.140161, -0.673308, 0.725955,
		42.826828, 34.897179, 17.363504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.387260, 35.320599, 17.253963>,  <42.728714, 35.368492, 16.855335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.387260, 35.320599, 17.253963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.223869, 34.958622, 17.206255>,  <43.125835, 34.741436, 17.177629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.223869, 34.958622, 17.206255>,  <43.387260, 35.320599, 17.253963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.223869, 34.958622, 17.206255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797314, -0.290140, -0.529254,
		0.444340, -0.311284, 0.840039,
		-0.408477, -0.904943, -0.119270,
		43.101326, 34.687138, 17.170473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.824295, 34.791431, 17.566439>,  <43.387260, 35.320599, 17.253963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.824295, 34.791431, 17.566439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.597443, 34.646088, 17.270781>,  <43.461330, 34.558884, 17.093386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.597443, 34.646088, 17.270781>,  <43.824295, 34.791431, 17.566439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.597443, 34.646088, 17.270781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821879, -0.308129, -0.479136,
		-0.053656, -0.879221, 0.473384,
		-0.567129, -0.363356, -0.739146,
		43.427303, 34.537083, 17.049036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.535824, 35.344788, 18.012245>,  <43.824295, 34.791431, 17.566439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.535824, 35.344788, 18.012245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.206936, 35.401932, 17.791866>,  <43.009602, 35.436218, 17.659639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.206936, 35.401932, 17.791866>,  <43.535824, 35.344788, 18.012245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.206936, 35.401932, 17.791866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465502, 0.388206, 0.795364,
		0.327508, 0.910432, -0.252689,
		-0.822220, 0.142861, -0.550949,
		42.960270, 35.444790, 17.626581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.301949, 36.086182, 18.053993>,  <43.535824, 35.344788, 18.012245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.301949, 36.086182, 18.053993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.000263, 35.833313, 17.982983>,  <42.819252, 35.681591, 17.940376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.000263, 35.833313, 17.982983>,  <43.301949, 36.086182, 18.053993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.000263, 35.833313, 17.982983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567894, 0.492282, 0.659663,
		-0.329625, 0.598346, -0.730293,
		-0.754217, -0.632170, -0.177528,
		42.773998, 35.643661, 17.929724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613537, 36.574535, 17.985130>,  <43.301949, 36.086182, 18.053993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.613537, 36.574535, 17.985130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515701, 36.198631, 18.080652>,  <42.457001, 35.973087, 18.137966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515701, 36.198631, 18.080652>,  <42.613537, 36.574535, 17.985130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515701, 36.198631, 18.080652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572063, 0.338714, 0.747005,
		-0.782892, 0.046096, -0.620448,
		-0.244588, -0.939759, 0.238807,
		42.442326, 35.916702, 18.152294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.009552, 36.668968, 17.878307>,  <42.613537, 36.574535, 17.985130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.009552, 36.668968, 17.878307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045895, 36.349556, 18.116329>,  <42.067699, 36.157909, 18.259142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045895, 36.349556, 18.116329>,  <42.009552, 36.668968, 17.878307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.045895, 36.349556, 18.116329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530039, 0.467087, 0.707735,
		-0.843092, -0.379701, -0.380818,
		0.090852, -0.798535, 0.595054,
		42.073151, 36.109997, 18.294846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312805, 36.516312, 18.184315>,  <42.009552, 36.668968, 17.878307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312805, 36.516312, 18.184315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599583, 36.331638, 18.393253>,  <41.771648, 36.220833, 18.518618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599583, 36.331638, 18.393253>,  <41.312805, 36.516312, 18.184315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.599583, 36.331638, 18.393253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523478, 0.138312, 0.840738,
		-0.460402, -0.876195, -0.142520,
		0.716939, -0.461683, 0.522348,
		41.814663, 36.193134, 18.549957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002728, 36.149902, 18.642017>,  <41.312805, 36.516312, 18.184315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002728, 36.149902, 18.642017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364098, 36.168903, 18.812462>,  <41.580917, 36.180302, 18.914728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364098, 36.168903, 18.812462>,  <41.002728, 36.149902, 18.642017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364098, 36.168903, 18.812462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424372, 0.240733, 0.872901,
		-0.061118, -0.969428, 0.237641,
		0.903423, 0.047498, 0.426111,
		41.635124, 36.183155, 18.940294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042419, 35.740234, 19.284939>,  <41.002728, 36.149902, 18.642017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.042419, 35.740234, 19.284939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354000, 35.986237, 19.333931>,  <41.540951, 36.133835, 19.363327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354000, 35.986237, 19.333931>,  <41.042419, 35.740234, 19.284939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354000, 35.986237, 19.333931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322264, 0.225050, 0.919510,
		0.537936, -0.755728, 0.373497,
		0.778955, 0.615001, 0.122481,
		41.587688, 36.170738, 19.370676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339172, 35.541187, 19.918772>,  <41.042419, 35.740234, 19.284939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339172, 35.541187, 19.918772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.469196, 35.915234, 19.862360>,  <41.547211, 36.139664, 19.828514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.469196, 35.915234, 19.862360>,  <41.339172, 35.541187, 19.918772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469196, 35.915234, 19.862360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053504, 0.167073, 0.984492,
		0.944177, -0.312477, 0.104342,
		0.325064, 0.935118, -0.141028,
		41.566715, 36.195770, 19.820051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910679, 35.644714, 20.398420>,  <41.339172, 35.541187, 19.918772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.910679, 35.644714, 20.398420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763493, 36.006042, 20.310225>,  <41.675182, 36.222839, 20.257307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763493, 36.006042, 20.310225>,  <41.910679, 35.644714, 20.398420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763493, 36.006042, 20.310225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001422, 0.236581, 0.971611,
		0.929838, 0.357832, -0.085769,
		-0.367965, 0.903319, -0.220490,
		41.653103, 36.277039, 20.244078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165443, 36.036636, 20.854889>,  <41.910679, 35.644714, 20.398420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.165443, 36.036636, 20.854889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893940, 36.297398, 20.719654>,  <41.731037, 36.453854, 20.638514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893940, 36.297398, 20.719654>,  <42.165443, 36.036636, 20.854889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.893940, 36.297398, 20.719654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226454, 0.252140, 0.940821,
		0.698572, 0.715153, -0.023516,
		-0.678760, 0.651906, -0.338087,
		41.690311, 36.492970, 20.618227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.343208, 36.773026, 21.173555>,  <42.165443, 36.036636, 20.854889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.343208, 36.773026, 21.173555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961185, 36.734543, 21.061409>,  <41.731972, 36.711452, 20.994122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961185, 36.734543, 21.061409>,  <42.343208, 36.773026, 21.173555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.961185, 36.734543, 21.061409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295295, 0.390807, 0.871820,
		0.025695, 0.915431, -0.401653,
		-0.955061, -0.096204, -0.280364,
		41.674667, 36.705681, 20.977301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.056549, 37.421284, 21.319345>,  <42.343208, 36.773026, 21.173555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.056549, 37.421284, 21.319345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.748077, 37.168667, 21.287256>,  <41.562992, 37.017097, 21.268002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.748077, 37.168667, 21.287256>,  <42.056549, 37.421284, 21.319345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748077, 37.168667, 21.287256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467428, 0.476164, 0.744835,
		-0.432193, 0.611902, -0.662409,
		-0.771181, -0.631541, -0.080225,
		41.516724, 36.979206, 21.263189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570923, 37.861755, 21.533972>,  <42.056549, 37.421284, 21.319345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.570923, 37.861755, 21.533972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408657, 37.497459, 21.564907>,  <41.311298, 37.278881, 21.583467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408657, 37.497459, 21.564907>,  <41.570923, 37.861755, 21.533972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408657, 37.497459, 21.564907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584242, 0.323441, 0.744343,
		-0.702920, 0.256770, -0.663304,
		-0.405665, -0.910744, 0.077338,
		41.286957, 37.224236, 21.588108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884899, 37.914047, 21.478975>,  <41.570923, 37.861755, 21.533972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884899, 37.914047, 21.478975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916965, 37.550117, 21.641846>,  <40.936207, 37.331760, 21.739567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916965, 37.550117, 21.641846>,  <40.884899, 37.914047, 21.478975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916965, 37.550117, 21.641846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737091, 0.220881, 0.638677,
		-0.671022, -0.351324, -0.652917,
		0.080166, -0.909826, 0.407174,
		40.941013, 37.277168, 21.763998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218307, 37.613777, 21.516575>,  <40.884899, 37.914047, 21.478975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218307, 37.613777, 21.516575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437508, 37.429939, 21.796137>,  <40.569027, 37.319637, 21.963873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437508, 37.429939, 21.796137>,  <40.218307, 37.613777, 21.516575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437508, 37.429939, 21.796137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723473, 0.158963, 0.671802,
		-0.419855, -0.873788, -0.245390,
		0.548004, -0.459592, 0.698903,
		40.601910, 37.292061, 22.005808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803032, 37.143044, 21.811882>,  <40.218307, 37.613777, 21.516575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803032, 37.143044, 21.811882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.088009, 37.143753, 22.092571>,  <40.258995, 37.144180, 22.260984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.088009, 37.143753, 22.092571>,  <39.803032, 37.143044, 21.811882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088009, 37.143753, 22.092571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696644, 0.121924, 0.706981,
		-0.084302, -0.992538, 0.088101,
		0.712447, 0.001775, 0.701724,
		40.301743, 37.144287, 22.303089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736259, 36.573902, 22.356882>,  <39.803032, 37.143044, 21.811882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736259, 36.573902, 22.356882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928391, 36.890739, 22.507547>,  <40.043671, 37.080841, 22.597946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928391, 36.890739, 22.507547>,  <39.736259, 36.573902, 22.356882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928391, 36.890739, 22.507547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634610, 0.017420, 0.772636,
		0.605439, -0.610150, 0.511038,
		0.480327, 0.792094, 0.376661,
		40.072487, 37.128368, 22.620546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768551, 36.439621, 23.039900>,  <39.736259, 36.573902, 22.356882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768551, 36.439621, 23.039900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878117, 36.824257, 23.047033>,  <39.943855, 37.055038, 23.051313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878117, 36.824257, 23.047033>,  <39.768551, 36.439621, 23.039900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878117, 36.824257, 23.047033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536757, 0.137459, 0.832464,
		0.798037, -0.237595, 0.553792,
		0.273913, 0.961589, 0.017833,
		39.960289, 37.112732, 23.052383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043648, 36.567165, 23.692730>,  <39.768551, 36.439621, 23.039900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043648, 36.567165, 23.692730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951683, 36.940769, 23.583359>,  <39.896503, 37.164932, 23.517736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951683, 36.940769, 23.583359>,  <40.043648, 36.567165, 23.692730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951683, 36.940769, 23.583359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435720, 0.152434, 0.887080,
		0.870224, 0.323086, 0.371922,
		-0.229910, 0.934012, -0.273427,
		39.882710, 37.220974, 23.501331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237629, 36.995117, 24.231173>,  <40.043648, 36.567165, 23.692730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237629, 36.995117, 24.231173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950714, 37.186905, 24.028938>,  <39.778564, 37.301975, 23.907598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950714, 37.186905, 24.028938>,  <40.237629, 36.995117, 24.231173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950714, 37.186905, 24.028938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485272, 0.176947, 0.856272,
		0.500015, 0.859536, 0.105751,
		-0.717284, 0.479467, -0.505585,
		39.735531, 37.330746, 23.877262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956657, 37.469727, 24.635696>,  <40.237629, 36.995117, 24.231173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956657, 37.469727, 24.635696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670753, 37.452301, 24.356491>,  <39.499210, 37.441845, 24.188969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670753, 37.452301, 24.356491>,  <39.956657, 37.469727, 24.635696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670753, 37.452301, 24.356491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666641, 0.344189, 0.661153,
		0.211445, 0.937889, -0.275055,
		-0.714759, -0.043566, -0.698012,
		39.456326, 37.439232, 24.147087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544285, 38.103359, 24.737637>,  <39.956657, 37.469727, 24.635696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544285, 38.103359, 24.737637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297886, 37.854458, 24.544415>,  <39.150047, 37.705116, 24.428482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297886, 37.854458, 24.544415>,  <39.544285, 38.103359, 24.737637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297886, 37.854458, 24.544415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724480, 0.206736, 0.657562,
		-0.309306, 0.755024, -0.578160,
		-0.616001, -0.622254, -0.483055,
		39.113087, 37.667782, 24.399498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932167, 38.489285, 24.520050>,  <39.544285, 38.103359, 24.737637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932167, 38.489285, 24.520050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824306, 38.104111, 24.522739>,  <38.759590, 37.873005, 24.524353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824306, 38.104111, 24.522739>,  <38.932167, 38.489285, 24.520050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824306, 38.104111, 24.522739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814195, 0.231718, 0.532347,
		-0.514173, 0.138073, -0.846500,
		-0.269652, -0.962934, 0.006725,
		38.743412, 37.815231, 24.524757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125862, 38.421783, 24.453644>,  <38.932167, 38.489285, 24.520050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125862, 38.421783, 24.453644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251820, 38.075710, 24.609747>,  <38.327393, 37.868069, 24.703409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251820, 38.075710, 24.609747>,  <38.125862, 38.421783, 24.453644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251820, 38.075710, 24.609747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780781, -0.002346, 0.624800,
		-0.539649, -0.501454, -0.676256,
		0.314895, -0.865181, 0.390260,
		38.346287, 37.816154, 24.726826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527435, 37.925629, 24.526922>,  <38.125862, 38.421783, 24.453644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527435, 37.925629, 24.526922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797230, 37.779663, 24.783642>,  <37.959106, 37.692085, 24.937674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797230, 37.779663, 24.783642>,  <37.527435, 37.925629, 24.526922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797230, 37.779663, 24.783642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725530, -0.166707, 0.667693,
		-0.136648, -0.916001, -0.377187,
		0.674487, -0.364900, 0.641806,
		37.999577, 37.670189, 24.976181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234768, 37.192879, 24.818371>,  <37.527435, 37.925629, 24.526922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234768, 37.192879, 24.818371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524940, 37.335480, 25.053883>,  <37.699043, 37.421040, 25.195189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524940, 37.335480, 25.053883>,  <37.234768, 37.192879, 24.818371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524940, 37.335480, 25.053883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570747, -0.166551, 0.804058,
		0.384707, -0.919331, 0.082650,
		0.725430, 0.356499, 0.588778,
		37.742569, 37.442429, 25.230516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208408, 36.753273, 25.353706>,  <37.234768, 37.192879, 24.818371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208408, 36.753273, 25.353706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423031, 37.041782, 25.528923>,  <37.551804, 37.214886, 25.634052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423031, 37.041782, 25.528923>,  <37.208408, 36.753273, 25.353706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423031, 37.041782, 25.528923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546366, -0.098671, 0.831714,
		0.643111, -0.685591, 0.341135,
		0.536555, 0.721269, 0.438040,
		37.583996, 37.258163, 25.660336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261536, 36.501442, 26.045164>,  <37.208408, 36.753273, 25.353706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261536, 36.501442, 26.045164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359982, 36.886650, 26.089033>,  <37.419048, 37.117775, 26.115355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359982, 36.886650, 26.089033>,  <37.261536, 36.501442, 26.045164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359982, 36.886650, 26.089033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471855, 0.020208, 0.881444,
		0.846629, -0.268685, 0.459377,
		0.246114, 0.963016, 0.109672,
		37.433815, 37.175556, 26.121935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577610, 36.636158, 26.763680>,  <37.261536, 36.501442, 26.045164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577610, 36.636158, 26.763680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443588, 36.994461, 26.646820>,  <37.363174, 37.209442, 26.576704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443588, 36.994461, 26.646820>,  <37.577610, 36.636158, 26.763680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443588, 36.994461, 26.646820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375355, 0.157502, 0.913401,
		0.864203, 0.415699, 0.283456,
		-0.335055, 0.895761, -0.292148,
		37.343071, 37.263191, 26.559175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851292, 37.065231, 27.233128>,  <37.577610, 36.636158, 26.763680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851292, 37.065231, 27.233128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530613, 37.243496, 27.073793>,  <37.338207, 37.350456, 26.978193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530613, 37.243496, 27.073793>,  <37.851292, 37.065231, 27.233128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530613, 37.243496, 27.073793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397943, 0.099311, 0.912019,
		0.446015, 0.889674, 0.097732,
		-0.801693, 0.445666, -0.398334,
		37.290104, 37.377197, 26.954292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796040, 37.697899, 27.560200>,  <37.851292, 37.065231, 27.233128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796040, 37.697899, 27.560200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430195, 37.638508, 27.409761>,  <37.210690, 37.602875, 27.319498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430195, 37.638508, 27.409761>,  <37.796040, 37.697899, 27.560200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430195, 37.638508, 27.409761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397993, 0.166395, 0.902172,
		-0.071370, 0.974817, -0.211279,
		-0.914608, -0.148475, -0.376095,
		37.155811, 37.593964, 27.296932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398445, 38.203201, 27.876183>,  <37.796040, 37.697899, 27.560200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398445, 38.203201, 27.876183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110649, 37.970802, 27.723986>,  <36.937973, 37.831364, 27.632668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110649, 37.970802, 27.723986>,  <37.398445, 38.203201, 27.876183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110649, 37.970802, 27.723986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484645, 0.027606, 0.874276,
		-0.497452, 0.813434, -0.301442,
		-0.719487, -0.581002, -0.380493,
		36.894802, 37.796501, 27.609838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799023, 38.438412, 28.118315>,  <37.398445, 38.203201, 27.876183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799023, 38.438412, 28.118315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703579, 38.059990, 28.030630>,  <36.646313, 37.832939, 27.978020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703579, 38.059990, 28.030630>,  <36.799023, 38.438412, 28.118315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703579, 38.059990, 28.030630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515151, -0.068045, 0.854394,
		-0.823216, 0.316796, -0.471123,
		-0.238611, -0.946050, -0.219214,
		36.631996, 37.776176, 27.964867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075024, 38.272194, 28.327166>,  <36.799023, 38.438412, 28.118315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075024, 38.272194, 28.327166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233234, 37.907444, 28.283251>,  <36.328159, 37.688595, 28.256903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233234, 37.907444, 28.283251>,  <36.075024, 38.272194, 28.327166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233234, 37.907444, 28.283251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524436, -0.322355, 0.788070,
		-0.754007, -0.254125, -0.605717,
		0.395524, -0.911871, -0.109786,
		36.351891, 37.633884, 28.250315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533974, 37.911545, 28.416651>,  <36.075024, 38.272194, 28.327166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533974, 37.911545, 28.416651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825298, 37.643993, 28.476200>,  <36.000095, 37.483463, 28.511930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825298, 37.643993, 28.476200>,  <35.533974, 37.911545, 28.416651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825298, 37.643993, 28.476200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431609, -0.279038, 0.857818,
		-0.532232, -0.689016, -0.491920,
		0.728315, -0.668876, 0.148873,
		36.043793, 37.443329, 28.520863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240131, 37.226589, 28.398857>,  <35.533974, 37.911545, 28.416651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240131, 37.226589, 28.398857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579037, 37.221451, 28.611265>,  <35.782379, 37.218369, 28.738710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579037, 37.221451, 28.611265>,  <35.240131, 37.226589, 28.398857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579037, 37.221451, 28.611265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475262, -0.464795, 0.747055,
		0.237217, -0.885325, -0.399909,
		0.847263, -0.012848, 0.531019,
		35.833214, 37.217598, 28.770571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032135, 36.729874, 28.827539>,  <35.240131, 37.226589, 28.398857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032135, 36.729874, 28.827539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357685, 36.873020, 29.010643>,  <35.553013, 36.958908, 29.120506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357685, 36.873020, 29.010643>,  <35.032135, 36.729874, 28.827539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357685, 36.873020, 29.010643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447596, -0.116214, 0.886652,
		0.370499, -0.926514, 0.065594,
		0.813873, 0.357863, 0.457761,
		35.601849, 36.980381, 29.147972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271442, 36.255917, 29.429678>,  <35.032135, 36.729874, 28.827539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271442, 36.255917, 29.429678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376183, 36.635983, 29.497353>,  <35.439026, 36.864021, 29.537958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376183, 36.635983, 29.497353>,  <35.271442, 36.255917, 29.429678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376183, 36.635983, 29.497353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424346, -0.044098, 0.904426,
		0.866812, -0.308620, 0.391651,
		0.261852, 0.950163, 0.169187,
		35.454739, 36.921032, 29.548109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218880, 36.326912, 30.225554>,  <35.271442, 36.255917, 29.429678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218880, 36.326912, 30.225554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231728, 36.712971, 30.121660>,  <35.239437, 36.944607, 30.059324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231728, 36.712971, 30.121660>,  <35.218880, 36.326912, 30.225554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231728, 36.712971, 30.121660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476639, 0.243203, 0.844789,
		0.878513, 0.096665, 0.467838,
		0.032118, 0.965147, -0.259731,
		35.241364, 37.002514, 30.043741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716671, 36.641300, 30.734703>,  <35.218880, 36.326912, 30.225554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716671, 36.641300, 30.734703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470924, 36.911404, 30.571447>,  <35.323475, 37.073463, 30.473494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470924, 36.911404, 30.571447>,  <35.716671, 36.641300, 30.734703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470924, 36.911404, 30.571447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300632, 0.277918, 0.912349,
		0.729499, 0.683221, 0.032259,
		-0.614371, 0.675256, -0.408140,
		35.286613, 37.113979, 30.449005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808281, 37.182499, 31.121811>,  <35.716671, 36.641300, 30.734703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808281, 37.182499, 31.121811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465328, 37.285778, 30.943716>,  <35.259556, 37.347748, 30.836859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465328, 37.285778, 30.943716>,  <35.808281, 37.182499, 31.121811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465328, 37.285778, 30.943716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260380, 0.528601, 0.807950,
		0.443965, 0.808650, -0.385981,
		-0.857378, 0.258199, -0.445236,
		35.208115, 37.363239, 30.810144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433887, 36.793579, 30.947418>,  <35.808281, 37.182499, 31.121811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433887, 36.793579, 30.947418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646488, 36.928551, 31.258198>,  <36.774048, 37.009533, 31.444666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646488, 36.928551, 31.258198>,  <36.433887, 36.793579, 30.947418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646488, 36.928551, 31.258198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458579, 0.656567, -0.598853,
		-0.712186, 0.674585, 0.194232,
		0.531503, 0.337424, 0.776948,
		36.805939, 37.029778, 31.491282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511147, 37.503155, 30.810459>,  <36.433887, 36.793579, 30.947418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511147, 37.503155, 30.810459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797337, 37.363079, 31.052277>,  <36.969051, 37.279034, 31.197367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797337, 37.363079, 31.052277>,  <36.511147, 37.503155, 30.810459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797337, 37.363079, 31.052277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692513, 0.241102, -0.679923,
		0.092343, 0.905119, 0.415010,
		0.715470, -0.350186, 0.604543,
		37.011978, 37.258022, 31.233639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907841, 37.977470, 30.706274>,  <36.511147, 37.503155, 30.810459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907841, 37.977470, 30.706274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120068, 37.694675, 30.893324>,  <37.247402, 37.524998, 31.005554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120068, 37.694675, 30.893324>,  <36.907841, 37.977470, 30.706274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120068, 37.694675, 30.893324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765080, 0.161929, -0.623242,
		0.364903, 0.688439, 0.626816,
		0.530564, -0.706987, 0.467623,
		37.279236, 37.482578, 31.033611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554371, 38.301449, 30.631186>,  <36.907841, 37.977470, 30.706274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554371, 38.301449, 30.631186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644276, 37.924038, 30.728546>,  <37.698219, 37.697594, 30.786963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644276, 37.924038, 30.728546>,  <37.554371, 38.301449, 30.631186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644276, 37.924038, 30.728546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749647, 0.007856, -0.661791,
		0.622503, 0.331214, 0.709075,
		0.224765, -0.943523, 0.243404,
		37.711704, 37.640980, 30.801567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263519, 38.267334, 30.939726>,  <37.554371, 38.301449, 30.631186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263519, 38.267334, 30.939726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172272, 37.902969, 30.802204>,  <38.117523, 37.684349, 30.719690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172272, 37.902969, 30.802204>,  <38.263519, 38.267334, 30.939726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172272, 37.902969, 30.802204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832911, 0.000289, -0.553407,
		0.504204, -0.412601, 0.758643,
		-0.228117, -0.910912, -0.343806,
		38.103836, 37.629696, 30.699062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823330, 37.795105, 30.987103>,  <38.263519, 38.267334, 30.939726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823330, 37.795105, 30.987103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600075, 37.609024, 30.712275>,  <38.466122, 37.497375, 30.547379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600075, 37.609024, 30.712275>,  <38.823330, 37.795105, 30.987103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600075, 37.609024, 30.712275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737672, 0.100919, -0.667574,
		0.379898, -0.879430, 0.286844,
		-0.558137, -0.465207, -0.687070,
		38.432632, 37.469463, 30.506153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264660, 37.391518, 30.690876>,  <38.823330, 37.795105, 30.987103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264660, 37.391518, 30.690876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976715, 37.366768, 30.414333>,  <38.803947, 37.351917, 30.248407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976715, 37.366768, 30.414333>,  <39.264660, 37.391518, 30.690876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976715, 37.366768, 30.414333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683812, 0.107814, -0.721650,
		0.119195, -0.992243, -0.035295,
		-0.719857, -0.061882, -0.691358,
		38.760757, 37.348206, 30.206926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546631, 36.828732, 30.141178>,  <39.264660, 37.391518, 30.690876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546631, 36.828732, 30.141178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.263775, 37.078274, 30.008053>,  <39.094063, 37.227997, 29.928179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.263775, 37.078274, 30.008053>,  <39.546631, 36.828732, 30.141178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263775, 37.078274, 30.008053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451978, 0.036848, -0.891268,
		-0.543755, -0.780674, -0.308023,
		-0.707140, 0.623851, -0.332811,
		39.051632, 37.265430, 29.908209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552425, 36.685398, 29.363758>,  <39.546631, 36.828732, 30.141178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552425, 36.685398, 29.363758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371693, 37.041496, 29.386812>,  <39.263252, 37.255154, 29.400644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371693, 37.041496, 29.386812>,  <39.552425, 36.685398, 29.363758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371693, 37.041496, 29.386812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383158, 0.251997, -0.888644,
		-0.805631, -0.379430, -0.454962,
		-0.451828, 0.890242, 0.057635,
		39.236145, 37.308567, 29.404102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245407, 36.834736, 28.691324>,  <39.552425, 36.685398, 29.363758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245407, 36.834736, 28.691324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.284245, 37.187744, 28.875378>,  <39.307549, 37.399551, 28.985809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.284245, 37.187744, 28.875378>,  <39.245407, 36.834736, 28.691324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284245, 37.187744, 28.875378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387836, 0.392224, -0.834112,
		-0.916600, 0.259445, -0.304192,
		0.097095, 0.882524, 0.460135,
		39.313374, 37.452499, 29.013418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996315, 37.424252, 28.092649>,  <39.245407, 36.834736, 28.691324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996315, 37.424252, 28.092649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232864, 37.581375, 28.374353>,  <39.374794, 37.675652, 28.543375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232864, 37.581375, 28.374353>,  <38.996315, 37.424252, 28.092649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232864, 37.581375, 28.374353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483703, 0.525988, -0.699548,
		-0.645221, 0.754345, 0.121051,
		0.591372, 0.392811, 0.704258,
		39.410275, 37.699219, 28.585630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081440, 38.079395, 27.889524>,  <38.996315, 37.424252, 28.092649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081440, 38.079395, 27.889524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393864, 38.011314, 28.129852>,  <39.581318, 37.970467, 28.274050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393864, 38.011314, 28.129852>,  <39.081440, 38.079395, 27.889524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393864, 38.011314, 28.129852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612974, 0.392672, -0.685618,
		-0.119233, 0.903792, 0.411027,
		0.781055, -0.170201, 0.600820,
		39.628181, 37.960255, 28.310099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466137, 38.689804, 27.876188>,  <39.081440, 38.079395, 27.889524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466137, 38.689804, 27.876188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729996, 38.414127, 27.996109>,  <39.888309, 38.248722, 28.068062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729996, 38.414127, 27.996109>,  <39.466137, 38.689804, 27.876188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729996, 38.414127, 27.996109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582816, 0.217200, -0.783039,
		0.474549, 0.691256, 0.544948,
		0.659643, -0.689195, 0.299803,
		39.927887, 38.207371, 28.086050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061104, 38.976223, 27.762100>,  <39.466137, 38.689804, 27.876188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061104, 38.976223, 27.762100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172272, 38.598267, 27.831314>,  <40.238972, 38.371490, 27.872843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172272, 38.598267, 27.831314>,  <40.061104, 38.976223, 27.762100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172272, 38.598267, 27.831314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782153, 0.118013, -0.611809,
		0.557673, 0.305369, 0.771848,
		0.277915, -0.944893, 0.173033,
		40.255646, 38.314800, 27.883224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808723, 39.125225, 27.712666>,  <40.061104, 38.976223, 27.762100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808723, 39.125225, 27.712666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717346, 38.736721, 27.685919>,  <40.662521, 38.503620, 27.669870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717346, 38.736721, 27.685919>,  <40.808723, 39.125225, 27.712666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717346, 38.736721, 27.685919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455079, -0.045812, -0.889272,
		0.860649, -0.233580, 0.452465,
		-0.228444, -0.971258, -0.066869,
		40.648811, 38.445343, 27.665857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426514, 38.761669, 27.705339>,  <40.808723, 39.125225, 27.712666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426514, 38.761669, 27.705339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161453, 38.526485, 27.519785>,  <41.002415, 38.385376, 27.408451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161453, 38.526485, 27.519785>,  <41.426514, 38.761669, 27.705339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161453, 38.526485, 27.519785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547862, 0.041750, -0.835526,
		0.510622, -0.807812, 0.294455,
		-0.662655, -0.587959, -0.463888,
		40.962658, 38.350098, 27.380619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815800, 38.379089, 27.321012>,  <41.426514, 38.761669, 27.705339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.815800, 38.379089, 27.321012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465504, 38.302376, 27.143789>,  <41.255325, 38.256348, 27.037455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465504, 38.302376, 27.143789>,  <41.815800, 38.379089, 27.321012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465504, 38.302376, 27.143789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457291, -0.035238, -0.888619,
		0.154809, -0.980805, 0.118560,
		-0.875740, -0.191782, -0.443058,
		41.202782, 38.244843, 27.010872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.905655, 37.640976, 26.896416>,  <41.815800, 38.379089, 27.321012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.905655, 37.640976, 26.896416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.592567, 37.848206, 26.758461>,  <41.404713, 37.972542, 26.675688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.592567, 37.848206, 26.758461>,  <41.905655, 37.640976, 26.896416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.592567, 37.848206, 26.758461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217661, -0.291287, -0.931545,
		-0.583069, -0.804209, 0.115232,
		-0.782722, 0.518073, -0.344885,
		41.357750, 38.003628, 26.654995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508778, 37.185749, 26.465511>,  <41.905655, 37.640976, 26.896416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508778, 37.185749, 26.465511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413151, 37.550251, 26.331375>,  <41.355774, 37.768951, 26.250893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413151, 37.550251, 26.331375>,  <41.508778, 37.185749, 26.465511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413151, 37.550251, 26.331375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257196, -0.273592, -0.926821,
		-0.936320, -0.307825, -0.168964,
		-0.239072, 0.911258, -0.335341,
		41.341431, 37.823627, 26.230772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135406, 37.038376, 25.848778>,  <41.508778, 37.185749, 26.465511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135406, 37.038376, 25.848778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272072, 37.412285, 25.809849>,  <41.354073, 37.636631, 25.786491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272072, 37.412285, 25.809849>,  <41.135406, 37.038376, 25.848778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272072, 37.412285, 25.809849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176969, -0.165689, -0.970169,
		-0.923011, 0.314248, -0.222035,
		0.341663, 0.934770, -0.097321,
		41.374569, 37.692715, 25.780653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838757, 37.397095, 25.215294>,  <41.135406, 37.038376, 25.848778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838757, 37.397095, 25.215294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.181664, 37.582035, 25.305922>,  <41.387405, 37.692997, 25.360298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.181664, 37.582035, 25.305922>,  <40.838757, 37.397095, 25.215294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181664, 37.582035, 25.305922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324961, -0.144528, -0.934619,
		-0.399373, 0.874841, -0.274143,
		0.857264, 0.462348, 0.226568,
		41.438843, 37.720741, 25.373892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974888, 37.808746, 24.632269>,  <40.838757, 37.397095, 25.215294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974888, 37.808746, 24.632269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.320076, 37.836262, 24.832493>,  <41.527187, 37.852772, 24.952627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.320076, 37.836262, 24.832493>,  <40.974888, 37.808746, 24.632269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.320076, 37.836262, 24.832493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468687, 0.261094, -0.843897,
		-0.188740, 0.962860, 0.193076,
		0.862966, 0.068785, 0.500559,
		41.578964, 37.856895, 24.982660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355675, 38.287533, 24.123657>,  <40.974888, 37.808746, 24.632269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355675, 38.287533, 24.123657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630341, 38.104427, 24.349558>,  <41.795139, 37.994564, 24.485098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630341, 38.104427, 24.349558>,  <41.355675, 38.287533, 24.123657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630341, 38.104427, 24.349558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590165, -0.102612, -0.800735,
		0.424498, 0.883133, 0.199696,
		0.686664, -0.457763, 0.564753,
		41.836338, 37.967098, 24.518984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990738, 38.657593, 23.961990>,  <41.355675, 38.287533, 24.123657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990738, 38.657593, 23.961990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.097004, 38.297188, 24.099163>,  <42.160763, 38.080944, 24.181467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.097004, 38.297188, 24.099163>,  <41.990738, 38.657593, 23.961990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097004, 38.297188, 24.099163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539111, -0.156052, -0.827651,
		0.799238, 0.404756, 0.444288,
		0.265665, -0.901011, 0.342931,
		42.176704, 38.026886, 24.202042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613022, 38.674480, 23.820713>,  <41.990738, 38.657593, 23.961990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.613022, 38.674480, 23.820713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.512032, 38.289772, 23.863153>,  <42.451435, 38.058949, 23.888618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.512032, 38.289772, 23.863153>,  <42.613022, 38.674480, 23.820713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.512032, 38.289772, 23.863153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498739, -0.223316, -0.837490,
		0.829165, -0.158531, 0.536053,
		-0.252478, -0.961768, 0.106101,
		42.436287, 38.001240, 23.894983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.273994, 38.338165, 23.811575>,  <42.613022, 38.674480, 23.820713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.273994, 38.338165, 23.811575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.983208, 38.080658, 23.716011>,  <42.808735, 37.926151, 23.658672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.983208, 38.080658, 23.716011>,  <43.273994, 38.338165, 23.811575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.983208, 38.080658, 23.716011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560978, -0.356142, -0.747306,
		0.396008, -0.677290, 0.620045,
		-0.726967, -0.643770, -0.238910,
		42.765118, 37.887527, 23.644339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.485050, 37.745419, 23.827814>,  <43.273994, 38.338165, 23.811575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.485050, 37.745419, 23.827814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.183395, 37.660446, 23.579250>,  <43.002403, 37.609463, 23.430111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.183395, 37.660446, 23.579250>,  <43.485050, 37.745419, 23.827814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.183395, 37.660446, 23.579250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630924, -0.496951, -0.595797,
		-0.182245, -0.841376, 0.508796,
		-0.754136, -0.212431, -0.621411,
		42.957153, 37.596718, 23.392826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.565426, 37.079433, 23.673311>,  <43.485050, 37.745419, 23.827814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.565426, 37.079433, 23.673311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332603, 37.183311, 23.365086>,  <43.192909, 37.245640, 23.180151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332603, 37.183311, 23.365086>,  <43.565426, 37.079433, 23.673311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.332603, 37.183311, 23.365086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547953, -0.574893, -0.607656,
		-0.600798, -0.775923, 0.192318,
		-0.582056, 0.259697, -0.770563,
		43.157986, 37.261219, 23.133917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.414989, 36.459576, 23.274145>,  <43.565426, 37.079433, 23.673311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.414989, 36.459576, 23.274145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.350567, 36.760635, 23.018778>,  <43.311913, 36.941273, 22.865557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.350567, 36.760635, 23.018778>,  <43.414989, 36.459576, 23.274145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.350567, 36.760635, 23.018778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609631, -0.432836, -0.664080,
		-0.776150, -0.496157, -0.389126,
		-0.161061, 0.752650, -0.638418,
		43.302250, 36.986431, 22.827251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.222706, 36.123920, 22.523951>,  <43.414989, 36.459576, 23.274145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.222706, 36.123920, 22.523951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316513, 36.510891, 22.485821>,  <43.372799, 36.743073, 22.462942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316513, 36.510891, 22.485821>,  <43.222706, 36.123920, 22.523951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.316513, 36.510891, 22.485821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505659, -0.205151, -0.837987,
		-0.830247, 0.148322, -0.537299,
		0.234519, 0.967426, -0.095326,
		43.386868, 36.801121, 22.457224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.974255, 36.298943, 21.915319>,  <43.222706, 36.123920, 22.523951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.974255, 36.298943, 21.915319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.280685, 36.533997, 22.019478>,  <43.464546, 36.675030, 22.081972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.280685, 36.533997, 22.019478>,  <42.974255, 36.298943, 21.915319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.280685, 36.533997, 22.019478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551716, -0.393359, -0.735444,
		-0.329746, 0.707072, -0.625553,
		0.766079, 0.587637, 0.260394,
		43.510509, 36.710289, 22.097595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.247772, 36.572983, 21.231768>,  <42.974255, 36.298943, 21.915319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.247772, 36.572983, 21.231768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.555019, 36.623123, 21.482933>,  <43.739368, 36.653210, 21.633633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.555019, 36.623123, 21.482933>,  <43.247772, 36.572983, 21.231768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.555019, 36.623123, 21.482933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597025, -0.494624, -0.631592,
		0.231409, 0.860019, -0.454771,
		0.768122, 0.125353, 0.627913,
		43.785458, 36.660728, 21.671307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.802830, 36.881210, 20.824331>,  <43.247772, 36.572983, 21.231768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.802830, 36.881210, 20.824331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981792, 36.734055, 21.150393>,  <44.089172, 36.645760, 21.346029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981792, 36.734055, 21.150393>,  <43.802830, 36.881210, 20.824331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.981792, 36.734055, 21.150393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697805, -0.426484, -0.575482,
		0.559367, 0.826296, 0.065904,
		0.447411, -0.367894, 0.815155,
		44.116016, 36.623688, 21.394939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.552921, 37.085602, 20.770395>,  <43.802830, 36.881210, 20.824331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.552921, 37.085602, 20.770395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.520756, 36.754665, 20.992758>,  <44.501457, 36.556103, 21.126175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.520756, 36.754665, 20.992758>,  <44.552921, 37.085602, 20.770395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.520756, 36.754665, 20.992758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729747, -0.428767, -0.532567,
		0.678972, 0.362849, 0.638231,
		-0.080411, -0.827345, 0.555909,
		44.496632, 36.506462, 21.159531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.183617, 36.855350, 20.738403>,  <44.552921, 37.085602, 20.770395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.183617, 36.855350, 20.738403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.021320, 36.540047, 20.923450>,  <44.923943, 36.350864, 21.034479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.021320, 36.540047, 20.923450>,  <45.183617, 36.855350, 20.738403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.021320, 36.540047, 20.923450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838026, -0.522875, -0.155930,
		0.364805, 0.324419, 0.872737,
		-0.405745, -0.788260, 0.462619,
		44.899597, 36.303570, 21.062237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.629738, 36.582481, 21.324959>,  <45.183617, 36.855350, 20.738403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.629738, 36.582481, 21.324959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.388454, 36.283871, 21.212652>,  <45.243683, 36.104706, 21.145267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.388454, 36.283871, 21.212652>,  <45.629738, 36.582481, 21.324959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.388454, 36.283871, 21.212652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794656, -0.592646, -0.131498,
		-0.068229, -0.302436, 0.950724,
		-0.603213, -0.746527, -0.280769,
		45.207489, 36.059914, 21.128422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.021847, 35.991875, 21.499130>,  <45.629738, 36.582481, 21.324959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.021847, 35.991875, 21.499130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.753376, 35.861012, 21.233049>,  <45.592293, 35.782494, 21.073400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.753376, 35.861012, 21.233049>,  <46.021847, 35.991875, 21.499130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.753376, 35.861012, 21.233049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707960, -0.548975, -0.444318,
		-0.219815, -0.769151, 0.600074,
		-0.671173, -0.327161, -0.665201,
		45.552025, 35.762863, 21.033489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.894604, 35.300709, 21.663237>,  <46.021847, 35.991875, 21.499130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.894604, 35.300709, 21.663237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.857849, 35.361874, 21.269653>,  <45.835796, 35.398571, 21.033503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.857849, 35.361874, 21.269653>,  <45.894604, 35.300709, 21.663237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.857849, 35.361874, 21.269653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851308, -0.500536, -0.157286,
		-0.516557, -0.852104, -0.084182,
		-0.091888, 0.152912, -0.983959,
		45.830284, 35.407745, 20.974466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.940144, 34.521080, 21.420279>,  <45.894604, 35.300709, 21.663237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.940144, 34.521080, 21.420279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.184776, 34.284569, 21.630554>,  <46.331558, 34.142662, 21.756720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.184776, 34.284569, 21.630554>,  <45.940144, 34.521080, 21.420279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.184776, 34.284569, 21.630554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260508, 0.476891, 0.839470,
		-0.747059, -0.650355, 0.137626,
		0.611586, -0.591281, 0.525688,
		46.368252, 34.107185, 21.788261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.492851, 34.269409, 21.942532>,  <45.940144, 34.521080, 21.420279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.492851, 34.269409, 21.942532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.873074, 34.235256, 22.061964>,  <46.101208, 34.214764, 22.133623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.873074, 34.235256, 22.061964>,  <45.492851, 34.269409, 21.942532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.873074, 34.235256, 22.061964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231265, 0.447062, 0.864090,
		-0.207261, -0.890419, 0.405212,
		0.950558, -0.085380, 0.298581,
		46.158241, 34.209641, 22.151539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.506596, 33.904491, 22.612295>,  <45.492851, 34.269409, 21.942532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.506596, 33.904491, 22.612295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.838764, 34.125378, 22.582722>,  <46.038063, 34.257908, 22.564978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.838764, 34.125378, 22.582722>,  <45.506596, 33.904491, 22.612295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.838764, 34.125378, 22.582722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223410, 0.451615, 0.863789,
		0.510387, -0.700788, 0.498399,
		0.830417, 0.552214, -0.073935,
		46.087891, 34.291042, 22.560541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.851280, 33.711185, 23.149485>,  <45.506596, 33.904491, 22.612295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.851280, 33.711185, 23.149485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.015549, 34.060822, 23.045702>,  <46.114109, 34.270603, 22.983433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.015549, 34.060822, 23.045702>,  <45.851280, 33.711185, 23.149485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.015549, 34.060822, 23.045702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272956, 0.389367, 0.879709,
		0.869970, -0.290448, 0.398488,
		0.410668, 0.874090, -0.259458,
		46.138748, 34.323048, 22.967865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.074100, 33.910141, 23.703762>,  <45.851280, 33.711185, 23.149485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.074100, 33.910141, 23.703762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.079472, 34.257931, 23.506247>,  <46.082695, 34.466606, 23.387737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.079472, 34.257931, 23.506247>,  <46.074100, 33.910141, 23.703762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.079472, 34.257931, 23.506247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371500, 0.462825, 0.804849,
		0.928336, 0.172634, 0.329226,
		0.013430, 0.869477, -0.493790,
		46.083500, 34.518772, 23.358109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.366486, 34.387939, 24.117086>,  <46.074100, 33.910141, 23.703762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.366486, 34.387939, 24.117086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.174717, 34.616707, 23.850836>,  <46.059654, 34.753967, 23.691086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.174717, 34.616707, 23.850836>,  <46.366486, 34.387939, 24.117086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.174717, 34.616707, 23.850836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477672, 0.466217, 0.744629,
		0.736195, 0.674943, 0.049675,
		-0.479423, 0.571921, -0.665628,
		46.030891, 34.788284, 23.651148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.425774, 35.115849, 24.340773>,  <46.366486, 34.387939, 24.117086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.425774, 35.115849, 24.340773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.096947, 35.080585, 24.115765>,  <45.899651, 35.059429, 23.980761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.096947, 35.080585, 24.115765>,  <46.425774, 35.115849, 24.340773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.096947, 35.080585, 24.115765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488604, 0.616468, 0.617440,
		0.292342, 0.782429, -0.549856,
		-0.822072, -0.088158, -0.562518,
		45.850327, 35.054138, 23.947010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.223904, 35.779099, 24.309481>,  <46.425774, 35.115849, 24.340773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.223904, 35.779099, 24.309481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.914570, 35.534504, 24.242500>,  <45.728970, 35.387745, 24.202312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.914570, 35.534504, 24.242500>,  <46.223904, 35.779099, 24.309481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.914570, 35.534504, 24.242500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600257, 0.621149, 0.503850,
		-0.204089, 0.490155, -0.847405,
		-0.773330, -0.611491, -0.167449,
		45.682571, 35.351055, 24.192265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.754330, 36.268433, 24.112011>,  <46.223904, 35.779099, 24.309481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.754330, 36.268433, 24.112011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.549377, 35.932316, 24.182854>,  <45.426407, 35.730644, 24.225359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.549377, 35.932316, 24.182854>,  <45.754330, 36.268433, 24.112011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.549377, 35.932316, 24.182854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696275, 0.527222, 0.487071,
		-0.502658, 0.126252, -0.855217,
		-0.512383, -0.840296, 0.177106,
		45.395664, 35.680225, 24.235985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.011845, 36.464695, 24.019852>,  <45.754330, 36.268433, 24.112011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.011845, 36.464695, 24.019852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.032608, 36.131584, 24.240322>,  <45.045067, 35.931717, 24.372604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.032608, 36.131584, 24.240322>,  <45.011845, 36.464695, 24.019852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.032608, 36.131584, 24.240322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784610, 0.307437, 0.538396,
		-0.617813, -0.460403, -0.637445,
		0.051905, -0.832774, 0.551176,
		45.048180, 35.881752, 24.405674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.288246, 36.398476, 24.255695>,  <45.011845, 36.464695, 24.019852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.288246, 36.398476, 24.255695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.510624, 36.159412, 24.486773>,  <44.644051, 36.015972, 24.625418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.510624, 36.159412, 24.486773>,  <44.288246, 36.398476, 24.255695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.510624, 36.159412, 24.486773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612450, 0.175357, 0.770814,
		-0.561989, -0.782336, -0.268550,
		0.555943, -0.597662, 0.577690,
		44.677406, 35.980114, 24.660080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.905552, 35.941998, 24.576744>,  <44.288246, 36.398476, 24.255695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.905552, 35.941998, 24.576744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.232849, 35.942913, 24.806690>,  <44.429226, 35.943462, 24.944658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.232849, 35.942913, 24.806690>,  <43.905552, 35.941998, 24.576744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.232849, 35.942913, 24.806690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561502, 0.217597, 0.798352,
		-0.123259, -0.976036, 0.179335,
		0.818243, 0.002293, 0.574867,
		44.478321, 35.943600, 24.979151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.679714, 35.558254, 25.156864>,  <43.905552, 35.941998, 24.576744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.679714, 35.558254, 25.156864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995857, 35.763805, 25.290289>,  <44.185543, 35.887135, 25.370344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995857, 35.763805, 25.290289>,  <43.679714, 35.558254, 25.156864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.995857, 35.763805, 25.290289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531582, 0.304558, 0.790357,
		0.304558, -0.801981, 0.513878,
		-0.790357, -0.513878, -0.333563,
		44.232964, 35.917969, 25.390358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.790607, 35.303364, 25.816196>,  <43.679714, 35.558254, 25.156864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.790607, 35.303364, 25.816196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.951500, 35.668835, 25.792864>,  <44.048035, 35.888119, 25.778864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.951500, 35.668835, 25.792864>,  <43.790607, 35.303364, 25.816196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.951500, 35.668835, 25.792864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257625, 0.174096, 0.950431,
		0.878542, -0.367268, 0.305414,
		0.402234, 0.913677, -0.058333,
		44.072170, 35.942936, 25.775364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.186230, 35.299007, 26.377331>,  <43.790607, 35.303364, 25.816196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.186230, 35.299007, 26.377331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.165569, 35.687206, 26.283125>,  <44.153172, 35.920124, 26.226601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.165569, 35.687206, 26.283125>,  <44.186230, 35.299007, 26.377331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.165569, 35.687206, 26.283125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200872, 0.220915, 0.954383,
		0.978255, 0.096608, 0.183534,
		-0.051656, 0.970496, -0.235517,
		44.150074, 35.978355, 26.212469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.583061, 35.706657, 26.940714>,  <44.186230, 35.299007, 26.377331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.583061, 35.706657, 26.940714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.339108, 35.948524, 26.735806>,  <44.192734, 36.093643, 26.612862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.339108, 35.948524, 26.735806>,  <44.583061, 35.706657, 26.940714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.339108, 35.948524, 26.735806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324673, 0.399023, 0.857536,
		0.722930, 0.689318, -0.047039,
		-0.609885, 0.604666, -0.512269,
		44.156143, 36.129925, 26.582125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.796577, 36.482513, 27.127039>,  <44.583061, 35.706657, 26.940714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.796577, 36.482513, 27.127039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.413292, 36.485355, 27.012657>,  <44.183319, 36.487061, 26.944027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.413292, 36.485355, 27.012657>,  <44.796577, 36.482513, 27.127039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.413292, 36.485355, 27.012657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269351, 0.314118, 0.910373,
		0.096289, 0.949357, -0.299081,
		-0.958216, 0.007101, -0.285957,
		44.125828, 36.487484, 26.926870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.419987, 37.143814, 27.266342>,  <44.796577, 36.482513, 27.127039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.419987, 37.143814, 27.266342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152828, 36.846382, 27.279009>,  <43.992531, 36.667923, 27.286610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152828, 36.846382, 27.279009>,  <44.419987, 37.143814, 27.266342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.152828, 36.846382, 27.279009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282681, 0.292812, 0.913429,
		-0.688479, 0.601126, -0.405764,
		-0.667898, -0.743578, 0.031668,
		43.952457, 36.623310, 27.288509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.936798, 37.463017, 27.573019>,  <44.419987, 37.143814, 27.266342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.936798, 37.463017, 27.573019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.792870, 37.089958, 27.583595>,  <43.706512, 36.866123, 27.589941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.792870, 37.089958, 27.583595>,  <43.936798, 37.463017, 27.573019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.792870, 37.089958, 27.583595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517251, 0.222980, 0.826275,
		-0.776519, 0.283633, -0.562646,
		-0.359818, -0.932648, 0.026439,
		43.684925, 36.810165, 27.591526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.198479, 37.497654, 27.601181>,  <43.936798, 37.463017, 27.573019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.198479, 37.497654, 27.601181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.275845, 37.124039, 27.721291>,  <43.322262, 36.899868, 27.793356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.275845, 37.124039, 27.721291>,  <43.198479, 37.497654, 27.601181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.275845, 37.124039, 27.721291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657313, 0.103850, 0.746428,
		-0.728376, -0.341741, -0.593870,
		0.193411, -0.934039, 0.300273,
		43.333870, 36.843826, 27.811373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.643894, 37.179764, 27.747547>,  <43.198479, 37.497654, 27.601181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.643894, 37.179764, 27.747547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.886124, 36.944439, 27.961897>,  <43.031464, 36.803242, 28.090508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.886124, 36.944439, 27.961897>,  <42.643894, 37.179764, 27.747547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.886124, 36.944439, 27.961897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699523, -0.072494, 0.710923,
		-0.379398, -0.805377, -0.455439,
		0.605578, -0.588313, 0.535876,
		43.067799, 36.767944, 28.122660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268127, 36.635593, 27.955784>,  <42.643894, 37.179764, 27.747547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268127, 36.635593, 27.955784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.570602, 36.627781, 28.217409>,  <42.752087, 36.623093, 28.374384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.570602, 36.627781, 28.217409>,  <42.268127, 36.635593, 27.955784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.570602, 36.627781, 28.217409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652431, 0.054126, 0.755913,
		-0.050163, -0.998343, 0.028189,
		0.756186, -0.019528, 0.654065,
		42.797459, 36.621922, 28.413630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078243, 36.142490, 28.425823>,  <42.268127, 36.635593, 27.955784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078243, 36.142490, 28.425823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.358421, 36.364517, 28.605278>,  <42.526527, 36.497734, 28.712950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.358421, 36.364517, 28.605278>,  <42.078243, 36.142490, 28.425823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.358421, 36.364517, 28.605278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554070, 0.026690, 0.832042,
		0.449862, -0.831379, 0.326239,
		0.700450, 0.555064, 0.448636,
		42.568558, 36.531036, 28.739868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984966, 35.854782, 29.023514>,  <42.078243, 36.142490, 28.425823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984966, 35.854782, 29.023514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.165745, 36.210835, 29.046902>,  <42.274212, 36.424465, 29.060934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.165745, 36.210835, 29.046902>,  <41.984966, 35.854782, 29.023514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.165745, 36.210835, 29.046902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508693, 0.203325, 0.836594,
		0.732788, -0.407837, 0.544694,
		0.451943, 0.890128, 0.058470,
		42.301327, 36.477875, 29.064444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.051510, 35.949368, 29.722063>,  <41.984966, 35.854782, 29.023514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.051510, 35.949368, 29.722063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.099388, 36.306499, 29.548380>,  <42.128113, 36.520779, 29.444170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.099388, 36.306499, 29.548380>,  <42.051510, 35.949368, 29.722063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.099388, 36.306499, 29.548380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397431, 0.443869, 0.803137,
		0.909792, 0.076437, 0.407966,
		0.119694, 0.892826, -0.434207,
		42.135296, 36.574348, 29.418118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.352398, 36.316982, 30.304070>,  <42.051510, 35.949368, 29.722063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.352398, 36.316982, 30.304070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.193596, 36.588890, 30.057396>,  <42.098312, 36.752033, 29.909391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.193596, 36.588890, 30.057396>,  <42.352398, 36.316982, 30.304070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193596, 36.588890, 30.057396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398134, 0.477848, 0.783040,
		0.826966, 0.556397, 0.080929,
		-0.397009, 0.679768, -0.616684,
		42.074493, 36.792820, 29.872391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.529793, 37.000256, 30.513998>,  <42.352398, 36.316982, 30.304070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.529793, 37.000256, 30.513998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194340, 37.048512, 30.301527>,  <41.993069, 37.077465, 30.174046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194340, 37.048512, 30.301527>,  <42.529793, 37.000256, 30.513998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.194340, 37.048512, 30.301527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352005, 0.624155, 0.697513,
		0.415686, 0.771930, -0.480967,
		-0.838628, 0.120644, -0.531175,
		41.942753, 37.084705, 30.142174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302738, 37.655483, 30.711512>,  <42.529793, 37.000256, 30.513998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302738, 37.655483, 30.711512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965828, 37.550171, 30.523361>,  <41.763683, 37.486984, 30.410471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965828, 37.550171, 30.523361>,  <42.302738, 37.655483, 30.711512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965828, 37.550171, 30.523361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538674, 0.443572, 0.716291,
		0.020058, 0.856694, -0.515434,
		-0.842275, -0.263284, -0.470376,
		41.713146, 37.471184, 30.382248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811462, 38.253735, 30.661428>,  <42.302738, 37.655483, 30.711512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811462, 38.253735, 30.661428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.576797, 37.929913, 30.652918>,  <41.435997, 37.735619, 30.647812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.576797, 37.929913, 30.652918>,  <41.811462, 38.253735, 30.661428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576797, 37.929913, 30.652918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549367, 0.378537, 0.744920,
		-0.594997, 0.448705, -0.666815,
		-0.586663, -0.809551, -0.021276,
		41.400799, 37.687046, 30.646536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052860, 38.471870, 30.673761>,  <41.811462, 38.253735, 30.661428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052860, 38.471870, 30.673761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.095825, 38.098354, 30.810287>,  <41.121605, 37.874245, 30.892204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.095825, 38.098354, 30.810287>,  <41.052860, 38.471870, 30.673761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095825, 38.098354, 30.810287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418964, 0.268820, 0.867297,
		-0.901627, -0.236155, -0.362352,
		0.107409, -0.933792, 0.341316,
		41.128048, 37.818218, 30.912682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412781, 38.446049, 31.156796>,  <41.052860, 38.471870, 30.673761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412781, 38.446049, 31.156796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632988, 38.124962, 31.248508>,  <40.765114, 37.932308, 31.303535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632988, 38.124962, 31.248508>,  <40.412781, 38.446049, 31.156796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632988, 38.124962, 31.248508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370166, 0.011454, 0.928895,
		-0.748270, -0.596245, -0.290834,
		0.550518, -0.802721, 0.229281,
		40.798141, 37.884144, 31.317293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050735, 37.963676, 31.484190>,  <40.412781, 38.446049, 31.156796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050735, 37.963676, 31.484190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408867, 37.823277, 31.593872>,  <40.623745, 37.739037, 31.659681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408867, 37.823277, 31.593872>,  <40.050735, 37.963676, 31.484190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408867, 37.823277, 31.593872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343883, -0.153470, 0.926386,
		-0.283082, -0.923712, -0.258109,
		0.895326, -0.351003, 0.274204,
		40.677464, 37.717976, 31.676134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837471, 37.410767, 31.906740>,  <40.050735, 37.963676, 31.484190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837471, 37.410767, 31.906740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205139, 37.520016, 32.020256>,  <40.425739, 37.585564, 32.088367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205139, 37.520016, 32.020256>,  <39.837471, 37.410767, 31.906740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205139, 37.520016, 32.020256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226280, -0.223573, 0.948057,
		0.322380, -0.935640, -0.143699,
		0.919167, 0.273118, 0.283792,
		40.480888, 37.601952, 32.105392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044640, 36.839146, 32.283375>,  <39.837471, 37.410767, 31.906740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044640, 36.839146, 32.283375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275326, 37.154129, 32.370377>,  <40.413738, 37.343117, 32.422577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275326, 37.154129, 32.370377>,  <40.044640, 36.839146, 32.283375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275326, 37.154129, 32.370377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069216, -0.218187, 0.973449,
		0.814006, -0.576460, -0.071328,
		0.576717, 0.787457, 0.217506,
		40.448341, 37.390366, 32.435627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389595, 36.585896, 32.795116>,  <40.044640, 36.839146, 32.283375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389595, 36.585896, 32.795116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484337, 36.972374, 32.835838>,  <40.541183, 37.204262, 32.860271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484337, 36.972374, 32.835838>,  <40.389595, 36.585896, 32.795116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484337, 36.972374, 32.835838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083742, -0.124695, 0.988655,
		0.967929, -0.225644, -0.110446,
		0.236856, 0.966196, 0.101800,
		40.555393, 37.262234, 32.866379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966934, 36.742470, 33.217182>,  <40.389595, 36.585896, 32.795116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966934, 36.742470, 33.217182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718048, 37.051266, 33.269138>,  <40.568714, 37.236546, 33.300312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718048, 37.051266, 33.269138>,  <40.966934, 36.742470, 33.217182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718048, 37.051266, 33.269138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200960, -0.317869, 0.926593,
		0.756612, 0.550440, 0.352923,
		-0.622217, 0.771994, 0.129887,
		40.531384, 37.282864, 33.308105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967293, 36.792801, 33.912830>,  <40.966934, 36.742470, 33.217182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967293, 36.792801, 33.912830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673267, 37.054386, 33.841267>,  <40.496853, 37.211338, 33.798328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673267, 37.054386, 33.841267>,  <40.967293, 36.792801, 33.912830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673267, 37.054386, 33.841267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518350, -0.371967, 0.770035,
		0.437030, 0.658762, 0.612403,
		-0.735063, 0.653967, -0.178909,
		40.452747, 37.250576, 33.787594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862278, 37.128178, 34.512676>,  <40.967293, 36.792801, 33.912830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862278, 37.128178, 34.512676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516392, 37.181004, 34.318840>,  <40.308861, 37.212700, 34.202538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516392, 37.181004, 34.318840>,  <40.862278, 37.128178, 34.512676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516392, 37.181004, 34.318840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496592, -0.369425, 0.785444,
		-0.075293, 0.919828, 0.385029,
		-0.864712, 0.132064, -0.484594,
		40.256977, 37.220623, 34.173462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341942, 37.482185, 34.960064>,  <40.862278, 37.128178, 34.512676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341942, 37.482185, 34.960064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.124374, 37.283165, 34.689777>,  <39.993835, 37.163754, 34.527603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.124374, 37.283165, 34.689777>,  <40.341942, 37.482185, 34.960064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124374, 37.283165, 34.689777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507484, -0.446262, 0.737095,
		-0.668293, 0.743834, -0.009772,
		-0.543916, -0.497555, -0.675718,
		39.961201, 37.133900, 34.487061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645309, 37.518093, 35.206673>,  <40.341942, 37.482185, 34.960064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645309, 37.518093, 35.206673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633263, 37.208168, 34.954082>,  <39.626034, 37.022213, 34.802528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633263, 37.208168, 34.954082>,  <39.645309, 37.518093, 35.206673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633263, 37.208168, 34.954082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423045, -0.562510, 0.710363,
		-0.905608, 0.288538, -0.310838,
		-0.030118, -0.774809, -0.631478,
		39.624226, 36.975727, 34.764641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103287, 37.232952, 35.347828>,  <39.645309, 37.518093, 35.206673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103287, 37.232952, 35.347828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302845, 36.929710, 35.179832>,  <39.422581, 36.747765, 35.079037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302845, 36.929710, 35.179832>,  <39.103287, 37.232952, 35.347828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302845, 36.929710, 35.179832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448671, -0.640531, 0.623229,
		-0.741484, -0.122490, -0.659695,
		0.498895, -0.758100, -0.419985,
		39.452515, 36.702282, 35.053837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633911, 36.683228, 35.216022>,  <39.103287, 37.232952, 35.347828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633911, 36.683228, 35.216022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989048, 36.502686, 35.251839>,  <39.202129, 36.394360, 35.273327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989048, 36.502686, 35.251839>,  <38.633911, 36.683228, 35.216022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989048, 36.502686, 35.251839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393407, -0.643631, 0.656483,
		-0.238676, -0.618078, -0.749008,
		0.887843, -0.451352, 0.089538,
		39.255402, 36.367279, 35.278702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570919, 35.917042, 35.197361>,  <38.633911, 36.683228, 35.216022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570919, 35.917042, 35.197361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909691, 35.995686, 35.394966>,  <39.112953, 36.042873, 35.513531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909691, 35.995686, 35.394966>,  <38.570919, 35.917042, 35.197361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909691, 35.995686, 35.394966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259356, -0.658332, 0.706636,
		0.464158, -0.726598, -0.506569,
		0.846931, 0.196609, 0.494018,
		39.163769, 36.054668, 35.543171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909481, 35.249783, 35.294903>,  <38.570919, 35.917042, 35.197361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909481, 35.249783, 35.294903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017159, 35.527176, 35.562222>,  <39.081764, 35.693611, 35.722610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017159, 35.527176, 35.562222>,  <38.909481, 35.249783, 35.294903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017159, 35.527176, 35.562222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255359, -0.617678, 0.743818,
		0.928617, -0.370882, 0.010815,
		0.269189, 0.693484, 0.668294,
		39.097916, 35.735222, 35.762711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371334, 34.942787, 35.785332>,  <38.909481, 35.249783, 35.294903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371334, 34.942787, 35.785332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176411, 35.256824, 35.938251>,  <39.059456, 35.445248, 36.030003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176411, 35.256824, 35.938251>,  <39.371334, 34.942787, 35.785332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176411, 35.256824, 35.938251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204751, -0.528329, 0.823982,
		0.848884, 0.323260, 0.418210,
		-0.487313, 0.785094, 0.382302,
		39.030216, 35.492352, 36.052940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999939, 34.733055, 35.284630>,  <39.371334, 34.942787, 35.785332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999939, 34.733055, 35.284630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194225, 34.762081, 35.633072>,  <40.310795, 34.779495, 35.842136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194225, 34.762081, 35.633072>,  <39.999939, 34.733055, 35.284630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194225, 34.762081, 35.633072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462553, -0.824254, 0.326573,
		0.741705, -0.561551, -0.366788,
		0.485714, 0.072562, 0.871101,
		40.339939, 34.783848, 35.894402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280212, 34.080921, 35.482151>,  <39.999939, 34.733055, 35.284630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280212, 34.080921, 35.482151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260654, 34.288834, 35.823311>,  <40.248920, 34.413582, 36.028008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260654, 34.288834, 35.823311>,  <40.280212, 34.080921, 35.482151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260654, 34.288834, 35.823311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301387, -0.821794, 0.483550,
		0.952248, -0.233411, 0.196834,
		-0.048891, 0.519783, 0.852898,
		40.245987, 34.444767, 36.079182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564827, 33.625694, 36.024094>,  <40.280212, 34.080921, 35.482151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564827, 33.625694, 36.024094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322895, 33.887150, 36.206051>,  <40.177734, 34.044025, 36.315224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322895, 33.887150, 36.206051>,  <40.564827, 33.625694, 36.024094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322895, 33.887150, 36.206051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411775, -0.745632, 0.523902,
		0.681628, 0.129560, 0.720137,
		-0.604834, 0.653641, 0.454894,
		40.141445, 34.083241, 36.342518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674950, 33.605358, 36.858288>,  <40.564827, 33.625694, 36.024094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674950, 33.605358, 36.858288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308037, 33.693710, 36.725742>,  <40.087887, 33.746723, 36.646217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308037, 33.693710, 36.725742>,  <40.674950, 33.605358, 36.858288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308037, 33.693710, 36.725742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387270, -0.688657, 0.613004,
		-0.092794, 0.690626, 0.717234,
		-0.917285, 0.220880, -0.331362,
		40.032852, 33.759975, 36.626335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143127, 33.989685, 37.437981>,  <40.674950, 33.605358, 36.858288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143127, 33.989685, 37.437981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.981888, 33.757923, 37.154629>,  <39.885143, 33.618866, 36.984619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.981888, 33.757923, 37.154629>,  <40.143127, 33.989685, 37.437981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981888, 33.757923, 37.154629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339262, -0.624286, 0.703682,
		-0.849947, 0.523981, 0.055081,
		-0.403103, -0.579405, -0.708377,
		39.860958, 33.584103, 36.942116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527130, 33.616070, 37.330593>,  <40.143127, 33.989685, 37.437981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527130, 33.616070, 37.330593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514370, 33.218914, 37.284729>,  <39.506714, 32.980621, 37.257210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514370, 33.218914, 37.284729>,  <39.527130, 33.616070, 37.330593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514370, 33.218914, 37.284729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969070, 0.002640, 0.246770,
		-0.244713, 0.118985, -0.962267,
		-0.031903, -0.992893, -0.114659,
		39.504799, 32.921047, 37.250332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756565, 33.458534, 37.139114>,  <39.527130, 33.616070, 37.330593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756565, 33.458534, 37.139114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920803, 33.115273, 37.262390>,  <39.019344, 32.909317, 37.336357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920803, 33.115273, 37.262390>,  <38.756565, 33.458534, 37.139114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920803, 33.115273, 37.262390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878666, -0.282069, 0.385206,
		-0.243634, -0.428965, -0.869846,
		0.410596, -0.858153, 0.308195,
		39.043983, 32.857826, 37.354847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091053, 33.555008, 36.767170>,  <38.756565, 33.458534, 37.139114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091053, 33.555008, 36.767170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352654, 33.266411, 36.858150>,  <38.509613, 33.093254, 36.912739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352654, 33.266411, 36.858150>,  <38.091053, 33.555008, 36.767170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352654, 33.266411, 36.858150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742648, -0.669585, 0.011388,
		0.144082, -0.176365, -0.973723,
		0.653999, -0.721492, 0.227452,
		38.548855, 33.049965, 36.926388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034286, 33.058685, 36.194519>,  <38.091053, 33.555008, 36.767170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034286, 33.058685, 36.194519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184219, 32.893814, 36.526691>,  <38.274178, 32.794891, 36.725994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184219, 32.893814, 36.526691>,  <38.034286, 33.058685, 36.194519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184219, 32.893814, 36.526691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721232, -0.692456, -0.018155,
		0.582518, -0.592126, -0.556829,
		0.374830, -0.412178, 0.830429,
		38.296669, 32.770161, 36.775822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872589, 32.357220, 36.089844>,  <38.034286, 33.058685, 36.194519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872589, 32.357220, 36.089844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966873, 32.377716, 36.478031>,  <38.023445, 32.390015, 36.710945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966873, 32.377716, 36.478031>,  <37.872589, 32.357220, 36.089844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966873, 32.377716, 36.478031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574324, -0.798222, 0.181642,
		0.783960, -0.600180, -0.158717,
		0.235709, 0.051245, 0.970472,
		38.037586, 32.393089, 36.769173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988487, 31.699787, 36.340393>,  <37.872589, 32.357220, 36.089844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988487, 31.699787, 36.340393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892887, 31.929829, 36.653351>,  <37.835529, 32.067852, 36.841125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892887, 31.929829, 36.653351>,  <37.988487, 31.699787, 36.340393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892887, 31.929829, 36.653351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540394, -0.748212, 0.384906,
		0.806756, -0.330809, 0.489603,
		-0.238996, 0.575103, 0.782392,
		37.821190, 32.102360, 36.888069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049973, 31.362318, 36.925865>,  <37.988487, 31.699787, 36.340393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049973, 31.362318, 36.925865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790958, 31.644726, 37.040573>,  <37.635551, 31.814171, 37.109398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790958, 31.644726, 37.040573>,  <38.049973, 31.362318, 36.925865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790958, 31.644726, 37.040573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570105, -0.698534, 0.432470,
		0.505651, 0.116549, 0.854829,
		-0.647531, 0.706022, 0.286769,
		37.596699, 31.856533, 37.126602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748695, 31.152737, 37.492336>,  <38.049973, 31.362318, 36.925865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748695, 31.152737, 37.492336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492138, 31.425642, 37.351974>,  <37.338203, 31.589384, 37.267757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492138, 31.425642, 37.351974>,  <37.748695, 31.152737, 37.492336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492138, 31.425642, 37.351974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756272, -0.639208, 0.139519,
		-0.129115, 0.354869, 0.925957,
		-0.641390, 0.682262, -0.350909,
		37.299721, 31.630322, 37.246700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116039, 31.133369, 37.916950>,  <37.748695, 31.152737, 37.492336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116039, 31.133369, 37.916950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005314, 31.279251, 37.561340>,  <36.938877, 31.366779, 37.347973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005314, 31.279251, 37.561340>,  <37.116039, 31.133369, 37.916950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005314, 31.279251, 37.561340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764255, -0.644375, -0.026376,
		-0.582485, 0.672140, 0.457098,
		-0.276814, 0.364703, -0.889025,
		36.922268, 31.388662, 37.294632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305355, 31.257473, 37.900616>,  <37.116039, 31.133369, 37.916950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305355, 31.257473, 37.900616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452408, 31.179321, 37.536930>,  <36.540638, 31.132431, 37.318718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452408, 31.179321, 37.536930>,  <36.305355, 31.257473, 37.900616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452408, 31.179321, 37.536930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713140, -0.686740, -0.140780,
		-0.596890, 0.700153, -0.391801,
		0.367633, -0.195379, -0.909216,
		36.562698, 31.120708, 37.264164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752323, 31.104616, 37.458099>,  <36.305355, 31.257473, 37.900616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752323, 31.104616, 37.458099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081036, 30.946854, 37.293598>,  <36.278263, 30.852196, 37.194897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081036, 30.946854, 37.293598>,  <35.752323, 31.104616, 37.458099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081036, 30.946854, 37.293598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507770, -0.834374, -0.214450,
		-0.258554, 0.385050, -0.885938,
		0.821778, -0.394406, -0.411248,
		36.327568, 30.828531, 37.170223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419865, 30.569998, 37.107681>,  <35.752323, 31.104616, 37.458099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419865, 30.569998, 37.107681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807083, 30.470329, 37.096310>,  <36.039413, 30.410528, 37.089489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807083, 30.470329, 37.096310>,  <35.419865, 30.569998, 37.107681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807083, 30.470329, 37.096310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249187, -0.942878, -0.221102,
		0.028291, 0.221119, -0.974836,
		0.968042, -0.249172, -0.028425,
		36.097496, 30.395578, 37.087784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590767, 30.303623, 36.467236>,  <35.419865, 30.569998, 37.107681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590767, 30.303623, 36.467236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849483, 30.139339, 36.724289>,  <36.004715, 30.040770, 36.878521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849483, 30.139339, 36.724289>,  <35.590767, 30.303623, 36.467236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849483, 30.139339, 36.724289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268719, -0.911302, -0.311959,
		0.713756, 0.029086, -0.699790,
		0.646794, -0.410710, 0.642632,
		36.043522, 30.016127, 36.917080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215054, 30.037699, 36.152920>,  <35.590767, 30.303623, 36.467236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215054, 30.037699, 36.152920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100361, 29.851036, 36.487587>,  <36.031544, 29.739038, 36.688389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100361, 29.851036, 36.487587>,  <36.215054, 30.037699, 36.152920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100361, 29.851036, 36.487587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143230, -0.842641, -0.519077,
		0.947242, -0.268673, 0.174775,
		-0.286735, -0.466658, 0.836668,
		36.014339, 29.711039, 36.738586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642521, 30.540453, 36.700825>,  <36.215054, 30.037699, 36.152920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642521, 30.540453, 36.700825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353844, 30.796101, 36.807178>,  <36.180637, 30.949490, 36.870991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353844, 30.796101, 36.807178>,  <36.642521, 30.540453, 36.700825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353844, 30.796101, 36.807178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658618, 0.752201, -0.020410,
		-0.213040, 0.160384, -0.963790,
		-0.721690, 0.639117, 0.265881,
		36.137337, 30.987835, 36.886944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703613, 31.076677, 36.161362>,  <36.642521, 30.540453, 36.700825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703613, 31.076677, 36.161362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580067, 31.194923, 36.522961>,  <36.505939, 31.265871, 36.739922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580067, 31.194923, 36.522961>,  <36.703613, 31.076677, 36.161362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580067, 31.194923, 36.522961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688953, 0.724805, -0.001626,
		-0.655702, 0.622309, -0.427535,
		-0.308868, 0.295617, 0.903997,
		36.487408, 31.283609, 36.794159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521900, 31.841505, 36.168434>,  <36.703613, 31.076677, 36.161362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521900, 31.841505, 36.168434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645187, 31.714525, 36.527149>,  <36.719158, 31.638338, 36.742378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645187, 31.714525, 36.527149>,  <36.521900, 31.841505, 36.168434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645187, 31.714525, 36.527149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603369, 0.794048, 0.073709,
		-0.735492, 0.518376, 0.436278,
		0.308217, -0.317449, 0.896788,
		36.737652, 31.619291, 36.796185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479088, 32.450630, 36.720116>,  <36.521900, 31.841505, 36.168434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479088, 32.450630, 36.720116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738026, 32.194954, 36.886192>,  <36.893391, 32.041550, 36.985836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738026, 32.194954, 36.886192>,  <36.479088, 32.450630, 36.720116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738026, 32.194954, 36.886192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687926, 0.724517, 0.042813,
		-0.328176, 0.257904, 0.908728,
		0.647347, -0.639188, 0.415188,
		36.932228, 32.003197, 37.010750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755428, 32.845371, 37.204273>,  <36.479088, 32.450630, 36.720116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755428, 32.845371, 37.204273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003273, 32.532608, 37.176842>,  <37.151981, 32.344952, 37.160381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003273, 32.532608, 37.176842>,  <36.755428, 32.845371, 37.204273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003273, 32.532608, 37.176842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767194, 0.621774, -0.157513,
		0.165802, 0.044982, 0.985133,
		0.619615, -0.781904, -0.068582,
		37.189156, 32.298038, 37.156269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319046, 32.945045, 37.738041>,  <36.755428, 32.845371, 37.204273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319046, 32.945045, 37.738041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432098, 32.729836, 37.420387>,  <37.499928, 32.600712, 37.229794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432098, 32.729836, 37.420387>,  <37.319046, 32.945045, 37.738041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432098, 32.729836, 37.420387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732287, 0.655762, -0.183660,
		0.619578, -0.529629, 0.579324,
		0.282627, -0.538023, -0.794137,
		37.516888, 32.568428, 37.182148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143330, 32.904102, 37.788643>,  <37.319046, 32.945045, 37.738041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143330, 32.904102, 37.788643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020512, 32.851170, 37.411663>,  <37.946819, 32.819412, 37.185474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020512, 32.851170, 37.411663>,  <38.143330, 32.904102, 37.788643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020512, 32.851170, 37.411663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711677, 0.625549, -0.319696,
		0.631854, -0.768880, -0.097895,
		-0.307046, -0.132331, -0.942450,
		37.928398, 32.811470, 37.128929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290737, 32.234962, 37.933895>,  <38.143330, 32.904102, 37.788643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290737, 32.234962, 37.933895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276669, 32.226685, 37.534229>,  <38.268227, 32.221718, 37.294430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276669, 32.226685, 37.534229>,  <38.290737, 32.234962, 37.933895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276669, 32.226685, 37.534229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898594, 0.436892, -0.040679,
		0.437370, -0.899276, 0.003234,
		-0.035169, -0.020698, -0.999167,
		38.266117, 32.220474, 37.234478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961090, 32.185585, 37.743145>,  <38.290737, 32.234962, 37.933895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961090, 32.185585, 37.743145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783806, 32.325817, 37.413139>,  <38.677433, 32.409958, 37.215134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783806, 32.325817, 37.413139>,  <38.961090, 32.185585, 37.743145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783806, 32.325817, 37.413139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648910, 0.760439, -0.025468,
		0.618447, -0.546651, -0.564531,
		-0.443214, 0.350580, -0.825019,
		38.650841, 32.430992, 37.165634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430901, 32.189518, 37.173809>,  <38.961090, 32.185585, 37.743145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430901, 32.189518, 37.173809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149021, 32.463223, 37.098789>,  <38.979893, 32.627445, 37.053776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149021, 32.463223, 37.098789>,  <39.430901, 32.189518, 37.173809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149021, 32.463223, 37.098789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709501, 0.680065, -0.184715,
		0.001154, -0.263238, -0.964730,
		-0.704703, 0.684264, -0.187552,
		38.937611, 32.668503, 37.042522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639744, 32.504658, 36.583416>,  <39.430901, 32.189518, 37.173809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639744, 32.504658, 36.583416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393497, 32.770046, 36.753510>,  <39.245750, 32.929279, 36.855564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393497, 32.770046, 36.753510>,  <39.639744, 32.504658, 36.583416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393497, 32.770046, 36.753510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576664, 0.747046, -0.330729,
		-0.537096, 0.041613, -0.842494,
		-0.615619, 0.663469, 0.425232,
		39.208813, 32.969086, 36.881081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565182, 33.139858, 36.143715>,  <39.639744, 32.504658, 36.583416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565182, 33.139858, 36.143715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464195, 33.252674, 36.513950>,  <39.403603, 33.320366, 36.736092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464195, 33.252674, 36.513950>,  <39.565182, 33.139858, 36.143715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464195, 33.252674, 36.513950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331342, 0.923942, -0.191164,
		-0.909106, 0.258425, -0.326715,
		-0.252464, 0.282043, 0.925588,
		39.388454, 33.337288, 36.791626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078163, 33.742775, 36.164547>,  <39.565182, 33.139858, 36.143715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078163, 33.742775, 36.164547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303169, 33.744976, 36.495255>,  <39.438175, 33.746296, 36.693680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303169, 33.744976, 36.495255>,  <39.078163, 33.742775, 36.164547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303169, 33.744976, 36.495255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234341, 0.957908, -0.165821,
		-0.792879, 0.287023, 0.537551,
		0.562519, 0.005506, 0.826766,
		39.471924, 33.746628, 36.743286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019062, 34.411274, 36.458355>,  <39.078163, 33.742775, 36.164547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019062, 34.411274, 36.458355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364815, 34.246490, 36.573685>,  <39.572266, 34.147621, 36.642883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364815, 34.246490, 36.573685>,  <39.019062, 34.411274, 36.458355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364815, 34.246490, 36.573685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450333, 0.889323, -0.079395,
		-0.223707, 0.198470, 0.954235,
		0.864381, -0.411963, 0.288326,
		39.624130, 34.122902, 36.660183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398743, 34.927406, 36.979702>,  <39.019062, 34.411274, 36.458355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398743, 34.927406, 36.979702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635342, 34.677433, 36.775902>,  <39.777302, 34.527451, 36.653622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635342, 34.677433, 36.775902>,  <39.398743, 34.927406, 36.979702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635342, 34.677433, 36.775902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617909, 0.757271, -0.211492,
		0.518001, -0.189730, 0.834073,
		0.591493, -0.624934, -0.509503,
		39.812790, 34.489952, 36.623051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025513, 35.233067, 37.090534>,  <39.398743, 34.927406, 36.979702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025513, 35.233067, 37.090534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098473, 34.975906, 36.792969>,  <40.142250, 34.821609, 36.614429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098473, 34.975906, 36.792969>,  <40.025513, 35.233067, 37.090534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098473, 34.975906, 36.792969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679279, 0.629410, -0.377388,
		0.710851, -0.436493, 0.551511,
		0.182399, -0.642897, -0.743918,
		40.153191, 34.783039, 36.569794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728062, 35.287552, 37.111908>,  <40.025513, 35.233067, 37.090534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728062, 35.287552, 37.111908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679398, 35.233761, 36.718540>,  <40.650200, 35.201485, 36.482521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679398, 35.233761, 36.718540>,  <40.728062, 35.287552, 37.111908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679398, 35.233761, 36.718540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542094, 0.820961, -0.179325,
		0.831465, -0.554922, -0.026973,
		-0.121655, -0.134480, -0.983420,
		40.642902, 35.193417, 36.423515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382175, 35.202862, 36.830479>,  <40.728062, 35.287552, 37.111908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382175, 35.202862, 36.830479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106327, 35.391342, 36.610519>,  <40.940819, 35.504433, 36.478546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106327, 35.391342, 36.610519>,  <41.382175, 35.202862, 36.830479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106327, 35.391342, 36.610519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560469, 0.828148, 0.006755,
		0.458578, -0.303541, -0.835205,
		-0.689623, 0.471204, -0.549896,
		40.899441, 35.532703, 36.445549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593773, 35.393539, 36.116211>,  <41.382175, 35.202862, 36.830479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593773, 35.393539, 36.116211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.355213, 35.604435, 36.358311>,  <41.212078, 35.730972, 36.503571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.355213, 35.604435, 36.358311>,  <41.593773, 35.393539, 36.116211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355213, 35.604435, 36.358311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573632, 0.807391, -0.138081,
		-0.561474, 0.264838, -0.783970,
		-0.596401, 0.527238, 0.605248,
		41.176292, 35.762608, 36.539886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464989, 36.075558, 35.788719>,  <41.593773, 35.393539, 36.116211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464989, 36.075558, 35.788719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439140, 36.089447, 36.187641>,  <41.423634, 36.097778, 36.426994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439140, 36.089447, 36.187641>,  <41.464989, 36.075558, 35.788719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439140, 36.089447, 36.187641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478291, 0.878201, 0.000416,
		-0.875821, 0.477030, -0.073352,
		-0.064617, 0.034719, 0.997306,
		41.419754, 36.099861, 36.486832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074131, 36.137264, 35.344322>,  <41.464989, 36.075558, 35.788719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074131, 36.137264, 35.344322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.421242, 36.329971, 35.295559>,  <42.629509, 36.445595, 35.266300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.421242, 36.329971, 35.295559>,  <42.074131, 36.137264, 35.344322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.421242, 36.329971, 35.295559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346124, -0.761957, -0.547376,
		-0.356593, 0.432807, -0.827961,
		0.867778, 0.481768, -0.121904,
		42.681576, 36.474503, 35.258987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342251, 36.316502, 34.567524>,  <42.074131, 36.137264, 35.344322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.342251, 36.316502, 34.567524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.644558, 36.247993, 34.820339>,  <42.825943, 36.206890, 34.972031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.644558, 36.247993, 34.820339>,  <42.342251, 36.316502, 34.567524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644558, 36.247993, 34.820339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418292, -0.616347, -0.667194,
		0.503828, 0.768624, -0.394176,
		0.755770, -0.171270, 0.632043,
		42.871288, 36.196613, 35.009953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.002895, 36.416451, 34.242825>,  <42.342251, 36.316502, 34.567524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.002895, 36.416451, 34.242825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.049683, 36.122292, 34.509811>,  <43.077755, 35.945797, 34.670002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.049683, 36.122292, 34.509811>,  <43.002895, 36.416451, 34.242825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.049683, 36.122292, 34.509811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577472, -0.496424, -0.648143,
		0.807988, 0.461255, 0.366605,
		0.116967, -0.735396, 0.667467,
		43.084774, 35.901672, 34.710052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.674541, 36.271870, 34.549477>,  <43.002895, 36.416451, 34.242825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.674541, 36.271870, 34.549477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467854, 35.937706, 34.474548>,  <43.343842, 35.737209, 34.429592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467854, 35.937706, 34.474548>,  <43.674541, 36.271870, 34.549477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.467854, 35.937706, 34.474548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811821, -0.408603, -0.417122,
		0.271926, -0.367611, 0.889336,
		-0.516724, -0.835408, -0.187325,
		43.312836, 35.687084, 34.418350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.068233, 35.758198, 34.548740>,  <43.674541, 36.271870, 34.549477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.068233, 35.758198, 34.548740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783058, 35.576107, 34.335392>,  <43.611954, 35.466854, 34.207382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783058, 35.576107, 34.335392>,  <44.068233, 35.758198, 34.548740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.783058, 35.576107, 34.335392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688148, -0.600425, -0.407361,
		-0.134810, -0.657463, 0.741329,
		-0.712937, -0.455227, -0.533375,
		43.569176, 35.439537, 34.175381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.092476, 35.114151, 34.741234>,  <44.068233, 35.758198, 34.548740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.092476, 35.114151, 34.741234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.045120, 35.195217, 34.352409>,  <44.016708, 35.243858, 34.119114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.045120, 35.195217, 34.352409>,  <44.092476, 35.114151, 34.741234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.045120, 35.195217, 34.352409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880444, -0.431226, -0.197134,
		-0.459133, -0.879187, -0.127387,
		-0.118385, 0.202668, -0.972065,
		44.009605, 35.256016, 34.060791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.570438, 34.837395, 35.266720>,  <44.092476, 35.114151, 34.741234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.570438, 34.837395, 35.266720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.672291, 34.497665, 35.081757>,  <43.733402, 34.293827, 34.970779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.672291, 34.497665, 35.081757>,  <43.570438, 34.837395, 35.266720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.672291, 34.497665, 35.081757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722906, -0.484780, 0.492336,
		-0.642318, 0.208917, -0.737416,
		0.254627, -0.849319, -0.462410,
		43.748680, 34.242870, 34.943035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.175533, 34.565975, 35.835552>,  <43.570438, 34.837395, 35.266720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.175533, 34.565975, 35.835552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.048573, 34.885761, 35.631546>,  <42.972397, 35.077633, 35.509144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.048573, 34.885761, 35.631546>,  <43.175533, 34.565975, 35.835552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.048573, 34.885761, 35.631546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427851, 0.600703, 0.675351,
		0.846284, -0.003849, -0.532718,
		-0.317406, 0.799463, -0.510012,
		42.953350, 35.125599, 35.478542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.712811, 34.002113, 35.800072>,  <43.175533, 34.565975, 35.835552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.712811, 34.002113, 35.800072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.703682, 34.044178, 36.197750>,  <42.698204, 34.069416, 36.436356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.703682, 34.044178, 36.197750>,  <42.712811, 34.002113, 35.800072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.703682, 34.044178, 36.197750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449019, 0.889585, -0.083791,
		-0.893231, 0.444498, -0.067527,
		-0.022826, 0.105166, 0.994193,
		42.696835, 34.075729, 36.496010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402397, 34.630531, 35.983879>,  <42.712811, 34.002113, 35.800072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402397, 34.630531, 35.983879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.681679, 34.516872, 36.246716>,  <42.849247, 34.448677, 36.404419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.681679, 34.516872, 36.246716>,  <42.402397, 34.630531, 35.983879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.681679, 34.516872, 36.246716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566229, 0.780827, -0.263996,
		-0.438060, 0.556388, 0.706071,
		0.698204, -0.284152, 0.657091,
		42.891140, 34.431625, 36.443844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662773, 35.241241, 36.381554>,  <42.402397, 34.630531, 35.983879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.662773, 35.241241, 36.381554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934555, 34.948372, 36.400608>,  <43.097626, 34.772652, 36.412041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934555, 34.948372, 36.400608>,  <42.662773, 35.241241, 36.381554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934555, 34.948372, 36.400608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683345, 0.607830, -0.404453,
		0.267171, 0.307362, 0.913317,
		0.679454, -0.732169, 0.047640,
		43.138390, 34.728722, 36.414902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.359032, 35.389568, 36.754345>,  <42.662773, 35.241241, 36.381554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.359032, 35.389568, 36.754345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.415096, 35.085716, 36.500317>,  <43.448734, 34.903404, 36.347900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.415096, 35.085716, 36.500317>,  <43.359032, 35.389568, 36.754345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.415096, 35.085716, 36.500317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695405, 0.532105, -0.482987,
		0.704817, -0.373938, 0.602830,
		0.140162, -0.759628, -0.635075,
		43.457146, 34.857826, 36.309795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.108906, 35.203815, 36.741680>,  <43.359032, 35.389568, 36.754345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.108906, 35.203815, 36.741680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.900517, 35.142998, 36.405712>,  <43.775482, 35.106506, 36.204132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.900517, 35.142998, 36.405712>,  <44.108906, 35.203815, 36.741680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.900517, 35.142998, 36.405712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684770, 0.513004, -0.517607,
		0.509581, -0.844813, -0.163148,
		-0.520977, -0.152044, -0.839920,
		43.744225, 35.097382, 36.153736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.605263, 35.079243, 36.342731>,  <44.108906, 35.203815, 36.741680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.605263, 35.079243, 36.342731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.295998, 35.157841, 36.101532>,  <44.110439, 35.204998, 35.956810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.295998, 35.157841, 36.101532>,  <44.605263, 35.079243, 36.342731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.295998, 35.157841, 36.101532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594181, 0.556860, -0.580394,
		0.221745, -0.807030, -0.547294,
		-0.773162, 0.196492, -0.603003,
		44.064049, 35.216789, 35.920631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.825626, 35.020844, 35.662876>,  <44.605263, 35.079243, 36.342731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.825626, 35.020844, 35.662876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.511021, 35.266823, 35.685600>,  <44.322258, 35.414410, 35.699234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.511021, 35.266823, 35.685600>,  <44.825626, 35.020844, 35.662876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.511021, 35.266823, 35.685600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502159, 0.690368, -0.520796,
		-0.359485, -0.381085, -0.851789,
		-0.786516, 0.614952, 0.056812,
		44.275066, 35.451309, 35.702644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.809807, 35.221699, 34.995705>,  <44.825626, 35.020844, 35.662876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.809807, 35.221699, 34.995705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.604431, 35.486538, 35.214066>,  <44.481205, 35.645443, 35.345081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.604431, 35.486538, 35.214066>,  <44.809807, 35.221699, 34.995705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.604431, 35.486538, 35.214066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437414, 0.749233, -0.497312,
		-0.738276, -0.016554, -0.674295,
		-0.513437, 0.662100, 0.545900,
		44.450401, 35.685169, 35.377834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.144653, 35.817581, 35.302509>,  <44.809807, 35.221699, 34.995705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.144653, 35.817581, 35.302509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.377739, 35.634361, 35.571026>,  <45.517590, 35.524429, 35.732136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.377739, 35.634361, 35.571026>,  <45.144653, 35.817581, 35.302509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.377739, 35.634361, 35.571026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795637, 0.153280, -0.586061,
		0.165548, 0.875613, 0.453758,
		0.582714, -0.458048, 0.671294,
		45.552555, 35.496948, 35.772415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.716373, 36.134041, 35.223824>,  <45.144653, 35.817581, 35.302509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.716373, 36.134041, 35.223824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.857353, 35.835873, 35.450142>,  <45.941940, 35.656971, 35.585934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.857353, 35.835873, 35.450142>,  <45.716373, 36.134041, 35.223824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.857353, 35.835873, 35.450142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822030, -0.042349, -0.567867,
		0.447262, 0.665245, 0.597834,
		0.352453, -0.745423, 0.565793,
		45.963089, 35.612247, 35.619881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.335022, 36.350651, 35.409431>,  <45.716373, 36.134041, 35.223824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.335022, 36.350651, 35.409431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.335842, 35.953472, 35.456844>,  <46.336334, 35.715164, 35.485291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.335842, 35.953472, 35.456844>,  <46.335022, 36.350651, 35.409431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.335842, 35.953472, 35.456844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896841, -0.050605, -0.439449,
		0.442348, 0.107205, 0.890413,
		0.002052, -0.992948, 0.118531,
		46.336456, 35.655586, 35.492405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.879726, 36.052868, 35.762527>,  <46.335022, 36.350651, 35.409431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.879726, 36.052868, 35.762527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.758713, 35.818901, 35.461502>,  <46.686104, 35.678520, 35.280888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.758713, 35.818901, 35.461502>,  <46.879726, 36.052868, 35.762527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.758713, 35.818901, 35.461502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891034, 0.106788, -0.441197,
		0.338426, -0.804035, 0.488872,
		-0.302532, -0.584915, -0.752562,
		46.667953, 35.643425, 35.235733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.435818, 36.116447, 35.447922>,  <46.879726, 36.052868, 35.762527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.435818, 36.116447, 35.447922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.234287, 35.858593, 35.217930>,  <47.113369, 35.703880, 35.079937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.234287, 35.858593, 35.217930>,  <47.435818, 36.116447, 35.447922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.234287, 35.858593, 35.217930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827754, -0.170010, -0.534714,
		0.246947, -0.745342, 0.619259,
		-0.503825, -0.644641, -0.574977,
		47.083141, 35.665199, 35.045437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.864487, 35.520206, 35.406227>,  <47.435818, 36.116447, 35.447922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.864487, 35.520206, 35.406227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.596565, 35.477600, 35.112286>,  <47.435810, 35.452038, 34.935921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.596565, 35.477600, 35.112286>,  <47.864487, 35.520206, 35.406227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.596565, 35.477600, 35.112286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701429, -0.415482, -0.579114,
		-0.243635, -0.903344, 0.353005,
		-0.669806, -0.106515, -0.734857,
		47.395622, 35.445644, 34.891827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.737526, 34.830219, 35.228130>,  <47.864487, 35.520206, 35.406227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.737526, 34.830219, 35.228130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.727013, 35.098461, 34.931591>,  <47.720707, 35.259407, 34.753666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.727013, 35.098461, 34.931591>,  <47.737526, 34.830219, 35.228130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.727013, 35.098461, 34.931591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905518, -0.298204, -0.301846,
		-0.423493, -0.679239, -0.599406,
		-0.026280, 0.670603, -0.741351,
		47.719128, 35.299641, 34.709187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.254631, 31.533167, 26.022936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.949051, 31.444885, 25.780394>,  <39.765701, 31.391916, 25.634869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.949051, 31.444885, 25.780394>,  <40.254631, 31.533167, 26.022936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949051, 31.444885, 25.780394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629438, 0.461788, 0.624948,
		0.142079, 0.859093, -0.491703,
		-0.763951, -0.220705, -0.606357,
		39.719864, 31.378674, 25.598486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919765, 32.108749, 25.848648>,  <40.254631, 31.533167, 26.022936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919765, 32.108749, 25.848648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.639809, 31.826239, 25.806078>,  <39.471832, 31.656733, 25.780537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.639809, 31.826239, 25.806078>,  <39.919765, 32.108749, 25.848648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639809, 31.826239, 25.806078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598482, 0.498584, 0.627083,
		-0.389830, 0.502585, -0.771648,
		-0.699894, -0.706273, -0.106425,
		39.429840, 31.614357, 25.774151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291962, 32.494308, 25.742994>,  <39.919765, 32.108749, 25.848648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291962, 32.494308, 25.742994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.170174, 32.128296, 25.848835>,  <39.097099, 31.908688, 25.912338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.170174, 32.128296, 25.848835>,  <39.291962, 32.494308, 25.742994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170174, 32.128296, 25.848835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661287, 0.402993, 0.632689,
		-0.685563, 0.017659, -0.727799,
		-0.304470, -0.915033, 0.264600,
		39.078831, 31.853786, 25.928215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582268, 32.522022, 25.894859>,  <39.291962, 32.494308, 25.742994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582268, 32.522022, 25.894859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.669773, 32.175171, 26.073851>,  <38.722275, 31.967060, 26.181246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.669773, 32.175171, 26.073851>,  <38.582268, 32.522022, 25.894859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669773, 32.175171, 26.073851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498999, 0.294672, 0.814965,
		-0.838537, -0.401573, -0.368233,
		0.218760, -0.867126, 0.447479,
		38.735401, 31.915033, 26.208094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978016, 32.314476, 26.242363>,  <38.582268, 32.522022, 25.894859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978016, 32.314476, 26.242363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.263241, 32.102135, 26.425554>,  <38.434376, 31.974731, 26.535469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.263241, 32.102135, 26.425554>,  <37.978016, 32.314476, 26.242363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263241, 32.102135, 26.425554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489464, 0.090759, 0.867287,
		-0.501966, -0.842591, -0.195116,
		0.713060, -0.530851, 0.457976,
		38.477158, 31.942881, 26.562948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621292, 31.875963, 26.603968>,  <37.978016, 32.314476, 26.242363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621292, 31.875963, 26.603968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.964836, 31.872370, 26.808821>,  <38.170963, 31.870214, 26.931732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.964836, 31.872370, 26.808821>,  <37.621292, 31.875963, 26.603968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964836, 31.872370, 26.808821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497104, 0.226419, 0.837629,
		-0.123483, -0.973989, 0.189996,
		0.858860, -0.008985, 0.512132,
		38.222492, 31.869675, 26.962460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474644, 31.509136, 27.288113>,  <37.621292, 31.875963, 26.603968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474644, 31.509136, 27.288113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.811527, 31.719692, 27.334759>,  <38.013657, 31.846025, 27.362747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.811527, 31.719692, 27.334759>,  <37.474644, 31.509136, 27.288113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811527, 31.719692, 27.334759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343064, 0.356357, 0.869090,
		0.415922, -0.771961, 0.480712,
		0.842209, 0.526389, 0.116615,
		38.064190, 31.877609, 27.369743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658638, 31.347246, 27.964535>,  <37.474644, 31.509136, 27.288113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658638, 31.347246, 27.964535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.859528, 31.684368, 27.887125>,  <37.980061, 31.886641, 27.840679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.859528, 31.684368, 27.887125>,  <37.658638, 31.347246, 27.964535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859528, 31.684368, 27.887125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141694, 0.300979, 0.943045,
		0.853048, -0.446201, 0.270580,
		0.502226, 0.842803, -0.193526,
		38.010197, 31.937208, 27.829067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024498, 31.423046, 28.550041>,  <37.658638, 31.347246, 27.964535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024498, 31.423046, 28.550041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.978966, 31.776262, 28.367929>,  <37.951645, 31.988192, 28.258661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.978966, 31.776262, 28.367929>,  <38.024498, 31.423046, 28.550041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978966, 31.776262, 28.367929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019137, 0.456226, 0.889658,
		0.993316, 0.109983, -0.035034,
		-0.113830, 0.883041, -0.455282,
		37.944817, 32.041176, 28.231344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441723, 31.804779, 28.888138>,  <38.024498, 31.423046, 28.550041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441723, 31.804779, 28.888138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.196358, 32.059818, 28.701721>,  <38.049141, 32.212841, 28.589870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.196358, 32.059818, 28.701721>,  <38.441723, 31.804779, 28.888138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196358, 32.059818, 28.701721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161354, 0.476478, 0.864253,
		0.773106, 0.605340, -0.189398,
		-0.613411, 0.637599, -0.466042,
		38.012333, 32.251099, 28.561909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543919, 32.410004, 29.221098>,  <38.441723, 31.804779, 28.888138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543919, 32.410004, 29.221098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.193031, 32.492298, 29.047586>,  <37.982498, 32.541676, 28.943480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.193031, 32.492298, 29.047586>,  <38.543919, 32.410004, 29.221098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193031, 32.492298, 29.047586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186480, 0.686564, 0.702748,
		0.442399, 0.697353, -0.563899,
		-0.877216, 0.205740, -0.433777,
		37.929867, 32.554020, 28.917454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435001, 33.154850, 29.408344>,  <38.543919, 32.410004, 29.221098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435001, 33.154850, 29.408344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.072205, 33.047615, 29.278429>,  <37.854527, 32.983276, 29.200480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.072205, 33.047615, 29.278429>,  <38.435001, 33.154850, 29.408344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072205, 33.047615, 29.278429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419709, 0.511915, 0.749525,
		-0.034672, 0.816133, -0.576823,
		-0.906996, -0.268085, -0.324789,
		37.800106, 32.967190, 29.180992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914970, 33.758869, 29.260841>,  <38.435001, 33.154850, 29.408344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914970, 33.758869, 29.260841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.673248, 33.449417, 29.337059>,  <37.528214, 33.263744, 29.382790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.673248, 33.449417, 29.337059>,  <37.914970, 33.758869, 29.260841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673248, 33.449417, 29.337059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367253, 0.482695, 0.795067,
		-0.707065, 0.410484, -0.575814,
		-0.604305, -0.773633, 0.190545,
		37.491959, 33.217327, 29.394222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305931, 34.073051, 29.488100>,  <37.914970, 33.758869, 29.260841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305931, 34.073051, 29.488100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.307266, 33.715210, 29.666842>,  <37.308067, 33.500507, 29.774086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.307266, 33.715210, 29.666842>,  <37.305931, 34.073051, 29.488100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307266, 33.715210, 29.666842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409821, 0.406384, 0.816639,
		-0.912160, -0.185854, -0.365271,
		0.003335, -0.894601, 0.446854,
		37.308266, 33.446831, 29.800898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549824, 33.923473, 29.868484>,  <37.305931, 34.073051, 29.488100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549824, 33.923473, 29.868484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.811317, 33.685818, 30.055943>,  <36.968212, 33.543224, 30.168417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.811317, 33.685818, 30.055943>,  <36.549824, 33.923473, 29.868484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811317, 33.685818, 30.055943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441963, 0.202926, 0.873779,
		-0.614248, -0.778343, -0.129928,
		0.653734, -0.594140, 0.468645,
		37.007439, 33.507576, 30.196537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154480, 33.541359, 30.351053>,  <36.549824, 33.923473, 29.868484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154480, 33.541359, 30.351053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.528202, 33.549862, 30.493393>,  <36.752434, 33.554966, 30.578796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.528202, 33.549862, 30.493393>,  <36.154480, 33.541359, 30.351053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528202, 33.549862, 30.493393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356410, 0.076127, 0.931223,
		-0.007300, -0.996872, 0.078699,
		0.934301, 0.021251, 0.355851,
		36.808491, 33.556240, 30.600147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075493, 33.325527, 30.984112>,  <36.154480, 33.541359, 30.351053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075493, 33.325527, 30.984112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.446442, 33.467777, 31.030626>,  <36.669010, 33.553127, 31.058535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.446442, 33.467777, 31.030626>,  <36.075493, 33.325527, 30.984112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446442, 33.467777, 31.030626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150993, 0.071346, 0.985957,
		0.342331, -0.931903, 0.119861,
		0.927367, 0.355622, 0.116287,
		36.724651, 33.574463, 31.065512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280151, 33.009144, 31.608570>,  <36.075493, 33.325527, 30.984112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280151, 33.009144, 31.608570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.514580, 33.326485, 31.542702>,  <36.655239, 33.516888, 31.503181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.514580, 33.326485, 31.542702>,  <36.280151, 33.009144, 31.608570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514580, 33.326485, 31.542702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144697, 0.302442, 0.942121,
		0.797233, -0.528325, 0.292048,
		0.586073, 0.793348, -0.164669,
		36.690403, 33.564487, 31.493301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674355, 33.129551, 32.232353>,  <36.280151, 33.009144, 31.608570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674355, 33.129551, 32.232353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.716587, 33.484501, 32.052834>,  <36.741928, 33.697472, 31.945122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.716587, 33.484501, 32.052834>,  <36.674355, 33.129551, 32.232353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716587, 33.484501, 32.052834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264087, 0.460134, 0.847665,
		0.958703, 0.029024, 0.282925,
		0.105581, 0.887375, -0.448796,
		36.748260, 33.750713, 31.918194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074223, 33.495296, 32.711475>,  <36.674355, 33.129551, 32.232353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074223, 33.495296, 32.711475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.879620, 33.764156, 32.488216>,  <36.762859, 33.925472, 32.354263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.879620, 33.764156, 32.488216>,  <37.074223, 33.495296, 32.711475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879620, 33.764156, 32.488216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229658, 0.517991, 0.823980,
		0.842951, 0.529055, -0.097642,
		-0.486508, 0.672151, -0.558143,
		36.733665, 33.965801, 32.320774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213150, 34.058716, 33.098373>,  <37.074223, 33.495296, 32.711475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213150, 34.058716, 33.098373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.902245, 34.152805, 32.864952>,  <36.715702, 34.209259, 32.724899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.902245, 34.152805, 32.864952>,  <37.213150, 34.058716, 33.098373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902245, 34.152805, 32.864952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458575, 0.423235, 0.781397,
		0.430784, 0.874953, -0.221097,
		-0.777261, 0.235223, -0.583554,
		36.669067, 34.223373, 32.689884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856586, 34.085323, 33.484749>,  <37.213150, 34.058716, 33.098373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856586, 34.085323, 33.484749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.169449, 34.316006, 33.579105>,  <38.357166, 34.454414, 33.635719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.169449, 34.316006, 33.579105>,  <37.856586, 34.085323, 33.484749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169449, 34.316006, 33.579105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552266, -0.466364, -0.691019,
		-0.288503, 0.670758, -0.683264,
		0.782156, 0.576705, 0.235890,
		38.404095, 34.489017, 33.649872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218292, 34.390942, 32.842766>,  <37.856586, 34.085323, 33.484749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218292, 34.390942, 32.842766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.470577, 34.398548, 33.153080>,  <38.621948, 34.403111, 33.339268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.470577, 34.398548, 33.153080>,  <38.218292, 34.390942, 32.842766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470577, 34.398548, 33.153080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735976, -0.331646, -0.590212,
		0.246062, 0.943212, -0.223168,
		0.630708, 0.019017, 0.775787,
		38.659790, 34.404255, 33.385815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852318, 34.684586, 32.557899>,  <38.218292, 34.390942, 32.842766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852318, 34.684586, 32.557899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.965256, 34.500584, 32.894630>,  <39.033020, 34.390182, 33.096668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.965256, 34.500584, 32.894630>,  <38.852318, 34.684586, 32.557899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965256, 34.500584, 32.894630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749654, -0.441753, -0.492822,
		0.598580, 0.770229, 0.220114,
		0.282349, -0.460002, 0.841830,
		39.049961, 34.362583, 33.147179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524738, 34.737686, 32.597095>,  <38.852318, 34.684586, 32.557899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524738, 34.737686, 32.597095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.448189, 34.431396, 32.842712>,  <39.402260, 34.247623, 32.990082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.448189, 34.431396, 32.842712>,  <39.524738, 34.737686, 32.597095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448189, 34.431396, 32.842712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649503, -0.567836, -0.505676,
		0.735883, 0.302053, 0.606004,
		-0.191370, -0.765720, 0.614045,
		39.390778, 34.201679, 33.026924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042290, 34.403107, 32.643986>,  <39.524738, 34.737686, 32.597095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042290, 34.403107, 32.643986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.816147, 34.106598, 32.788696>,  <39.680462, 33.928692, 32.875523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.816147, 34.106598, 32.788696>,  <40.042290, 34.403107, 32.643986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816147, 34.106598, 32.788696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543568, -0.664716, -0.512530,
		0.620405, -0.093112, 0.778735,
		-0.565360, -0.741271, 0.361780,
		39.646538, 33.884216, 32.897232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559978, 33.956203, 32.862144>,  <40.042290, 34.403107, 32.643986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559978, 33.956203, 32.862144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.230885, 33.736443, 32.803814>,  <40.033428, 33.604584, 32.768814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.230885, 33.736443, 32.803814>,  <40.559978, 33.956203, 32.862144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230885, 33.736443, 32.803814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561233, -0.744437, -0.361707,
		0.090164, -0.379432, 0.920816,
		-0.822732, -0.549405, -0.145828,
		39.984066, 33.571621, 32.760067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766098, 33.259823, 33.030602>,  <40.559978, 33.956203, 32.862144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766098, 33.259823, 33.030602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.447704, 33.223614, 32.791195>,  <40.256668, 33.201889, 32.647552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.447704, 33.223614, 32.791195>,  <40.766098, 33.259823, 33.030602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447704, 33.223614, 32.791195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426090, -0.786098, -0.447768,
		-0.429957, -0.611436, 0.664291,
		-0.795980, -0.090527, -0.598515,
		40.208912, 33.196457, 32.611641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693974, 32.512070, 32.793758>,  <40.766098, 33.259823, 33.030602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693974, 32.512070, 32.793758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.462959, 32.696854, 32.524525>,  <40.324348, 32.807724, 32.362984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.462959, 32.696854, 32.524525>,  <40.693974, 32.512070, 32.793758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462959, 32.696854, 32.524525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368869, -0.587858, -0.719971,
		-0.728276, -0.664091, 0.169107,
		-0.577538, 0.461959, -0.673086,
		40.289700, 32.835442, 32.322598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531174, 31.987347, 32.337189>,  <40.693974, 32.512070, 32.793758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531174, 31.987347, 32.337189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.453259, 32.319183, 32.127872>,  <40.406509, 32.518284, 32.002281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.453259, 32.319183, 32.127872>,  <40.531174, 31.987347, 32.337189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453259, 32.319183, 32.127872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516518, -0.366786, -0.773742,
		-0.833827, -0.421004, -0.357055,
		-0.194786, 0.829592, -0.523293,
		40.394821, 32.568062, 31.970884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185406, 31.782686, 31.784054>,  <40.531174, 31.987347, 32.337189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185406, 31.782686, 31.784054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.359055, 32.131668, 31.694288>,  <40.463242, 32.341057, 31.640429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.359055, 32.131668, 31.694288>,  <40.185406, 31.782686, 31.784054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359055, 32.131668, 31.694288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315069, -0.380422, -0.869489,
		-0.843962, 0.306756, -0.440032,
		0.434119, 0.872456, -0.224412,
		40.489292, 32.393406, 31.626965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000492, 31.965366, 31.135635>,  <40.185406, 31.782686, 31.784054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000492, 31.965366, 31.135635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.332794, 32.180496, 31.193039>,  <40.532173, 32.309574, 31.227480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.332794, 32.180496, 31.193039>,  <40.000492, 31.965366, 31.135635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332794, 32.180496, 31.193039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396462, -0.390728, -0.830752,
		-0.390728, 0.747045, -0.537826,
		0.830752, 0.537826, 0.143507,
		40.582020, 32.341843, 31.236092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104145, 32.238415, 30.337637>,  <40.000492, 31.965366, 31.135635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104145, 32.238415, 30.337637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.449379, 32.315819, 30.524240>,  <40.656521, 32.362263, 30.636204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.449379, 32.315819, 30.524240>,  <40.104145, 32.238415, 30.337637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449379, 32.315819, 30.524240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504900, -0.307896, -0.806397,
		-0.012411, 0.931532, -0.363446,
		0.863088, 0.193513, 0.466510,
		40.708305, 32.373871, 30.664194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427502, 32.713211, 29.992643>,  <40.104145, 32.238415, 30.337637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427502, 32.713211, 29.992643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.720314, 32.536057, 30.199711>,  <40.896004, 32.429764, 30.323952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.720314, 32.536057, 30.199711>,  <40.427502, 32.713211, 29.992643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720314, 32.536057, 30.199711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518767, -0.130170, -0.844948,
		0.441599, 0.887079, 0.134465,
		0.732033, -0.442884, 0.517670,
		40.939922, 32.403191, 30.355011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011513, 33.066032, 29.825151>,  <40.427502, 32.713211, 29.992643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011513, 33.066032, 29.825151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.144855, 32.711193, 29.952858>,  <41.224861, 32.498291, 30.029482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.144855, 32.711193, 29.952858>,  <41.011513, 33.066032, 29.825151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.144855, 32.711193, 29.952858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525474, -0.106340, -0.844138,
		0.782784, 0.449165, 0.430697,
		0.333357, -0.887098, 0.319265,
		41.244862, 32.445065, 30.048637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770599, 33.071449, 29.808750>,  <41.011513, 33.066032, 29.825151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.770599, 33.071449, 29.808750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.684528, 32.680859, 29.814342>,  <41.632885, 32.446503, 29.817698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.684528, 32.680859, 29.814342>,  <41.770599, 33.071449, 29.808750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684528, 32.680859, 29.814342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542498, -0.131423, -0.829713,
		0.812032, -0.170948, 0.558015,
		-0.215174, -0.976476, 0.013981,
		41.619976, 32.387917, 29.818537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312874, 32.732418, 29.510405>,  <41.770599, 33.071449, 29.808750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.312874, 32.732418, 29.510405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.017479, 32.463566, 29.488956>,  <41.840244, 32.302254, 29.476088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.017479, 32.463566, 29.488956>,  <42.312874, 32.732418, 29.510405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017479, 32.463566, 29.488956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278021, -0.231085, -0.932365,
		0.614283, -0.703445, 0.357521,
		-0.738485, -0.672134, -0.053621,
		41.795933, 32.261925, 29.472870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.592731, 32.137161, 29.192856>,  <42.312874, 32.732418, 29.510405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.592731, 32.137161, 29.192856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.200851, 32.086929, 29.130339>,  <41.965725, 32.056789, 29.092829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.200851, 32.086929, 29.130339>,  <42.592731, 32.137161, 29.192856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.200851, 32.086929, 29.130339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190970, -0.347122, -0.918170,
		0.061050, -0.929374, 0.364055,
		-0.979695, -0.125578, -0.156291,
		41.906944, 32.049255, 29.083450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.551865, 31.602720, 28.788332>,  <42.592731, 32.137161, 29.192856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.551865, 31.602720, 28.788332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.172512, 31.718554, 28.736628>,  <41.944901, 31.788054, 28.705605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.172512, 31.718554, 28.736628>,  <42.551865, 31.602720, 28.788332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172512, 31.718554, 28.736628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024758, -0.473972, -0.880192,
		-0.316153, -0.831560, 0.456677,
		-0.948385, 0.289582, -0.129260,
		41.887997, 31.805428, 28.697849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158470, 31.069271, 28.499727>,  <42.551865, 31.602720, 28.788332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158470, 31.069271, 28.499727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.928234, 31.385164, 28.414860>,  <41.790092, 31.574699, 28.363939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.928234, 31.385164, 28.414860>,  <42.158470, 31.069271, 28.499727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928234, 31.385164, 28.414860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031872, -0.280927, -0.959200,
		-0.817115, -0.545346, 0.186870,
		-0.575593, 0.789732, -0.212169,
		41.755558, 31.622084, 28.351210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.543175, 30.831171, 27.919224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.583652, 31.229082, 27.913944>,  <41.607941, 31.467829, 27.910776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.583652, 31.229082, 27.913944>,  <41.543175, 30.831171, 27.919224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.583652, 31.229082, 27.913944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103878, -0.023762, -0.994306,
		-0.989428, 0.099250, -0.105740,
		0.101197, 0.994779, -0.013201,
		41.614010, 31.527515, 27.909985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021973, 31.118965, 27.398212>,  <41.543175, 30.831171, 27.919224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021973, 31.118965, 27.398212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.309967, 31.393337, 27.440392>,  <41.482761, 31.557961, 27.465700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.309967, 31.393337, 27.440392>,  <41.021973, 31.118965, 27.398212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309967, 31.393337, 27.440392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223198, -0.084995, -0.971061,
		-0.657119, 0.722684, -0.214294,
		0.719984, 0.685932, 0.105450,
		41.525963, 31.599117, 27.472027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928520, 31.546602, 26.791965>,  <41.021973, 31.118965, 27.398212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928520, 31.546602, 26.791965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.293900, 31.633904, 26.929352>,  <41.513126, 31.686285, 27.011784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.293900, 31.633904, 26.929352>,  <40.928520, 31.546602, 26.791965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.293900, 31.633904, 26.929352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343629, 0.038448, -0.938318,
		-0.217998, 0.975134, -0.039878,
		0.913453, 0.218254, 0.343466,
		41.567936, 31.699379, 27.032393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138145, 32.158905, 26.482880>,  <40.928520, 31.546602, 26.791965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138145, 32.158905, 26.482880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.455692, 31.931156, 26.568279>,  <41.646221, 31.794506, 26.619518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.455692, 31.931156, 26.568279>,  <41.138145, 32.158905, 26.482880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455692, 31.931156, 26.568279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282028, 0.033702, -0.958814,
		0.538730, 0.821387, 0.187334,
		0.793871, -0.569375, 0.213498,
		41.693855, 31.760344, 26.632328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.715176, 32.497223, 26.229977>,  <41.138145, 32.158905, 26.482880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.715176, 32.497223, 26.229977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.855175, 32.125561, 26.277590>,  <41.939175, 31.902563, 26.306158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.855175, 32.125561, 26.277590>,  <41.715176, 32.497223, 26.229977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855175, 32.125561, 26.277590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522804, 0.088310, -0.847866,
		0.777290, 0.358980, 0.516676,
		0.349994, -0.929158, 0.119034,
		41.960175, 31.846813, 26.313299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.348850, 32.611378, 25.934217>,  <41.715176, 32.497223, 26.229977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.348850, 32.611378, 25.934217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.260689, 32.221218, 25.936028>,  <42.207794, 31.987122, 25.937113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.260689, 32.221218, 25.936028>,  <42.348850, 32.611378, 25.934217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.260689, 32.221218, 25.936028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422492, -0.099645, -0.900873,
		0.879161, -0.196641, 0.434060,
		-0.220401, -0.975399, 0.004524,
		42.194569, 31.928598, 25.937386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790432, 32.345772, 25.541265>,  <42.348850, 32.611378, 25.934217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790432, 32.345772, 25.541265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.557304, 32.021656, 25.565775>,  <42.417427, 31.827187, 25.580481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.557304, 32.021656, 25.565775>,  <42.790432, 32.345772, 25.541265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.557304, 32.021656, 25.565775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409698, -0.358131, -0.838981,
		0.701760, -0.463872, 0.540700,
		-0.582821, -0.810287, 0.061274,
		42.382458, 31.778570, 25.584158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.145252, 31.729385, 25.512285>,  <42.790432, 32.345772, 25.541265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.145252, 31.729385, 25.512285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.783188, 31.628084, 25.375732>,  <42.565948, 31.567303, 25.293800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.783188, 31.628084, 25.375732>,  <43.145252, 31.729385, 25.512285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.783188, 31.628084, 25.375732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414912, -0.351954, -0.839033,
		0.092338, -0.901105, 0.423654,
		-0.905164, -0.253254, -0.341381,
		42.511639, 31.552109, 25.273317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.327263, 31.154778, 25.192802>,  <43.145252, 31.729385, 25.512285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.327263, 31.154778, 25.192802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.962399, 31.224365, 25.044376>,  <42.743481, 31.266117, 24.955320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.962399, 31.224365, 25.044376>,  <43.327263, 31.154778, 25.192802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.962399, 31.224365, 25.044376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309488, -0.301121, -0.901966,
		-0.268644, -0.937583, 0.220834,
		-0.912167, 0.173962, -0.371065,
		42.688747, 31.276556, 24.933056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066853, 30.517965, 24.842829>,  <43.327263, 31.154778, 25.192802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.066853, 30.517965, 24.842829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.914974, 30.860489, 24.702791>,  <42.823849, 31.066004, 24.618769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.914974, 30.860489, 24.702791>,  <43.066853, 30.517965, 24.842829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.914974, 30.860489, 24.702791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381656, -0.199737, -0.902465,
		-0.842717, -0.476275, -0.250978,
		-0.379692, 0.856310, -0.350095,
		42.801067, 31.117382, 24.597763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.203842, 30.462761, 24.201181>,  <43.066853, 30.517965, 24.842829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.203842, 30.462761, 24.201181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.102024, 30.849480, 24.192120>,  <43.040936, 31.081511, 24.186682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.102024, 30.849480, 24.192120>,  <43.203842, 30.462761, 24.201181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102024, 30.849480, 24.192120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514886, 0.115656, -0.849421,
		-0.818597, -0.227877, -0.527229,
		-0.254541, 0.966797, -0.022656,
		43.025661, 31.139519, 24.185324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.087376, 30.565340, 23.492603>,  <43.203842, 30.462761, 24.201181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.087376, 30.565340, 23.492603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.132912, 30.927359, 23.656521>,  <43.160233, 31.144569, 23.754871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.132912, 30.927359, 23.656521>,  <43.087376, 30.565340, 23.492603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.132912, 30.927359, 23.656521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562896, 0.281124, -0.777250,
		-0.818651, 0.319153, -0.477444,
		0.113840, 0.905048, 0.409792,
		43.167065, 31.198874, 23.779459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.929726, 31.038197, 22.911570>,  <43.087376, 30.565340, 23.492603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.929726, 31.038197, 22.911570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.169697, 31.206537, 23.183739>,  <43.313679, 31.307541, 23.347040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.169697, 31.206537, 23.183739>,  <42.929726, 31.038197, 22.911570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.169697, 31.206537, 23.183739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681167, 0.177402, -0.710310,
		-0.419643, 0.889614, -0.180242,
		0.599926, 0.420852, 0.680420,
		43.349674, 31.332792, 23.387865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.195210, 31.610758, 22.552299>,  <42.929726, 31.038197, 22.911570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.195210, 31.610758, 22.552299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.452179, 31.600739, 22.858675>,  <43.606361, 31.594727, 23.042501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.452179, 31.600739, 22.858675>,  <43.195210, 31.610758, 22.552299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.452179, 31.600739, 22.858675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745582, 0.251526, -0.617125,
		-0.177197, 0.967526, 0.180260,
		0.642424, -0.025046, 0.765940,
		43.644905, 31.593225, 23.088457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.591007, 32.321831, 22.661179>,  <43.195210, 31.610758, 22.552299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.591007, 32.321831, 22.661179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.799587, 32.016476, 22.813667>,  <43.924736, 31.833263, 22.905161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.799587, 32.016476, 22.813667>,  <43.591007, 32.321831, 22.661179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.799587, 32.016476, 22.813667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753751, 0.202694, -0.625120,
		0.399937, 0.613315, 0.681099,
		0.521450, -0.763388, 0.381221,
		43.956020, 31.787460, 22.928034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.288990, 32.548092, 22.621439>,  <43.591007, 32.321831, 22.661179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.288990, 32.548092, 22.621439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.355778, 32.158859, 22.684978>,  <44.395851, 31.925320, 22.723103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.355778, 32.158859, 22.684978>,  <44.288990, 32.548092, 22.621439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.355778, 32.158859, 22.684978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800185, 0.039612, -0.598443,
		0.576041, 0.227034, 0.785259,
		0.166973, -0.973081, 0.158851,
		44.405869, 31.866936, 22.732634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.012749, 32.508125, 22.777750>,  <44.288990, 32.548092, 22.621439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.012749, 32.508125, 22.777750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.923584, 32.126789, 22.696306>,  <44.870083, 31.897987, 22.647440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.923584, 32.126789, 22.696306>,  <45.012749, 32.508125, 22.777750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.923584, 32.126789, 22.696306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716809, -0.018743, -0.697018,
		0.660677, -0.301324, 0.687539,
		-0.222914, -0.953338, -0.203609,
		44.856709, 31.840788, 22.635223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.651260, 32.156609, 22.711376>,  <45.012749, 32.508125, 22.777750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.651260, 32.156609, 22.711376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.385036, 31.916811, 22.533548>,  <45.225304, 31.772934, 22.426851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.385036, 31.916811, 22.533548>,  <45.651260, 32.156609, 22.711376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.385036, 31.916811, 22.533548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644353, -0.160962, -0.747597,
		0.376618, -0.784029, 0.493413,
		-0.665559, -0.599490, -0.444570,
		45.185368, 31.736963, 22.400177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.006878, 31.572939, 22.471710>,  <45.651260, 32.156609, 22.711376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.006878, 31.572939, 22.471710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.683540, 31.589918, 22.236837>,  <45.489540, 31.600105, 22.095913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.683540, 31.589918, 22.236837>,  <46.006878, 31.572939, 22.471710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.683540, 31.589918, 22.236837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586183, -0.034374, -0.809449,
		-0.054551, -0.998507, 0.002899,
		-0.808339, 0.042457, -0.587183,
		45.441040, 31.602654, 22.060682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.118217, 31.048117, 21.958841>,  <46.006878, 31.572939, 22.471710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.118217, 31.048117, 21.958841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.841152, 31.283308, 21.791748>,  <45.674915, 31.424423, 21.691492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.841152, 31.283308, 21.791748>,  <46.118217, 31.048117, 21.958841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.841152, 31.283308, 21.791748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493328, -0.036288, -0.869086,
		-0.526165, -0.808061, -0.264933,
		-0.692661, 0.587981, -0.417732,
		45.633354, 31.459702, 21.666428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.823349, 30.665916, 21.428635>,  <46.118217, 31.048117, 21.958841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.823349, 30.665916, 21.428635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.764969, 31.044798, 21.314436>,  <45.729942, 31.272127, 21.245916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.764969, 31.044798, 21.314436>,  <45.823349, 30.665916, 21.428635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.764969, 31.044798, 21.314436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413713, -0.203703, -0.887326,
		-0.898633, -0.247618, -0.362139,
		-0.145949, 0.947201, -0.285497,
		45.721184, 31.328959, 21.228786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.414635, 30.645987, 20.851671>,  <45.823349, 30.665916, 21.428635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.414635, 30.645987, 20.851671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.620510, 30.988937, 20.850964>,  <45.744034, 31.194708, 20.850540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.620510, 30.988937, 20.850964>,  <45.414635, 30.645987, 20.851671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.620510, 30.988937, 20.850964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240792, -0.146526, -0.959453,
		-0.822872, 0.493390, -0.281864,
		0.514685, 0.857378, -0.001767,
		45.774914, 31.246151, 20.850433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.232670, 31.088757, 20.206844>,  <45.414635, 30.645987, 20.851671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.232670, 31.088757, 20.206844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.599556, 31.116564, 20.363760>,  <45.819687, 31.133247, 20.457909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.599556, 31.116564, 20.363760>,  <45.232670, 31.088757, 20.206844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.599556, 31.116564, 20.363760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389994, -0.357887, -0.848423,
		0.081415, 0.931174, -0.355369,
		0.917211, 0.069517, 0.392289,
		45.874718, 31.137419, 20.481447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.896843, 30.879105, 19.431030>,  <45.232670, 31.088757, 20.206844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.896843, 30.879105, 19.431030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.642551, 31.035318, 19.164700>,  <44.489975, 31.129045, 19.004900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.642551, 31.035318, 19.164700>,  <44.896843, 30.879105, 19.431030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.642551, 31.035318, 19.164700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703451, 0.062022, 0.708032,
		0.317806, 0.918497, 0.235292,
		-0.635732, 0.390533, -0.665829,
		44.451832, 31.152479, 18.964951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.636597, 31.491882, 19.693724>,  <44.896843, 30.879105, 19.431030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.636597, 31.491882, 19.693724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.375618, 31.376106, 19.413570>,  <44.219028, 31.306641, 19.245480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.375618, 31.376106, 19.413570>,  <44.636597, 31.491882, 19.693724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.375618, 31.376106, 19.413570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757098, 0.289615, 0.585599,
		0.033345, 0.912331, -0.408094,
		-0.652450, -0.289440, -0.700381,
		44.179882, 31.289274, 19.203457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.176842, 32.060940, 19.739141>,  <44.636597, 31.491882, 19.693724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.176842, 32.060940, 19.739141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.004623, 31.744164, 19.565952>,  <43.901291, 31.554098, 19.462040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.004623, 31.744164, 19.565952>,  <44.176842, 32.060940, 19.739141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.004623, 31.744164, 19.565952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831403, 0.161282, 0.531749,
		-0.351282, 0.588916, -0.727859,
		-0.430546, -0.791938, -0.432971,
		43.875462, 31.506582, 19.436060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383675, 32.271591, 19.726934>,  <44.176842, 32.060940, 19.739141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383675, 32.271591, 19.726934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.386578, 31.872387, 19.701891>,  <43.388321, 31.632864, 19.686865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.386578, 31.872387, 19.701891>,  <43.383675, 32.271591, 19.726934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.386578, 31.872387, 19.701891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750807, -0.046795, 0.658863,
		-0.660482, 0.042223, -0.749653,
		0.007261, -0.998012, -0.062609,
		43.388756, 31.572983, 19.683107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726631, 32.104729, 19.598608>,  <43.383675, 32.271591, 19.726934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.726631, 32.104729, 19.598608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.872307, 31.745939, 19.698847>,  <42.959713, 31.530664, 19.758991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.872307, 31.745939, 19.698847>,  <42.726631, 32.104729, 19.598608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.872307, 31.745939, 19.698847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843568, -0.203685, 0.496896,
		-0.394660, -0.392362, -0.830840,
		0.364193, -0.896975, 0.250598,
		42.981564, 31.476847, 19.774027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.188858, 31.544388, 19.456474>,  <42.726631, 32.104729, 19.598608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.188858, 31.544388, 19.456474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.426815, 31.413910, 19.750332>,  <42.569588, 31.335623, 19.926647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.426815, 31.413910, 19.750332>,  <42.188858, 31.544388, 19.456474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.426815, 31.413910, 19.750332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803763, -0.250838, 0.539486,
		0.008298, -0.911415, -0.411405,
		0.594892, -0.326195, 0.734643,
		42.605282, 31.316051, 19.970724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842754, 31.010235, 19.777908>,  <42.188858, 31.544388, 19.456474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842754, 31.010235, 19.777908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.147305, 31.061253, 20.032166>,  <42.330036, 31.091864, 20.184719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.147305, 31.061253, 20.032166>,  <41.842754, 31.010235, 19.777908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.147305, 31.061253, 20.032166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609309, -0.194169, 0.768792,
		0.221476, -0.972641, -0.070122,
		0.761375, 0.127544, 0.635643,
		42.375717, 31.099516, 20.222858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.899590, 30.411964, 20.215252>,  <41.842754, 31.010235, 19.777908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.899590, 30.411964, 20.215252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.070236, 30.704086, 20.428663>,  <42.172623, 30.879360, 20.556709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.070236, 30.704086, 20.428663>,  <41.899590, 30.411964, 20.215252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070236, 30.704086, 20.428663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621846, -0.191498, 0.759365,
		0.656738, -0.655732, 0.372440,
		0.426618, 0.730304, 0.533529,
		42.198223, 30.923178, 20.588722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042576, 30.096239, 20.907900>,  <41.899590, 30.411964, 20.215252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042576, 30.096239, 20.907900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.086067, 30.489960, 20.963512>,  <42.112164, 30.726192, 20.996880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.086067, 30.489960, 20.963512>,  <42.042576, 30.096239, 20.907900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.086067, 30.489960, 20.963512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444050, -0.077038, 0.892684,
		0.889380, -0.158798, 0.428703,
		0.108730, 0.984301, 0.139030,
		42.118687, 30.785250, 21.005222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.228081, 30.086643, 21.581259>,  <42.042576, 30.096239, 20.907900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.228081, 30.086643, 21.581259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.081337, 30.447546, 21.490623>,  <41.993290, 30.664089, 21.436241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.081337, 30.447546, 21.490623>,  <42.228081, 30.086643, 21.581259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081337, 30.447546, 21.490623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429051, 0.052017, 0.901781,
		0.825427, 0.428045, 0.368032,
		-0.366859, 0.902259, -0.226590,
		41.971279, 30.718224, 21.422647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405441, 30.476252, 22.073355>,  <42.228081, 30.086643, 21.581259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.405441, 30.476252, 22.073355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.104183, 30.676201, 21.902290>,  <41.923428, 30.796171, 21.799652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.104183, 30.676201, 21.902290>,  <42.405441, 30.476252, 22.073355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104183, 30.676201, 21.902290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422041, 0.131527, 0.896985,
		0.504630, 0.856052, 0.111909,
		-0.753147, 0.499876, -0.427662,
		41.878239, 30.826164, 21.773993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.345253, 31.139240, 22.456444>,  <42.405441, 30.476252, 22.073355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.345253, 31.139240, 22.456444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.988373, 31.055689, 22.296267>,  <41.774246, 31.005558, 22.200161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.988373, 31.055689, 22.296267>,  <42.345253, 31.139240, 22.456444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.988373, 31.055689, 22.296267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429505, 0.118205, 0.895295,
		-0.139673, 0.970772, -0.195177,
		-0.892198, -0.208878, -0.400441,
		41.720715, 30.993025, 22.176134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932564, 31.517496, 22.824007>,  <42.345253, 31.139240, 22.456444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.932564, 31.517496, 22.824007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.653378, 31.308775, 22.627817>,  <41.485867, 31.183542, 22.510103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.653378, 31.308775, 22.627817>,  <41.932564, 31.517496, 22.824007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653378, 31.308775, 22.627817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592294, 0.035650, 0.804933,
		-0.402531, 0.852321, -0.333943,
		-0.697966, -0.521803, -0.490474,
		41.443989, 31.152235, 22.480675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333946, 31.909180, 22.929222>,  <41.932564, 31.517496, 22.824007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333946, 31.909180, 22.929222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.225048, 31.534649, 22.840527>,  <41.159710, 31.309931, 22.787310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.225048, 31.534649, 22.840527>,  <41.333946, 31.909180, 22.929222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.225048, 31.534649, 22.840527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626878, -0.002235, 0.779114,
		-0.730003, 0.351117, -0.586356,
		-0.272249, -0.936329, -0.221739,
		41.143372, 31.253750, 22.774006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640125, 31.922766, 23.026571>,  <41.333946, 31.909180, 22.929222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640125, 31.922766, 23.026571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.787739, 31.552006, 23.053909>,  <40.876308, 31.329550, 23.070312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.787739, 31.552006, 23.053909>,  <40.640125, 31.922766, 23.026571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787739, 31.552006, 23.053909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383159, -0.084733, 0.919788,
		-0.846759, -0.365622, -0.386419,
		0.369037, -0.926898, 0.068343,
		40.898449, 31.273935, 23.074411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001648, 31.590763, 23.301418>,  <40.640125, 31.922766, 23.026571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001648, 31.590763, 23.301418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.283417, 31.312244, 23.356485>,  <40.452480, 31.145132, 23.389524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.283417, 31.312244, 23.356485>,  <40.001648, 31.590763, 23.301418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283417, 31.312244, 23.356485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399703, -0.228878, 0.887610,
		-0.586534, -0.680281, -0.439541,
		0.704425, -0.696299, 0.137666,
		40.494743, 31.103355, 23.397785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673115, 31.021509, 23.626194>,  <40.001648, 31.590763, 23.301418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673115, 31.021509, 23.626194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.064602, 31.009302, 23.707359>,  <40.299496, 31.001978, 23.756058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.064602, 31.009302, 23.707359>,  <39.673115, 31.021509, 23.626194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064602, 31.009302, 23.707359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203605, -0.267279, 0.941864,
		0.025488, -0.963136, -0.267806,
		0.978721, -0.030520, 0.202912,
		40.358219, 31.000147, 23.768232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881088, 30.352619, 23.979671>,  <39.673115, 31.021509, 23.626194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881088, 30.352619, 23.979671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.119629, 30.652925, 24.093311>,  <40.262753, 30.833109, 24.161495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.119629, 30.652925, 24.093311>,  <39.881088, 30.352619, 23.979671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119629, 30.652925, 24.093311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242065, -0.169250, 0.955384,
		0.765354, -0.638518, 0.080801,
		0.596354, 0.750766, 0.284099,
		40.298534, 30.878155, 24.178541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161110, 30.127914, 24.586418>,  <39.881088, 30.352619, 23.979671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161110, 30.127914, 24.586418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.192436, 30.526686, 24.586708>,  <40.211231, 30.765949, 24.586882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.192436, 30.526686, 24.586708>,  <40.161110, 30.127914, 24.586418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192436, 30.526686, 24.586708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431467, 0.033239, 0.901516,
		0.898723, -0.070914, 0.432745,
		0.078314, 0.996929, 0.000724,
		40.215931, 30.825764, 24.586926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209949, 30.240854, 25.222082>,  <40.161110, 30.127914, 24.586418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209949, 30.240854, 25.222082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.115707, 30.602175, 25.078672>,  <40.059162, 30.818966, 24.992626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.115707, 30.602175, 25.078672>,  <40.209949, 30.240854, 25.222082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115707, 30.602175, 25.078672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404745, 0.244191, 0.881222,
		0.883555, 0.352734, 0.308072,
		-0.235609, 0.903299, -0.358523,
		40.045025, 30.873165, 24.971115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256653, 30.655090, 25.812567>,  <40.209949, 30.240854, 25.222082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256653, 30.655090, 25.812567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.039822, 30.860455, 25.546465>,  <39.909721, 30.983673, 25.386805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.039822, 30.860455, 25.546465>,  <40.256653, 30.655090, 25.812567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039822, 30.860455, 25.546465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450933, 0.490301, 0.745831,
		0.709092, 0.704283, -0.034267,
		-0.542077, 0.513411, -0.665253,
		39.877197, 31.014479, 25.346889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.975643, 31.919949, 30.968653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.646812, 32.056423, 30.786320>,  <41.449512, 32.138306, 30.676920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.646812, 32.056423, 30.786320>,  <41.975643, 31.919949, 30.968653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.646812, 32.056423, 30.786320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340743, 0.346596, 0.873937,
		0.456164, 0.873764, -0.168672,
		-0.822076, 0.341184, -0.455834,
		41.400188, 32.158779, 30.649570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856472, 32.446495, 31.263811>,  <41.975643, 31.919949, 30.968653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856472, 32.446495, 31.263811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.499443, 32.421417, 31.085203>,  <41.285225, 32.406372, 30.978039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.499443, 32.421417, 31.085203>,  <41.856472, 32.446495, 31.263811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.499443, 32.421417, 31.085203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432916, 0.396030, 0.809780,
		0.126067, 0.916095, -0.380627,
		-0.892575, -0.062693, -0.446519,
		41.231670, 32.402611, 30.951248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558746, 33.152424, 31.258974>,  <41.856472, 32.446495, 31.263811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558746, 33.152424, 31.258974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.248348, 32.900360, 31.248146>,  <41.062111, 32.749123, 31.241650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.248348, 32.900360, 31.248146>,  <41.558746, 33.152424, 31.258974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248348, 32.900360, 31.248146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426547, 0.492675, 0.758505,
		-0.464646, 0.600138, -0.651106,
		-0.775991, -0.630163, -0.027068,
		41.015553, 32.711311, 31.240026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021423, 33.570351, 31.368225>,  <41.558746, 33.152424, 31.258974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021423, 33.570351, 31.368225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.850304, 33.213322, 31.425224>,  <40.747631, 32.999104, 31.459423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.850304, 33.213322, 31.425224>,  <41.021423, 33.570351, 31.368225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850304, 33.213322, 31.425224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520200, 0.372052, 0.768746,
		-0.739177, 0.254739, -0.623478,
		-0.427795, -0.892572, 0.142497,
		40.721966, 32.945549, 31.467974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283916, 33.647175, 31.272434>,  <41.021423, 33.570351, 31.368225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283916, 33.647175, 31.272434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.292458, 33.307720, 31.483852>,  <40.297585, 33.104046, 31.610703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.292458, 33.307720, 31.483852>,  <40.283916, 33.647175, 31.272434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292458, 33.307720, 31.483852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705904, 0.361574, 0.609068,
		-0.707985, -0.386109, -0.591335,
		0.021355, -0.848636, 0.528545,
		40.298862, 33.053131, 31.642416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612194, 33.485348, 31.411421>,  <40.283916, 33.647175, 31.272434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612194, 33.485348, 31.411421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.825172, 33.294086, 31.690811>,  <39.952961, 33.179329, 31.858446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.825172, 33.294086, 31.690811>,  <39.612194, 33.485348, 31.411421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825172, 33.294086, 31.690811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534602, 0.449812, 0.715451,
		-0.656280, -0.754345, -0.016123,
		0.532445, -0.478155, 0.698477,
		39.984905, 33.150639, 31.900354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119286, 33.182663, 31.862343>,  <39.612194, 33.485348, 31.411421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119286, 33.182663, 31.862343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.464680, 33.202324, 32.063133>,  <39.671917, 33.214119, 32.183605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.464680, 33.202324, 32.063133>,  <39.119286, 33.182663, 31.862343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464680, 33.202324, 32.063133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490263, 0.315574, 0.812438,
		-0.118476, -0.947627, 0.296591,
		0.863485, 0.049154, 0.501974,
		39.723724, 33.217072, 32.213726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924324, 32.915051, 32.508667>,  <39.119286, 33.182663, 31.862343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924324, 32.915051, 32.508667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.258793, 33.124454, 32.574093>,  <39.459473, 33.250095, 32.613346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.258793, 33.124454, 32.574093>,  <38.924324, 32.915051, 32.508667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258793, 33.124454, 32.574093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425094, 0.430157, 0.796405,
		0.346565, -0.735463, 0.582226,
		0.836174, 0.523507, 0.163563,
		39.509644, 33.281506, 32.623161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975853, 32.857010, 33.255802>,  <38.924324, 32.915051, 32.508667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975853, 32.857010, 33.255802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.192635, 33.180557, 33.164574>,  <39.322704, 33.374683, 33.109837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.192635, 33.180557, 33.164574>,  <38.975853, 32.857010, 33.255802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192635, 33.180557, 33.164574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493994, 0.526161, 0.692189,
		0.679892, -0.262469, 0.684731,
		0.541956, 0.808866, -0.228075,
		39.355221, 33.423218, 33.096153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149670, 33.278023, 33.920799>,  <38.975853, 32.857010, 33.255802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149670, 33.278023, 33.920799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.215855, 33.548706, 33.633835>,  <39.255566, 33.711117, 33.461655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.215855, 33.548706, 33.633835>,  <39.149670, 33.278023, 33.920799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215855, 33.548706, 33.633835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274919, 0.730256, 0.625416,
		0.947123, 0.093748, 0.306870,
		0.165462, 0.676711, -0.717416,
		39.265491, 33.751720, 33.418610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567455, 33.811481, 34.198681>,  <39.149670, 33.278023, 33.920799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567455, 33.811481, 34.198681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.393932, 33.978752, 33.879444>,  <39.289818, 34.079113, 33.687904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.393932, 33.978752, 33.879444>,  <39.567455, 33.811481, 34.198681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393932, 33.978752, 33.879444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388870, 0.712132, 0.584508,
		0.812770, 0.563914, -0.146310,
		-0.433804, 0.418175, -0.798088,
		39.263790, 34.104206, 33.640018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602463, 34.524349, 34.320911>,  <39.567455, 33.811481, 34.198681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602463, 34.524349, 34.320911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.307598, 34.456757, 34.059212>,  <39.130680, 34.416203, 33.902191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.307598, 34.456757, 34.059212>,  <39.602463, 34.524349, 34.320911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307598, 34.456757, 34.059212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591946, 0.628428, 0.504657,
		0.325870, 0.759292, -0.563280,
		-0.737163, -0.168979, -0.654245,
		39.086449, 34.406063, 33.862938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369762, 35.156567, 34.193810>,  <39.602463, 34.524349, 34.320911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369762, 35.156567, 34.193810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.085720, 34.917377, 34.045120>,  <38.915295, 34.773865, 33.955906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.085720, 34.917377, 34.045120>,  <39.369762, 35.156567, 34.193810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085720, 34.917377, 34.045120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695738, 0.514818, 0.500910,
		-0.108160, 0.614322, -0.781607,
		-0.710106, -0.597972, -0.371724,
		38.872688, 34.737988, 33.933601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892803, 35.593506, 33.847984>,  <39.369762, 35.156567, 34.193810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892803, 35.593506, 33.847984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.773922, 35.243004, 33.999691>,  <38.702595, 35.032703, 34.090714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.773922, 35.243004, 33.999691>,  <38.892803, 35.593506, 33.847984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773922, 35.243004, 33.999691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631213, 0.478343, 0.610539,
		-0.716409, -0.057945, -0.695270,
		-0.297200, -0.876259, 0.379265,
		38.684761, 34.980125, 34.113472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517033, 36.000256, 33.928040>,  <38.892803, 35.593506, 33.847984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517033, 36.000256, 33.928040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.549919, 36.312023, 34.176476>,  <39.569649, 36.499084, 34.325539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.549919, 36.312023, 34.176476>,  <39.517033, 36.000256, 33.928040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549919, 36.312023, 34.176476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345035, 0.562401, -0.751436,
		-0.934982, 0.276076, -0.222688,
		0.082213, 0.779415, 0.621091,
		39.574581, 36.545849, 34.362804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179272, 36.573933, 33.630505>,  <39.517033, 36.000256, 33.928040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179272, 36.573933, 33.630505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.440514, 36.733864, 33.887749>,  <39.597260, 36.829823, 34.042095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.440514, 36.733864, 33.887749>,  <39.179272, 36.573933, 33.630505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440514, 36.733864, 33.887749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223229, 0.709865, -0.668028,
		-0.723615, 0.579855, 0.374366,
		0.653108, 0.399825, 0.643109,
		39.636448, 36.853813, 34.080681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171627, 37.360466, 33.534767>,  <39.179272, 36.573933, 33.630505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171627, 37.360466, 33.534767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.510227, 37.318630, 33.743576>,  <39.713387, 37.293530, 33.868862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.510227, 37.318630, 33.743576>,  <39.171627, 37.360466, 33.534767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510227, 37.318630, 33.743576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482591, 0.564811, -0.669399,
		-0.224835, 0.818566, 0.528582,
		0.846496, -0.104585, 0.522022,
		39.764175, 37.287254, 33.900181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362850, 38.048122, 33.596130>,  <39.171627, 37.360466, 33.534767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362850, 38.048122, 33.596130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.678089, 37.804909, 33.634510>,  <39.867233, 37.658981, 33.657539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.678089, 37.804909, 33.634510>,  <39.362850, 38.048122, 33.596130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678089, 37.804909, 33.634510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494854, 0.533110, -0.686231,
		0.366099, 0.588295, 0.721027,
		0.788093, -0.608032, 0.095949,
		39.914516, 37.622498, 33.663296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951740, 38.399246, 33.512917>,  <39.362850, 38.048122, 33.596130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951740, 38.399246, 33.512917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.131550, 38.055275, 33.416203>,  <40.239437, 37.848892, 33.358173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.131550, 38.055275, 33.416203>,  <39.951740, 38.399246, 33.512917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131550, 38.055275, 33.416203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501319, 0.466892, -0.728486,
		0.739329, 0.206260, 0.640975,
		0.449524, -0.859924, -0.241784,
		40.266407, 37.797298, 33.343666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576164, 38.516678, 33.102810>,  <39.951740, 38.399246, 33.512917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576164, 38.516678, 33.102810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.561905, 38.129276, 33.004238>,  <40.553349, 37.896835, 32.945095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.561905, 38.129276, 33.004238>,  <40.576164, 38.516678, 33.102810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.561905, 38.129276, 33.004238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298868, 0.224974, -0.927397,
		0.953628, -0.106708, 0.281436,
		-0.035645, -0.968504, -0.246434,
		40.551212, 37.838726, 32.930309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082245, 38.565331, 32.601871>,  <40.576164, 38.516678, 33.102810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.082245, 38.565331, 32.601871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.929317, 38.195724, 32.600060>,  <40.837559, 37.973961, 32.598972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.929317, 38.195724, 32.600060>,  <41.082245, 38.565331, 32.601871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929317, 38.195724, 32.600060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438988, -0.177320, -0.880822,
		0.813093, -0.338743, 0.473426,
		-0.382320, -0.924019, -0.004526,
		40.814621, 37.918518, 32.598701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635517, 37.998268, 32.538197>,  <41.082245, 38.565331, 32.601871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635517, 37.998268, 32.538197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.282986, 37.869900, 32.399483>,  <41.071465, 37.792877, 32.316254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.282986, 37.869900, 32.399483>,  <41.635517, 37.998268, 32.538197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282986, 37.869900, 32.399483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441155, -0.296045, -0.847195,
		0.169217, -0.899649, 0.402489,
		-0.881333, -0.320920, -0.346789,
		41.018585, 37.773624, 32.295444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791958, 37.371243, 32.169899>,  <41.635517, 37.998268, 32.538197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791958, 37.371243, 32.169899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.437714, 37.455013, 32.004089>,  <41.225166, 37.505276, 31.904604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.437714, 37.455013, 32.004089>,  <41.791958, 37.371243, 32.169899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437714, 37.455013, 32.004089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343668, -0.304837, -0.888238,
		-0.312423, -0.929084, 0.197976,
		-0.885598, 0.209468, -0.414535,
		41.172031, 37.517841, 31.879732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654388, 36.943470, 31.699156>,  <41.791958, 37.371243, 32.169899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.654388, 36.943470, 31.699156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.375965, 37.200008, 31.570051>,  <41.208912, 37.353931, 31.492588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.375965, 37.200008, 31.570051>,  <41.654388, 36.943470, 31.699156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375965, 37.200008, 31.570051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236898, -0.219217, -0.946479,
		-0.677777, -0.735267, 0.000655,
		-0.696059, 0.641347, -0.322763,
		41.167149, 37.392414, 31.473223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113251, 36.564445, 31.270052>,  <41.654388, 36.943470, 31.699156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113251, 36.564445, 31.270052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.150013, 36.950134, 31.170593>,  <41.172070, 37.181549, 31.110918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.150013, 36.950134, 31.170593>,  <41.113251, 36.564445, 31.270052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150013, 36.950134, 31.170593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275231, -0.264574, -0.924255,
		-0.956974, 0.016512, -0.289701,
		0.091909, 0.964224, -0.248646,
		41.177586, 37.239403, 31.095999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681137, 36.670574, 30.745165>,  <41.113251, 36.564445, 31.270052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681137, 36.670574, 30.745165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.952053, 36.963989, 30.722553>,  <41.114601, 37.140038, 30.708986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.952053, 36.963989, 30.722553>,  <40.681137, 36.670574, 30.745165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952053, 36.963989, 30.722553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214585, -0.270455, -0.938513,
		-0.703726, 0.623516, -0.340584,
		0.677291, 0.733540, -0.056529,
		41.155239, 37.184052, 30.705595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815102, 36.660378, 30.053078>,  <40.681137, 36.670574, 30.745165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815102, 36.660378, 30.053078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.085411, 36.936657, 30.156046>,  <41.247597, 37.102425, 30.217827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.085411, 36.936657, 30.156046>,  <40.815102, 36.660378, 30.053078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085411, 36.936657, 30.156046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293100, 0.068639, -0.953615,
		-0.676327, 0.719880, -0.156059,
		0.675777, 0.690696, 0.257419,
		41.288143, 37.143867, 30.233273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835117, 37.192158, 29.493940>,  <40.815102, 36.660378, 30.053078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835117, 37.192158, 29.493940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.176952, 37.166100, 29.700024>,  <41.382053, 37.150463, 29.823673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.176952, 37.166100, 29.700024>,  <40.835117, 37.192158, 29.493940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176952, 37.166100, 29.700024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490757, -0.223136, -0.842240,
		0.169832, 0.972608, -0.158717,
		0.854585, -0.065148, 0.515210,
		41.433327, 37.146557, 29.854586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692532, 37.854877, 29.129866>,  <40.835117, 37.192158, 29.493940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692532, 37.854877, 29.129866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.383537, 37.868370, 28.876211>,  <40.198139, 37.876465, 28.724018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.383537, 37.868370, 28.876211>,  <40.692532, 37.854877, 29.129866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383537, 37.868370, 28.876211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634737, -0.071449, 0.769418,
		-0.019356, 0.996874, 0.076603,
		-0.772486, 0.033730, -0.634136,
		40.151791, 37.878490, 28.685970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279991, 38.318020, 29.406189>,  <40.692532, 37.854877, 29.129866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279991, 38.318020, 29.406189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.032745, 38.105515, 29.174435>,  <39.884396, 37.978012, 29.035381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.032745, 38.105515, 29.174435>,  <40.279991, 38.318020, 29.406189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032745, 38.105515, 29.174435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675637, -0.017691, 0.737022,
		-0.401803, 0.847022, -0.348007,
		-0.618117, -0.531264, -0.579387,
		39.847309, 37.946136, 29.000618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563564, 38.490078, 29.756063>,  <40.279991, 38.318020, 29.406189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563564, 38.490078, 29.756063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.475281, 38.195076, 29.500759>,  <39.422310, 38.018074, 29.347576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.475281, 38.195076, 29.500759>,  <39.563564, 38.490078, 29.756063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475281, 38.195076, 29.500759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802617, -0.234476, 0.548477,
		-0.554160, 0.633334, -0.540180,
		-0.220710, -0.737502, -0.638262,
		39.409069, 37.973824, 29.309280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811413, 38.532806, 29.557117>,  <39.563564, 38.490078, 29.756063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811413, 38.532806, 29.557117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.944675, 38.157154, 29.523552>,  <39.024635, 37.931763, 29.503412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.944675, 38.157154, 29.523552>,  <38.811413, 38.532806, 29.557117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944675, 38.157154, 29.523552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768929, -0.322126, 0.552253,
		-0.545668, -0.119463, -0.829442,
		0.333159, -0.939129, -0.083915,
		39.044624, 37.875416, 29.498377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240772, 38.099209, 29.289995>,  <38.811413, 38.532806, 29.557117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240772, 38.099209, 29.289995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.481823, 37.850777, 29.490435>,  <38.626453, 37.701717, 29.610699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.481823, 37.850777, 29.490435>,  <38.240772, 38.099209, 29.289995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481823, 37.850777, 29.490435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792174, -0.389686, 0.469686,
		-0.096443, -0.680002, -0.726840,
		0.602627, -0.621082, 0.501097,
		38.662609, 37.664452, 29.640764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876305, 37.457703, 29.319473>,  <38.240772, 38.099209, 29.289995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876305, 37.457703, 29.319473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.151161, 37.417461, 29.607283>,  <38.316074, 37.393318, 29.779968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.151161, 37.417461, 29.607283>,  <37.876305, 37.457703, 29.319473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151161, 37.417461, 29.607283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699054, -0.361305, 0.617076,
		0.197890, -0.927005, -0.318592,
		0.687141, -0.100599, 0.719525,
		38.357304, 37.387283, 29.823141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678417, 36.793568, 29.690868>,  <37.876305, 37.457703, 29.319473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678417, 36.793568, 29.690868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.919739, 36.991585, 29.940975>,  <38.064533, 37.110394, 30.091040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.919739, 36.991585, 29.940975>,  <37.678417, 36.793568, 29.690868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919739, 36.991585, 29.940975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620439, -0.201258, 0.757991,
		0.501075, -0.845241, 0.185721,
		0.603307, 0.495039, 0.625265,
		38.100731, 37.140095, 30.128555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571114, 36.505028, 30.324087>,  <37.678417, 36.793568, 29.690868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571114, 36.505028, 30.324087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.812866, 36.808601, 30.421026>,  <37.957920, 36.990746, 30.479191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.812866, 36.808601, 30.421026>,  <37.571114, 36.505028, 30.324087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812866, 36.808601, 30.421026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401561, 0.027467, 0.915420,
		0.688089, -0.650584, 0.321360,
		0.604385, 0.758937, 0.242349,
		37.994183, 37.036282, 30.493731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991299, 36.367813, 30.914455>,  <37.571114, 36.505028, 30.324087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991299, 36.367813, 30.914455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.889061, 36.751873, 30.869230>,  <37.827721, 36.982307, 30.842094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.889061, 36.751873, 30.869230>,  <37.991299, 36.367813, 30.914455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889061, 36.751873, 30.869230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541618, -0.045333, 0.839402,
		0.800826, 0.275782, 0.531621,
		-0.255592, 0.960151, -0.113065,
		37.812382, 37.039917, 30.835310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111450, 36.695095, 31.598520>,  <37.991299, 36.367813, 30.914455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111450, 36.695095, 31.598520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.835827, 36.924366, 31.421133>,  <37.670452, 37.061928, 31.314701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.835827, 36.924366, 31.421133>,  <38.111450, 36.695095, 31.598520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835827, 36.924366, 31.421133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488461, 0.084715, 0.868463,
		0.535354, 0.815039, 0.221603,
		-0.689058, 0.573180, -0.443467,
		37.629108, 37.096321, 31.288094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071918, 37.399529, 31.953930>,  <38.111450, 36.695095, 31.598520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071918, 37.399529, 31.953930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.729355, 37.291946, 31.777647>,  <37.523815, 37.227398, 31.671877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.729355, 37.291946, 31.777647>,  <38.071918, 37.399529, 31.953930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729355, 37.291946, 31.777647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473971, 0.071098, 0.877665,
		-0.204720, 0.960524, -0.188367,
		-0.856412, -0.268956, -0.440706,
		37.472431, 37.211258, 31.645435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692612, 37.237694, 32.499977>,  <38.071918, 37.399529, 31.953930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692612, 37.237694, 32.499977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.422581, 37.200184, 32.207272>,  <37.260563, 37.177677, 32.031647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.422581, 37.200184, 32.207272>,  <37.692612, 37.237694, 32.499977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422581, 37.200184, 32.207272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720993, -0.126327, 0.681330,
		-0.156333, 0.987546, 0.017669,
		-0.675077, -0.093775, -0.731763,
		37.220058, 37.172050, 31.987743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.324120, 38.535503, 25.880899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072628, 38.282299, 25.700239>,  <41.921734, 38.130375, 25.591843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072628, 38.282299, 25.700239>,  <42.324120, 38.535503, 25.880899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.072628, 38.282299, 25.700239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681022, 0.167861, 0.712764,
		-0.375375, 0.755722, -0.536637,
		-0.628731, -0.633015, -0.451652,
		41.884010, 38.092396, 25.564743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.804230, 38.927135, 25.836773>,  <42.324120, 38.535503, 25.880899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.804230, 38.927135, 25.836773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687973, 38.545013, 25.815132>,  <41.618217, 38.315742, 25.802147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687973, 38.545013, 25.815132>,  <41.804230, 38.927135, 25.836773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.687973, 38.545013, 25.815132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484197, 0.098071, 0.869445,
		-0.825276, 0.278893, -0.491058,
		-0.290641, -0.955302, -0.054104,
		41.600780, 38.258423, 25.798901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054131, 39.004242, 25.828957>,  <41.804230, 38.927135, 25.836773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054131, 39.004242, 25.828957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159752, 38.647038, 25.974728>,  <41.223125, 38.432716, 26.062191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159752, 38.647038, 25.974728>,  <41.054131, 39.004242, 25.828957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159752, 38.647038, 25.974728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407400, 0.239212, 0.881364,
		-0.874243, -0.381195, -0.300648,
		0.264053, -0.893011, 0.364428,
		41.238968, 38.379135, 26.084057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387108, 38.692673, 26.174147>,  <41.054131, 39.004242, 25.828957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387108, 38.692673, 26.174147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697601, 38.475983, 26.303137>,  <40.883900, 38.345970, 26.380531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697601, 38.475983, 26.303137>,  <40.387108, 38.692673, 26.174147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697601, 38.475983, 26.303137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386552, -0.004894, 0.922255,
		-0.498031, -0.840541, -0.213205,
		0.776236, -0.541726, 0.322475,
		40.930473, 38.313465, 26.399879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018364, 38.190220, 26.471457>,  <40.387108, 38.692673, 26.174147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018364, 38.190220, 26.471457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383228, 38.190380, 26.635386>,  <40.602146, 38.190475, 26.733744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383228, 38.190380, 26.635386>,  <40.018364, 38.190220, 26.471457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383228, 38.190380, 26.635386> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402117, -0.192155, 0.895197,
		0.079111, -0.981365, -0.175115,
		0.912164, 0.000403, 0.409825,
		40.656879, 38.190502, 26.758333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176186, 37.517948, 26.720140>,  <40.018364, 38.190220, 26.471457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176186, 37.517948, 26.720140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387352, 37.796329, 26.914852>,  <40.514053, 37.963360, 27.031679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387352, 37.796329, 26.914852>,  <40.176186, 37.517948, 26.720140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387352, 37.796329, 26.914852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391774, -0.308979, 0.866629,
		0.753538, -0.648213, 0.109542,
		0.527914, 0.695954, 0.486780,
		40.545727, 38.005116, 27.060886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587082, 37.161785, 27.277016>,  <40.176186, 37.517948, 26.720140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587082, 37.161785, 27.277016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554989, 37.546352, 27.382265>,  <40.535732, 37.777092, 27.445415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554989, 37.546352, 27.382265>,  <40.587082, 37.161785, 27.277016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554989, 37.546352, 27.382265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321675, -0.274825, 0.906088,
		0.943444, -0.011940, 0.331316,
		-0.080235, 0.961420, 0.263123,
		40.530918, 37.834778, 27.461203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876076, 37.188915, 27.948830>,  <40.587082, 37.161785, 27.277016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876076, 37.188915, 27.948830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663994, 37.527618, 27.931494>,  <40.536743, 37.730843, 27.921093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663994, 37.527618, 27.931494>,  <40.876076, 37.188915, 27.948830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663994, 37.527618, 27.931494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290696, -0.133530, 0.947452,
		0.796477, 0.514944, 0.316948,
		-0.530207, 0.846760, -0.043338,
		40.504932, 37.781647, 27.918491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901329, 37.465786, 28.573933>,  <40.876076, 37.188915, 27.948830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901329, 37.465786, 28.573933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590755, 37.656876, 28.409527>,  <40.404411, 37.771530, 28.310884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590755, 37.656876, 28.409527>,  <40.901329, 37.465786, 28.573933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590755, 37.656876, 28.409527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487843, -0.042749, 0.871884,
		0.398947, 0.877471, 0.266245,
		-0.776434, 0.477722, -0.411013,
		40.357826, 37.800194, 28.286222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.605553, 37.514694, 28.927879>,  <40.901329, 37.465786, 28.573933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.605553, 37.514694, 28.927879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754784, 37.304245, 29.233562>,  <41.844322, 37.177975, 29.416973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754784, 37.304245, 29.233562>,  <41.605553, 37.514694, 28.927879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754784, 37.304245, 29.233562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831653, -0.175510, -0.526830,
		0.411302, 0.832103, 0.372070,
		0.373075, -0.526119, 0.764208,
		41.866707, 37.146408, 29.462824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298965, 37.798782, 29.049702>,  <41.605553, 37.514694, 28.927879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298965, 37.798782, 29.049702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.260525, 37.423023, 29.181335>,  <42.237461, 37.197567, 29.260315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.260525, 37.423023, 29.181335>,  <42.298965, 37.798782, 29.049702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.260525, 37.423023, 29.181335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707151, -0.297105, -0.641612,
		0.700502, 0.171055, 0.692847,
		-0.096097, -0.939398, 0.329085,
		42.231697, 37.141205, 29.280062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.023849, 37.600910, 29.228502>,  <42.298965, 37.798782, 29.049702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.023849, 37.600910, 29.228502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.786819, 37.284157, 29.169479>,  <42.644604, 37.094105, 29.134066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.786819, 37.284157, 29.169479>,  <43.023849, 37.600910, 29.228502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.786819, 37.284157, 29.169479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758373, -0.486703, -0.433578,
		0.271530, -0.368828, 0.888953,
		-0.592572, -0.791887, -0.147555,
		42.609047, 37.046589, 29.125214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.502010, 37.067654, 29.428852>,  <43.023849, 37.600910, 29.228502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.502010, 37.067654, 29.428852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206444, 36.885044, 29.230623>,  <43.029102, 36.775478, 29.111687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206444, 36.885044, 29.230623>,  <43.502010, 37.067654, 29.428852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.206444, 36.885044, 29.230623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656330, -0.321280, -0.682649,
		0.152426, -0.829680, 0.537027,
		-0.738916, -0.456520, -0.495573,
		42.984768, 36.748089, 29.081951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.786171, 36.456036, 29.202898>,  <43.502010, 37.067654, 29.428852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.786171, 36.456036, 29.202898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.491650, 36.551601, 28.949669>,  <43.314938, 36.608940, 28.797731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.491650, 36.551601, 28.949669>,  <43.786171, 36.456036, 29.202898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.491650, 36.551601, 28.949669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580465, -0.257789, -0.772402,
		-0.347739, -0.936196, 0.051128,
		-0.736301, 0.238916, -0.633072,
		43.270760, 36.623276, 28.759747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.839302, 35.935108, 28.746210>,  <43.786171, 36.456036, 29.202898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.839302, 35.935108, 28.746210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.595451, 36.180355, 28.545235>,  <43.449142, 36.327503, 28.424650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.595451, 36.180355, 28.545235>,  <43.839302, 35.935108, 28.746210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595451, 36.180355, 28.545235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413504, -0.294797, -0.861457,
		-0.676294, -0.732924, -0.073813,
		-0.609623, 0.613121, -0.502437,
		43.412563, 36.364292, 28.394503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.779930, 35.646816, 28.086082>,  <43.839302, 35.935108, 28.746210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.779930, 35.646816, 28.086082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626751, 36.011433, 28.026154>,  <43.534843, 36.230202, 27.990196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626751, 36.011433, 28.026154>,  <43.779930, 35.646816, 28.086082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.626751, 36.011433, 28.026154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259529, -0.049492, -0.964466,
		-0.886565, -0.408222, -0.217618,
		-0.382946, 0.911540, -0.149823,
		43.511868, 36.284893, 27.981207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.341377, 35.543579, 27.592365>,  <43.779930, 35.646816, 28.086082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.341377, 35.543579, 27.592365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424149, 35.934334, 27.570942>,  <43.473812, 36.168789, 27.558088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424149, 35.934334, 27.570942>,  <43.341377, 35.543579, 27.592365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.424149, 35.934334, 27.570942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101742, -0.075934, -0.991909,
		-0.973051, 0.199807, -0.115104,
		0.206931, 0.976889, -0.053559,
		43.486229, 36.227402, 27.554874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.958683, 35.878937, 27.069008>,  <43.341377, 35.543579, 27.592365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.958683, 35.878937, 27.069008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.284657, 36.100899, 27.135893>,  <43.480240, 36.234077, 27.176023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.284657, 36.100899, 27.135893>,  <42.958683, 35.878937, 27.069008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.284657, 36.100899, 27.135893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215472, -0.022259, -0.976256,
		-0.538010, 0.831614, -0.137707,
		0.814933, 0.554908, 0.167214,
		43.529137, 36.267372, 27.186058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.881203, 36.377205, 26.595263>,  <42.958683, 35.878937, 27.069008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.881203, 36.377205, 26.595263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.273167, 36.401581, 26.671232>,  <43.508343, 36.416206, 26.716814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.273167, 36.401581, 26.671232>,  <42.881203, 36.377205, 26.595263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273167, 36.401581, 26.671232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187814, 0.038702, -0.981442,
		-0.067161, 0.997391, 0.026479,
		0.979906, 0.060941, 0.189924,
		43.567139, 36.419865, 26.728209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.265316, 36.874935, 26.095440>,  <42.881203, 36.377205, 26.595263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.265316, 36.874935, 26.095440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.581039, 36.694386, 26.261930>,  <43.770473, 36.586056, 26.361826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.581039, 36.694386, 26.261930>,  <43.265316, 36.874935, 26.095440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.581039, 36.694386, 26.261930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478513, 0.027456, -0.877651,
		0.384722, 0.891912, 0.237660,
		0.789313, -0.451375, 0.416229,
		43.817833, 36.558971, 26.386799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.891464, 37.258453, 25.859583>,  <43.265316, 36.874935, 26.095440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.891464, 37.258453, 25.859583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.968334, 36.881020, 25.967447>,  <44.014458, 36.654560, 26.032166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.968334, 36.881020, 25.967447>,  <43.891464, 37.258453, 25.859583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.968334, 36.881020, 25.967447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423233, -0.168226, -0.890266,
		0.885405, 0.285219, 0.367027,
		0.192177, -0.943584, 0.269662,
		44.025986, 36.597946, 26.048346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.594784, 37.128693, 25.660778>,  <43.891464, 37.258453, 25.859583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.594784, 37.128693, 25.660778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.448185, 36.759377, 25.706753>,  <44.360226, 36.537785, 25.734339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.448185, 36.759377, 25.706753>,  <44.594784, 37.128693, 25.660778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.448185, 36.759377, 25.706753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597015, -0.328115, -0.732061,
		0.713620, -0.199678, 0.671473,
		-0.366497, -0.923293, 0.114938,
		44.338234, 36.482388, 25.741234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.235840, 36.698139, 25.692888>,  <44.594784, 37.128693, 25.660778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.235840, 36.698139, 25.692888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.926563, 36.463257, 25.597084>,  <44.740997, 36.322327, 25.539602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.926563, 36.463257, 25.597084>,  <45.235840, 36.698139, 25.692888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.926563, 36.463257, 25.597084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484928, -0.304062, -0.819994,
		0.408678, -0.750159, 0.519851,
		-0.773193, -0.587204, -0.239510,
		44.694607, 36.287094, 25.525230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.143188, 33.029644, 22.939415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.490326, 33.079845, 23.131708>,  <38.698608, 33.109966, 23.247084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.490326, 33.079845, 23.131708>,  <38.143188, 33.029644, 22.939415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490326, 33.079845, 23.131708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494364, 0.121534, 0.860717,
		0.049595, -0.984621, 0.167515,
		0.867839, 0.125501, 0.480734,
		38.750679, 33.117496, 23.275928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099800, 32.529579, 23.481548>,  <38.143188, 33.029644, 22.939415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099800, 32.529579, 23.481548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.388344, 32.793728, 23.565022>,  <38.561470, 32.952217, 23.615105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.388344, 32.793728, 23.565022>,  <38.099800, 32.529579, 23.481548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388344, 32.793728, 23.565022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487589, 0.270277, 0.830185,
		0.491828, -0.700614, 0.516957,
		0.721361, 0.660371, 0.208682,
		38.604752, 32.991840, 23.627626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388729, 32.331715, 24.097305>,  <38.099800, 32.529579, 23.481548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388729, 32.331715, 24.097305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.468044, 32.720249, 24.044853>,  <38.515633, 32.953369, 24.013382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.468044, 32.720249, 24.044853>,  <38.388729, 32.331715, 24.097305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468044, 32.720249, 24.044853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492914, 0.214461, 0.843233,
		0.847182, -0.102570, 0.521308,
		0.198291, 0.971332, -0.131129,
		38.527531, 33.011650, 24.005514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616634, 32.589718, 24.759214>,  <38.388729, 32.331715, 24.097305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616634, 32.589718, 24.759214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.520714, 32.937828, 24.587112>,  <38.463161, 33.146694, 24.483850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.520714, 32.937828, 24.587112>,  <38.616634, 32.589718, 24.759214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520714, 32.937828, 24.587112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402225, 0.314298, 0.859902,
		0.883579, 0.379262, 0.274678,
		-0.239798, 0.870274, -0.430256,
		38.448776, 33.198910, 24.458036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749855, 33.091290, 25.212528>,  <38.616634, 32.589718, 24.759214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749855, 33.091290, 25.212528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.521271, 33.299644, 24.958879>,  <38.384121, 33.424656, 24.806690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.521271, 33.299644, 24.958879>,  <38.749855, 33.091290, 25.212528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521271, 33.299644, 24.958879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492793, 0.400068, 0.772723,
		0.656192, 0.754072, 0.028065,
		-0.571461, 0.520885, -0.634123,
		38.349831, 33.455910, 24.768642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810715, 33.823414, 25.420822>,  <38.749855, 33.091290, 25.212528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810715, 33.823414, 25.420822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.476021, 33.763950, 25.210001>,  <38.275204, 33.728271, 25.083509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.476021, 33.763950, 25.210001>,  <38.810715, 33.823414, 25.420822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476021, 33.763950, 25.210001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538066, 0.402131, 0.740793,
		0.101817, 0.903432, -0.416465,
		-0.836730, -0.148661, -0.527050,
		38.225002, 33.719353, 25.051886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596394, 34.463764, 25.417339>,  <38.810715, 33.823414, 25.420822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596394, 34.463764, 25.417339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.293858, 34.212589, 25.343962>,  <38.112335, 34.061886, 25.299934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.293858, 34.212589, 25.343962>,  <38.596394, 34.463764, 25.417339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293858, 34.212589, 25.343962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441528, 0.283076, 0.851423,
		-0.482710, 0.724958, -0.491352,
		-0.756336, -0.627936, -0.183446,
		38.066956, 34.024208, 25.288927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903721, 34.814220, 25.531424>,  <38.596394, 34.463764, 25.417339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903721, 34.814220, 25.531424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.818932, 34.423943, 25.553642>,  <37.768059, 34.189777, 25.566975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.818932, 34.423943, 25.553642>,  <37.903721, 34.814220, 25.531424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818932, 34.423943, 25.553642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583722, 0.171994, 0.793528,
		-0.783795, 0.135784, -0.605993,
		-0.211975, -0.975695, 0.055549,
		37.755341, 34.131233, 25.570307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183105, 34.769787, 25.520636>,  <37.903721, 34.814220, 25.531424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183105, 34.769787, 25.520636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.278316, 34.411713, 25.671360>,  <37.335442, 34.196869, 25.761795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.278316, 34.411713, 25.671360>,  <37.183105, 34.769787, 25.520636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278316, 34.411713, 25.671360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532322, 0.204263, 0.821529,
		-0.812389, -0.396131, -0.427907,
		0.238028, -0.895185, 0.376810,
		37.349724, 34.143158, 25.784403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622341, 34.499557, 25.681890>,  <37.183105, 34.769787, 25.520636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622341, 34.499557, 25.681890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.891323, 34.301105, 25.901585>,  <37.052711, 34.182034, 26.033401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.891323, 34.301105, 25.901585>,  <36.622341, 34.499557, 25.681890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891323, 34.301105, 25.901585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548207, 0.164696, 0.819966,
		-0.497264, -0.852487, -0.161229,
		0.672457, -0.496126, 0.549236,
		37.093060, 34.152267, 26.066355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280090, 33.949165, 25.969395>,  <36.622341, 34.499557, 25.681890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280090, 33.949165, 25.969395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.600143, 34.009426, 26.201633>,  <36.792175, 34.045582, 26.340977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.600143, 34.009426, 26.201633>,  <36.280090, 33.949165, 25.969395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600143, 34.009426, 26.201633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585609, -0.013277, 0.810485,
		0.129807, -0.988498, 0.077598,
		0.800132, 0.150649, 0.580597,
		36.840183, 34.054619, 26.375813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244251, 33.398117, 26.472101>,  <36.280090, 33.949165, 25.969395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244251, 33.398117, 26.472101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.504635, 33.654846, 26.634245>,  <36.660866, 33.808884, 26.731531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.504635, 33.654846, 26.634245>,  <36.244251, 33.398117, 26.472101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504635, 33.654846, 26.634245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392780, -0.172173, 0.903372,
		0.649594, -0.747277, 0.140016,
		0.650962, 0.641821, 0.405358,
		36.699924, 33.847393, 26.755852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242237, 33.201324, 27.149817>,  <36.244251, 33.398117, 26.472101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242237, 33.201324, 27.149817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.394707, 33.569027, 27.189169>,  <36.486187, 33.789650, 27.212780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.394707, 33.569027, 27.189169>,  <36.242237, 33.201324, 27.149817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394707, 33.569027, 27.189169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351780, 0.045805, 0.934961,
		0.854962, -0.390987, 0.340835,
		0.381170, 0.919256, 0.098380,
		36.509056, 33.844803, 27.218683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448578, 33.144302, 27.787041>,  <36.242237, 33.201324, 27.149817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448578, 33.144302, 27.787041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.431927, 33.538795, 27.723015>,  <36.421936, 33.775490, 27.684599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.431927, 33.538795, 27.723015>,  <36.448578, 33.144302, 27.787041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431927, 33.538795, 27.723015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349921, 0.135668, 0.926903,
		0.935854, 0.094596, 0.339454,
		-0.041628, 0.986228, -0.160066,
		36.419437, 33.834663, 27.674995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256950, 33.083092, 27.930464>,  <36.448578, 33.144302, 27.787041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256950, 33.083092, 27.930464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.481796, 32.819103, 28.129848>,  <37.616703, 32.660709, 28.249479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.481796, 32.819103, 28.129848>,  <37.256950, 33.083092, 27.930464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481796, 32.819103, 28.129848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498884, -0.210134, -0.840808,
		0.659653, 0.721306, 0.211130,
		0.562115, -0.659971, 0.498463,
		37.650429, 32.621113, 28.279388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887672, 33.174225, 27.632034>,  <37.256950, 33.083092, 27.930464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887672, 33.174225, 27.632034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.914394, 32.826988, 27.828791>,  <37.930428, 32.618649, 27.946844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.914394, 32.826988, 27.828791>,  <37.887672, 33.174225, 27.632034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914394, 32.826988, 27.828791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694207, -0.313664, -0.647836,
		0.716668, 0.384756, 0.581678,
		0.066808, -0.868088, 0.491893,
		37.934437, 32.566563, 27.976358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557343, 33.074135, 27.647144>,  <37.887672, 33.174225, 27.632034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557343, 33.074135, 27.647144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.383839, 32.717930, 27.702040>,  <38.279736, 32.504208, 27.734978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.383839, 32.717930, 27.702040>,  <38.557343, 33.074135, 27.647144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383839, 32.717930, 27.702040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609070, -0.402035, -0.683668,
		0.663991, -0.212962, 0.716773,
		-0.433763, -0.890514, 0.137239,
		38.253708, 32.450775, 27.743212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081284, 32.612469, 27.511314>,  <38.557343, 33.074135, 27.647144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081284, 32.612469, 27.511314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.749855, 32.393757, 27.463142>,  <38.550999, 32.262531, 27.434238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.749855, 32.393757, 27.463142>,  <39.081284, 32.612469, 27.511314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749855, 32.393757, 27.463142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412656, -0.451016, -0.791391,
		0.378400, -0.705419, 0.599330,
		-0.828570, -0.546780, -0.120431,
		38.501286, 32.229721, 27.427013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387878, 31.915556, 27.505783>,  <39.081284, 32.612469, 27.511314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387878, 31.915556, 27.505783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.025658, 31.929585, 27.336668>,  <38.808327, 31.938002, 27.235199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.025658, 31.929585, 27.336668>,  <39.387878, 31.915556, 27.505783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025658, 31.929585, 27.336668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361415, -0.458111, -0.812104,
		-0.222164, -0.888203, 0.402168,
		-0.905551, 0.035070, -0.422786,
		38.753994, 31.940105, 27.209833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430473, 31.329048, 27.137342>,  <39.387878, 31.915556, 27.505783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430473, 31.329048, 27.137342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.131779, 31.528749, 26.961555>,  <38.952564, 31.648571, 26.856083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.131779, 31.528749, 26.961555>,  <39.430473, 31.329048, 27.137342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131779, 31.528749, 26.961555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283050, -0.359386, -0.889227,
		-0.601889, -0.788408, 0.127052,
		-0.746734, 0.499254, -0.439470,
		38.907757, 31.678526, 26.829714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153584, 30.797607, 26.781731>,  <39.430473, 31.329048, 27.137342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153584, 30.797607, 26.781731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.044666, 31.140394, 26.606705>,  <38.979317, 31.346067, 26.501690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.044666, 31.140394, 26.606705>,  <39.153584, 30.797607, 26.781731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044666, 31.140394, 26.606705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189300, -0.398151, -0.897576,
		-0.943411, -0.327232, -0.053812,
		-0.272290, 0.856969, -0.437564,
		38.962978, 31.397486, 26.475435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725471, 30.629221, 26.273346>,  <39.153584, 30.797607, 26.781731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725471, 30.629221, 26.273346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.871689, 30.990248, 26.182352>,  <38.959419, 31.206863, 26.127756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.871689, 30.990248, 26.182352>,  <38.725471, 30.629221, 26.273346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871689, 30.990248, 26.182352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344189, -0.358148, -0.867908,
		-0.864820, 0.238958, -0.441572,
		0.365541, 0.902568, -0.227487,
		38.981350, 31.261019, 26.114105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574924, 30.662415, 25.471403>,  <38.725471, 30.629221, 26.273346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574924, 30.662415, 25.471403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.841450, 30.947945, 25.557644>,  <39.001366, 31.119263, 25.609388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.841450, 30.947945, 25.557644>,  <38.574924, 30.662415, 25.471403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841450, 30.947945, 25.557644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519787, -0.237316, -0.820672,
		-0.534650, 0.658890, -0.529163,
		0.666312, 0.713824, 0.215602,
		39.041344, 31.162092, 25.622324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684509, 31.003418, 24.848900>,  <38.574924, 30.662415, 25.471403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684509, 31.003418, 24.848900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.003281, 31.101187, 25.069864>,  <39.194546, 31.159847, 25.202444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.003281, 31.101187, 25.069864>,  <38.684509, 31.003418, 24.848900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003281, 31.101187, 25.069864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581241, -0.061240, -0.811424,
		-0.164500, 0.967733, -0.190872,
		0.796931, 0.244422, 0.552412,
		39.242359, 31.174513, 25.235588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037895, 31.538017, 24.484266>,  <38.684509, 31.003418, 24.848900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037895, 31.538017, 24.484266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.299179, 31.384020, 24.745066>,  <39.455948, 31.291622, 24.901545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.299179, 31.384020, 24.745066>,  <39.037895, 31.538017, 24.484266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299179, 31.384020, 24.745066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736537, 0.123384, -0.665049,
		0.175592, 0.914635, 0.364156,
		0.653208, -0.384991, 0.651997,
		39.495140, 31.268522, 24.940664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576176, 31.966915, 24.488781>,  <39.037895, 31.538017, 24.484266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576176, 31.966915, 24.488781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.736423, 31.638153, 24.650755>,  <39.832573, 31.440895, 24.747940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.736423, 31.638153, 24.650755>,  <39.576176, 31.966915, 24.488781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736423, 31.638153, 24.650755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671078, -0.037692, -0.740428,
		0.623826, 0.568373, 0.536464,
		0.400619, -0.821907, 0.404936,
		39.856609, 31.391581, 24.772236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311607, 32.135979, 24.562651>,  <39.576176, 31.966915, 24.488781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311607, 32.135979, 24.562651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.290806, 31.737507, 24.590696>,  <40.278324, 31.498423, 24.607523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.290806, 31.737507, 24.590696>,  <40.311607, 32.135979, 24.562651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290806, 31.737507, 24.590696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780805, -0.084330, -0.619057,
		0.622606, 0.022554, 0.782210,
		-0.052002, -0.996183, 0.070114,
		40.275204, 31.438652, 24.611731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991879, 31.770275, 24.789864>,  <40.311607, 32.135979, 24.562651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991879, 31.770275, 24.789864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.780628, 31.515118, 24.565659>,  <40.653877, 31.362022, 24.431135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.780628, 31.515118, 24.565659>,  <40.991879, 31.770275, 24.789864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780628, 31.515118, 24.565659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813715, -0.191430, -0.548837,
		0.242801, -0.745952, 0.620164,
		-0.528124, -0.637895, -0.560513,
		40.622192, 31.323750, 24.397505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341339, 31.139730, 24.952597>,  <40.991879, 31.770275, 24.789864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341339, 31.139730, 24.952597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.719978, 31.236221, 25.038158>,  <41.947163, 31.294117, 25.089495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.719978, 31.236221, 25.038158>,  <41.341339, 31.139730, 24.952597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719978, 31.236221, 25.038158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207113, -0.053474, 0.976855,
		0.247084, -0.968994, -0.000657,
		0.946601, 0.241229, 0.213904,
		42.003960, 31.308590, 25.102329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608189, 30.775091, 25.532064>,  <41.341339, 31.139730, 24.952597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.608189, 30.775091, 25.532064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.828831, 31.108673, 25.525654>,  <41.961216, 31.308823, 25.521807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.828831, 31.108673, 25.525654>,  <41.608189, 30.775091, 25.532064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.828831, 31.108673, 25.525654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035245, 0.042500, 0.998474,
		0.833362, -0.550196, 0.052836,
		0.551603, 0.833953, -0.016026,
		41.994312, 31.358858, 25.520845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979710, 30.605551, 26.097733>,  <41.608189, 30.775091, 25.532064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979710, 30.605551, 26.097733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.044426, 30.995855, 26.038795>,  <42.083256, 31.230038, 26.003433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.044426, 30.995855, 26.038795>,  <41.979710, 30.605551, 26.097733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.044426, 30.995855, 26.038795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050643, 0.157324, 0.986248,
		0.985525, -0.152103, 0.074869,
		0.161790, 0.975763, -0.147343,
		42.092964, 31.288584, 25.994593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570663, 30.711861, 26.541491>,  <41.979710, 30.605551, 26.097733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.570663, 30.711861, 26.541491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.393913, 31.065601, 26.481262>,  <42.287865, 31.277845, 26.445126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.393913, 31.065601, 26.481262>,  <42.570663, 30.711861, 26.541491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.393913, 31.065601, 26.481262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052896, 0.193238, 0.979725,
		0.895517, 0.424950, -0.132165,
		-0.441873, 0.884351, -0.150569,
		42.261353, 31.330906, 26.436090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.837910, 31.246857, 27.048494>,  <42.570663, 30.711861, 26.541491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.837910, 31.246857, 27.048494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.492748, 31.409758, 26.928802>,  <42.285652, 31.507498, 26.856987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.492748, 31.409758, 26.928802>,  <42.837910, 31.246857, 27.048494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492748, 31.409758, 26.928802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201236, 0.266234, 0.942668,
		0.463568, 0.873651, -0.147781,
		-0.862907, 0.407252, -0.299228,
		42.233875, 31.531933, 26.839035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.861179, 31.884270, 27.266638>,  <42.837910, 31.246857, 27.048494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.861179, 31.884270, 27.266638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.472496, 31.802097, 27.220007>,  <42.239288, 31.752794, 27.192028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.472496, 31.802097, 27.220007>,  <42.861179, 31.884270, 27.266638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.472496, 31.802097, 27.220007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163712, 0.229981, 0.959327,
		-0.170263, 0.951267, -0.257104,
		-0.971704, -0.205429, -0.116577,
		42.180984, 31.740469, 27.185034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.514996, 32.454453, 27.662567>,  <42.861179, 31.884270, 27.266638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.514996, 32.454453, 27.662567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.217556, 32.194542, 27.599512>,  <42.039093, 32.038593, 27.561678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.217556, 32.194542, 27.599512>,  <42.514996, 32.454453, 27.662567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.217556, 32.194542, 27.599512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398749, 0.241705, 0.884634,
		-0.536716, 0.720669, -0.438830,
		-0.743596, -0.649781, -0.157639,
		41.994476, 31.999607, 27.552219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871082, 32.809395, 27.814905>,  <42.514996, 32.454453, 27.662567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871082, 32.809395, 27.814905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.803230, 32.417278, 27.855427>,  <41.762520, 32.182011, 27.879740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.803230, 32.417278, 27.855427>,  <41.871082, 32.809395, 27.814905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.803230, 32.417278, 27.855427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387625, 0.160873, 0.907671,
		-0.906076, 0.114698, -0.407273,
		-0.169628, -0.980288, 0.101304,
		41.752342, 32.123192, 27.885818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157284, 32.738197, 28.085497>,  <41.871082, 32.809395, 27.814905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.157284, 32.738197, 28.085497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.344524, 32.393192, 28.162388>,  <41.456867, 32.186188, 28.208523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.344524, 32.393192, 28.162388>,  <41.157284, 32.738197, 28.085497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344524, 32.393192, 28.162388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256209, 0.075721, 0.963651,
		-0.845719, -0.500334, -0.185539,
		0.468098, -0.862515, 0.192229,
		41.484955, 32.134438, 28.220057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715004, 32.288486, 28.571428>,  <41.157284, 32.738197, 28.085497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715004, 32.288486, 28.571428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.086201, 32.141880, 28.598223>,  <41.308918, 32.053917, 28.614300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.086201, 32.141880, 28.598223>,  <40.715004, 32.288486, 28.571428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086201, 32.141880, 28.598223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015427, 0.141828, 0.989771,
		-0.372271, -0.919537, 0.125962,
		0.927996, -0.366520, 0.066984,
		41.364601, 32.031925, 28.618319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619686, 31.775232, 28.960400>,  <40.715004, 32.288486, 28.571428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619686, 31.775232, 28.960400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.011971, 31.841154, 29.002443>,  <41.247341, 31.880707, 29.027670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.011971, 31.841154, 29.002443>,  <40.619686, 31.775232, 28.960400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011971, 31.841154, 29.002443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103215, -0.020036, 0.994457,
		0.165997, -0.986123, -0.002640,
		0.980710, 0.164804, 0.105108,
		41.306183, 31.890594, 29.033976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941925, 31.225285, 29.435415>,  <40.619686, 31.775232, 28.960400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941925, 31.225285, 29.435415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.188301, 31.539860, 29.453892>,  <41.336124, 31.728605, 29.464977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.188301, 31.539860, 29.453892>,  <40.941925, 31.225285, 29.435415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.188301, 31.539860, 29.453892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081952, 0.005649, 0.996620,
		0.783520, -0.617642, 0.067930,
		0.615938, 0.786439, 0.046191,
		41.373081, 31.775791, 29.467749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.343128, 31.136677, 29.970278>,  <40.941925, 31.225285, 29.435415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.343128, 31.136677, 29.970278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.411640, 31.528028, 29.923903>,  <41.452747, 31.762838, 29.896078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.411640, 31.528028, 29.923903>,  <41.343128, 31.136677, 29.970278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411640, 31.528028, 29.923903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113234, 0.136444, 0.984155,
		0.978694, -0.155436, 0.134155,
		0.171277, 0.978377, -0.115936,
		41.463024, 31.821543, 29.889122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730297, 31.358818, 30.569305>,  <41.343128, 31.136677, 29.970278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730297, 31.358818, 30.569305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.566784, 31.689335, 30.414312>,  <41.468678, 31.887644, 30.321316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.566784, 31.689335, 30.414312>,  <41.730297, 31.358818, 30.569305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566784, 31.689335, 30.414312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219576, 0.323060, 0.920554,
		0.885825, 0.461385, 0.049374,
		-0.408779, 0.826291, -0.387484,
		41.444149, 31.937222, 30.298067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<45.573029, 35.953106, 25.637768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.224522, 35.944828, 25.441616>,  <45.015419, 35.939861, 25.323925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.224522, 35.944828, 25.441616>,  <45.573029, 35.953106, 25.637768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.224522, 35.944828, 25.441616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414144, -0.567194, -0.711881,
		-0.263411, -0.823324, 0.502745,
		-0.871263, -0.020692, -0.490380,
		44.963142, 35.938622, 25.294502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.437832, 35.200382, 25.512022>,  <45.573029, 35.953106, 25.637768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.437832, 35.200382, 25.512022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.228451, 35.423309, 25.254217>,  <45.102821, 35.557064, 25.099533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.228451, 35.423309, 25.254217>,  <45.437832, 35.200382, 25.512022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.228451, 35.423309, 25.254217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124725, -0.698155, -0.704999,
		-0.842879, -0.449418, 0.295937,
		-0.523449, 0.557318, -0.644514,
		45.071415, 35.590504, 25.060863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.009457, 34.779301, 25.182545>,  <45.437832, 35.200382, 25.512022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.009457, 34.779301, 25.182545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.003723, 35.107609, 24.954115>,  <45.000282, 35.304592, 24.817057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.003723, 35.107609, 24.954115>,  <45.009457, 34.779301, 25.182545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.003723, 35.107609, 24.954115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194458, -0.557943, -0.806775,
		-0.980806, -0.122614, -0.151609,
		-0.014333, 0.820771, -0.571077,
		44.999424, 35.353840, 24.782791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.734165, 34.567291, 24.486179>,  <45.009457, 34.779301, 25.182545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.734165, 34.567291, 24.486179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.932133, 34.910492, 24.431217>,  <45.050915, 35.116413, 24.398239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.932133, 34.910492, 24.431217>,  <44.734165, 34.567291, 24.486179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.932133, 34.910492, 24.431217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318177, -0.326094, -0.890183,
		-0.808588, 0.396852, -0.434389,
		0.494923, 0.858004, -0.137406,
		45.080608, 35.167892, 24.389996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.728031, 34.726933, 23.743437>,  <44.734165, 34.567291, 24.486179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.728031, 34.726933, 23.743437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.040348, 34.941036, 23.872345>,  <45.227737, 35.069496, 23.949690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.040348, 34.941036, 23.872345>,  <44.728031, 34.726933, 23.743437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.040348, 34.941036, 23.872345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469392, -0.162116, -0.867980,
		-0.412345, 0.828988, -0.377824,
		0.780796, 0.535255, 0.322273,
		45.274586, 35.101612, 23.969027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.918156, 34.988251, 23.141520>,  <44.728031, 34.726933, 23.743437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.918156, 34.988251, 23.141520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.219120, 35.054474, 23.396540>,  <45.399700, 35.094208, 23.549551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.219120, 35.054474, 23.396540>,  <44.918156, 34.988251, 23.141520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.219120, 35.054474, 23.396540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658688, -0.193505, -0.727108,
		0.002988, 0.967029, -0.254648,
		0.752411, 0.165561, 0.637548,
		45.444843, 35.104141, 23.587805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.309006, 35.547703, 22.881063>,  <44.918156, 34.988251, 23.141520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.309006, 35.547703, 22.881063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.536884, 35.304939, 23.102736>,  <45.673611, 35.159283, 23.235739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.536884, 35.304939, 23.102736>,  <45.309006, 35.547703, 22.881063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.536884, 35.304939, 23.102736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555589, -0.212489, -0.803847,
		0.605617, 0.765842, 0.216137,
		0.569692, -0.606906, 0.554180,
		45.707790, 35.122868, 23.268990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.955936, 35.540470, 22.560316>,  <45.309006, 35.547703, 22.881063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.955936, 35.540470, 22.560316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.008961, 35.244930, 22.824598>,  <46.040775, 35.067608, 22.983168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.008961, 35.244930, 22.824598>,  <45.955936, 35.540470, 22.560316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.008961, 35.244930, 22.824598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689403, -0.410204, -0.597040,
		0.712146, 0.534636, 0.454987,
		0.132561, -0.738848, 0.660704,
		46.048729, 35.023277, 23.022810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.703205, 35.416012, 22.618282>,  <45.955936, 35.540470, 22.560316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.703205, 35.416012, 22.618282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.515949, 35.080471, 22.729404>,  <46.403595, 34.879147, 22.796078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.515949, 35.080471, 22.729404>,  <46.703205, 35.416012, 22.618282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.515949, 35.080471, 22.729404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519334, -0.515540, -0.681550,
		0.714939, -0.174786, 0.676988,
		-0.468140, -0.838850, 0.277807,
		46.375507, 34.828815, 22.812746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.239532, 34.911888, 22.568783>,  <46.703205, 35.416012, 22.618282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.239532, 34.911888, 22.568783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.891506, 34.715733, 22.548805>,  <46.682690, 34.598038, 22.536819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.891506, 34.715733, 22.548805>,  <47.239532, 34.911888, 22.568783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.891506, 34.715733, 22.548805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391884, -0.626693, -0.673560,
		0.299009, -0.605616, 0.737443,
		-0.870070, -0.490392, -0.049945,
		46.630486, 34.568615, 22.533821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.404652, 34.179867, 22.577450>,  <47.239532, 34.911888, 22.568783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.404652, 34.179867, 22.577450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.029179, 34.172626, 22.439728>,  <46.803894, 34.168282, 22.357094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.029179, 34.172626, 22.439728>,  <47.404652, 34.179867, 22.577450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.029179, 34.172626, 22.439728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242865, -0.743542, -0.623027,
		-0.244726, -0.668445, 0.702347,
		-0.938683, -0.018104, -0.344306,
		46.747574, 34.167194, 22.336435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.212418, 33.440048, 22.478870>,  <47.404652, 34.179867, 22.577450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.212418, 33.440048, 22.478870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.962070, 33.655434, 22.253181>,  <46.811863, 33.784664, 22.117767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.962070, 33.655434, 22.253181>,  <47.212418, 33.440048, 22.478870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.962070, 33.655434, 22.253181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118815, -0.649160, -0.751315,
		-0.770827, -0.537261, 0.342310,
		-0.625866, 0.538462, -0.564225,
		46.774311, 33.816971, 22.083914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.506866, 33.031517, 22.351646>,  <47.212418, 33.440048, 22.478870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.506866, 33.031517, 22.351646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.656002, 33.280182, 22.076103>,  <46.745483, 33.429382, 21.910778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.656002, 33.280182, 22.076103>,  <46.506866, 33.031517, 22.351646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.656002, 33.280182, 22.076103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214410, -0.780013, -0.587884,
		-0.902785, 0.071487, -0.424109,
		0.372837, 0.621666, -0.688857,
		46.767853, 33.466682, 21.869446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.238121, 32.590927, 21.883762>,  <46.506866, 33.031517, 22.351646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.238121, 32.590927, 21.883762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.933929, 32.425232, 21.683731>,  <45.751415, 32.325817, 21.563711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.933929, 32.425232, 21.683731>,  <46.238121, 32.590927, 21.883762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.933929, 32.425232, 21.683731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378092, 0.343646, -0.859624,
		0.527936, -0.842804, -0.104717,
		-0.760480, -0.414234, -0.500080,
		45.705784, 32.300961, 21.533707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.171322, 32.410656, 21.163042>,  <46.238121, 32.590927, 21.883762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.171322, 32.410656, 21.163042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.017853, 32.074684, 21.009516>,  <45.925770, 31.873102, 20.917400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.017853, 32.074684, 21.009516>,  <46.171322, 32.410656, 21.163042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.017853, 32.074684, 21.009516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770760, 0.062336, 0.634068,
		-0.508646, 0.539106, -0.671300,
		-0.383676, -0.839928, -0.383815,
		45.902748, 31.822706, 20.894371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.477940, 32.588242, 20.934877>,  <46.171322, 32.410656, 21.163042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.477940, 32.588242, 20.934877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.537632, 32.205429, 21.034328>,  <45.573448, 31.975740, 21.094000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.537632, 32.205429, 21.034328>,  <45.477940, 32.588242, 20.934877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.537632, 32.205429, 21.034328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623887, 0.103941, 0.774572,
		-0.767134, -0.270708, -0.581570,
		0.149234, -0.957034, 0.248628,
		45.582401, 31.918320, 21.108917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.767162, 32.265175, 21.102037>,  <45.477940, 32.588242, 20.934877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.767162, 32.265175, 21.102037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.028496, 32.022430, 21.283091>,  <45.185295, 31.876785, 21.391722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.028496, 32.022430, 21.283091>,  <44.767162, 32.265175, 21.102037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.028496, 32.022430, 21.283091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592350, -0.037443, 0.804810,
		-0.471458, -0.793928, -0.383935,
		0.653337, -0.606858, 0.452630,
		45.224499, 31.840374, 21.418880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.342606, 31.649368, 21.400702>,  <44.767162, 32.265175, 21.102037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.342606, 31.649368, 21.400702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.693081, 31.624508, 21.591879>,  <44.903366, 31.609592, 21.706585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.693081, 31.624508, 21.591879>,  <44.342606, 31.649368, 21.400702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.693081, 31.624508, 21.591879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479461, -0.011377, 0.877489,
		-0.049106, -0.998001, -0.039771,
		0.876188, -0.062158, 0.477944,
		44.955936, 31.605864, 21.735262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.323769, 31.012526, 21.772989>,  <44.342606, 31.649368, 21.400702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.323769, 31.012526, 21.772989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.591049, 31.233141, 21.972715>,  <44.751419, 31.365511, 22.092550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.591049, 31.233141, 21.972715>,  <44.323769, 31.012526, 21.772989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.591049, 31.233141, 21.972715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507756, -0.152460, 0.847903,
		0.543776, -0.820099, 0.178173,
		0.668201, 0.551537, 0.499314,
		44.791508, 31.398602, 22.122509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.485863, 30.647741, 22.339588>,  <44.323769, 31.012526, 21.772989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.485863, 30.647741, 22.339588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.592384, 31.020060, 22.439751>,  <44.656300, 31.243450, 22.499847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.592384, 31.020060, 22.439751>,  <44.485863, 30.647741, 22.339588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.592384, 31.020060, 22.439751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570888, -0.057007, 0.819046,
		0.776638, -0.361071, 0.516198,
		0.266307, 0.930794, 0.250406,
		44.672276, 31.299297, 22.514872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.644810, 30.577831, 23.034229>,  <44.485863, 30.647741, 22.339588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.644810, 30.577831, 23.034229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.570389, 30.958996, 22.938444>,  <44.525734, 31.187695, 22.880974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.570389, 30.958996, 22.938444>,  <44.644810, 30.577831, 23.034229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.570389, 30.958996, 22.938444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642571, 0.066362, 0.763347,
		0.743293, 0.295897, 0.599967,
		-0.186057, 0.952912, -0.239461,
		44.514572, 31.244869, 22.866606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.678230, 30.968134, 23.641407>,  <44.644810, 30.577831, 23.034229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.678230, 30.968134, 23.641407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.455158, 31.189955, 23.394354>,  <44.321316, 31.323048, 23.246122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.455158, 31.189955, 23.394354>,  <44.678230, 30.968134, 23.641407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.455158, 31.189955, 23.394354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676078, 0.128234, 0.725585,
		0.481577, 0.822209, 0.303407,
		-0.557676, 0.554552, -0.617632,
		44.287857, 31.356321, 23.209064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.558758, 31.550591, 24.031143>,  <44.678230, 30.968134, 23.641407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.558758, 31.550591, 24.031143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.275490, 31.541805, 23.748861>,  <44.105530, 31.536533, 23.579493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.275490, 31.541805, 23.748861>,  <44.558758, 31.550591, 24.031143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.275490, 31.541805, 23.748861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705532, -0.016087, 0.708495,
		-0.026914, 0.999629, -0.004103,
		-0.708166, -0.021963, -0.705704,
		44.063042, 31.535217, 23.537149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.071194, 32.090092, 24.152054>,  <44.558758, 31.550591, 24.031143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.071194, 32.090092, 24.152054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.875427, 31.808643, 23.945990>,  <43.757969, 31.639774, 23.822351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.875427, 31.808643, 23.945990>,  <44.071194, 32.090092, 24.152054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.875427, 31.808643, 23.945990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758422, 0.051852, 0.649698,
		-0.430429, 0.708682, -0.559018,
		-0.489415, -0.703620, -0.515162,
		43.728603, 31.597557, 23.791441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.390652, 32.396549, 24.114594>,  <44.071194, 32.090092, 24.152054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.390652, 32.396549, 24.114594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.325420, 32.008018, 24.045401>,  <43.286282, 31.774899, 24.003885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.325420, 32.008018, 24.045401>,  <43.390652, 32.396549, 24.114594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.325420, 32.008018, 24.045401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809116, 0.031336, 0.586813,
		-0.564569, 0.235658, -0.791029,
		-0.163075, -0.971331, -0.172983,
		43.276497, 31.716619, 23.993505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729008, 32.440517, 24.053905>,  <43.390652, 32.396549, 24.114594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.729008, 32.440517, 24.053905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.802456, 32.051865, 24.113523>,  <42.846527, 31.818672, 24.149294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.802456, 32.051865, 24.113523>,  <42.729008, 32.440517, 24.053905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.802456, 32.051865, 24.113523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770517, -0.048116, 0.635601,
		-0.610399, -0.231553, -0.757493,
		0.183622, -0.971632, 0.149045,
		42.857544, 31.760376, 24.158237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096817, 32.135239, 24.236990>,  <42.729008, 32.440517, 24.053905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096817, 32.135239, 24.236990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.331272, 31.828451, 24.341454>,  <42.471947, 31.644381, 24.404131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.331272, 31.828451, 24.341454>,  <42.096817, 32.135239, 24.236990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.331272, 31.828451, 24.341454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460148, -0.049820, 0.886444,
		-0.666860, -0.639752, -0.382118,
		0.586141, -0.766965, 0.261157,
		42.507114, 31.598362, 24.419802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591942, 31.509321, 24.382591>,  <42.096817, 32.135239, 24.236990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.591942, 31.509321, 24.382591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.948952, 31.486320, 24.561520>,  <42.163158, 31.472521, 24.668877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.948952, 31.486320, 24.561520>,  <41.591942, 31.509321, 24.382591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.948952, 31.486320, 24.561520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441558, 0.090500, 0.892657,
		-0.091811, -0.994235, 0.055383,
		0.892523, -0.057501, 0.447322,
		42.216709, 31.469070, 24.695717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668289, 30.893101, 24.000660>,  <41.591942, 31.509321, 24.382591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668289, 30.893101, 24.000660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.273373, 30.919189, 23.942703>,  <41.036423, 30.934843, 23.907928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.273373, 30.919189, 23.942703>,  <41.668289, 30.893101, 24.000660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273373, 30.919189, 23.942703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135358, -0.132367, -0.981915,
		-0.083218, -0.989053, 0.121857,
		-0.987296, 0.065219, -0.144892,
		40.977184, 30.938757, 23.899235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593369, 30.383617, 23.609509>,  <41.668289, 30.893101, 24.000660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593369, 30.383617, 23.609509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.270798, 30.614048, 23.556131>,  <41.077255, 30.752306, 23.524105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.270798, 30.614048, 23.556131>,  <41.593369, 30.383617, 23.609509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.270798, 30.614048, 23.556131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156606, -0.009548, -0.987615,
		-0.570216, -0.817340, -0.082517,
		-0.806430, 0.576076, -0.133445,
		41.028870, 30.786871, 23.516098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280766, 30.021723, 23.133877>,  <41.593369, 30.383617, 23.609509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280766, 30.021723, 23.133877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.140602, 30.395802, 23.113398>,  <41.056503, 30.620249, 23.101110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.140602, 30.395802, 23.113398>,  <41.280766, 30.021723, 23.133877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140602, 30.395802, 23.113398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292358, 0.057284, -0.954592,
		-0.889800, -0.349461, -0.293485,
		-0.350405, 0.935198, -0.051197,
		41.035480, 30.676361, 23.098038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899132, 30.020060, 22.577124>,  <41.280766, 30.021723, 23.133877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899132, 30.020060, 22.577124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.983471, 30.407564, 22.629343>,  <41.034073, 30.640066, 22.660675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.983471, 30.407564, 22.629343>,  <40.899132, 30.020060, 22.577124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983471, 30.407564, 22.629343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320709, 0.057602, -0.945425,
		-0.923411, 0.241210, -0.298545,
		0.210849, 0.968762, 0.130549,
		41.046726, 30.698193, 22.668509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634323, 30.318722, 21.957941>,  <40.899132, 30.020060, 22.577124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634323, 30.318722, 21.957941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.883312, 30.587135, 22.119057>,  <41.032707, 30.748184, 22.215725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.883312, 30.587135, 22.119057>,  <40.634323, 30.318722, 21.957941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883312, 30.587135, 22.119057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440879, 0.124574, -0.888879,
		-0.646647, 0.730885, -0.218301,
		0.622474, 0.671035, 0.402787,
		41.070053, 30.788446, 22.239893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629604, 30.810574, 21.499577>,  <40.634323, 30.318722, 21.957941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629604, 30.810574, 21.499577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.953144, 30.888102, 21.721638>,  <41.147266, 30.934618, 21.854874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.953144, 30.888102, 21.721638>,  <40.629604, 30.810574, 21.499577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953144, 30.888102, 21.721638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489889, 0.300056, -0.818520,
		-0.325223, 0.934023, 0.147750,
		0.808850, 0.193821, 0.555153,
		41.195801, 30.946247, 21.888184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826561, 31.470278, 21.406681>,  <40.629604, 30.810574, 21.499577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826561, 31.470278, 21.406681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.158886, 31.275646, 21.514751>,  <41.358280, 31.158867, 21.579594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.158886, 31.275646, 21.514751>,  <40.826561, 31.470278, 21.406681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158886, 31.275646, 21.514751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431644, 0.256892, -0.864691,
		0.351332, 0.835015, 0.423457,
		0.830812, -0.486576, 0.270175,
		41.408131, 31.129673, 21.595804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661858, 32.159920, 21.421600>,  <40.826561, 31.470278, 21.406681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661858, 32.159920, 21.421600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.515793, 32.484802, 21.239620>,  <40.428154, 32.679729, 21.130432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.515793, 32.484802, 21.239620>,  <40.661858, 32.159920, 21.421600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515793, 32.484802, 21.239620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392434, 0.308857, 0.866374,
		0.844187, 0.494907, 0.205953,
		-0.365164, 0.812204, -0.454951,
		40.406242, 32.728462, 21.103134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885605, 32.778610, 21.726831>,  <40.661858, 32.159920, 21.421600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885605, 32.778610, 21.726831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.532833, 32.866447, 21.559992>,  <40.321171, 32.919151, 21.459888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.532833, 32.866447, 21.559992>,  <40.885605, 32.778610, 21.726831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532833, 32.866447, 21.559992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347446, 0.295138, 0.890042,
		0.318551, 0.929877, -0.183995,
		-0.881934, 0.219595, -0.417098,
		40.268253, 32.932327, 21.434862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717911, 33.254513, 22.082453>,  <40.885605, 32.778610, 21.726831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717911, 33.254513, 22.082453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.368176, 33.135967, 21.928720>,  <40.158337, 33.064838, 21.836481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.368176, 33.135967, 21.928720>,  <40.717911, 33.254513, 22.082453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368176, 33.135967, 21.928720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474653, 0.357025, 0.804510,
		-0.101212, 0.885834, -0.452829,
		-0.874334, -0.296363, -0.384329,
		40.105877, 33.047058, 21.813421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332127, 33.876774, 22.199997>,  <40.717911, 33.254513, 22.082453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332127, 33.876774, 22.199997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.106781, 33.554150, 22.128351>,  <39.971573, 33.360577, 22.085363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.106781, 33.554150, 22.128351>,  <40.332127, 33.876774, 22.199997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106781, 33.554150, 22.128351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562578, 0.215712, 0.798107,
		-0.605082, 0.550393, -0.575276,
		-0.563366, -0.806558, -0.179116,
		39.937771, 33.312183, 22.074617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711269, 34.125721, 22.454678>,  <40.332127, 33.876774, 22.199997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711269, 34.125721, 22.454678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.629646, 33.736916, 22.408127>,  <39.580673, 33.503632, 22.380196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.629646, 33.736916, 22.408127>,  <39.711269, 34.125721, 22.454678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629646, 33.736916, 22.408127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612334, 0.033981, 0.789868,
		-0.763811, 0.232441, -0.602133,
		-0.204059, -0.972017, -0.116377,
		39.568428, 33.445309, 22.373215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019951, 34.015285, 22.503168>,  <39.711269, 34.125721, 22.454678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019951, 34.015285, 22.503168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.141918, 33.647686, 22.603138>,  <39.215099, 33.427128, 22.663120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.141918, 33.647686, 22.603138>,  <39.019951, 34.015285, 22.503168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141918, 33.647686, 22.603138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587101, 0.025244, 0.809120,
		-0.749890, -0.393449, -0.531849,
		0.304922, -0.919000, 0.249925,
		39.233395, 33.371986, 22.678116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415596, 33.629288, 22.698347>,  <39.019951, 34.015285, 22.503168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415596, 33.629288, 22.698347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.714073, 33.400932, 22.835335>,  <38.893158, 33.263920, 22.917528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.714073, 33.400932, 22.835335>,  <38.415596, 33.629288, 22.698347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714073, 33.400932, 22.835335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504079, -0.148481, 0.850798,
		-0.434860, -0.807490, -0.398568,
		0.746191, -0.570888, 0.342471,
		38.937931, 33.229668, 22.938076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<45.324909, 35.543697, 19.760895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.453217, 35.469311, 20.132383>,  <45.530201, 35.424679, 20.355276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.453217, 35.469311, 20.132383>,  <45.324909, 35.543697, 19.760895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.453217, 35.469311, 20.132383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823046, 0.430511, 0.370481,
		-0.468722, -0.883219, -0.014965,
		0.320773, -0.185970, 0.928719,
		45.549450, 35.413521, 20.410999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.701805, 35.431629, 20.120504>,  <45.324909, 35.543697, 19.760895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.701805, 35.431629, 20.120504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.972694, 35.519489, 20.401396>,  <45.135227, 35.572205, 20.569931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.972694, 35.519489, 20.401396>,  <44.701805, 35.431629, 20.120504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.972694, 35.519489, 20.401396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699956, 0.486492, 0.522864,
		-0.226784, -0.845625, 0.483205,
		0.677222, 0.219645, 0.702229,
		45.175861, 35.585384, 20.612064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.407516, 35.141926, 20.749647>,  <44.701805, 35.431629, 20.120504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.407516, 35.141926, 20.749647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.658821, 35.427795, 20.872633>,  <44.809605, 35.599316, 20.946424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.658821, 35.427795, 20.872633>,  <44.407516, 35.141926, 20.749647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.658821, 35.427795, 20.872633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756082, 0.467701, 0.457815,
		0.183388, -0.520093, 0.834189,
		0.628258, 0.714674, 0.307463,
		44.847298, 35.642197, 20.964872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.215103, 35.255791, 21.526930>,  <44.407516, 35.141926, 20.749647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.215103, 35.255791, 21.526930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.428570, 35.566589, 21.393381>,  <44.556652, 35.753071, 21.313251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.428570, 35.566589, 21.393381>,  <44.215103, 35.255791, 21.526930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.428570, 35.566589, 21.393381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503811, 0.609188, 0.612424,
		0.679243, -0.158624, 0.716566,
		0.533669, 0.776999, -0.333870,
		44.588669, 35.799690, 21.293221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.482323, 35.633240, 22.092594>,  <44.215103, 35.255791, 21.526930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.482323, 35.633240, 22.092594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.486061, 35.909710, 21.803543>,  <44.488304, 36.075592, 21.630114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.486061, 35.909710, 21.803543>,  <44.482323, 35.633240, 22.092594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.486061, 35.909710, 21.803543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466433, 0.642238, 0.608253,
		0.884507, 0.331371, 0.328390,
		0.009347, 0.691176, -0.722626,
		44.488865, 36.117062, 21.586756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707344, 36.214211, 22.421946>,  <44.482323, 35.633240, 22.092594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707344, 36.214211, 22.421946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.516083, 36.339462, 22.093721>,  <44.401325, 36.414612, 21.896788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.516083, 36.339462, 22.093721>,  <44.707344, 36.214211, 22.421946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.516083, 36.339462, 22.093721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456403, 0.709640, 0.536756,
		0.750376, 0.631158, -0.196406,
		-0.478156, 0.313129, -0.820559,
		44.372635, 36.433399, 21.847553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.848812, 36.900627, 22.458406>,  <44.707344, 36.214211, 22.421946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.848812, 36.900627, 22.458406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.518337, 36.837502, 22.242073>,  <44.320053, 36.799625, 22.112272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.518337, 36.837502, 22.242073>,  <44.848812, 36.900627, 22.458406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.518337, 36.837502, 22.242073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511454, 0.612674, 0.602532,
		0.236266, 0.774418, -0.586902,
		-0.826192, -0.157816, -0.540834,
		44.270481, 36.790157, 22.079823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.511524, 37.497475, 22.349398>,  <44.848812, 36.900627, 22.458406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.511524, 37.497475, 22.349398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.199165, 37.264191, 22.259905>,  <44.011749, 37.124218, 22.206209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.199165, 37.264191, 22.259905>,  <44.511524, 37.497475, 22.349398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.199165, 37.264191, 22.259905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623317, 0.704096, 0.340182,
		-0.040869, 0.405106, -0.913356,
		-0.780900, -0.583214, -0.223734,
		43.964897, 37.089226, 22.192785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.852715, 37.991634, 22.233250>,  <44.511524, 37.497475, 22.349398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.852715, 37.991634, 22.233250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.714867, 37.624680, 22.312889>,  <43.632156, 37.404507, 22.360672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.714867, 37.624680, 22.312889>,  <43.852715, 37.991634, 22.233250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.714867, 37.624680, 22.312889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577495, 0.374388, 0.725488,
		-0.740093, 0.135039, -0.658807,
		-0.344619, -0.917386, 0.199098,
		43.611481, 37.349464, 22.372618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.147892, 38.048923, 22.036509>,  <43.852715, 37.991634, 22.233250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.147892, 38.048923, 22.036509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.192032, 37.729374, 22.273022>,  <43.218517, 37.537643, 22.414930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.192032, 37.729374, 22.273022>,  <43.147892, 38.048923, 22.036509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.192032, 37.729374, 22.273022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691861, 0.365366, 0.622765,
		-0.713548, -0.477811, -0.512392,
		0.110353, -0.798877, 0.591285,
		43.225140, 37.489712, 22.450407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370117, 37.701729, 22.228117>,  <43.147892, 38.048923, 22.036509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370117, 37.701729, 22.228117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.614799, 37.560272, 22.511171>,  <42.761608, 37.475399, 22.681004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.614799, 37.560272, 22.511171>,  <42.370117, 37.701729, 22.228117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.614799, 37.560272, 22.511171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663076, 0.258645, 0.702448,
		-0.431443, -0.898910, -0.076277,
		0.611709, -0.353643, 0.707636,
		42.798313, 37.454178, 22.723463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921494, 37.261292, 22.727873>,  <42.370117, 37.701729, 22.228117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.921494, 37.261292, 22.727873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.256153, 37.365360, 22.920671>,  <42.456951, 37.427803, 23.036350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.256153, 37.365360, 22.920671>,  <41.921494, 37.261292, 22.727873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256153, 37.365360, 22.920671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542264, 0.269385, 0.795852,
		0.077216, -0.927223, 0.366464,
		0.836653, 0.260173, 0.481999,
		42.507149, 37.443413, 23.065271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421009, 36.662064, 22.780615>,  <41.921494, 37.261292, 22.727873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.421009, 36.662064, 22.780615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.143734, 36.835037, 22.549967>,  <40.977367, 36.938820, 22.411579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.143734, 36.835037, 22.549967>,  <41.421009, 36.662064, 22.780615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143734, 36.835037, 22.549967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426943, -0.398201, -0.811884,
		-0.580693, -0.808975, 0.091407,
		-0.693192, 0.432430, -0.576619,
		40.935776, 36.964767, 22.376982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.192986, 36.172600, 22.405516>,  <41.421009, 36.662064, 22.780615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.192986, 36.172600, 22.405516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.113838, 36.511333, 22.208044>,  <41.066349, 36.714573, 22.089561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.113838, 36.511333, 22.208044>,  <41.192986, 36.172600, 22.405516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.113838, 36.511333, 22.208044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201989, -0.457605, -0.865909,
		-0.959192, -0.271052, -0.080506,
		-0.197866, 0.846835, -0.493681,
		41.054478, 36.765385, 22.059940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903435, 35.986610, 21.748421>,  <41.192986, 36.172600, 22.405516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903435, 35.986610, 21.748421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.004726, 36.367023, 21.677517>,  <41.065502, 36.595272, 21.634974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.004726, 36.367023, 21.677517>,  <40.903435, 35.986610, 21.748421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.004726, 36.367023, 21.677517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264167, -0.244246, -0.933038,
		-0.930641, 0.189442, -0.313080,
		0.253225, 0.951029, -0.177261,
		41.080692, 36.652332, 21.624338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504757, 36.195797, 21.185284>,  <40.903435, 35.986610, 21.748421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504757, 36.195797, 21.185284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.820156, 36.440414, 21.211491>,  <41.009396, 36.587185, 21.227215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.820156, 36.440414, 21.211491>,  <40.504757, 36.195797, 21.185284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820156, 36.440414, 21.211491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133192, -0.065788, -0.988904,
		-0.600444, 0.788474, -0.133326,
		0.788496, 0.611540, 0.065516,
		41.056705, 36.623875, 21.231146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435863, 36.765461, 20.595589>,  <40.504757, 36.195797, 21.185284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435863, 36.765461, 20.595589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.819805, 36.763344, 20.707773>,  <41.050171, 36.762074, 20.775084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.819805, 36.763344, 20.707773>,  <40.435863, 36.765461, 20.595589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819805, 36.763344, 20.707773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280501, 0.027270, -0.959466,
		-0.002569, 0.999614, 0.027659,
		0.959850, -0.005293, 0.280463,
		41.107761, 36.761757, 20.791912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763500, 37.257908, 20.147579>,  <40.435863, 36.765461, 20.595589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763500, 37.257908, 20.147579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.076546, 37.057343, 20.295143>,  <41.264374, 36.937004, 20.383682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.076546, 37.057343, 20.295143>,  <40.763500, 37.257908, 20.147579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076546, 37.057343, 20.295143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362896, -0.114017, -0.924828,
		0.505784, 0.857662, 0.092729,
		0.782617, -0.501414, 0.368910,
		41.311333, 36.906918, 20.405817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407291, 37.508762, 19.964437>,  <40.763500, 37.257908, 20.147579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.407291, 37.508762, 19.964437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.487034, 37.124477, 20.041674>,  <41.534878, 36.893906, 20.088015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.487034, 37.124477, 20.041674>,  <41.407291, 37.508762, 19.964437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.487034, 37.124477, 20.041674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438510, -0.088755, -0.894333,
		0.876337, 0.262962, 0.403589,
		0.199355, -0.960715, 0.193090,
		41.546841, 36.836262, 20.099600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183662, 37.336773, 19.750582>,  <41.407291, 37.508762, 19.964437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183662, 37.336773, 19.750582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.005852, 36.978718, 19.764019>,  <41.899166, 36.763885, 19.772081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.005852, 36.978718, 19.764019>,  <42.183662, 37.336773, 19.750582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.005852, 36.978718, 19.764019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463423, -0.261904, -0.846550,
		0.766575, -0.360745, 0.531249,
		-0.444525, -0.895137, 0.033591,
		41.872494, 36.710178, 19.774096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618618, 36.920731, 19.472054>,  <42.183662, 37.336773, 19.750582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618618, 36.920731, 19.472054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.291878, 36.690655, 19.454525>,  <42.095833, 36.552608, 19.444008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.291878, 36.690655, 19.454525>,  <42.618618, 36.920731, 19.472054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.291878, 36.690655, 19.454525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372912, -0.468574, -0.800859,
		0.440108, -0.670523, 0.597248,
		-0.816849, -0.575185, -0.043823,
		42.046822, 36.518101, 19.441378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.822968, 36.222225, 19.507122>,  <42.618618, 36.920731, 19.472054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.822968, 36.222225, 19.507122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.459747, 36.216545, 19.339676>,  <42.241814, 36.213135, 19.239208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.459747, 36.216545, 19.339676>,  <42.822968, 36.222225, 19.507122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.459747, 36.216545, 19.339676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389763, -0.394639, -0.832072,
		-0.153384, -0.918726, 0.363889,
		-0.908052, -0.014204, -0.418617,
		42.187332, 36.212284, 19.214090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.786659, 35.619308, 19.233685>,  <42.822968, 36.222225, 19.507122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.786659, 35.619308, 19.233685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.462368, 35.758896, 19.045670>,  <42.267792, 35.842648, 18.932861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.462368, 35.758896, 19.045670>,  <42.786659, 35.619308, 19.233685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462368, 35.758896, 19.045670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264138, -0.498484, -0.825679,
		-0.522452, -0.793554, 0.311955,
		-0.810725, 0.348978, -0.470042,
		42.219147, 35.863586, 18.904657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372616, 35.079735, 19.036158>,  <42.786659, 35.619308, 19.233685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372616, 35.079735, 19.036158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.292343, 35.395664, 18.804331>,  <42.244179, 35.585224, 18.665234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.292343, 35.395664, 18.804331>,  <42.372616, 35.079735, 19.036158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292343, 35.395664, 18.804331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303318, -0.512440, -0.803370,
		-0.931518, -0.337013, -0.136733,
		-0.200679, 0.789828, -0.579569,
		42.232140, 35.632614, 18.630461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.058594, 34.796425, 18.570232>,  <42.372616, 35.079735, 19.036158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.058594, 34.796425, 18.570232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.160461, 35.151428, 18.416622>,  <42.221584, 35.364429, 18.324455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.160461, 35.151428, 18.416622>,  <42.058594, 34.796425, 18.570232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.160461, 35.151428, 18.416622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010010, -0.399519, -0.916670,
		-0.966975, 0.229607, -0.110631,
		0.254673, 0.887505, -0.384027,
		42.236862, 35.417679, 18.301414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264748, 34.165127, 18.432575>,  <42.058594, 34.796425, 18.570232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264748, 34.165127, 18.432575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.007290, 33.901314, 18.277279>,  <41.852814, 33.743027, 18.184101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.007290, 33.901314, 18.277279>,  <42.264748, 34.165127, 18.432575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.007290, 33.901314, 18.277279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359232, -0.187576, 0.914204,
		-0.675774, 0.727894, -0.116193,
		-0.643648, -0.659535, -0.388241,
		41.814194, 33.703453, 18.160807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.695278, 34.219311, 18.821505>,  <42.264748, 34.165127, 18.432575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.695278, 34.219311, 18.821505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.609821, 33.866150, 18.654247>,  <41.558548, 33.654255, 18.553892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.609821, 33.866150, 18.654247>,  <41.695278, 34.219311, 18.821505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609821, 33.866150, 18.654247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530311, -0.254655, 0.808653,
		-0.820443, 0.394510, -0.413806,
		-0.213644, -0.882900, -0.418143,
		41.545727, 33.601280, 18.528805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959011, 34.221035, 18.887640>,  <41.695278, 34.219311, 18.821505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959011, 34.221035, 18.887640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.112503, 33.858021, 18.819363>,  <41.204597, 33.640213, 18.778397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.112503, 33.858021, 18.819363>,  <40.959011, 34.221035, 18.887640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112503, 33.858021, 18.819363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540072, -0.370494, 0.755683,
		-0.749047, -0.197792, -0.632303,
		0.383733, -0.907531, -0.170695,
		41.227623, 33.585762, 18.768154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431175, 33.705841, 18.888000>,  <40.959011, 34.221035, 18.887640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431175, 33.705841, 18.888000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.758415, 33.492371, 18.973709>,  <40.954758, 33.364288, 19.025135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.758415, 33.492371, 18.973709>,  <40.431175, 33.705841, 18.888000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758415, 33.492371, 18.973709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498362, -0.471981, 0.727234,
		-0.286971, -0.701733, -0.652087,
		0.818097, -0.533671, 0.214273,
		41.003845, 33.332268, 19.037991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144432, 33.019230, 19.010534>,  <40.431175, 33.705841, 18.888000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144432, 33.019230, 19.010534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.509007, 33.007298, 19.174675>,  <40.727753, 33.000137, 19.273159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.509007, 33.007298, 19.174675>,  <40.144432, 33.019230, 19.010534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509007, 33.007298, 19.174675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359185, -0.544123, 0.758232,
		0.200666, -0.838475, -0.506649,
		0.911438, -0.029829, 0.410354,
		40.782436, 32.998348, 19.297781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119232, 32.444466, 19.470556>,  <40.144432, 33.019230, 19.010534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119232, 32.444466, 19.470556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.448761, 32.620609, 19.613331>,  <40.646477, 32.726295, 19.698996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.448761, 32.620609, 19.613331>,  <40.119232, 32.444466, 19.470556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448761, 32.620609, 19.613331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236149, -0.305824, 0.922337,
		0.515319, -0.844130, -0.147953,
		0.823820, 0.440359, 0.356937,
		40.695908, 32.752716, 19.720411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254650, 32.027260, 20.005367>,  <40.119232, 32.444466, 19.470556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254650, 32.027260, 20.005367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.442341, 32.369625, 20.092304>,  <40.554955, 32.575043, 20.144466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.442341, 32.369625, 20.092304>,  <40.254650, 32.027260, 20.005367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442341, 32.369625, 20.092304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374850, -0.029790, 0.926607,
		0.799569, -0.516262, 0.306860,
		0.469230, 0.855913, 0.217340,
		40.583111, 32.626400, 20.157507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741928, 31.974510, 20.625971>,  <40.254650, 32.027260, 20.005367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741928, 31.974510, 20.625971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.595325, 32.345409, 20.595272>,  <40.507366, 32.567947, 20.576853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.595325, 32.345409, 20.595272>,  <40.741928, 31.974510, 20.625971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595325, 32.345409, 20.595272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395237, -0.080485, 0.915047,
		0.842296, 0.365700, 0.395980,
		-0.366503, 0.927246, -0.076746,
		40.485374, 32.623585, 20.572248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362572, 31.838802, 21.085464>,  <40.741928, 31.974510, 20.625971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362572, 31.838802, 21.085464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.572277, 31.526731, 21.221977>,  <41.698101, 31.339489, 21.303885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.572277, 31.526731, 21.221977>,  <41.362572, 31.838802, 21.085464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572277, 31.526731, 21.221977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682972, 0.145851, -0.715735,
		0.508623, 0.608319, 0.609303,
		0.524263, -0.780177, 0.341281,
		41.729557, 31.292679, 21.324362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067257, 32.068268, 21.104809>,  <41.362572, 31.838802, 21.085464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067257, 32.068268, 21.104809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.103771, 31.669960, 21.100769>,  <42.125679, 31.430975, 21.098345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.103771, 31.669960, 21.100769>,  <42.067257, 32.068268, 21.104809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.103771, 31.669960, 21.100769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695412, 0.071005, -0.715094,
		0.712789, 0.058254, 0.698955,
		0.091287, -0.995773, -0.010101,
		42.131157, 31.371227, 21.097738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.719101, 31.916941, 21.197935>,  <42.067257, 32.068268, 21.104809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.719101, 31.916941, 21.197935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.556690, 31.601707, 21.012865>,  <42.459244, 31.412567, 20.901823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.556690, 31.601707, 21.012865>,  <42.719101, 31.916941, 21.197935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.556690, 31.601707, 21.012865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767401, -0.019111, -0.640882,
		0.496227, -0.615270, 0.612537,
		-0.406022, -0.788085, -0.462675,
		42.434883, 31.365282, 20.874062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.226643, 31.468714, 21.116804>,  <42.719101, 31.916941, 21.197935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.226643, 31.468714, 21.116804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.976315, 31.329390, 20.837654>,  <42.826118, 31.245796, 20.670164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.976315, 31.329390, 20.837654>,  <43.226643, 31.468714, 21.116804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.976315, 31.329390, 20.837654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764160, -0.094591, -0.638053,
		0.156227, -0.932595, 0.325360,
		-0.625821, -0.348308, -0.697875,
		42.788567, 31.224897, 20.628292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.579670, 30.919603, 20.714493>,  <43.226643, 31.468714, 21.116804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.579670, 30.919603, 20.714493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.274632, 31.035648, 20.483225>,  <43.091606, 31.105276, 20.344465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.274632, 31.035648, 20.483225>,  <43.579670, 30.919603, 20.714493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.274632, 31.035648, 20.483225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590617, -0.052290, -0.805256,
		-0.263847, -0.955563, -0.131469,
		-0.762598, 0.290112, -0.578169,
		43.045853, 31.122683, 20.309774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.512260, 30.384859, 20.315359>,  <43.579670, 30.919603, 20.714493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.512260, 30.384859, 20.315359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.333153, 30.696802, 20.140394>,  <43.225689, 30.883968, 20.035416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.333153, 30.696802, 20.140394>,  <43.512260, 30.384859, 20.315359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.333153, 30.696802, 20.140394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712551, 0.015694, -0.701444,
		-0.540161, -0.625762, -0.562715,
		-0.447769, 0.779856, -0.437411,
		43.198822, 30.930759, 20.009171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.438339, 30.282907, 19.598093>,  <43.512260, 30.384859, 20.315359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.438339, 30.282907, 19.598093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.391624, 30.680166, 19.596188>,  <43.363594, 30.918522, 19.595045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.391624, 30.680166, 19.596188>,  <43.438339, 30.282907, 19.598093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.391624, 30.680166, 19.596188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597264, 0.066403, -0.799292,
		-0.793496, -0.096195, -0.600925,
		-0.116791, 0.993145, -0.004763,
		43.356586, 30.978109, 19.594759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.127762, 30.549164, 18.917955>,  <43.438339, 30.282907, 19.598093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.127762, 30.549164, 18.917955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.366119, 30.822063, 19.087402>,  <43.509132, 30.985804, 19.189070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.366119, 30.822063, 19.087402>,  <43.127762, 30.549164, 18.917955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.366119, 30.822063, 19.087402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632747, -0.074047, -0.770810,
		-0.494517, 0.727361, -0.475815,
		0.595889, 0.682249, 0.423618,
		43.544888, 31.026737, 19.214487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.290810, 31.004856, 18.363371>,  <43.127762, 30.549164, 18.917955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.290810, 31.004856, 18.363371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.576981, 31.064161, 18.636482>,  <43.748684, 31.099745, 18.800348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.576981, 31.064161, 18.636482>,  <43.290810, 31.004856, 18.363371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.576981, 31.064161, 18.636482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698090, -0.192202, -0.689731,
		0.028968, 0.970091, -0.241008,
		0.715423, 0.148265, 0.682779,
		43.791607, 31.108641, 18.841316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.498806, 34.097935, 32.269993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.770592, 34.297066, 32.485584>,  <35.933662, 34.416542, 32.614941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.770592, 34.297066, 32.485584>,  <35.498806, 34.097935, 32.269993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770592, 34.297066, 32.485584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608965, 0.027110, -0.792734,
		-0.409254, 0.866854, -0.284738,
		0.679465, 0.497825, 0.538978,
		35.974430, 34.446415, 32.647278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701370, 34.631203, 31.849442>,  <35.498806, 34.097935, 32.269993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701370, 34.631203, 31.849442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.001236, 34.555370, 32.103077>,  <36.181156, 34.509872, 32.255257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.001236, 34.555370, 32.103077>,  <35.701370, 34.631203, 31.849442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001236, 34.555370, 32.103077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597666, -0.217583, -0.771656,
		0.284258, 0.957453, -0.049807,
		0.749662, -0.189582, 0.634087,
		36.226135, 34.498497, 32.293304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229351, 34.912365, 31.563814>,  <35.701370, 34.631203, 31.849442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229351, 34.912365, 31.563814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.382481, 34.622360, 31.792830>,  <36.474358, 34.448357, 31.930239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.382481, 34.622360, 31.792830>,  <36.229351, 34.912365, 31.563814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382481, 34.622360, 31.792830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610205, -0.266865, -0.745944,
		0.693609, 0.634933, 0.340243,
		0.382826, -0.725012, 0.572540,
		36.497330, 34.404858, 31.964592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884064, 34.927876, 31.357973>,  <36.229351, 34.912365, 31.563814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884064, 34.927876, 31.357973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.841637, 34.569447, 31.530392>,  <36.816181, 34.354389, 31.633842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.841637, 34.569447, 31.530392>,  <36.884064, 34.927876, 31.357973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841637, 34.569447, 31.530392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567286, -0.410552, -0.713886,
		0.816662, 0.168809, 0.551875,
		-0.106063, -0.896075, 0.431045,
		36.809818, 34.300625, 31.659706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525921, 34.598793, 31.315969>,  <36.884064, 34.927876, 31.357973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525921, 34.598793, 31.315969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.276947, 34.288734, 31.359268>,  <37.127563, 34.102699, 31.385248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.276947, 34.288734, 31.359268>,  <37.525921, 34.598793, 31.315969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276947, 34.288734, 31.359268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543362, -0.527512, -0.653061,
		0.563321, -0.347671, 0.749529,
		-0.622437, -0.775149, 0.108247,
		37.090218, 34.056190, 31.391743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922085, 33.932369, 31.223951>,  <37.525921, 34.598793, 31.315969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922085, 33.932369, 31.223951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.539303, 33.835934, 31.159306>,  <37.309635, 33.778072, 31.120518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.539303, 33.835934, 31.159306>,  <37.922085, 33.932369, 31.223951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539303, 33.835934, 31.159306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275191, -0.576622, -0.769271,
		0.092273, -0.780630, 0.618145,
		-0.956951, -0.241091, -0.161616,
		37.252216, 33.763607, 31.110821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964008, 33.220299, 31.079571>,  <37.922085, 33.932369, 31.223951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964008, 33.220299, 31.079571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.593800, 33.281765, 30.941124>,  <37.371674, 33.318645, 30.858057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.593800, 33.281765, 30.941124>,  <37.964008, 33.220299, 31.079571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593800, 33.281765, 30.941124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231862, -0.492693, -0.838745,
		-0.299415, -0.856528, 0.420369,
		-0.925522, 0.153666, -0.346116,
		37.316143, 33.327866, 30.837290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759186, 32.649532, 30.779383>,  <37.964008, 33.220299, 31.079571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759186, 32.649532, 30.779383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.509224, 32.912823, 30.611462>,  <37.359249, 33.070797, 30.510710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.509224, 32.912823, 30.611462>,  <37.759186, 32.649532, 30.779383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509224, 32.912823, 30.611462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090796, -0.472799, -0.876480,
		-0.775406, -0.585830, 0.235688,
		-0.624901, 0.658229, -0.419802,
		37.321754, 33.110291, 30.485521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242332, 32.273518, 30.322382>,  <37.759186, 32.649532, 30.779383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242332, 32.273518, 30.322382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.256180, 32.634861, 30.151390>,  <37.264488, 32.851669, 30.048796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.256180, 32.634861, 30.151390>,  <37.242332, 32.273518, 30.322382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256180, 32.634861, 30.151390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148208, -0.418365, -0.896106,
		-0.988350, 0.094378, 0.119402,
		0.034619, 0.903363, -0.427478,
		37.266567, 32.905869, 30.023146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708752, 32.290287, 29.814398>,  <37.242332, 32.273518, 30.322382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708752, 32.290287, 29.814398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.961998, 32.572449, 29.686922>,  <37.113945, 32.741745, 29.610437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.961998, 32.572449, 29.686922>,  <36.708752, 32.290287, 29.814398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961998, 32.572449, 29.686922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146890, -0.513722, -0.845288,
		-0.759990, 0.488355, -0.428864,
		0.633118, 0.705407, -0.318689,
		37.151932, 32.784069, 29.591314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640991, 32.475777, 28.992950>,  <36.708752, 32.290287, 29.814398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640991, 32.475777, 28.992950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.009426, 32.621983, 29.046614>,  <37.230488, 32.709705, 29.078812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.009426, 32.621983, 29.046614>,  <36.640991, 32.475777, 28.992950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009426, 32.621983, 29.046614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227464, -0.225495, -0.947318,
		-0.316011, 0.903077, -0.290843,
		0.921085, 0.365519, 0.134158,
		37.285751, 32.731640, 29.086861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753414, 32.739044, 28.426445>,  <36.640991, 32.475777, 28.992950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753414, 32.739044, 28.426445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.121254, 32.683666, 28.573503>,  <37.341957, 32.650440, 28.661739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.121254, 32.683666, 28.573503>,  <36.753414, 32.739044, 28.426445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121254, 32.683666, 28.573503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338094, -0.197663, -0.920120,
		0.200056, 0.970444, -0.134964,
		0.919603, -0.138445, 0.367645,
		37.397137, 32.642132, 28.683798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640835, 33.447411, 28.478109>,  <36.753414, 32.739044, 28.426445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640835, 33.447411, 28.478109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.442604, 33.713234, 28.254410>,  <36.323666, 33.872730, 28.120190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.442604, 33.713234, 28.254410>,  <36.640835, 33.447411, 28.478109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442604, 33.713234, 28.254410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564477, 0.242931, 0.788892,
		0.660125, 0.706643, 0.254737,
		-0.495582, 0.664560, -0.559248,
		36.293930, 33.912601, 28.086636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659477, 34.007259, 28.870014>,  <36.640835, 33.447411, 28.478109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659477, 34.007259, 28.870014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.374737, 34.074741, 28.597307>,  <36.203892, 34.115231, 28.433683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.374737, 34.074741, 28.597307>,  <36.659477, 34.007259, 28.870014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374737, 34.074741, 28.597307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573140, 0.421518, 0.702733,
		0.405930, 0.890990, -0.203367,
		-0.711851, 0.168703, -0.681768,
		36.161182, 34.125351, 28.392776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373432, 34.682400, 29.076559>,  <36.659477, 34.007259, 28.870014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373432, 34.682400, 29.076559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.078835, 34.527859, 28.854460>,  <35.902077, 34.435135, 28.721199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.078835, 34.527859, 28.854460>,  <36.373432, 34.682400, 29.076559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078835, 34.527859, 28.854460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671112, 0.314517, 0.671333,
		-0.084736, 0.867070, -0.490927,
		-0.736497, -0.386353, -0.555250,
		35.857883, 34.411953, 28.687885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884632, 35.189465, 28.938410>,  <36.373432, 34.682400, 29.076559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884632, 35.189465, 28.938410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.693939, 34.838928, 28.910831>,  <35.579525, 34.628605, 28.894285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.693939, 34.838928, 28.910831>,  <35.884632, 35.189465, 28.938410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693939, 34.838928, 28.910831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673790, 0.313916, 0.668927,
		-0.564565, 0.365354, -0.740123,
		-0.476731, -0.876341, -0.068946,
		35.550919, 34.576027, 28.890148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106060, 35.365166, 28.837681>,  <35.884632, 35.189465, 28.938410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106060, 35.365166, 28.837681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.145031, 34.991585, 28.975225>,  <35.168415, 34.767437, 29.057753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.145031, 34.991585, 28.975225>,  <35.106060, 35.365166, 28.837681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145031, 34.991585, 28.975225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767774, 0.149310, 0.623080,
		-0.633269, -0.324713, -0.702518,
		0.097429, -0.933953, 0.343859,
		35.174259, 34.711399, 29.078382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432713, 35.178112, 28.914867>,  <35.106060, 35.365166, 28.837681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432713, 35.178112, 28.914867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.619614, 34.908905, 29.144205>,  <34.731754, 34.747379, 29.281807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.619614, 34.908905, 29.144205>,  <34.432713, 35.178112, 28.914867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619614, 34.908905, 29.144205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781181, -0.010579, 0.624215,
		-0.414041, -0.739552, -0.530691,
		0.467253, -0.673016, 0.573344,
		34.759789, 34.707001, 29.316208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002365, 34.624638, 29.002617>,  <34.432713, 35.178112, 28.914867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002365, 34.624638, 29.002617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260052, 34.603836, 29.307844>,  <34.414665, 34.591354, 29.490980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260052, 34.603836, 29.307844>,  <34.002365, 34.624638, 29.002617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260052, 34.603836, 29.307844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763259, 0.020395, 0.645770,
		-0.049145, -0.998439, -0.026554,
		0.644220, -0.052005, 0.763070,
		34.453320, 34.588234, 29.536766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741329, 34.138844, 29.509142>,  <34.002365, 34.624638, 29.002617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741329, 34.138844, 29.509142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.982277, 34.398399, 29.695089>,  <34.126846, 34.554131, 29.806658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.982277, 34.398399, 29.695089>,  <33.741329, 34.138844, 29.509142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982277, 34.398399, 29.695089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683283, 0.118099, 0.720539,
		0.412648, -0.751664, 0.514513,
		0.602367, 0.648887, 0.464865,
		34.162987, 34.593063, 29.834549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536697, 34.057995, 30.259266>,  <33.741329, 34.138844, 29.509142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536697, 34.057995, 30.259266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.747150, 34.398026, 30.268639>,  <33.873425, 34.602043, 30.274263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.747150, 34.398026, 30.268639>,  <33.536697, 34.057995, 30.259266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747150, 34.398026, 30.268639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512607, 0.295038, 0.806342,
		0.678539, -0.436258, 0.590986,
		0.526137, 0.850077, 0.023434,
		33.904991, 34.653049, 30.275669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617687, 34.113628, 30.940517>,  <33.536697, 34.057995, 30.259266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617687, 34.113628, 30.940517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.700256, 34.467651, 30.773638>,  <33.749798, 34.680065, 30.673510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.700256, 34.467651, 30.773638>,  <33.617687, 34.113628, 30.940517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700256, 34.467651, 30.773638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526702, 0.459846, 0.714932,
		0.824606, 0.072161, 0.561086,
		0.206423, 0.885062, -0.417199,
		33.762184, 34.733170, 30.648478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018764, 34.499672, 31.464653>,  <33.617687, 34.113628, 30.940517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018764, 34.499672, 31.464653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.879364, 34.754860, 31.189978>,  <33.795723, 34.907974, 31.025173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.879364, 34.754860, 31.189978>,  <34.018764, 34.499672, 31.464653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879364, 34.754860, 31.189978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384713, 0.570704, 0.725460,
		0.854717, 0.517004, 0.046542,
		-0.348504, 0.637969, -0.686688,
		33.774815, 34.946251, 30.983971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306290, 35.197250, 31.757883>,  <34.018764, 34.499672, 31.464653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306290, 35.197250, 31.757883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.005642, 35.273621, 31.505337>,  <33.825253, 35.319443, 31.353809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.005642, 35.273621, 31.505337>,  <34.306290, 35.197250, 31.757883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005642, 35.273621, 31.505337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376553, 0.661683, 0.648370,
		0.541555, 0.725067, -0.425436,
		-0.751615, 0.190929, -0.631364,
		33.780159, 35.330898, 31.315928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211479, 35.941624, 31.724764>,  <34.306290, 35.197250, 31.757883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211479, 35.941624, 31.724764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.874527, 35.784496, 31.577198>,  <33.672356, 35.690220, 31.488659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.874527, 35.784496, 31.577198>,  <34.211479, 35.941624, 31.724764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874527, 35.784496, 31.577198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538228, 0.579358, 0.612090,
		-0.026707, 0.714169, -0.699463,
		-0.842376, -0.392818, -0.368913,
		33.621815, 35.666653, 31.466524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698803, 36.541359, 31.480606>,  <34.211479, 35.941624, 31.724764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698803, 36.541359, 31.480606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.505932, 36.200474, 31.561838>,  <33.390209, 35.995945, 31.610577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.505932, 36.200474, 31.561838>,  <33.698803, 36.541359, 31.480606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505932, 36.200474, 31.561838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521902, 0.465607, 0.714722,
		-0.703648, 0.238637, -0.669277,
		-0.482179, -0.852210, 0.203079,
		33.361279, 35.944809, 31.622763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252945, 37.044720, 31.464035>,  <33.698803, 36.541359, 31.480606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252945, 37.044720, 31.464035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.342712, 37.424992, 31.378393>,  <34.396572, 37.653156, 31.327007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.342712, 37.424992, 31.378393>,  <34.252945, 37.044720, 31.464035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342712, 37.424992, 31.378393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294056, -0.275534, -0.915212,
		-0.929067, 0.142436, -0.341389,
		0.224423, 0.950680, -0.214105,
		34.410038, 37.710197, 31.314161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923695, 37.363338, 30.841671>,  <34.252945, 37.044720, 31.464035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923695, 37.363338, 30.841671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.301880, 37.485226, 30.887697>,  <34.528793, 37.558357, 30.915314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.301880, 37.485226, 30.887697>,  <33.923695, 37.363338, 30.841671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301880, 37.485226, 30.887697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217726, -0.328501, -0.919066,
		-0.242257, 0.893999, -0.376932,
		0.945467, 0.304718, 0.115066,
		34.585522, 37.576641, 30.922216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102032, 37.798309, 30.192183>,  <33.923695, 37.363338, 30.841671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102032, 37.798309, 30.192183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.441219, 37.705334, 30.382730>,  <34.644730, 37.649548, 30.497059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.441219, 37.705334, 30.382730>,  <34.102032, 37.798309, 30.192183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441219, 37.705334, 30.382730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483664, -0.028369, -0.874794,
		0.216848, 0.972198, 0.088366,
		0.847966, -0.232437, 0.476369,
		34.695610, 37.635601, 30.525640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629780, 38.079132, 29.859194>,  <34.102032, 37.798309, 30.192183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629780, 38.079132, 29.859194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.804935, 37.766541, 30.036976>,  <34.910030, 37.578987, 30.143646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.804935, 37.766541, 30.036976>,  <34.629780, 38.079132, 29.859194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804935, 37.766541, 30.036976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463294, -0.227523, -0.856499,
		0.770461, 0.580967, 0.262425,
		0.437890, -0.781480, 0.444457,
		34.936302, 37.532097, 30.170313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321476, 38.246201, 29.820860>,  <34.629780, 38.079132, 29.859194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321476, 38.246201, 29.820860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.293182, 37.850163, 29.869381>,  <35.276207, 37.612541, 29.898493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.293182, 37.850163, 29.869381>,  <35.321476, 38.246201, 29.820860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293182, 37.850163, 29.869381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609995, -0.139156, -0.780091,
		0.789242, 0.018813, 0.613794,
		-0.070737, -0.990092, 0.121303,
		35.271961, 37.553135, 29.905771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925259, 38.008446, 30.042429>,  <35.321476, 38.246201, 29.820860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925259, 38.008446, 30.042429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.769672, 37.687897, 29.860653>,  <35.676323, 37.495567, 29.751587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.769672, 37.687897, 29.860653>,  <35.925259, 38.008446, 30.042429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769672, 37.687897, 29.860653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756231, 0.003983, -0.654293,
		0.526140, -0.598156, 0.604471,
		-0.388961, -0.801370, -0.454440,
		35.652985, 37.447487, 29.724321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500782, 37.551228, 29.868332>,  <35.925259, 38.008446, 30.042429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500782, 37.551228, 29.868332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.221977, 37.386292, 29.633675>,  <36.054695, 37.287331, 29.492880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.221977, 37.386292, 29.633675>,  <36.500782, 37.551228, 29.868332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221977, 37.386292, 29.633675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666906, -0.072182, -0.741637,
		0.263462, -0.908166, 0.325305,
		-0.697011, -0.412341, -0.586644,
		36.012875, 37.262589, 29.457682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953346, 37.187149, 29.412981>,  <36.500782, 37.551228, 29.868332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953346, 37.187149, 29.412981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.600204, 37.193378, 29.225229>,  <36.388317, 37.197117, 29.112577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.600204, 37.193378, 29.225229>,  <36.953346, 37.187149, 29.412981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600204, 37.193378, 29.225229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468925, -0.025910, -0.882858,
		-0.025910, -0.999543, 0.015573,
		0.882858, -0.015573, 0.469382,
		36.335346, 37.198051, 29.084415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035095, 36.654224, 28.842724>,  <36.953346, 37.187149, 29.412981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035095, 36.654224, 28.842724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.724140, 36.878323, 28.728323>,  <36.537567, 37.012779, 28.659683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.724140, 36.878323, 28.728323>,  <37.035095, 36.654224, 28.842724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724140, 36.878323, 28.728323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335153, -0.015844, -0.942030,
		-0.532296, -0.828177, -0.175449,
		-0.777389, 0.560242, -0.286000,
		36.490925, 37.046394, 28.642523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813431, 36.418083, 28.218473>,  <37.035095, 36.654224, 28.842724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813431, 36.418083, 28.218473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.682384, 36.796001, 28.220671>,  <36.603756, 37.022751, 28.221989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.682384, 36.796001, 28.220671>,  <36.813431, 36.418083, 28.218473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682384, 36.796001, 28.220671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272116, 0.099923, -0.957062,
		-0.904775, -0.312059, -0.289831,
		-0.327620, 0.944794, 0.005492,
		36.584099, 37.079441, 28.222319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424503, 36.548550, 27.599173>,  <36.813431, 36.418083, 28.218473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424503, 36.548550, 27.599173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.490761, 36.925785, 27.714518>,  <36.530514, 37.152126, 27.783726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.490761, 36.925785, 27.714518>,  <36.424503, 36.548550, 27.599173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490761, 36.925785, 27.714518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157712, 0.263308, -0.951733,
		-0.973493, 0.203128, -0.105121,
		0.165644, 0.943084, 0.288364,
		36.540455, 37.208710, 27.801027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979870, 36.984001, 27.202896>,  <36.424503, 36.548550, 27.599173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979870, 36.984001, 27.202896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.274601, 37.222538, 27.330301>,  <36.451439, 37.365662, 27.406744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.274601, 37.222538, 27.330301>,  <35.979870, 36.984001, 27.202896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274601, 37.222538, 27.330301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215543, 0.239326, -0.946713,
		-0.640797, 0.766221, 0.047805,
		0.736832, 0.596346, 0.318512,
		36.495651, 37.401443, 27.425856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130016, 37.314304, 26.621292>,  <35.979870, 36.984001, 27.202896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130016, 37.314304, 26.621292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433529, 37.447983, 26.844921>,  <36.615639, 37.528191, 26.979099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433529, 37.447983, 26.844921>,  <36.130016, 37.314304, 26.621292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433529, 37.447983, 26.844921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547117, 0.138725, -0.825480,
		-0.353427, 0.932240, -0.077580,
		0.758783, 0.334193, 0.559074,
		36.661163, 37.548241, 27.012644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315472, 37.917953, 26.371019>,  <36.130016, 37.314304, 26.621292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315472, 37.917953, 26.371019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.629284, 37.770054, 26.570137>,  <36.817574, 37.681316, 26.689608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.629284, 37.770054, 26.570137>,  <36.315472, 37.917953, 26.371019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629284, 37.770054, 26.570137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563111, 0.088676, -0.821610,
		0.259644, 0.924892, 0.277776,
		0.784533, -0.369745, 0.497792,
		36.864643, 37.659130, 26.719475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854275, 38.402966, 26.188866>,  <36.315472, 37.917953, 26.371019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854275, 38.402966, 26.188866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.018524, 38.065365, 26.326880>,  <37.117073, 37.862804, 26.409689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.018524, 38.065365, 26.326880>,  <36.854275, 38.402966, 26.188866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018524, 38.065365, 26.326880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572285, -0.056034, -0.818138,
		0.709844, 0.533405, 0.460001,
		0.410624, -0.844002, 0.345035,
		37.141712, 37.812164, 26.430389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568863, 38.476082, 26.268131>,  <36.854275, 38.402966, 26.188866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568863, 38.476082, 26.268131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.542557, 38.079716, 26.221212>,  <37.526775, 37.841896, 26.193062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.542557, 38.079716, 26.221212>,  <37.568863, 38.476082, 26.268131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542557, 38.079716, 26.221212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659947, 0.044979, -0.749964,
		0.748428, -0.126728, 0.650995,
		-0.065761, -0.990917, -0.117297,
		37.522827, 37.782440, 26.186024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235977, 38.317905, 26.078588>,  <37.568863, 38.476082, 26.268131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235977, 38.317905, 26.078588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.041534, 37.985302, 25.971035>,  <37.924870, 37.785740, 25.906504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.041534, 37.985302, 25.971035>,  <38.235977, 38.317905, 26.078588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041534, 37.985302, 25.971035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684590, -0.171090, -0.708565,
		0.543173, -0.528513, 0.652409,
		-0.486106, -0.831506, -0.268883,
		37.895702, 37.735851, 25.890369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729092, 37.730270, 26.019077>,  <38.235977, 38.317905, 26.078588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729092, 37.730270, 26.019077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.419994, 37.640667, 25.781527>,  <38.234535, 37.586906, 25.638996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.419994, 37.640667, 25.781527>,  <38.729092, 37.730270, 26.019077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419994, 37.640667, 25.781527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634603, -0.290488, -0.716167,
		-0.012086, -0.930289, 0.366630,
		-0.772744, -0.224009, -0.593875,
		38.188171, 37.573463, 25.603363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794945, 37.036350, 25.745983>,  <38.729092, 37.730270, 26.019077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794945, 37.036350, 25.745983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.556808, 37.238068, 25.495779>,  <38.413929, 37.359097, 25.345655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.556808, 37.238068, 25.495779>,  <38.794945, 37.036350, 25.745983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556808, 37.238068, 25.495779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561187, -0.296166, -0.772887,
		-0.575014, -0.811159, -0.106682,
		-0.595339, 0.504289, -0.625511,
		38.378208, 37.389355, 25.308126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514984, 36.607464, 25.169239>,  <38.794945, 37.036350, 25.745983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514984, 36.607464, 25.169239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.514164, 36.993793, 25.065559>,  <38.513672, 37.225590, 25.003351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.514164, 36.993793, 25.065559>,  <38.514984, 36.607464, 25.169239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514164, 36.993793, 25.065559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588934, -0.208315, -0.780872,
		-0.808178, -0.154251, -0.568378,
		-0.002049, 0.965822, -0.259199,
		38.513550, 37.283539, 24.987799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471115, 36.563831, 24.475468>,  <38.514984, 36.607464, 25.169239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471115, 36.563831, 24.475468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.561291, 36.951511, 24.515112>,  <38.615395, 37.184120, 24.538898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.561291, 36.951511, 24.515112>,  <38.471115, 36.563831, 24.475468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561291, 36.951511, 24.515112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536935, -0.038713, -0.842735,
		-0.812944, 0.243203, -0.529126,
		0.225440, 0.969203, 0.099113,
		38.628922, 37.242271, 24.544846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377106, 36.855949, 23.731361>,  <38.471115, 36.563831, 24.475468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377106, 36.855949, 23.731361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.598003, 37.119488, 23.935694>,  <38.730541, 37.277611, 24.058292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.598003, 37.119488, 23.935694>,  <38.377106, 36.855949, 23.731361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598003, 37.119488, 23.935694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613782, 0.093344, -0.783938,
		-0.564177, 0.746464, -0.352839,
		0.552246, 0.658846, 0.510829,
		38.763676, 37.317142, 24.088942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503567, 37.414616, 23.303135>,  <38.377106, 36.855949, 23.731361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503567, 37.414616, 23.303135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.810051, 37.433502, 23.559475>,  <38.993942, 37.444836, 23.713280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.810051, 37.433502, 23.559475>,  <38.503567, 37.414616, 23.303135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810051, 37.433502, 23.559475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633203, 0.114337, -0.765494,
		-0.109418, 0.992319, 0.057708,
		0.766212, 0.047217, 0.640850,
		39.039913, 37.447666, 23.751730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922470, 38.039986, 23.154707>,  <38.503567, 37.414616, 23.303135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922470, 38.039986, 23.154707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.186146, 37.842297, 23.381407>,  <39.344353, 37.723682, 23.517427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.186146, 37.842297, 23.381407>,  <38.922470, 38.039986, 23.154707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186146, 37.842297, 23.381407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712878, 0.170868, -0.680154,
		0.239311, 0.852376, 0.464958,
		0.659193, -0.494227, 0.566749,
		39.383904, 37.694027, 23.551432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491585, 38.334091, 23.002890>,  <38.922470, 38.039986, 23.154707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491585, 38.334091, 23.002890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.614700, 37.991871, 23.169407>,  <39.688568, 37.786537, 23.269318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.614700, 37.991871, 23.169407>,  <39.491585, 38.334091, 23.002890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614700, 37.991871, 23.169407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746214, -0.054382, -0.663481,
		0.590281, 0.514854, 0.621686,
		0.307787, -0.855551, 0.416292,
		39.707035, 37.735207, 23.294294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232647, 38.327797, 23.019821>,  <39.491585, 38.334091, 23.002890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232647, 38.327797, 23.019821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.145321, 37.939220, 23.056984>,  <40.092926, 37.706074, 23.079283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.145321, 37.939220, 23.056984>,  <40.232647, 38.327797, 23.019821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145321, 37.939220, 23.056984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778122, -0.230742, -0.584195,
		0.588952, -0.055246, 0.806278,
		-0.218316, -0.971445, 0.092908,
		40.079826, 37.647785, 23.084856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835312, 38.068344, 23.130047>,  <40.232647, 38.327797, 23.019821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835312, 38.068344, 23.130047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.624180, 37.760555, 22.986210>,  <40.497501, 37.575882, 22.899908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.624180, 37.760555, 22.986210>,  <40.835312, 38.068344, 23.130047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624180, 37.760555, 22.986210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746154, -0.217833, -0.629128,
		0.405766, -0.600384, 0.689124,
		-0.527833, -0.769472, -0.359590,
		40.465832, 37.529713, 22.878332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.324543, 37.428642, 23.123140>,  <40.835312, 38.068344, 23.130047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.324543, 37.428642, 23.123140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.014912, 37.364212, 22.878239>,  <40.829132, 37.325554, 22.731298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.014912, 37.364212, 22.878239>,  <41.324543, 37.428642, 23.123140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014912, 37.364212, 22.878239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624715, -0.351097, -0.697468,
		-0.102615, -0.922380, 0.372404,
		-0.774081, -0.161076, -0.612253,
		40.782688, 37.315887, 22.694563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878311, 36.963161, 23.401316>,  <41.324543, 37.428642, 23.123140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.878311, 36.963161, 23.401316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.146275, 37.252560, 23.467995>,  <42.307053, 37.426197, 23.508001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.146275, 37.252560, 23.467995>,  <41.878311, 36.963161, 23.401316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.146275, 37.252560, 23.467995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319696, 0.078455, 0.944266,
		0.670091, -0.685861, 0.283855,
		0.669905, 0.723492, 0.166695,
		42.347244, 37.469608, 23.518003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.118023, 36.753819, 23.996265>,  <41.878311, 36.963161, 23.401316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.118023, 36.753819, 23.996265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.218510, 37.138752, 23.954691>,  <42.278801, 37.369713, 23.929747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.218510, 37.138752, 23.954691>,  <42.118023, 36.753819, 23.996265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.218510, 37.138752, 23.954691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286344, 0.176463, 0.941736,
		0.924606, -0.206820, 0.319890,
		0.251219, 0.962334, -0.103936,
		42.293877, 37.427452, 23.923510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.435791, 36.900635, 24.692335>,  <42.118023, 36.753819, 23.996265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.435791, 36.900635, 24.692335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.343380, 37.253212, 24.527569>,  <42.287933, 37.464760, 24.428709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.343380, 37.253212, 24.527569>,  <42.435791, 36.900635, 24.692335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343380, 37.253212, 24.527569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341850, 0.322838, 0.882561,
		0.910913, 0.344713, 0.226737,
		-0.231031, 0.881447, -0.411917,
		42.274071, 37.517647, 24.403994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.730759, 37.369122, 25.154650>,  <42.435791, 36.900635, 24.692335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.730759, 37.369122, 25.154650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.438404, 37.548668, 24.948999>,  <42.262993, 37.656395, 24.825609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.438404, 37.548668, 24.948999>,  <42.730759, 37.369122, 25.154650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.438404, 37.548668, 24.948999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370309, 0.371959, 0.851186,
		0.573304, 0.812504, -0.105639,
		-0.730886, 0.448869, -0.514123,
		42.219139, 37.683327, 24.794762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.640812, 37.851574, 25.628950>,  <42.730759, 37.369122, 25.154650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.640812, 37.851574, 25.628950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.314899, 37.827999, 25.398247>,  <42.119350, 37.813854, 25.259825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.314899, 37.827999, 25.398247>,  <42.640812, 37.851574, 25.628950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.314899, 37.827999, 25.398247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578974, 0.134582, 0.804163,
		0.030228, 0.989148, -0.143777,
		-0.814786, -0.058935, -0.576759,
		42.070465, 37.810318, 25.225220>
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
