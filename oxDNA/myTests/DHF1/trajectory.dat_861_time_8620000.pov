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
	<5.705912, 0.692918, 2.013661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.449753, 0.472115, 2.227268>,  <5.296057, 0.339632, 2.355433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.449753, 0.472115, 2.227268>,  <5.705912, 0.692918, 2.013661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.449753, 0.472115, 2.227268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391264, 0.832787, 0.391636,
		-0.660910, 0.041861, -0.749297,
		-0.640399, -0.552009, 0.534018,
		5.257633, 0.306512, 2.387474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.907894, 0.704431, 1.771410>,  <5.705912, 0.692918, 2.013661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.907894, 0.704431, 1.771410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.955688, 0.613342, 2.157957>,  <4.984365, 0.558689, 2.389885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.955688, 0.613342, 2.157957>,  <4.907894, 0.704431, 1.771410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.955688, 0.613342, 2.157957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502662, 0.825498, 0.256678,
		-0.856185, -0.516426, -0.015830,
		0.119488, -0.227721, 0.966367,
		4.991535, 0.545026, 2.447867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.242849, 0.545545, 2.139947>,  <4.907894, 0.704431, 1.771410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.242849, 0.545545, 2.139947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.519661, 0.691605, 2.389029>,  <4.685748, 0.779240, 2.538478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.519661, 0.691605, 2.389029>,  <4.242849, 0.545545, 2.139947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.519661, 0.691605, 2.389029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491922, 0.869869, 0.036604,
		-0.528306, -0.331653, 0.781600,
		0.692030, 0.365148, 0.622705,
		4.727270, 0.801149, 2.575840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.879468, 0.960242, 2.565351>,  <4.242849, 0.545545, 2.139947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.879468, 0.960242, 2.565351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.263908, 1.070457, 2.572954>,  <4.494573, 1.136587, 2.577516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.263908, 1.070457, 2.572954>,  <3.879468, 0.960242, 2.565351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.263908, 1.070457, 2.572954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276085, 0.956512, 0.094140,
		0.007758, -0.095726, 0.995377,
		0.961101, 0.275539, 0.019008,
		4.552239, 1.153119, 2.578656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.013410, 1.423807, 3.237185>,  <3.879468, 0.960242, 2.565351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.013410, 1.423807, 3.237185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.293213, 1.504021, 2.962820>,  <4.461094, 1.552149, 2.798201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.293213, 1.504021, 2.962820>,  <4.013410, 1.423807, 3.237185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.293213, 1.504021, 2.962820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280082, 0.959963, -0.004975,
		0.657453, 0.195592, 0.727667,
		0.699507, 0.200535, -0.685912,
		4.503065, 1.564181, 2.757046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.116642, 2.112956, 3.385732>,  <4.013410, 1.423807, 3.237185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.116642, 2.112956, 3.385732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.333282, 2.084023, 3.050724>,  <4.463266, 2.066663, 2.849720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.333282, 2.084023, 3.050724>,  <4.116642, 2.112956, 3.385732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.333282, 2.084023, 3.050724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069976, 0.988954, -0.130663,
		0.837719, 0.129373, 0.530556,
		0.541599, -0.072333, -0.837519,
		4.495762, 2.062323, 2.799468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.752339, 2.598447, 3.375709>,  <4.116642, 2.112956, 3.385732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.752339, 2.598447, 3.375709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.685150, 2.518738, 2.989532>,  <4.644836, 2.470912, 2.757827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.685150, 2.518738, 2.989532>,  <4.752339, 2.598447, 3.375709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.685150, 2.518738, 2.989532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124776, 0.975777, -0.179697,
		0.977863, 0.090279, -0.188771,
		-0.167976, -0.199273, -0.965440,
		4.634758, 2.458956, 2.699900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.309886, 2.957439, 3.015104>,  <4.752339, 2.598447, 3.375709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.309886, 2.957439, 3.015104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.988899, 2.883301, 2.788231>,  <4.796308, 2.838818, 2.652107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.988899, 2.883301, 2.788231>,  <5.309886, 2.957439, 3.015104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.988899, 2.883301, 2.788231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036195, 0.963904, -0.263777,
		0.595600, -0.191143, -0.780208,
		-0.802465, -0.185345, -0.567183,
		4.748159, 2.827697, 2.618076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.435373, 3.902714, 2.899587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.284012, 3.965454, 2.534685>,  <4.193195, 4.003098, 2.315744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.284012, 3.965454, 2.534685>,  <4.435373, 3.902714, 2.899587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.284012, 3.965454, 2.534685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258290, -0.928500, -0.266784,
		-0.888874, -0.336578, 0.310834,
		-0.378403, 0.156852, -0.912255,
		4.170491, 4.012509, 2.261009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.866516, 3.428158, 2.706553>,  <4.435373, 3.902714, 2.899587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.866516, 3.428158, 2.706553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.078499, 3.524788, 2.381397>,  <4.205688, 3.582766, 2.186304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.078499, 3.524788, 2.381397>,  <3.866516, 3.428158, 2.706553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.078499, 3.524788, 2.381397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192138, -0.967844, -0.162361,
		-0.825972, -0.070143, -0.559330,
		0.529956, 0.241574, -0.812889,
		4.237486, 3.597260, 2.137531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.558481, 3.047792, 2.145734>,  <3.866516, 3.428158, 2.706553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.558481, 3.047792, 2.145734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.952110, 3.118248, 2.136154>,  <4.188288, 3.160522, 2.130406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.952110, 3.118248, 2.136154>,  <3.558481, 3.047792, 2.145734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.952110, 3.118248, 2.136154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175967, -0.984354, -0.009144,
		-0.025185, 0.004784, -0.999671,
		0.984074, 0.176139, -0.023949,
		4.247333, 3.171090, 2.128969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.800499, 2.565272, 1.734515>,  <3.558481, 3.047792, 2.145734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.800499, 2.565272, 1.734515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.106567, 2.659431, 1.974215>,  <4.290208, 2.715927, 2.118035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.106567, 2.659431, 1.974215>,  <3.800499, 2.565272, 1.734515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.106567, 2.659431, 1.974215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182735, -0.971890, 0.148450,
		0.617350, -0.004086, -0.786678,
		0.765171, 0.235399, 0.599250,
		4.336119, 2.730051, 2.153990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.292638, 2.212595, 1.478460>,  <3.800499, 2.565272, 1.734515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.292638, 2.212595, 1.478460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.396103, 2.297928, 1.855307>,  <4.458181, 2.349128, 2.081414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.396103, 2.297928, 1.855307>,  <4.292638, 2.212595, 1.478460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.396103, 2.297928, 1.855307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283690, -0.949076, 0.137022,
		0.923371, 0.231827, -0.306009,
		0.258661, 0.213334, 0.942116,
		4.473701, 2.361928, 2.137942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.941548, 2.027905, 1.529676>,  <4.292638, 2.212595, 1.478460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.941548, 2.027905, 1.529676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.818146, 2.024147, 1.910147>,  <4.744104, 2.021893, 2.138429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.818146, 2.024147, 1.910147>,  <4.941548, 2.027905, 1.529676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.818146, 2.024147, 1.910147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448323, -0.883360, 0.136685,
		0.838947, 0.468602, 0.276733,
		-0.308505, -0.009394, 0.951176,
		4.725594, 2.021329, 2.195500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.488830, 1.802929, 1.907160>,  <4.941548, 2.027905, 1.529676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.488830, 1.802929, 1.907160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.188301, 1.728340, 2.160378>,  <5.007984, 1.683587, 2.312308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.188301, 1.728340, 2.160378>,  <5.488830, 1.802929, 1.907160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.188301, 1.728340, 2.160378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424557, -0.870965, 0.247326,
		0.505239, 0.454585, 0.733543,
		-0.751322, -0.186472, 0.633043,
		4.962904, 1.672398, 2.350291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.768368, 1.503793, 2.534326>,  <5.488830, 1.802929, 1.907160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.768368, 1.503793, 2.534326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.383499, 1.395103, 2.526402>,  <5.152578, 1.329889, 2.521647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.383499, 1.395103, 2.526402>,  <5.768368, 1.503793, 2.534326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.383499, 1.395103, 2.526402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242186, -0.886347, 0.394632,
		-0.124791, 0.374906, 0.918625,
		-0.962171, -0.271725, -0.019811,
		5.094848, 1.313586, 2.520458>
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
