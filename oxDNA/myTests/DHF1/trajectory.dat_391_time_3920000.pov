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
	<0.762189, 2.419967, -0.646536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.625267, 2.090477, -0.465736>,  <0.543114, 1.892783, -0.357256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.625267, 2.090477, -0.465736>,  <0.762189, 2.419967, -0.646536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.625267, 2.090477, -0.465736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774993, 0.024464, 0.631496,
		-0.531236, 0.566462, 0.630007,
		-0.342306, -0.823725, 0.452000,
		0.522575, 1.843360, -0.330136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.459122, 2.454015, 0.154964>,  <0.762189, 2.419967, -0.646536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.459122, 2.454015, 0.154964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.603310, 2.090576, 0.070572>,  <0.689822, 1.872513, 0.019937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.603310, 2.090576, 0.070572>,  <0.459122, 2.454015, 0.154964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.603310, 2.090576, 0.070572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750217, 0.147997, 0.644416,
		-0.554290, -0.390573, 0.734994,
		0.360468, -0.908598, -0.210981,
		0.711450, 1.817997, 0.007278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.468419, 2.042712, 0.801731>,  <0.459122, 2.454015, 0.154964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.468419, 2.042712, 0.801731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.741310, 1.874565, 0.562447>,  <0.905045, 1.773677, 0.418876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.741310, 1.874565, 0.562447>,  <0.468419, 2.042712, 0.801731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.741310, 1.874565, 0.562447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686737, 0.087639, 0.721604,
		-0.250912, -0.903112, 0.348472,
		0.682229, -0.420368, -0.598210,
		0.945979, 1.748455, 0.382984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.817420, 1.519029, 1.198854>,  <0.468419, 2.042712, 0.801731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.817420, 1.519029, 1.198854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.069229, 1.602646, 0.899521>,  <1.220315, 1.652816, 0.719921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.069229, 1.602646, 0.899521>,  <0.817420, 1.519029, 1.198854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.069229, 1.602646, 0.899521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775843, -0.116992, 0.619984,
		0.042053, -0.970883, -0.235833,
		0.629523, 0.209042, -0.748333,
		1.258086, 1.665358, 0.675021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.252106, 0.961909, 1.152020>,  <0.817420, 1.519029, 1.198854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.252106, 0.961909, 1.152020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.448975, 1.279106, 1.008392>,  <1.567096, 1.469424, 0.922216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.448975, 1.279106, 1.008392>,  <1.252106, 0.961909, 1.152020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.448975, 1.279106, 1.008392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717867, -0.136422, 0.682684,
		0.492378, -0.593760, -0.636406,
		0.492170, 0.792993, -0.359070,
		1.596626, 1.517004, 0.900671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.859731, 0.733662, 0.873174>,  <1.252106, 0.961909, 1.152020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.859731, 0.733662, 0.873174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.936184, 1.114845, 0.967270>,  <1.982056, 1.343555, 1.023728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.936184, 1.114845, 0.967270>,  <1.859731, 0.733662, 0.873174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.936184, 1.114845, 0.967270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737193, -0.297602, 0.606613,
		0.648085, 0.057474, -0.759396,
		0.191133, 0.952958, 0.235241,
		1.993524, 1.400733, 1.037842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.697361, 0.830901, 0.959008>,  <1.859731, 0.733662, 0.873174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.697361, 0.830901, 0.959008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.507851, 1.132790, 1.140526>,  <2.394144, 1.313923, 1.249436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.507851, 1.132790, 1.140526>,  <2.697361, 0.830901, 0.959008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.507851, 1.132790, 1.140526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670037, -0.025463, 0.741891,
		0.571477, 0.655550, -0.493628,
		-0.473777, 0.754722, 0.453794,
		2.365718, 1.359206, 1.276664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.294704, 1.229502, 1.315077>,  <2.697361, 0.830901, 0.959008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.294704, 1.229502, 1.315077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.949070, 1.317650, 1.496094>,  <2.741689, 1.370539, 1.604704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.949070, 1.317650, 1.496094>,  <3.294704, 1.229502, 1.315077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.949070, 1.317650, 1.496094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493347, 0.192478, 0.848270,
		0.099829, 0.956237, -0.275036,
		-0.864085, 0.220370, 0.452541,
		2.689844, 1.383761, 1.631856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.159906, 0.533895, 2.389853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.345455, 0.190910, 2.478920>,  <3.456784, -0.014881, 2.532360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.345455, 0.190910, 2.478920>,  <3.159906, 0.533895, 2.389853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.345455, 0.190910, 2.478920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051176, -0.224990, -0.973016,
		0.884423, 0.462751, -0.060485,
		0.463872, -0.857462, 0.222668,
		3.484617, -0.066328, 2.545720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.483722, 0.793524, 2.388425>,  <3.159906, 0.533895, 2.389853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.483722, 0.793524, 2.388425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.520565, 1.178711, 2.489784>,  <2.542671, 1.409823, 2.550600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.520565, 1.178711, 2.489784>,  <2.483722, 0.793524, 2.388425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.520565, 1.178711, 2.489784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299261, 0.269486, -0.915325,
		-0.949715, 0.008477, 0.313001,
		0.092108, 0.962967, 0.253398,
		2.548198, 1.467601, 2.565804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.764544, 1.127266, 2.224816>,  <2.483722, 0.793524, 2.388425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.764544, 1.127266, 2.224816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.078320, 1.375069, 2.213043>,  <2.266585, 1.523750, 2.205980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.078320, 1.375069, 2.213043>,  <1.764544, 1.127266, 2.224816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.078320, 1.375069, 2.213043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228569, 0.244655, -0.942285,
		-0.576552, 0.745892, 0.333517,
		0.784439, 0.619507, -0.029431,
		2.313651, 1.560921, 2.204214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.558696, 1.814478, 2.101805>,  <1.764544, 1.127266, 2.224816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.558696, 1.814478, 2.101805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.925583, 1.723602, 1.970901>,  <2.145715, 1.669077, 1.892359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.925583, 1.723602, 1.970901>,  <1.558696, 1.814478, 2.101805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.925583, 1.723602, 1.970901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315099, 0.088943, -0.944882,
		0.243774, 0.969780, 0.009993,
		0.917217, -0.227189, -0.327259,
		2.200748, 1.655446, 1.872724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.798959, 2.408637, 1.713365>,  <1.558696, 1.814478, 2.101805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.798959, 2.408637, 1.713365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.983486, 2.089226, 1.558685>,  <2.094203, 1.897579, 1.465877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.983486, 2.089226, 1.558685>,  <1.798959, 2.408637, 1.713365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.983486, 2.089226, 1.558685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454215, 0.161844, -0.876068,
		0.762151, 0.579791, -0.288042,
		0.461319, -0.798529, -0.386699,
		2.121882, 1.849667, 1.442675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.074067, 2.645651, 1.056241>,  <1.798959, 2.408637, 1.713365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.074067, 2.645651, 1.056241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.083029, 2.245811, 1.049286>,  <2.088406, 2.005908, 1.045113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.083029, 2.245811, 1.049286>,  <2.074067, 2.645651, 1.056241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.083029, 2.245811, 1.049286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599258, 0.000493, -0.800556,
		0.800242, 0.028356, -0.599006,
		0.022405, -0.999598, -0.017387,
		2.089750, 1.945932, 1.044070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.262014, 2.445253, 0.315335>,  <2.074067, 2.645651, 1.056241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.262014, 2.445253, 0.315335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.057854, 2.165939, 0.516090>,  <1.935358, 1.998351, 0.636544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.057854, 2.165939, 0.516090>,  <2.262014, 2.445253, 0.315335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.057854, 2.165939, 0.516090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699406, -0.002483, -0.714720,
		0.500323, -0.715817, -0.487116,
		-0.510400, -0.698283, 0.501889,
		1.904734, 1.956454, 0.666657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.115586, 1.992980, -0.228044>,  <2.262014, 2.445253, 0.315335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.115586, 1.992980, -0.228044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.844997, 1.929161, 0.059547>,  <1.682644, 1.890869, 0.232102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.844997, 1.929161, 0.059547>,  <2.115586, 1.992980, -0.228044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.844997, 1.929161, 0.059547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736045, 0.113336, -0.667378,
		0.024988, -0.980664, -0.194099,
		-0.676471, -0.159542, 0.718980,
		1.642056, 1.881297, 0.275241>
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
