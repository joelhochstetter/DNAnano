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
	<5.880675, 0.778373, 3.272312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.874771, 0.897400, 2.890477>,  <5.871229, 0.968816, 2.661376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.874771, 0.897400, 2.890477>,  <5.880675, 0.778373, 3.272312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.874771, 0.897400, 2.890477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937099, -0.337103, -0.090594,
		-0.348752, 0.893205, 0.283824,
		-0.014760, 0.297566, -0.954587,
		5.870343, 0.986670, 2.604101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.220735, 1.103340, 3.100288>,  <5.880675, 0.778373, 3.272312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.220735, 1.103340, 3.100288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.378963, 0.977341, 2.755197>,  <5.473900, 0.901741, 2.548142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.378963, 0.977341, 2.755197>,  <5.220735, 1.103340, 3.100288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.378963, 0.977341, 2.755197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917805, -0.100783, -0.384027,
		0.034020, 0.943726, -0.328975,
		0.395571, -0.314999, -0.862728,
		5.497635, 0.882841, 2.496378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.016394, 1.396038, 2.364211>,  <5.220735, 1.103340, 3.100288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.016394, 1.396038, 2.364211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.073586, 1.002884, 2.317747>,  <5.107901, 0.766991, 2.289869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.073586, 1.002884, 2.317747>,  <5.016394, 1.396038, 2.364211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.073586, 1.002884, 2.317747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919146, -0.088339, -0.383884,
		0.367052, 0.161654, -0.916046,
		0.142979, -0.982886, -0.116159,
		5.116479, 0.708018, 2.282899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.960333, 1.309301, 1.587986>,  <5.016394, 1.396038, 2.364211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.960333, 1.309301, 1.587986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.859344, 1.023804, 1.849315>,  <4.798751, 0.852506, 2.006112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.859344, 1.023804, 1.849315>,  <4.960333, 1.309301, 1.587986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.859344, 1.023804, 1.849315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879400, -0.112393, -0.462626,
		0.403624, -0.691331, -0.599290,
		-0.252472, -0.713743, 0.653322,
		4.783603, 0.809681, 2.045311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.648542, 0.747525, 1.255941>,  <4.960333, 1.309301, 1.587986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.648542, 0.747525, 1.255941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.475079, 0.716194, 1.615007>,  <4.371000, 0.697396, 1.830447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.475079, 0.716194, 1.615007>,  <4.648542, 0.747525, 1.255941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.475079, 0.716194, 1.615007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897734, -0.048177, -0.437895,
		0.077547, -0.995763, -0.049426,
		-0.433659, -0.078329, 0.897666,
		4.344981, 0.692696, 1.884307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.170720, 0.267774, 1.119957>,  <4.648542, 0.747525, 1.255941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.170720, 0.267774, 1.119957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.089443, 0.447571, 1.467904>,  <4.040677, 0.555449, 1.676672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.089443, 0.447571, 1.467904>,  <4.170720, 0.267774, 1.119957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.089443, 0.447571, 1.467904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949396, 0.126861, -0.287322,
		-0.239501, -0.884230, 0.400969,
		-0.203192, 0.449492, 0.869868,
		4.028486, 0.582418, 1.728864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.566607, 0.103292, 1.260810>,  <4.170720, 0.267774, 1.119957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.566607, 0.103292, 1.260810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.609779, 0.429382, 1.488408>,  <3.635683, 0.625037, 1.624967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.609779, 0.429382, 1.488408>,  <3.566607, 0.103292, 1.260810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.609779, 0.429382, 1.488408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940438, 0.269316, -0.207473,
		-0.322377, -0.512713, 0.795738,
		0.107931, 0.815227, 0.568996,
		3.642159, 0.673950, 1.659107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.098358, 0.192545, 1.703557>,  <3.566607, 0.103292, 1.260810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.098358, 0.192545, 1.703557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.228634, 0.546280, 1.569765>,  <3.306799, 0.758521, 1.489490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.228634, 0.546280, 1.569765>,  <3.098358, 0.192545, 1.703557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.228634, 0.546280, 1.569765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941669, 0.271682, -0.198617,
		-0.084773, 0.379656, 0.921236,
		0.325689, 0.884336, -0.334479,
		3.326341, 0.811581, 1.469421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.400296, 1.264800, 0.948439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.498688, 1.613083, 1.118786>,  <2.557723, 1.822052, 1.220994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.498688, 1.613083, 1.118786>,  <2.400296, 1.264800, 0.948439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.498688, 1.613083, 1.118786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733616, -0.454398, 0.505302,
		0.633483, 0.188130, -0.750537,
		0.245980, 0.870707, 0.425869,
		2.572482, 1.874295, 1.246547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.004281, 1.420099, 0.823603>,  <2.400296, 1.264800, 0.948439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.004281, 1.420099, 0.823603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.939774, 1.591064, 1.179425>,  <2.901069, 1.693644, 1.392919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.939774, 1.591064, 1.179425>,  <3.004281, 1.420099, 0.823603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.939774, 1.591064, 1.179425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792704, -0.480826, 0.374736,
		0.587889, 0.765587, -0.261271,
		-0.161267, 0.427414, 0.889556,
		2.891393, 1.719289, 1.446292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.523971, 1.620074, 1.199965>,  <3.004281, 1.420099, 0.823603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.523971, 1.620074, 1.199965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.278397, 1.553452, 1.508598>,  <3.131052, 1.513478, 1.693778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.278397, 1.553452, 1.508598>,  <3.523971, 1.620074, 1.199965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.278397, 1.553452, 1.508598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634131, -0.686163, 0.356452,
		0.470062, 0.708124, 0.526879,
		-0.613937, -0.166556, 0.771583,
		3.094215, 1.503485, 1.740073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.798973, 1.888803, 1.913704>,  <3.523971, 1.620074, 1.199965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.798973, 1.888803, 1.913704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.567291, 1.562775, 1.919059>,  <3.428282, 1.367157, 1.922272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.567291, 1.562775, 1.919059>,  <3.798973, 1.888803, 1.913704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.567291, 1.562775, 1.919059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742884, -0.521003, 0.420333,
		-0.335627, 0.253404, 0.907271,
		-0.579205, -0.815072, 0.013387,
		3.393530, 1.318253, 1.923075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.715440, 1.590320, 2.571274>,  <3.798973, 1.888803, 1.913704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.715440, 1.590320, 2.571274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.676620, 1.289200, 2.310853>,  <3.653329, 1.108528, 2.154599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.676620, 1.289200, 2.310853>,  <3.715440, 1.590320, 2.571274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.676620, 1.289200, 2.310853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778334, -0.465096, 0.421759,
		-0.620304, -0.465806, 0.631069,
		-0.097050, -0.752801, -0.651054,
		3.647506, 1.063359, 2.115536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.826475, 0.973248, 2.930542>,  <3.715440, 1.590320, 2.571274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.826475, 0.973248, 2.930542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.899673, 0.875366, 2.549673>,  <3.943593, 0.816637, 2.321151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.899673, 0.875366, 2.549673>,  <3.826475, 0.973248, 2.930542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.899673, 0.875366, 2.549673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735058, -0.609099, 0.297806,
		-0.652842, -0.754399, 0.068409,
		0.182997, -0.244705, -0.952172,
		3.954572, 0.801955, 2.264021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.070548, 0.359060, 3.011902>,  <3.826475, 0.973248, 2.930542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.070548, 0.359060, 3.011902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.151573, 0.417557, 2.624587>,  <4.200189, 0.452655, 2.392198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.151573, 0.417557, 2.624587>,  <4.070548, 0.359060, 3.011902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.151573, 0.417557, 2.624587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775293, -0.628001, 0.067342,
		-0.598238, -0.764348, -0.240590,
		0.202564, 0.146242, -0.968288,
		4.212342, 0.461429, 2.334101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.397702, -0.239986, 2.753456>,  <4.070548, 0.359060, 3.011902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.397702, -0.239986, 2.753456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.509964, 0.082611, 2.545300>,  <4.577321, 0.276169, 2.420407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.509964, 0.082611, 2.545300>,  <4.397702, -0.239986, 2.753456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.509964, 0.082611, 2.545300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958061, -0.202694, 0.202567,
		0.057889, -0.555415, -0.829556,
		0.280654, 0.806492, -0.520388,
		4.594160, 0.324559, 2.389184>
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
