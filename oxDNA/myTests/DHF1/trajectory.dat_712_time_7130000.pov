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
	<3.513654, 0.435932, 1.026139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.262255, 0.202260, 0.820724>,  <3.111415, 0.062057, 0.697474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.262255, 0.202260, 0.820724>,  <3.513654, 0.435932, 1.026139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.262255, 0.202260, 0.820724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197344, 0.758398, -0.621198,
		0.752353, -0.289084, -0.591942,
		-0.628506, -0.584176, -0.513534,
		3.073705, 0.027006, 0.666662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.705643, 0.292857, 0.320109>,  <3.513654, 0.435932, 1.026139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.705643, 0.292857, 0.320109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.318962, 0.331154, 0.415038>,  <3.086954, 0.354132, 0.471996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.318962, 0.331154, 0.415038>,  <3.705643, 0.292857, 0.320109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.318962, 0.331154, 0.415038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029143, 0.880158, -0.473785,
		-0.254243, -0.464925, -0.848060,
		-0.966701, 0.095741, 0.237323,
		3.028952, 0.359876, 0.486235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.210248, 0.431265, -0.216212>,  <3.705643, 0.292857, 0.320109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.210248, 0.431265, -0.216212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.092659, 0.604144, 0.124794>,  <3.022105, 0.707871, 0.329399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.092659, 0.604144, 0.124794>,  <3.210248, 0.431265, -0.216212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.092659, 0.604144, 0.124794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112646, 0.870046, -0.479927,
		-0.949152, -0.237119, -0.207086,
		-0.293974, 0.432197, 0.852517,
		3.004467, 0.733803, 0.380550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.480191, 0.769224, -0.324290>,  <3.210248, 0.431265, -0.216212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.480191, 0.769224, -0.324290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.703888, 0.951416, -0.047224>,  <2.838106, 1.060731, 0.119015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.703888, 0.951416, -0.047224>,  <2.480191, 0.769224, -0.324290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.703888, 0.951416, -0.047224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052392, 0.853288, -0.518802,
		-0.827346, 0.253846, 0.501059,
		0.559243, 0.455481, 0.692665,
		2.871661, 1.088060, 0.160575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.073278, 1.339077, -0.138967>,  <2.480191, 0.769224, -0.324290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.073278, 1.339077, -0.138967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.464867, 1.393788, -0.078429>,  <2.699820, 1.426615, -0.042107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.464867, 1.393788, -0.078429>,  <2.073278, 1.339077, -0.138967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.464867, 1.393788, -0.078429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035211, 0.844070, -0.535076,
		-0.200933, 0.518495, 0.831137,
		0.978972, 0.136780, 0.151345,
		2.758558, 1.434822, -0.033026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.064738, 2.023781, -0.025103>,  <2.073278, 1.339077, -0.138967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.064738, 2.023781, -0.025103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.448845, 1.942473, -0.101596>,  <2.679309, 1.893689, -0.147492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.448845, 1.942473, -0.101596>,  <2.064738, 2.023781, -0.025103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.448845, 1.942473, -0.101596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110833, 0.906616, -0.407140,
		0.256134, 0.369768, 0.893122,
		0.960266, -0.203270, -0.191232,
		2.736925, 1.881492, -0.158966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.549125, 2.557027, 0.369349>,  <2.064738, 2.023781, -0.025103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.549125, 2.557027, 0.369349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.746956, 2.400518, 0.058917>,  <2.865654, 2.306613, -0.127342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.746956, 2.400518, 0.058917>,  <2.549125, 2.557027, 0.369349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.746956, 2.400518, 0.058917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207752, 0.920271, -0.331572,
		0.843939, 0.002755, 0.536432,
		0.494577, -0.391271, -0.776080,
		2.895329, 2.283137, -0.173907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.155715, 2.939005, 0.253699>,  <2.549125, 2.557027, 0.369349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.155715, 2.939005, 0.253699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.030876, 2.779823, -0.091375>,  <2.955973, 2.684314, -0.298419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.030876, 2.779823, -0.091375>,  <3.155715, 2.939005, 0.253699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.030876, 2.779823, -0.091375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231321, 0.848884, -0.475275,
		0.921459, -0.347890, -0.172878,
		-0.312097, -0.397956, -0.862686,
		2.937247, 2.660436, -0.350181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.314536, 3.656388, 4.101556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.696659, 3.719889, 4.001811>,  <2.925933, 3.757989, 3.941963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.696659, 3.719889, 4.001811>,  <2.314536, 3.656388, 4.101556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.696659, 3.719889, 4.001811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160032, -0.986994, -0.015271,
		-0.248545, -0.025318, -0.968289,
		0.955309, 0.158753, -0.249364,
		2.983252, 3.767514, 3.927001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.554773, 3.183959, 3.587768>,  <2.314536, 3.656388, 4.101556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.554773, 3.183959, 3.587768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.915546, 3.268551, 3.738389>,  <3.132010, 3.319306, 3.828762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.915546, 3.268551, 3.738389>,  <2.554773, 3.183959, 3.587768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.915546, 3.268551, 3.738389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238087, -0.970922, -0.024984,
		0.360321, 0.112187, -0.926058,
		0.901933, 0.211480, 0.376554,
		3.186126, 3.331995, 3.851356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.175037, 2.835143, 3.197274>,  <2.554773, 3.183959, 3.587768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.175037, 2.835143, 3.197274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.214481, 2.888565, 3.591723>,  <3.238148, 2.920618, 3.828393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.214481, 2.888565, 3.591723>,  <3.175037, 2.835143, 3.197274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.214481, 2.888565, 3.591723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138996, -0.983087, 0.119244,
		0.985371, 0.125308, -0.115507,
		0.098611, 0.133555, 0.986123,
		3.244065, 2.928632, 3.887560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.065053, 2.176658, 3.591808>,  <3.175037, 2.835143, 3.197274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.065053, 2.176658, 3.591808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.159916, 2.333624, 3.947283>,  <3.216834, 2.427804, 4.160568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.159916, 2.333624, 3.947283>,  <3.065053, 2.176658, 3.591808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.159916, 2.333624, 3.947283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075048, -0.919452, 0.385973,
		0.968568, -0.024842, -0.247504,
		0.237157, 0.392416, 0.888688,
		3.231063, 2.451349, 4.213890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.610768, 1.755643, 3.854721>,  <3.065053, 2.176658, 3.591808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.610768, 1.755643, 3.854721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.406162, 1.920923, 4.156082>,  <3.283399, 2.020091, 4.336899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.406162, 1.920923, 4.156082>,  <3.610768, 1.755643, 3.854721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.406162, 1.920923, 4.156082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046842, -0.862078, 0.504605,
		0.857997, 0.293404, 0.421611,
		-0.511515, 0.413201, 0.753404,
		3.252708, 2.044883, 4.382103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.939422, 1.520280, 4.539829>,  <3.610768, 1.755643, 3.854721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.939422, 1.520280, 4.539829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.569862, 1.627083, 4.649459>,  <3.348126, 1.691165, 4.715237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.569862, 1.627083, 4.649459>,  <3.939422, 1.520280, 4.539829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.569862, 1.627083, 4.649459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039689, -0.645545, 0.762691,
		0.380572, 0.715527, 0.585821,
		-0.923899, 0.267008, 0.274075,
		3.292693, 1.707185, 4.731682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.947252, 1.832850, 5.198684>,  <3.939422, 1.520280, 4.539829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.947252, 1.832850, 5.198684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.585320, 1.674332, 5.136422>,  <3.368160, 1.579221, 5.099065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.585320, 1.674332, 5.136422>,  <3.947252, 1.832850, 5.198684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.585320, 1.674332, 5.136422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132589, -0.609674, 0.781485,
		-0.404597, 0.686475, 0.604197,
		-0.904832, -0.396296, -0.155654,
		3.313870, 1.555443, 5.089726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.849948, 1.647907, 5.749983>,  <3.947252, 1.832850, 5.198684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.849948, 1.647907, 5.749983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.555294, 1.446445, 5.569449>,  <3.378502, 1.325569, 5.461129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.555294, 1.446445, 5.569449>,  <3.849948, 1.647907, 5.749983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.555294, 1.446445, 5.569449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171956, -0.784921, 0.595256,
		-0.654064, 0.360877, 0.664807,
		-0.736635, -0.503653, -0.451333,
		3.334304, 1.295349, 5.434049>
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
