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
	<1.069952, 4.241285, 4.729474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.088326, 3.997574, 5.046124>,  <1.099349, 3.851347, 5.236114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.088326, 3.997574, 5.046124>,  <1.069952, 4.241285, 4.729474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.088326, 3.997574, 5.046124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965319, -0.176806, -0.192092,
		0.257002, 0.772994, 0.580027,
		0.045933, -0.609278, 0.791625,
		1.102105, 3.814790, 5.283611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.717793, 4.387925, 5.065072>,  <1.069952, 4.241285, 4.729474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.717793, 4.387925, 5.065072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.600433, 4.012356, 5.137005>,  <1.530017, 3.787014, 5.180164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.600433, 4.012356, 5.137005>,  <1.717793, 4.387925, 5.065072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.600433, 4.012356, 5.137005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944809, -0.313478, -0.095228,
		0.145785, 0.141967, 0.979077,
		-0.293400, -0.938923, 0.179832,
		1.512413, 3.730679, 5.190954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.233103, 4.086878, 5.443279>,  <1.717793, 4.387925, 5.065072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.233103, 4.086878, 5.443279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.033836, 3.797743, 5.251724>,  <1.914276, 3.624262, 5.136791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.033836, 3.797743, 5.251724>,  <2.233103, 4.086878, 5.443279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.033836, 3.797743, 5.251724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857491, -0.328786, -0.395739,
		0.128604, -0.607786, 0.783618,
		-0.498167, -0.722839, -0.478887,
		1.884386, 3.580891, 5.108058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.549237, 3.429034, 5.608313>,  <2.233103, 4.086878, 5.443279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.549237, 3.429034, 5.608313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.366112, 3.376688, 5.256567>,  <2.256237, 3.345281, 5.045519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.366112, 3.376688, 5.256567>,  <2.549237, 3.429034, 5.608313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.366112, 3.376688, 5.256567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883151, -0.180683, -0.432895,
		-0.102236, -0.974797, 0.198291,
		-0.457812, -0.130864, -0.879365,
		2.228768, 3.337429, 4.992757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.722616, 2.751852, 5.414876>,  <2.549237, 3.429034, 5.608313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.722616, 2.751852, 5.414876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.631279, 2.923765, 5.065443>,  <2.576477, 3.026913, 4.855783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.631279, 2.923765, 5.065443>,  <2.722616, 2.751852, 5.414876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.631279, 2.923765, 5.065443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816572, -0.404070, -0.412234,
		-0.530160, -0.807473, -0.258683,
		-0.228342, 0.429783, -0.873582,
		2.562776, 3.052700, 4.803368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.778022, 2.231545, 4.998742>,  <2.722616, 2.751852, 5.414876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.778022, 2.231545, 4.998742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.813271, 2.544195, 4.751745>,  <2.834420, 2.731785, 4.603547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.813271, 2.544195, 4.751745>,  <2.778022, 2.231545, 4.998742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.813271, 2.544195, 4.751745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876784, -0.355063, -0.324315,
		-0.472741, -0.512828, -0.716605,
		0.088123, 0.781625, -0.617493,
		2.839707, 2.778683, 4.566497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.846480, 2.004021, 4.356320>,  <2.778022, 2.231545, 4.998742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.846480, 2.004021, 4.356320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.009171, 2.368532, 4.382084>,  <3.106785, 2.587239, 4.397542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.009171, 2.368532, 4.382084>,  <2.846480, 2.004021, 4.356320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.009171, 2.368532, 4.382084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909035, -0.396706, -0.127593,
		-0.090721, 0.110447, -0.989733,
		0.406726, 0.911277, 0.064410,
		3.131188, 2.641915, 4.401407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.134480, 2.192080, 3.709196>,  <2.846480, 2.004021, 4.356320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.134480, 2.192080, 3.709196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.321136, 2.390486, 4.002104>,  <3.433130, 2.509529, 4.177848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.321136, 2.390486, 4.002104>,  <3.134480, 2.192080, 3.709196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.321136, 2.390486, 4.002104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881042, -0.333269, -0.335702,
		0.077530, 0.801812, -0.592526,
		0.466641, 0.496013, 0.732269,
		3.461129, 2.539290, 4.221785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.252382, 1.926087, 4.014996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.498260, 2.145786, 4.241438>,  <4.645788, 2.277606, 4.377303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.498260, 2.145786, 4.241438>,  <4.252382, 1.926087, 4.014996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.498260, 2.145786, 4.241438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729253, 0.669232, 0.142544,
		-0.300563, -0.500455, 0.811916,
		0.614696, 0.549249, 0.566104,
		4.682670, 2.310561, 4.411269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.985124, 2.059707, 4.752299>,  <4.252382, 1.926087, 4.014996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.985124, 2.059707, 4.752299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.194786, 2.329372, 4.544159>,  <4.320583, 2.491171, 4.419275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.194786, 2.329372, 4.544159>,  <3.985124, 2.059707, 4.752299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.194786, 2.329372, 4.544159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789713, 0.613476, -0.000672,
		0.318770, 0.411281, 0.853952,
		0.524156, 0.674162, -0.520351,
		4.352033, 2.531621, 4.388053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.081522, 2.719262, 5.028387>,  <3.985124, 2.059707, 4.752299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.081522, 2.719262, 5.028387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.054588, 2.747444, 4.630291>,  <4.038428, 2.764354, 4.391433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.054588, 2.747444, 4.630291>,  <4.081522, 2.719262, 5.028387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.054588, 2.747444, 4.630291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867404, 0.488782, 0.093288,
		0.493028, 0.869556, 0.028201,
		-0.067335, 0.070456, -0.995240,
		4.034388, 2.768581, 4.331719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.992532, 3.382913, 4.755952>,  <4.081522, 2.719262, 5.028387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.992532, 3.382913, 4.755952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.803276, 3.148869, 4.492502>,  <3.689723, 3.008442, 4.334433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.803276, 3.148869, 4.492502>,  <3.992532, 3.382913, 4.755952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.803276, 3.148869, 4.492502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862731, 0.459132, 0.211879,
		0.178422, 0.668463, -0.722027,
		-0.473139, -0.585111, -0.658624,
		3.661334, 2.973335, 4.294915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.516250, 3.855966, 4.324845>,  <3.992532, 3.382913, 4.755952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.516250, 3.855966, 4.324845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.404900, 3.473595, 4.362175>,  <3.338089, 3.244172, 4.384573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.404900, 3.473595, 4.362175>,  <3.516250, 3.855966, 4.324845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.404900, 3.473595, 4.362175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940395, 0.291031, 0.175951,
		-0.195357, -0.038782, -0.979965,
		-0.278377, -0.955927, 0.093326,
		3.321387, 3.186816, 4.390172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.928018, 3.871670, 3.895049>,  <3.516250, 3.855966, 4.324845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.928018, 3.871670, 3.895049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.898262, 3.542744, 4.120708>,  <2.880408, 3.345388, 4.256104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.898262, 3.542744, 4.120708>,  <2.928018, 3.871670, 3.895049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.898262, 3.542744, 4.120708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922748, 0.271285, 0.273754,
		-0.378157, -0.500203, -0.778970,
		-0.074390, -0.822314, 0.564150,
		2.875945, 3.296049, 4.289953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.339156, 3.619643, 3.652379>,  <2.928018, 3.871670, 3.895049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.339156, 3.619643, 3.652379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.390755, 3.451820, 4.011786>,  <2.421714, 3.351127, 4.227429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.390755, 3.451820, 4.011786>,  <2.339156, 3.619643, 3.652379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.390755, 3.451820, 4.011786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924289, 0.277371, 0.262212,
		-0.359235, -0.864313, -0.352013,
		0.128996, -0.419557, 0.898516,
		2.429453, 3.325953, 4.281341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.846500, 3.073285, 3.809023>,  <2.339156, 3.619643, 3.652379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.846500, 3.073285, 3.809023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.968605, 3.199280, 4.168489>,  <2.041868, 3.274877, 4.384169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.968605, 3.199280, 4.168489>,  <1.846500, 3.073285, 3.809023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.968605, 3.199280, 4.168489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950725, 0.154523, 0.268785,
		-0.054201, -0.936433, 0.346635,
		0.305262, 0.314986, 0.898665,
		2.060184, 3.293776, 4.438089>
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
