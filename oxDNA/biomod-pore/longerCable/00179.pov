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
	<24.411005, 35.192150, 35.857635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.426027, 35.200600, 35.458008>,  <24.435040, 35.205669, 35.218231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.426027, 35.200600, 35.458008>,  <24.411005, 35.192150, 35.857635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.426027, 35.200600, 35.458008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915215, 0.400678, 0.042875,
		0.401211, -0.915975, -0.004289,
		0.037554, 0.021127, -0.999071,
		24.437294, 35.206940, 35.158287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.067204, 34.962627, 35.720551>,  <24.411005, 35.192150, 35.857635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.067204, 34.962627, 35.720551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.942236, 35.220844, 35.441792>,  <24.867256, 35.375774, 35.274536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.942236, 35.220844, 35.441792>,  <25.067204, 34.962627, 35.720551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.942236, 35.220844, 35.441792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837278, 0.533672, 0.118997,
		0.448732, -0.546319, -0.707231,
		-0.312419, 0.645546, -0.696896,
		24.848511, 35.414509, 35.232723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.595188, 35.398182, 35.488106>,  <25.067204, 34.962627, 35.720551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.595188, 35.398182, 35.488106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.301142, 35.598194, 35.304993>,  <25.124714, 35.718201, 35.195126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.301142, 35.598194, 35.304993>,  <25.595188, 35.398182, 35.488106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.301142, 35.598194, 35.304993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616280, 0.774268, -0.143906,
		0.282490, -0.387912, -0.877339,
		-0.735118, 0.500034, -0.457785,
		25.080606, 35.748203, 35.167656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.762804, 35.515381, 34.819736>,  <25.595188, 35.398182, 35.488106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.762804, 35.515381, 34.819736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.514835, 35.806366, 34.937374>,  <25.366055, 35.980957, 35.007957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.514835, 35.806366, 34.937374>,  <25.762804, 35.515381, 34.819736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.514835, 35.806366, 34.937374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734419, 0.669896, -0.108943,
		-0.276267, 0.148455, -0.949546,
		-0.619924, 0.727462, 0.294098,
		25.328857, 36.024605, 35.025604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.954498, 36.155388, 34.542969>,  <25.762804, 35.515381, 34.819736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.954498, 36.155388, 34.542969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.749157, 36.292854, 34.857513>,  <25.625952, 36.375336, 35.046242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.749157, 36.292854, 34.857513>,  <25.954498, 36.155388, 34.542969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.749157, 36.292854, 34.857513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526514, 0.849717, -0.027639,
		-0.677683, 0.399841, -0.617149,
		-0.513351, 0.343668, 0.786361,
		25.595152, 36.395954, 35.093422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.681839, 36.738365, 34.318489>,  <25.954498, 36.155388, 34.542969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.681839, 36.738365, 34.318489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692827, 36.815586, 34.710812>,  <25.699419, 36.861919, 34.946205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692827, 36.815586, 34.710812>,  <25.681839, 36.738365, 34.318489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.692827, 36.815586, 34.710812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263332, 0.945119, -0.193405,
		-0.964314, 0.263590, -0.024875,
		0.027469, 0.193054, 0.980804,
		25.701069, 36.873501, 35.005054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.426643, 37.414764, 34.423828>,  <25.681839, 36.738365, 34.318489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.426643, 37.414764, 34.423828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.677111, 37.335274, 34.725403>,  <25.827391, 37.287579, 34.906349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.677111, 37.335274, 34.725403>,  <25.426643, 37.414764, 34.423828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.677111, 37.335274, 34.725403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546674, 0.801370, -0.242803,
		-0.555933, 0.564193, 0.610430,
		0.626168, -0.198724, 0.753938,
		25.864962, 37.275658, 34.951584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.363674, 37.944981, 34.980549>,  <25.426643, 37.414764, 34.423828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.363674, 37.944981, 34.980549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719488, 37.769611, 34.929138>,  <25.932976, 37.664391, 34.898293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719488, 37.769611, 34.929138>,  <25.363674, 37.944981, 34.980549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.719488, 37.769611, 34.929138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399863, 0.883178, -0.245165,
		0.221000, 0.166688, 0.960923,
		0.889533, -0.438420, -0.128530,
		25.986347, 37.638084, 34.890579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.887911, 38.261208, 35.450134>,  <25.363674, 37.944981, 34.980549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.887911, 38.261208, 35.450134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.077318, 38.112896, 35.130558>,  <26.190962, 38.023907, 34.938812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.077318, 38.112896, 35.130558>,  <25.887911, 38.261208, 35.450134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.077318, 38.112896, 35.130558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354399, 0.910614, -0.212565,
		0.806338, -0.182489, 0.562598,
		0.473518, -0.370784, -0.798937,
		26.219374, 38.001659, 34.890877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.607450, 38.577702, 35.423897>,  <25.887911, 38.261208, 35.450134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.607450, 38.577702, 35.423897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.507553, 38.441357, 35.061363>,  <26.447615, 38.359550, 34.843842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.507553, 38.441357, 35.061363>,  <26.607450, 38.577702, 35.423897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.507553, 38.441357, 35.061363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385887, 0.823422, -0.416013,
		0.888099, -0.453638, -0.074108,
		-0.249741, -0.340864, -0.906334,
		26.432631, 38.339096, 34.789463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.286179, 38.789936, 34.978897>,  <26.607450, 38.577702, 35.423897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.286179, 38.789936, 34.978897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.994879, 38.676666, 34.729267>,  <26.820099, 38.608704, 34.579491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.994879, 38.676666, 34.729267>,  <27.286179, 38.789936, 34.978897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.994879, 38.676666, 34.729267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109879, 0.850608, -0.514192,
		0.676446, -0.443033, -0.588340,
		-0.728250, -0.283177, -0.624070,
		26.776403, 38.591713, 34.542046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.661150, 39.448009, 34.738701>,  <27.286179, 38.789936, 34.978897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.661150, 39.448009, 34.738701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899918, 39.145065, 34.632805>,  <28.043179, 38.963299, 34.569267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899918, 39.145065, 34.632805>,  <27.661150, 39.448009, 34.738701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899918, 39.145065, 34.632805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801388, -0.578585, -0.151712,
		-0.038272, 0.302717, -0.952312,
		0.596919, -0.757365, -0.264737,
		28.078993, 38.917854, 34.553383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.395462, 39.863995, 34.064266>,  <27.661150, 39.448009, 34.738701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.395462, 39.863995, 34.064266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.081051, 39.854763, 33.817162>,  <26.892405, 39.849224, 33.668900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.081051, 39.854763, 33.817162>,  <27.395462, 39.863995, 34.064266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.081051, 39.854763, 33.817162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249020, -0.902821, 0.350576,
		-0.565816, 0.429397, 0.703896,
		-0.786029, -0.023077, -0.617759,
		26.845242, 39.847839, 33.631832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.790075, 39.738644, 34.470257>,  <27.395462, 39.863995, 34.064266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.790075, 39.738644, 34.470257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740044, 39.616234, 34.092747>,  <26.710026, 39.542789, 33.866241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740044, 39.616234, 34.092747>,  <26.790075, 39.738644, 34.470257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.740044, 39.616234, 34.092747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351039, -0.876061, 0.330588,
		-0.927970, 0.372650, 0.002149,
		-0.125077, -0.306021, -0.943773,
		26.702520, 39.524429, 33.809616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.086903, 39.577591, 34.290726>,  <26.790075, 39.738644, 34.470257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.086903, 39.577591, 34.290726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.358139, 39.381115, 34.072029>,  <26.520882, 39.263229, 33.940811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.358139, 39.381115, 34.072029>,  <26.086903, 39.577591, 34.290726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.358139, 39.381115, 34.072029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231206, -0.848681, 0.475694,
		-0.697665, -0.196154, -0.689048,
		0.678091, -0.491187, -0.546742,
		26.561567, 39.233757, 33.908005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.739279, 38.991875, 34.035694>,  <26.086903, 39.577591, 34.290726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.739279, 38.991875, 34.035694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.134766, 38.933838, 34.050591>,  <26.372059, 38.899017, 34.059528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.134766, 38.933838, 34.050591>,  <25.739279, 38.991875, 34.035694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.134766, 38.933838, 34.050591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145741, -0.874392, 0.462815,
		-0.034589, -0.463021, -0.885672,
		0.988718, -0.145087, 0.037237,
		26.431381, 38.890312, 34.061760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.818834, 38.258308, 33.762074>,  <25.739279, 38.991875, 34.035694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.818834, 38.258308, 33.762074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.133440, 38.372456, 33.981148>,  <26.322205, 38.440945, 34.112591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.133440, 38.372456, 33.981148>,  <25.818834, 38.258308, 33.762074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.133440, 38.372456, 33.981148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008900, -0.891985, 0.451978,
		0.617506, -0.350614, -0.704100,
		0.786516, 0.285365, 0.547685,
		26.369394, 38.458065, 34.145454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.387884, 37.730347, 33.627968>,  <25.818834, 38.258308, 33.762074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.387884, 37.730347, 33.627968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.389624, 37.924141, 33.977882>,  <26.390667, 38.040417, 34.187832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.389624, 37.924141, 33.977882>,  <26.387884, 37.730347, 33.627968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.389624, 37.924141, 33.977882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052579, -0.873699, 0.483618,
		0.998607, 0.043893, -0.029273,
		0.004348, 0.484483, 0.874790,
		26.390928, 38.069485, 34.240318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.959867, 37.442188, 33.982548>,  <26.387884, 37.730347, 33.627968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.959867, 37.442188, 33.982548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705591, 37.608437, 34.242748>,  <26.553024, 37.708187, 34.398869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705591, 37.608437, 34.242748>,  <26.959867, 37.442188, 33.982548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.705591, 37.608437, 34.242748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174663, -0.898269, 0.403245,
		0.751923, 0.142722, 0.643617,
		-0.635693, 0.415624, 0.650501,
		26.514883, 37.733124, 34.437897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176195, 37.151501, 34.591164>,  <26.959867, 37.442188, 33.982548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.176195, 37.151501, 34.591164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801941, 37.274822, 34.659908>,  <26.577389, 37.348816, 34.701157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801941, 37.274822, 34.659908>,  <27.176195, 37.151501, 34.591164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.801941, 37.274822, 34.659908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191003, -0.851684, 0.488009,
		0.296829, 0.423772, 0.855751,
		-0.935634, 0.308307, 0.171862,
		26.521252, 37.367313, 34.711468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.717625, 36.502605, 34.580032>,  <27.176195, 37.151501, 34.591164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.717625, 36.502605, 34.580032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.904325, 36.185146, 34.423950>,  <28.016346, 35.994671, 34.330303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.904325, 36.185146, 34.423950>,  <27.717625, 36.502605, 34.580032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.904325, 36.185146, 34.423950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268426, -0.547531, 0.792564,
		-0.842668, -0.265190, -0.468598,
		0.466752, -0.793653, -0.390203,
		28.044352, 35.947052, 34.306889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.449821, 35.748684, 34.874672>,  <27.717625, 36.502605, 34.580032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.449821, 35.748684, 34.874672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.321318, 35.379734, 34.788868>,  <27.244215, 35.158363, 34.737385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.321318, 35.379734, 34.788868>,  <27.449821, 35.748684, 34.874672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.321318, 35.379734, 34.788868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812600, -0.152185, -0.562602,
		0.486285, -0.355053, 0.798414,
		-0.321260, -0.922376, -0.214510,
		27.224939, 35.103020, 34.724514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.010761, 35.212723, 35.018738>,  <27.449821, 35.748684, 34.874672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.010761, 35.212723, 35.018738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760984, 35.118343, 34.720905>,  <27.611118, 35.061714, 34.542206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760984, 35.118343, 34.720905>,  <28.010761, 35.212723, 35.018738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.760984, 35.118343, 34.720905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779175, -0.254573, -0.572781,
		-0.054403, -0.937827, 0.342813,
		-0.624441, -0.235950, -0.744581,
		27.573652, 35.047558, 34.497532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.480362, 34.698818, 35.024170>,  <28.010761, 35.212723, 35.018738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.480362, 34.698818, 35.024170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.551918, 34.305271, 35.024498>,  <27.594851, 34.069141, 35.024693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.551918, 34.305271, 35.024498>,  <27.480362, 34.698818, 35.024170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.551918, 34.305271, 35.024498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983354, 0.178821, 0.032205,
		-0.031832, -0.004956, 0.999481,
		0.178888, -0.983869, 0.000819,
		27.605585, 34.010109, 35.024742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.825817, 34.437214, 35.703331>,  <27.480362, 34.698818, 35.024170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.825817, 34.437214, 35.703331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894741, 34.277306, 35.343220>,  <27.936096, 34.181362, 35.127155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894741, 34.277306, 35.343220>,  <27.825817, 34.437214, 35.703331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894741, 34.277306, 35.343220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975477, 0.196309, 0.099532,
		0.136942, -0.895347, 0.423792,
		0.172310, -0.399769, -0.900274,
		27.946434, 34.157375, 35.073139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583605, 34.569645, 36.391197>,  <27.825817, 34.437214, 35.703331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583605, 34.569645, 36.391197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.449543, 34.854477, 36.637974>,  <27.369106, 35.025375, 36.786041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.449543, 34.854477, 36.637974>,  <27.583605, 34.569645, 36.391197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449543, 34.854477, 36.637974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792435, -0.141142, 0.593402,
		0.509625, 0.687767, -0.516971,
		-0.335156, 0.712078, 0.616940,
		27.348995, 35.068100, 36.823055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.140230, 35.018066, 36.540680>,  <27.583605, 34.569645, 36.391197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.140230, 35.018066, 36.540680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884197, 35.048717, 36.846470>,  <27.730577, 35.067108, 37.029945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884197, 35.048717, 36.846470>,  <28.140230, 35.018066, 36.540680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.884197, 35.048717, 36.846470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757941, -0.099900, 0.644628,
		0.125767, 0.992043, 0.005866,
		-0.640084, 0.076627, 0.764474,
		27.692171, 35.071705, 37.075813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.387884, 35.535221, 36.933746>,  <28.140230, 35.018066, 36.540680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.387884, 35.535221, 36.933746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171370, 35.289257, 37.163143>,  <28.041460, 35.141678, 37.300781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171370, 35.289257, 37.163143>,  <28.387884, 35.535221, 36.933746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.171370, 35.289257, 37.163143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751446, -0.047739, 0.658065,
		-0.377273, 0.787151, 0.487912,
		-0.541289, -0.614910, 0.573491,
		28.008984, 35.104786, 37.335190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.238956, 35.804932, 37.593697>,  <28.387884, 35.535221, 36.933746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.238956, 35.804932, 37.593697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.289717, 35.408813, 37.571053>,  <28.320173, 35.171143, 37.557468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.289717, 35.408813, 37.571053>,  <28.238956, 35.804932, 37.593697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.289717, 35.408813, 37.571053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774254, 0.063218, 0.629710,
		-0.620022, -0.123738, 0.774765,
		0.126898, -0.990299, -0.056608,
		28.327785, 35.111725, 37.554070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.079388, 35.353951, 38.279610>,  <28.238956, 35.804932, 37.593697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.079388, 35.353951, 38.279610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.356623, 35.196323, 38.038170>,  <28.522964, 35.101746, 37.893307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.356623, 35.196323, 38.038170>,  <28.079388, 35.353951, 38.279610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.356623, 35.196323, 38.038170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710577, 0.232624, 0.664053,
		-0.121271, -0.889154, 0.441247,
		0.693089, -0.394071, -0.603602,
		28.564550, 35.078102, 37.857090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.509636, 34.921371, 38.668106>,  <28.079388, 35.353951, 38.279610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.509636, 34.921371, 38.668106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.735247, 35.009914, 38.349892>,  <28.870613, 35.063042, 38.158962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.735247, 35.009914, 38.349892>,  <28.509636, 34.921371, 38.668106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.735247, 35.009914, 38.349892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764509, 0.224132, 0.604393,
		0.312091, -0.949087, -0.042814,
		0.564026, 0.221357, -0.795535,
		28.904455, 35.076321, 38.111233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993912, 34.393364, 38.702721>,  <28.509636, 34.921371, 38.668106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993912, 34.393364, 38.702721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094664, 34.764942, 38.594189>,  <29.155115, 34.987888, 38.529072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094664, 34.764942, 38.594189>,  <28.993912, 34.393364, 38.702721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094664, 34.764942, 38.594189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347181, 0.174967, 0.921332,
		0.903340, -0.326263, -0.278442,
		0.251878, 0.928945, -0.271327,
		29.170227, 35.043625, 38.512791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713722, 34.434589, 38.843647>,  <28.993912, 34.393364, 38.702721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713722, 34.434589, 38.843647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570499, 34.807365, 38.820740>,  <29.484566, 35.031033, 38.806995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570499, 34.807365, 38.820740>,  <29.713722, 34.434589, 38.843647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570499, 34.807365, 38.820740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140139, 0.114277, 0.983515,
		0.923123, 0.344130, -0.171519,
		-0.358057, 0.931942, -0.057266,
		29.463081, 35.086948, 38.803558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215563, 34.891483, 39.332581>,  <29.713722, 34.434589, 38.843647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215563, 34.891483, 39.332581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841635, 35.021915, 39.276314>,  <29.617279, 35.100174, 39.242554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841635, 35.021915, 39.276314>,  <30.215563, 34.891483, 39.332581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841635, 35.021915, 39.276314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097097, 0.146326, 0.984460,
		0.341592, 0.933950, -0.105128,
		-0.934819, 0.326076, -0.140668,
		29.561190, 35.119740, 39.234112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064394, 35.611786, 39.580616>,  <30.215563, 34.891483, 39.332581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064394, 35.611786, 39.580616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.741985, 35.375336, 39.592609>,  <29.548540, 35.233467, 39.599804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.741985, 35.375336, 39.592609>,  <30.064394, 35.611786, 39.580616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741985, 35.375336, 39.592609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121808, 0.215236, 0.968936,
		-0.579214, 0.777332, -0.245489,
		-0.806023, -0.591124, 0.029982,
		29.500179, 35.197998, 39.601604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289757, 35.958118, 39.552227>,  <30.064394, 35.611786, 39.580616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289757, 35.958118, 39.552227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360235, 35.626408, 39.764362>,  <29.402523, 35.427383, 39.891644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360235, 35.626408, 39.764362>,  <29.289757, 35.958118, 39.552227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360235, 35.626408, 39.764362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360087, 0.447125, 0.818790,
		-0.916129, -0.335236, -0.219828,
		0.176197, -0.829274, 0.530339,
		29.413094, 35.377625, 39.923466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.689800, 36.023563, 39.138561>,  <29.289757, 35.958118, 39.552227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.689800, 36.023563, 39.138561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.049124, 35.848080, 39.128986>,  <29.264717, 35.742790, 39.123241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.049124, 35.848080, 39.128986>,  <28.689800, 36.023563, 39.138561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.049124, 35.848080, 39.128986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094919, -0.140579, -0.985509,
		0.428990, 0.887563, -0.167925,
		0.898308, -0.438713, -0.023940,
		29.318617, 35.716465, 39.121803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.107519, 36.373810, 38.642994>,  <28.689800, 36.023563, 39.138561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.107519, 36.373810, 38.642994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.213255, 35.992054, 38.698513>,  <29.276697, 35.763000, 38.731823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.213255, 35.992054, 38.698513>,  <29.107519, 36.373810, 38.642994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.213255, 35.992054, 38.698513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022895, -0.137663, -0.990214,
		0.964157, 0.264933, -0.014540,
		0.264342, -0.954390, 0.138795,
		29.292557, 35.705738, 38.740150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665331, 36.216267, 38.212112>,  <29.107519, 36.373810, 38.642994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665331, 36.216267, 38.212112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495642, 35.861958, 38.287418>,  <29.393827, 35.649372, 38.332600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495642, 35.861958, 38.287418>,  <29.665331, 36.216267, 38.212112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495642, 35.861958, 38.287418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048954, -0.185161, -0.981488,
		0.904233, -0.425586, 0.035187,
		-0.424223, -0.885772, 0.188263,
		29.368374, 35.596226, 38.343899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974531, 35.691269, 37.731956>,  <29.665331, 36.216267, 38.212112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974531, 35.691269, 37.731956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634809, 35.543819, 37.883110>,  <29.430977, 35.455349, 37.973804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634809, 35.543819, 37.883110>,  <29.974531, 35.691269, 37.731956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634809, 35.543819, 37.883110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212389, -0.416741, -0.883865,
		0.483292, -0.830931, 0.275650,
		-0.849306, -0.368620, 0.377888,
		29.380018, 35.433235, 37.996475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683773, 35.294010, 37.114788>,  <29.974531, 35.691269, 37.731956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683773, 35.294010, 37.114788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435612, 35.239040, 37.423649>,  <29.286715, 35.206059, 37.608963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435612, 35.239040, 37.423649>,  <29.683773, 35.294010, 37.114788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435612, 35.239040, 37.423649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683324, -0.388494, -0.618176,
		0.384929, -0.911146, 0.147116,
		-0.620402, -0.137426, 0.772150,
		29.249491, 35.197811, 37.655293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422747, 34.631252, 37.066559>,  <29.683773, 35.294010, 37.114788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422747, 34.631252, 37.066559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.142441, 34.801220, 37.295776>,  <28.974258, 34.903202, 37.433308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.142441, 34.801220, 37.295776>,  <29.422747, 34.631252, 37.066559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.142441, 34.801220, 37.295776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711876, -0.364140, -0.600529,
		-0.046509, -0.828762, 0.557665,
		-0.700764, 0.424918, 0.573040,
		28.932211, 34.928696, 37.467690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659752, 34.822460, 36.347744>,  <29.422747, 34.631252, 37.066559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659752, 34.822460, 36.347744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007782, 34.877392, 36.537106>,  <30.216600, 34.910351, 36.650723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007782, 34.877392, 36.537106>,  <29.659752, 34.822460, 36.347744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007782, 34.877392, 36.537106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480121, -0.018685, -0.877003,
		-0.111591, 0.990349, -0.082191,
		0.870075, 0.137327, 0.473403,
		30.268805, 34.918591, 36.679127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094584, 35.314964, 35.940964>,  <29.659752, 34.822460, 36.347744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094584, 35.314964, 35.940964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290342, 35.037540, 36.152424>,  <30.407799, 34.871086, 36.279301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290342, 35.037540, 36.152424>,  <30.094584, 35.314964, 35.940964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290342, 35.037540, 36.152424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647907, -0.116577, -0.752746,
		0.583699, 0.710908, 0.392307,
		0.489399, -0.693556, 0.528648,
		30.437162, 34.829475, 36.311020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.724039, 35.416634, 35.756279>,  <30.094584, 35.314964, 35.940964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.724039, 35.416634, 35.756279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731359, 35.050877, 35.918045>,  <30.735752, 34.831421, 36.015106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731359, 35.050877, 35.918045>,  <30.724039, 35.416634, 35.756279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731359, 35.050877, 35.918045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805943, -0.225887, -0.547202,
		0.591710, 0.335952, 0.732814,
		0.018300, -0.914391, 0.404418,
		30.736849, 34.776558, 36.039371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217838, 35.943718, 36.047607>,  <30.724039, 35.416634, 35.756279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217838, 35.943718, 36.047607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160658, 36.296898, 36.226479>,  <31.126348, 36.508804, 36.333801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160658, 36.296898, 36.226479>,  <31.217838, 35.943718, 36.047607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160658, 36.296898, 36.226479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395549, -0.465134, 0.791954,
		0.907252, -0.063670, 0.415741,
		-0.142952, 0.882948, 0.447178,
		31.117773, 36.561783, 36.360634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785980, 35.805756, 36.591030>,  <31.217838, 35.943718, 36.047607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785980, 35.805756, 36.591030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684273, 35.589516, 36.270256>,  <31.623247, 35.459770, 36.077793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684273, 35.589516, 36.270256>,  <31.785980, 35.805756, 36.591030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684273, 35.589516, 36.270256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783806, 0.370562, -0.498329,
		0.566564, -0.755269, 0.329506,
		-0.254271, -0.540604, -0.801931,
		31.607992, 35.427334, 36.029678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196716, 36.547230, 36.484516>,  <31.785980, 35.805756, 36.591030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196716, 36.547230, 36.484516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246243, 36.921467, 36.352257>,  <32.275959, 37.146011, 36.272900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246243, 36.921467, 36.352257>,  <32.196716, 36.547230, 36.484516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246243, 36.921467, 36.352257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755703, 0.127050, 0.642473,
		0.643105, -0.329418, -0.691303,
		0.123812, 0.935597, -0.330648,
		32.283386, 37.202145, 36.253063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483940, 36.194843, 35.944805>,  <32.196716, 36.547230, 36.484516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483940, 36.194843, 35.944805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814358, 36.119717, 36.157360>,  <33.012608, 36.074642, 36.284893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814358, 36.119717, 36.157360>,  <32.483940, 36.194843, 35.944805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814358, 36.119717, 36.157360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316483, -0.625584, -0.713080,
		0.466357, 0.757212, -0.457320,
		0.826045, -0.187816, 0.531390,
		33.062172, 36.063374, 36.316776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206944, 36.446251, 35.645695>,  <32.483940, 36.194843, 35.944805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206944, 36.446251, 35.645695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233356, 36.109287, 35.859608>,  <33.249203, 35.907108, 35.987957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233356, 36.109287, 35.859608>,  <33.206944, 36.446251, 35.645695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233356, 36.109287, 35.859608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227387, -0.509149, -0.830098,
		0.971563, 0.176413, 0.157934,
		0.066028, -0.842405, 0.534784,
		33.253166, 35.856567, 36.020042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863277, 36.134312, 35.568882>,  <33.206944, 36.446251, 35.645695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863277, 36.134312, 35.568882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587780, 35.845963, 35.599770>,  <33.422482, 35.672951, 35.618301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587780, 35.845963, 35.599770>,  <33.863277, 36.134312, 35.568882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587780, 35.845963, 35.599770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207544, -0.298098, -0.931699,
		0.694660, -0.625678, 0.354928,
		-0.688747, -0.720878, 0.077221,
		33.381157, 35.629700, 35.622936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123619, 35.617668, 35.411102>,  <33.863277, 36.134312, 35.568882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123619, 35.617668, 35.411102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736431, 35.557663, 35.330574>,  <33.504120, 35.521660, 35.282257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736431, 35.557663, 35.330574>,  <34.123619, 35.617668, 35.411102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736431, 35.557663, 35.330574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242638, -0.352995, -0.903616,
		0.064487, -0.923521, 0.378087,
		-0.967971, -0.150010, -0.201318,
		33.446041, 35.512661, 35.270180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863663, 34.964516, 35.272972>,  <34.123619, 35.617668, 35.411102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863663, 34.964516, 35.272972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632973, 35.202904, 35.049469>,  <33.494560, 35.345936, 34.915367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632973, 35.202904, 35.049469>,  <33.863663, 34.964516, 35.272972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632973, 35.202904, 35.049469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366552, -0.422476, -0.828947,
		-0.730088, -0.682889, 0.025199,
		-0.576725, 0.595967, -0.558759,
		33.459957, 35.381695, 34.881840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310772, 35.099163, 35.877766>,  <33.863663, 34.964516, 35.272972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310772, 35.099163, 35.877766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338177, 34.895031, 36.220665>,  <34.354618, 34.772552, 36.426403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338177, 34.895031, 36.220665>,  <34.310772, 35.099163, 35.877766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338177, 34.895031, 36.220665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739558, 0.550738, 0.386963,
		-0.669597, -0.660496, -0.339684,
		0.068511, -0.510326, 0.857248,
		34.358730, 34.741932, 36.477840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676151, 34.891335, 35.955116>,  <34.310772, 35.099163, 35.877766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676151, 34.891335, 35.955116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870121, 34.929333, 36.302868>,  <33.986504, 34.952133, 36.511520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870121, 34.929333, 36.302868>,  <33.676151, 34.891335, 35.955116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870121, 34.929333, 36.302868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652244, 0.701511, 0.287157,
		-0.582603, -0.706299, 0.402139,
		0.484924, 0.094995, 0.869382,
		34.015598, 34.957832, 36.563683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166832, 35.064640, 36.431095>,  <33.676151, 34.891335, 35.955116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166832, 35.064640, 36.431095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493759, 35.194031, 36.621826>,  <33.689915, 35.271664, 36.736263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493759, 35.194031, 36.621826>,  <33.166832, 35.064640, 36.431095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493759, 35.194031, 36.621826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521697, 0.766752, 0.374063,
		-0.244604, -0.554484, 0.795435,
		0.817313, 0.323478, 0.476823,
		33.738953, 35.291073, 36.764874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911301, 35.209225, 37.087193>,  <33.166832, 35.064640, 36.431095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911301, 35.209225, 37.087193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255058, 35.410583, 37.051346>,  <33.461311, 35.531399, 37.029839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255058, 35.410583, 37.051346>,  <32.911301, 35.209225, 37.087193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255058, 35.410583, 37.051346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464040, 0.841470, 0.276756,
		0.214727, -0.196258, 0.956752,
		0.859394, 0.503399, -0.089615,
		33.512878, 35.561604, 37.024460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010197, 35.707584, 37.650620>,  <32.911301, 35.209225, 37.087193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010197, 35.707584, 37.650620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254803, 35.848141, 37.367050>,  <33.401566, 35.932472, 37.196907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254803, 35.848141, 37.367050>,  <33.010197, 35.707584, 37.650620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254803, 35.848141, 37.367050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347690, 0.924173, 0.158164,
		0.710747, 0.149766, 0.687320,
		0.611515, 0.351388, -0.708926,
		33.438255, 35.953556, 37.154373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619858, 36.262314, 37.438602>,  <33.010197, 35.707584, 37.650620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619858, 36.262314, 37.438602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227200, 36.208630, 37.492809>,  <31.991606, 36.176418, 37.525333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227200, 36.208630, 37.492809>,  <32.619858, 36.262314, 37.438602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227200, 36.208630, 37.492809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154967, 0.975447, -0.156489,
		-0.111183, -0.174616, -0.978339,
		-0.981643, -0.134211, 0.135513,
		31.932707, 36.168365, 37.533463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655025, 37.031757, 37.279400>,  <32.619858, 36.262314, 37.438602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655025, 37.031757, 37.279400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028934, 37.163422, 37.225960>,  <33.253281, 37.242420, 37.193893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028934, 37.163422, 37.225960>,  <32.655025, 37.031757, 37.279400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028934, 37.163422, 37.225960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300381, -0.933167, -0.197412,
		-0.189656, 0.144403, -0.971174,
		0.934774, 0.329162, -0.133604,
		33.309368, 37.262169, 37.185879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152561, 36.877220, 36.602001>,  <32.655025, 37.031757, 37.279400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152561, 36.877220, 36.602001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409500, 36.925781, 36.904697>,  <33.563663, 36.954918, 37.086315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409500, 36.925781, 36.904697>,  <33.152561, 36.877220, 36.602001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409500, 36.925781, 36.904697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235373, -0.970907, -0.044026,
		0.729379, 0.206396, -0.652233,
		0.642344, 0.121407, 0.756739,
		33.602203, 36.962204, 37.131718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675991, 36.641022, 36.239868>,  <33.152561, 36.877220, 36.602001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675991, 36.641022, 36.239868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699520, 36.616516, 36.638424>,  <33.713638, 36.601814, 36.877556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699520, 36.616516, 36.638424>,  <33.675991, 36.641022, 36.239868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699520, 36.616516, 36.638424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439349, -0.894663, -0.080944,
		0.896389, 0.442523, -0.025714,
		0.058825, -0.061260, 0.996387,
		33.717167, 36.598137, 36.937340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323776, 36.516823, 36.492340>,  <33.675991, 36.641022, 36.239868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323776, 36.516823, 36.492340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055134, 36.346069, 36.734566>,  <33.893948, 36.243618, 36.879902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055134, 36.346069, 36.734566>,  <34.323776, 36.516823, 36.492340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055134, 36.346069, 36.734566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498338, -0.865097, -0.057154,
		0.548274, 0.263393, 0.793738,
		-0.671606, -0.426886, 0.605569,
		33.853653, 36.218002, 36.916237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719810, 36.103172, 36.931370>,  <34.323776, 36.516823, 36.492340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719810, 36.103172, 36.931370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357067, 35.940285, 36.974781>,  <34.139420, 35.842552, 37.000828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357067, 35.940285, 36.974781>,  <34.719810, 36.103172, 36.931370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357067, 35.940285, 36.974781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397924, -0.912203, -0.097690,
		0.138785, -0.045403, 0.989281,
		-0.906860, -0.407216, 0.108533,
		34.085011, 35.818119, 37.007339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713654, 35.679306, 37.480545>,  <34.719810, 36.103172, 36.931370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713654, 35.679306, 37.480545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417606, 35.542408, 37.248993>,  <34.239979, 35.460270, 37.110062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417606, 35.542408, 37.248993>,  <34.713654, 35.679306, 37.480545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417606, 35.542408, 37.248993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485171, -0.867819, -0.107238,
		-0.465660, -0.360223, 0.808332,
		-0.740115, -0.342243, -0.578878,
		34.195572, 35.439735, 37.075329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470325, 35.006008, 37.761597>,  <34.713654, 35.679306, 37.480545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470325, 35.006008, 37.761597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384686, 35.036552, 37.372066>,  <34.333302, 35.054878, 37.138348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384686, 35.036552, 37.372066>,  <34.470325, 35.006008, 37.761597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384686, 35.036552, 37.372066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396654, -0.904249, -0.158111,
		-0.892652, -0.420122, 0.163310,
		-0.214099, 0.076361, -0.973823,
		34.320457, 35.059460, 37.079918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446335, 34.275246, 37.663155>,  <34.470325, 35.006008, 37.761597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446335, 34.275246, 37.663155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466938, 34.446953, 37.302471>,  <34.479301, 34.549976, 37.086063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466938, 34.446953, 37.302471>,  <34.446335, 34.275246, 37.663155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466938, 34.446953, 37.302471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577324, -0.749545, -0.323851,
		-0.814889, -0.503895, -0.286437,
		0.051511, 0.429269, -0.901706,
		34.482391, 34.575733, 37.031960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273880, 33.708633, 37.230320>,  <34.446335, 34.275246, 37.663155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273880, 33.708633, 37.230320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478207, 33.981194, 37.020649>,  <34.600803, 34.144730, 36.894848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478207, 33.981194, 37.020649>,  <34.273880, 33.708633, 37.230320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478207, 33.981194, 37.020649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487456, -0.731806, -0.476284,
		-0.708135, -0.012218, -0.705972,
		0.510815, 0.681404, -0.524173,
		34.631451, 34.185616, 36.863396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276253, 33.589672, 36.437946>,  <34.273880, 33.708633, 37.230320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276253, 33.589672, 36.437946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603970, 33.804726, 36.517654>,  <34.800602, 33.933758, 36.565479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603970, 33.804726, 36.517654>,  <34.276253, 33.589672, 36.437946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603970, 33.804726, 36.517654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550345, -0.639869, -0.536365,
		-0.160863, 0.549106, -0.820125,
		0.819294, 0.537634, 0.199267,
		34.849758, 33.966015, 36.577435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653999, 33.503304, 35.878551>,  <34.276253, 33.589672, 36.437946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653999, 33.503304, 35.878551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944595, 33.631420, 36.121738>,  <35.118954, 33.708290, 36.267651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944595, 33.631420, 36.121738>,  <34.653999, 33.503304, 35.878551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944595, 33.631420, 36.121738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625104, -0.675483, -0.391112,
		0.285405, 0.664183, -0.690945,
		0.726491, 0.320287, 0.607969,
		35.162544, 33.727505, 36.304131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230247, 33.645180, 35.437912>,  <34.653999, 33.503304, 35.878551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230247, 33.645180, 35.437912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390068, 33.610073, 35.802914>,  <35.485962, 33.589008, 36.021915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390068, 33.610073, 35.802914>,  <35.230247, 33.645180, 35.437912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390068, 33.610073, 35.802914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781391, -0.487907, -0.389070,
		0.479361, 0.868473, -0.126365,
		0.399551, -0.087764, 0.912500,
		35.509933, 33.583744, 36.076664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924744, 33.955585, 35.441235>,  <35.230247, 33.645180, 35.437912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924744, 33.955585, 35.441235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897186, 33.691204, 35.740135>,  <35.880653, 33.532574, 35.919476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897186, 33.691204, 35.740135>,  <35.924744, 33.955585, 35.441235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897186, 33.691204, 35.740135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831558, -0.451859, -0.323009,
		0.551148, 0.599134, 0.580753,
		-0.068892, -0.660956, 0.747256,
		35.876518, 33.492916, 35.964314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559319, 33.958504, 35.558529>,  <35.924744, 33.955585, 35.441235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559319, 33.958504, 35.558529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407803, 33.621616, 35.711987>,  <36.316895, 33.419483, 35.804062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407803, 33.621616, 35.711987>,  <36.559319, 33.958504, 35.558529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407803, 33.621616, 35.711987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780591, -0.513440, -0.356451,
		0.497189, 0.164450, 0.851915,
		-0.378789, -0.842220, 0.383645,
		36.294167, 33.368950, 35.827080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111115, 33.682564, 35.989483>,  <36.559319, 33.958504, 35.558529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111115, 33.682564, 35.989483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.874542, 33.364964, 35.933228>,  <36.732597, 33.174404, 35.899475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.874542, 33.364964, 35.933228>,  <37.111115, 33.682564, 35.989483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874542, 33.364964, 35.933228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789227, -0.534237, -0.302838,
		0.165317, -0.290105, 0.942608,
		-0.591431, -0.793996, -0.140640,
		36.697113, 33.126766, 35.891037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521690, 33.089287, 36.219376>,  <37.111115, 33.682564, 35.989483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521690, 33.089287, 36.219376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229710, 32.937080, 35.992264>,  <37.054520, 32.845757, 35.855995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229710, 32.937080, 35.992264>,  <37.521690, 33.089287, 36.219376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229710, 32.937080, 35.992264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650011, -0.643292, -0.404551,
		-0.211310, -0.664367, 0.716913,
		-0.729955, -0.380516, -0.567780,
		37.010723, 32.822926, 35.821930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517673, 32.329468, 36.174332>,  <37.521690, 33.089287, 36.219376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517673, 32.329468, 36.174332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338898, 32.420639, 35.828316>,  <37.231632, 32.475342, 35.620705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338898, 32.420639, 35.828316>,  <37.517673, 32.329468, 36.174332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338898, 32.420639, 35.828316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704516, -0.506227, -0.497385,
		-0.551276, -0.831735, 0.065671,
		-0.446936, 0.227930, -0.865041,
		37.204815, 32.489017, 35.568802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363880, 31.570621, 35.846462>,  <37.517673, 32.329468, 36.174332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363880, 31.570621, 35.846462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362720, 31.862862, 35.573345>,  <37.362026, 32.038208, 35.409473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362720, 31.862862, 35.573345>,  <37.363880, 31.570621, 35.846462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362720, 31.862862, 35.573345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801422, -0.406683, -0.438557,
		-0.598092, -0.548479, -0.584343,
		-0.002897, 0.730603, -0.682797,
		37.361851, 32.082043, 35.368507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369457, 31.169090, 35.233818>,  <37.363880, 31.570621, 35.846462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369457, 31.169090, 35.233818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503189, 31.531359, 35.129520>,  <37.583427, 31.748720, 35.066944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503189, 31.531359, 35.129520>,  <37.369457, 31.169090, 35.233818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503189, 31.531359, 35.129520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599105, -0.417800, -0.683020,
		-0.727528, 0.072143, -0.682274,
		0.334329, 0.905670, -0.260740,
		37.603489, 31.803061, 35.051300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219414, 31.122953, 34.574486>,  <37.369457, 31.169090, 35.233818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219414, 31.122953, 34.574486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485184, 31.416912, 34.628841>,  <37.644646, 31.593288, 34.661453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485184, 31.416912, 34.628841>,  <37.219414, 31.122953, 34.574486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485184, 31.416912, 34.628841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553722, -0.361961, -0.749918,
		-0.501928, 0.573506, -0.647425,
		0.664425, 0.734898, 0.135885,
		37.684509, 31.637383, 34.669605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310234, 31.397312, 33.928238>,  <37.219414, 31.122953, 34.574486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310234, 31.397312, 33.928238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647152, 31.503401, 34.115936>,  <37.849304, 31.567055, 34.228554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647152, 31.503401, 34.115936>,  <37.310234, 31.397312, 33.928238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647152, 31.503401, 34.115936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537877, -0.357096, -0.763656,
		-0.034973, 0.895622, -0.443438,
		0.842297, 0.265223, 0.469246,
		37.899841, 31.582968, 34.256710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612175, 31.922552, 33.516239>,  <37.310234, 31.397312, 33.928238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612175, 31.922552, 33.516239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922939, 31.773323, 33.719112>,  <38.109398, 31.683784, 33.840836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922939, 31.773323, 33.719112>,  <37.612175, 31.922552, 33.516239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922939, 31.773323, 33.719112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444389, -0.245722, -0.861475,
		0.446019, 0.894671, -0.025113,
		0.776908, -0.373074, 0.507178,
		38.156013, 31.661402, 33.871265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384926, 32.254204, 33.386169>,  <37.612175, 31.922552, 33.516239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384926, 32.254204, 33.386169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382523, 31.862478, 33.467072>,  <38.381081, 31.627443, 33.515614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382523, 31.862478, 33.467072>,  <38.384926, 32.254204, 33.386169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382523, 31.862478, 33.467072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573498, -0.169068, -0.801571,
		0.819185, 0.111181, 0.562650,
		-0.006007, -0.979314, 0.202260,
		38.380722, 31.568684, 33.527748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216038, 31.992811, 32.730251>,  <38.384926, 32.254204, 33.386169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216038, 31.992811, 32.730251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427708, 31.752901, 32.970333>,  <38.554710, 31.608955, 33.114380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427708, 31.752901, 32.970333>,  <38.216038, 31.992811, 32.730251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427708, 31.752901, 32.970333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517003, -0.332977, -0.788564,
		0.672816, 0.727595, 0.133883,
		0.529175, -0.599777, 0.600201,
		38.586460, 31.572968, 33.150394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990273, 32.123619, 32.644249>,  <38.216038, 31.992811, 32.730251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990273, 32.123619, 32.644249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944149, 31.753557, 32.788914>,  <38.916477, 31.531521, 32.875713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944149, 31.753557, 32.788914>,  <38.990273, 32.123619, 32.644249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944149, 31.753557, 32.788914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557119, -0.361669, -0.747539,
		0.822389, 0.115294, 0.557121,
		-0.115307, -0.925150, 0.361665,
		38.909557, 31.476011, 32.897415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543621, 31.818478, 32.509762>,  <38.990273, 32.123619, 32.644249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543621, 31.818478, 32.509762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306965, 31.502602, 32.574692>,  <39.164970, 31.313076, 32.613647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306965, 31.502602, 32.574692>,  <39.543621, 31.818478, 32.509762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306965, 31.502602, 32.574692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326999, -0.419093, -0.847014,
		0.736907, -0.448049, 0.506181,
		-0.591641, -0.789692, 0.162321,
		39.129471, 31.265694, 32.623386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872406, 31.371655, 32.185036>,  <39.543621, 31.818478, 32.509762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872406, 31.371655, 32.185036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523064, 31.180021, 32.220196>,  <39.313457, 31.065041, 32.241291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523064, 31.180021, 32.220196>,  <39.872406, 31.371655, 32.185036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523064, 31.180021, 32.220196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151594, -0.438854, -0.885679,
		0.462891, -0.760188, 0.455902,
		-0.873356, -0.479085, 0.087901,
		39.261055, 31.036297, 32.246567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963123, 30.599493, 32.085049>,  <39.872406, 31.371655, 32.185036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963123, 30.599493, 32.085049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582188, 30.700525, 32.016624>,  <39.353626, 30.761145, 31.975571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582188, 30.700525, 32.016624>,  <39.963123, 30.599493, 32.085049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582188, 30.700525, 32.016624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030630, -0.478740, -0.877422,
		-0.303513, -0.840839, 0.448184,
		-0.952335, 0.252581, -0.171059,
		39.296486, 30.776300, 31.965307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687595, 29.888971, 31.766088>,  <39.963123, 30.599493, 32.085049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687595, 29.888971, 31.766088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439678, 30.188118, 31.670963>,  <39.290928, 30.367605, 31.613888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439678, 30.188118, 31.670963>,  <39.687595, 29.888971, 31.766088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439678, 30.188118, 31.670963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030588, -0.279785, -0.959575,
		-0.784170, -0.602012, 0.150533,
		-0.619792, 0.747865, -0.237813,
		39.253742, 30.412477, 31.599619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140312, 29.571054, 31.300497>,  <39.687595, 29.888971, 31.766088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140312, 29.571054, 31.300497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.141045, 29.968273, 31.253414>,  <39.141483, 30.206604, 31.225164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.141045, 29.968273, 31.253414>,  <39.140312, 29.571054, 31.300497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141045, 29.968273, 31.253414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036180, -0.117565, -0.992406,
		-0.999344, 0.006076, 0.035713,
		0.001831, 0.993046, -0.117707,
		39.141594, 30.266188, 31.218102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582554, 29.703182, 30.797895>,  <39.140312, 29.571054, 31.300497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582554, 29.703182, 30.797895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818310, 30.024446, 30.763134>,  <38.959763, 30.217205, 30.742277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818310, 30.024446, 30.763134>,  <38.582554, 29.703182, 30.797895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818310, 30.024446, 30.763134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075682, -0.052205, -0.995765,
		-0.804293, 0.593474, 0.030016,
		0.589393, 0.803158, -0.086903,
		38.995129, 30.265394, 30.737062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350273, 30.055588, 30.127855>,  <38.582554, 29.703182, 30.797895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350273, 30.055588, 30.127855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692875, 30.245369, 30.209139>,  <38.898438, 30.359238, 30.257908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692875, 30.245369, 30.209139>,  <38.350273, 30.055588, 30.127855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692875, 30.245369, 30.209139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193458, 0.069899, -0.978615,
		-0.478509, 0.877502, -0.031918,
		0.856506, 0.474451, 0.203207,
		38.949825, 30.387705, 30.270102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330700, 30.680696, 29.729498>,  <38.350273, 30.055588, 30.127855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330700, 30.680696, 29.729498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708023, 30.595345, 29.831202>,  <38.934418, 30.544134, 29.892223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708023, 30.595345, 29.831202>,  <38.330700, 30.680696, 29.729498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708023, 30.595345, 29.831202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254880, -0.025062, -0.966648,
		0.212634, 0.976648, 0.030745,
		0.943304, -0.213378, 0.254258,
		38.991013, 30.531330, 29.907478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690434, 31.221029, 29.413872>,  <38.330700, 30.680696, 29.729498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690434, 31.221029, 29.413872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977192, 30.948994, 29.475241>,  <39.149246, 30.785772, 29.512062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977192, 30.948994, 29.475241>,  <38.690434, 31.221029, 29.413872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977192, 30.948994, 29.475241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271847, 0.070038, -0.959788,
		0.641996, 0.729776, 0.235090,
		0.716896, -0.680089, 0.153423,
		39.192261, 30.744967, 29.521267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088341, 31.362432, 28.867645>,  <38.690434, 31.221029, 29.413872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088341, 31.362432, 28.867645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230755, 31.003572, 28.972229>,  <39.316204, 30.788256, 29.034979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230755, 31.003572, 28.972229>,  <39.088341, 31.362432, 28.867645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230755, 31.003572, 28.972229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485801, -0.061313, -0.871916,
		0.798270, 0.437451, 0.414006,
		0.356037, -0.897149, 0.261459,
		39.337566, 30.734428, 29.050667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802128, 31.323013, 28.761959>,  <39.088341, 31.362432, 28.867645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802128, 31.323013, 28.761959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702526, 30.935890, 28.776630>,  <39.642765, 30.703615, 28.785433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702526, 30.935890, 28.776630>,  <39.802128, 31.323013, 28.761959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702526, 30.935890, 28.776630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579113, -0.179139, -0.795322,
		0.776291, -0.176793, 0.605076,
		-0.249000, -0.967809, 0.036680,
		39.627827, 30.645548, 28.787634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431286, 30.932110, 28.723993>,  <39.802128, 31.323013, 28.761959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431286, 30.932110, 28.723993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139473, 30.680096, 28.617533>,  <39.964386, 30.528887, 28.553656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139473, 30.680096, 28.617533>,  <40.431286, 30.932110, 28.723993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139473, 30.680096, 28.617533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443934, -0.140169, -0.885029,
		0.520291, -0.763813, 0.381951,
		-0.729534, -0.630034, -0.266153,
		39.920612, 30.491085, 28.537687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768669, 30.225687, 28.484070>,  <40.431286, 30.932110, 28.723993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768669, 30.225687, 28.484070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412292, 30.284246, 28.312117>,  <40.198467, 30.319382, 28.208944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412292, 30.284246, 28.312117>,  <40.768669, 30.225687, 28.484070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412292, 30.284246, 28.312117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389958, -0.238486, -0.889414,
		-0.232688, -0.960055, 0.155406,
		-0.890948, 0.146354, -0.429874,
		40.145012, 30.328167, 28.183151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860188, 29.703623, 27.992584>,  <40.768669, 30.225687, 28.484070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860188, 29.703623, 27.992584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569023, 29.963648, 27.905348>,  <40.394325, 30.119663, 27.853006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569023, 29.963648, 27.905348>,  <40.860188, 29.703623, 27.992584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569023, 29.963648, 27.905348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273414, -0.016506, -0.961755,
		-0.628799, -0.759703, -0.165721,
		-0.727912, 0.650061, -0.218093,
		40.350651, 30.158667, 27.839920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506912, 29.403915, 27.361130>,  <40.860188, 29.703623, 27.992584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506912, 29.403915, 27.361130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411453, 29.791281, 27.390041>,  <40.354176, 30.023699, 27.407389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411453, 29.791281, 27.390041>,  <40.506912, 29.403915, 27.361130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411453, 29.791281, 27.390041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423963, 0.170863, -0.889416,
		-0.873671, -0.181617, -0.451347,
		-0.238652, 0.968412, 0.072279,
		40.339859, 30.081804, 27.411726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221249, 29.645685, 26.734028>,  <40.506912, 29.403915, 27.361130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221249, 29.645685, 26.734028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327602, 29.992613, 26.902344>,  <40.391415, 30.200769, 27.003334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327602, 29.992613, 26.902344>,  <40.221249, 29.645685, 26.734028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327602, 29.992613, 26.902344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351121, 0.319388, -0.880174,
		-0.897786, 0.381773, -0.219613,
		0.265885, 0.867318, 0.420790,
		40.407368, 30.252808, 27.028582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053154, 30.050957, 26.210449>,  <40.221249, 29.645685, 26.734028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053154, 30.050957, 26.210449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303226, 30.272669, 26.430241>,  <40.453270, 30.405695, 26.562117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303226, 30.272669, 26.430241>,  <40.053154, 30.050957, 26.210449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303226, 30.272669, 26.430241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292950, 0.485904, -0.823455,
		-0.723418, 0.675775, 0.141400,
		0.625178, 0.554279, 0.549480,
		40.490780, 30.438953, 26.595085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180073, 30.595940, 25.746836>,  <40.053154, 30.050957, 26.210449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180073, 30.595940, 25.746836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487350, 30.644754, 25.998224>,  <40.671719, 30.674044, 26.149057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487350, 30.644754, 25.998224>,  <40.180073, 30.595940, 25.746836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487350, 30.644754, 25.998224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524567, 0.442780, -0.727169,
		-0.367017, 0.888287, 0.276126,
		0.768198, 0.122037, 0.628474,
		40.717812, 30.681366, 26.186766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396725, 31.253712, 25.612980>,  <40.180073, 30.595940, 25.746836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396725, 31.253712, 25.612980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696720, 31.059568, 25.792736>,  <40.876717, 30.943083, 25.900589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696720, 31.059568, 25.792736>,  <40.396725, 31.253712, 25.612980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696720, 31.059568, 25.792736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638396, 0.353316, -0.683826,
		0.173124, 0.799748, 0.574832,
		0.749985, -0.485357, 0.449389,
		40.921715, 30.913961, 25.927553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896976, 31.803871, 25.774960>,  <40.396725, 31.253712, 25.612980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896976, 31.803871, 25.774960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076271, 31.446318, 25.772028>,  <41.183849, 31.231785, 25.770269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076271, 31.446318, 25.772028>,  <40.896976, 31.803871, 25.774960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076271, 31.446318, 25.772028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797597, 0.403632, -0.448240,
		0.403632, 0.195074, 0.893883,
		0.448240, -0.893883, -0.007328,
		41.210743, 31.178152, 25.769829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581829, 31.928608, 25.982403>,  <40.896976, 31.803871, 25.774960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581829, 31.928608, 25.982403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619858, 31.572893, 25.803459>,  <41.642673, 31.359465, 25.696093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619858, 31.572893, 25.803459>,  <41.581829, 31.928608, 25.982403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.619858, 31.572893, 25.803459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881216, 0.284221, -0.377727,
		0.463057, -0.358311, 0.810674,
		0.095067, -0.889287, -0.447359,
		41.648376, 31.306107, 25.669250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.339245, 31.692965, 26.070126>,  <41.581829, 31.928608, 25.982403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.339245, 31.692965, 26.070126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.187634, 31.496576, 25.756365>,  <42.096668, 31.378744, 25.568110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.187634, 31.496576, 25.756365>,  <42.339245, 31.692965, 26.070126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.187634, 31.496576, 25.756365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744604, 0.341489, -0.573542,
		0.549457, -0.801457, 0.236145,
		-0.379028, -0.490971, -0.784401,
		42.073925, 31.349285, 25.521044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.823658, 31.308275, 25.771179>,  <42.339245, 31.692965, 26.070126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.823658, 31.308275, 25.771179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.565083, 31.399492, 25.479942>,  <42.409939, 31.454222, 25.305201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.565083, 31.399492, 25.479942>,  <42.823658, 31.308275, 25.771179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.565083, 31.399492, 25.479942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751256, 0.356816, -0.555244,
		0.133177, -0.905914, -0.401976,
		-0.646435, 0.228041, -0.728093,
		42.371151, 31.467905, 25.261515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.232830, 31.073021, 25.177359>,  <42.823658, 31.308275, 25.771179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.232830, 31.073021, 25.177359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.917252, 31.262892, 25.021286>,  <42.727905, 31.376814, 24.927643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.917252, 31.262892, 25.021286>,  <43.232830, 31.073021, 25.177359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.917252, 31.262892, 25.021286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549417, 0.260621, -0.793862,
		-0.275139, -0.840689, -0.466413,
		-0.788948, 0.474678, -0.390182,
		42.680569, 31.405294, 24.904232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230328, 30.875900, 24.600283>,  <43.232830, 31.073021, 25.177359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.230328, 30.875900, 24.600283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.009533, 31.208612, 24.576797>,  <42.877056, 31.408239, 24.562706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.009533, 31.208612, 24.576797>,  <43.230328, 30.875900, 24.600283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.009533, 31.208612, 24.576797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465387, 0.248885, -0.849395,
		-0.691899, -0.496180, -0.524482,
		-0.551988, 0.831783, -0.058712,
		42.843937, 31.458147, 24.559183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.835594, 30.937613, 23.983828>,  <43.230328, 30.875900, 24.600283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.835594, 30.937613, 23.983828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.958202, 31.301056, 24.097298>,  <43.031769, 31.519123, 24.165380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.958202, 31.301056, 24.097298>,  <42.835594, 30.937613, 23.983828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.958202, 31.301056, 24.097298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432273, 0.132641, -0.891934,
		-0.848047, 0.396022, -0.352111,
		0.306522, 0.908610, 0.283675,
		43.050159, 31.573639, 24.182400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554314, 31.469965, 23.435181>,  <42.835594, 30.937613, 23.983828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554314, 31.469965, 23.435181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.837498, 31.645643, 23.656414>,  <43.007408, 31.751051, 23.789154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.837498, 31.645643, 23.656414>,  <42.554314, 31.469965, 23.435181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.837498, 31.645643, 23.656414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280804, 0.543521, -0.791034,
		-0.648033, 0.715326, 0.261461,
		0.707956, 0.439197, 0.553086,
		43.049885, 31.777403, 23.822340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351402, 32.206341, 23.569023>,  <42.554314, 31.469965, 23.435181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.351402, 32.206341, 23.569023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.735538, 32.102104, 23.529345>,  <42.966019, 32.039562, 23.505537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.735538, 32.102104, 23.529345>,  <42.351402, 32.206341, 23.569023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.735538, 32.102104, 23.529345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035813, 0.468089, -0.882955,
		0.276522, 0.844385, 0.458857,
		0.960340, -0.260590, -0.099197,
		43.023640, 32.023926, 23.499586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.931515, 32.489243, 23.181490>,  <42.351402, 32.206341, 23.569023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.931515, 32.489243, 23.181490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.045158, 32.822960, 22.992500>,  <43.113346, 33.023190, 22.879107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.045158, 32.822960, 22.992500>,  <42.931515, 32.489243, 23.181490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.045158, 32.822960, 22.992500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245748, -0.539684, -0.805201,
		-0.926762, 0.112657, -0.358357,
		0.284112, 0.834296, -0.472473,
		43.130390, 33.073250, 22.850758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.569813, 32.525204, 22.535704>,  <42.931515, 32.489243, 23.181490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.569813, 32.525204, 22.535704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891094, 32.761036, 22.501614>,  <43.083862, 32.902534, 22.481159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891094, 32.761036, 22.501614>,  <42.569813, 32.525204, 22.535704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891094, 32.761036, 22.501614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314439, -0.541114, -0.779951,
		-0.505959, 0.599660, -0.620010,
		0.803202, 0.589579, -0.085225,
		43.132053, 32.937908, 22.476046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726734, 32.435448, 21.878193>,  <42.569813, 32.525204, 22.535704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.726734, 32.435448, 21.878193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055325, 32.586376, 22.049215>,  <43.252480, 32.676933, 22.151829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055325, 32.586376, 22.049215>,  <42.726734, 32.435448, 21.878193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.055325, 32.586376, 22.049215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570237, -0.543117, -0.616322,
		-0.000337, 0.750104, -0.661320,
		0.821480, 0.377317, 0.427554,
		43.301769, 32.699570, 22.177481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.339123, 32.101139, 22.152987>,  <42.726734, 32.435448, 21.878193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.339123, 32.101139, 22.152987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.590832, 32.276020, 21.895967>,  <43.741859, 32.380947, 21.741756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.590832, 32.276020, 21.895967>,  <43.339123, 32.101139, 22.152987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.590832, 32.276020, 21.895967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245759, 0.896282, 0.369162,
		0.737302, -0.074393, 0.671454,
		0.629275, 0.437200, -0.642549,
		43.779613, 32.407181, 21.703203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.925705, 32.474258, 22.512672>,  <43.339123, 32.101139, 22.152987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.925705, 32.474258, 22.512672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.796162, 32.611858, 22.160131>,  <43.718433, 32.694416, 21.948606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.796162, 32.611858, 22.160131>,  <43.925705, 32.474258, 22.512672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.796162, 32.611858, 22.160131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428551, 0.777174, 0.460810,
		0.843479, 0.526943, -0.104278,
		-0.323862, 0.343995, -0.881352,
		43.699001, 32.715057, 21.895725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.284725, 33.063515, 22.441801>,  <43.925705, 32.474258, 22.512672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.284725, 33.063515, 22.441801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.926380, 33.060883, 22.264091>,  <43.711372, 33.059303, 22.157465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.926380, 33.060883, 22.264091>,  <44.284725, 33.063515, 22.441801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.926380, 33.060883, 22.264091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322428, 0.697611, 0.639827,
		0.305719, 0.716447, -0.627089,
		-0.895866, -0.006584, -0.444275,
		43.657619, 33.058907, 22.130810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.115520, 33.780029, 22.405893>,  <44.284725, 33.063515, 22.441801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.115520, 33.780029, 22.405893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.795101, 33.541080, 22.390516>,  <43.602852, 33.397713, 22.381290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.795101, 33.541080, 22.390516>,  <44.115520, 33.780029, 22.405893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.795101, 33.541080, 22.390516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484520, 0.609327, 0.627663,
		-0.351522, 0.521412, -0.777536,
		-0.801045, -0.597369, -0.038443,
		43.554787, 33.361870, 22.378983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.485367, 34.209576, 22.325798>,  <44.115520, 33.780029, 22.405893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.485367, 34.209576, 22.325798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.357712, 33.855839, 22.462090>,  <43.281116, 33.643597, 22.543865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.357712, 33.855839, 22.462090>,  <43.485367, 34.209576, 22.325798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.357712, 33.855839, 22.462090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694145, 0.462899, 0.551259,
		-0.645223, -0.060587, -0.761589,
		-0.319140, -0.884338, 0.340729,
		43.261971, 33.590538, 22.564308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.748234, 34.066628, 22.199211>,  <43.485367, 34.209576, 22.325798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.748234, 34.066628, 22.199211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.841694, 33.822350, 22.501854>,  <42.897770, 33.675781, 22.683439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.841694, 33.822350, 22.501854>,  <42.748234, 34.066628, 22.199211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.841694, 33.822350, 22.501854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765675, 0.364048, 0.530293,
		-0.599291, -0.703218, -0.382537,
		0.233650, -0.610700, 0.756607,
		42.911789, 33.639141, 22.728836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.071346, 33.990166, 22.491480>,  <42.748234, 34.066628, 22.199211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.071346, 33.990166, 22.491480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.350670, 33.910686, 22.766548>,  <42.518265, 33.862999, 22.931589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.350670, 33.910686, 22.766548>,  <42.071346, 33.990166, 22.491480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350670, 33.910686, 22.766548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579617, 0.406755, 0.706112,
		-0.420018, -0.891666, 0.168868,
		0.698304, -0.198701, 0.687669,
		42.560162, 33.851078, 22.972849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784187, 33.759361, 23.179392>,  <42.071346, 33.990166, 22.491480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784187, 33.759361, 23.179392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145134, 33.894356, 23.286600>,  <42.361702, 33.975353, 23.350925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145134, 33.894356, 23.286600>,  <41.784187, 33.759361, 23.179392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.145134, 33.894356, 23.286600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407099, 0.463409, 0.787098,
		0.141433, -0.819362, 0.555556,
		0.902368, 0.337488, 0.268020,
		42.415844, 33.995602, 23.367006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.748032, 33.711113, 23.955294>,  <41.784187, 33.759361, 23.179392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.748032, 33.711113, 23.955294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058178, 33.950253, 23.873913>,  <42.244267, 34.093735, 23.825085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058178, 33.950253, 23.873913>,  <41.748032, 33.711113, 23.955294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058178, 33.950253, 23.873913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157264, 0.494808, 0.854654,
		0.611621, -0.630671, 0.477675,
		0.775363, 0.597845, -0.203453,
		42.290787, 34.129604, 23.812878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283073, 33.639778, 24.464712>,  <41.748032, 33.711113, 23.955294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.283073, 33.639778, 24.464712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.381199, 33.998444, 24.317295>,  <42.440075, 34.213642, 24.228846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.381199, 33.998444, 24.317295>,  <42.283073, 33.639778, 24.464712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.381199, 33.998444, 24.317295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113894, 0.404181, 0.907560,
		0.962730, -0.180662, 0.201275,
		0.245314, 0.896660, -0.368541,
		42.454792, 34.267441, 24.206734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.880592, 33.902641, 24.817913>,  <42.283073, 33.639778, 24.464712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.880592, 33.902641, 24.817913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.683681, 34.210407, 24.655104>,  <42.565536, 34.395065, 24.557419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.683681, 34.210407, 24.655104>,  <42.880592, 33.902641, 24.817913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.683681, 34.210407, 24.655104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075421, 0.428143, 0.900558,
		0.867166, 0.474021, -0.152734,
		-0.492275, 0.769414, -0.407022,
		42.535999, 34.441231, 24.532997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.103848, 34.482422, 25.199236>,  <42.880592, 33.902641, 24.817913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.103848, 34.482422, 25.199236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785587, 34.638367, 25.013783>,  <42.594631, 34.731934, 24.902510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785587, 34.638367, 25.013783>,  <43.103848, 34.482422, 25.199236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785587, 34.638367, 25.013783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118208, 0.650737, 0.750045,
		0.594115, 0.651577, -0.471673,
		-0.795647, 0.389858, -0.463635,
		42.546894, 34.755325, 24.874693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.223736, 35.240246, 25.282318>,  <43.103848, 34.482422, 25.199236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.223736, 35.240246, 25.282318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836605, 35.193249, 25.193319>,  <42.604324, 35.165051, 25.139919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836605, 35.193249, 25.193319>,  <43.223736, 35.240246, 25.282318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.836605, 35.193249, 25.193319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243526, 0.659761, 0.710922,
		0.063270, 0.742235, -0.667147,
		-0.967829, -0.117488, -0.222496,
		42.546257, 35.158001, 25.126570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.966366, 35.941784, 25.325996>,  <43.223736, 35.240246, 25.282318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.966366, 35.941784, 25.325996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631580, 35.728195, 25.373928>,  <42.430710, 35.600040, 25.402687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631580, 35.728195, 25.373928>,  <42.966366, 35.941784, 25.325996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.631580, 35.728195, 25.373928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214093, 0.520999, 0.826272,
		-0.503639, 0.665906, -0.550379,
		-0.836966, -0.533975, 0.119830,
		42.380489, 35.568005, 25.409878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.423538, 36.395660, 25.536045>,  <42.966366, 35.941784, 25.325996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.423538, 36.395660, 25.536045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284584, 36.040699, 25.657257>,  <42.201210, 35.827721, 25.729984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284584, 36.040699, 25.657257>,  <42.423538, 36.395660, 25.536045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284584, 36.040699, 25.657257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337535, 0.419831, 0.842503,
		-0.874866, 0.190392, -0.445376,
		-0.347389, -0.887408, 0.303032,
		42.180367, 35.774475, 25.748167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726151, 36.420689, 25.536150>,  <42.423538, 36.395660, 25.536045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726151, 36.420689, 25.536150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848492, 36.132774, 25.785423>,  <41.921898, 35.960026, 25.934986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848492, 36.132774, 25.785423>,  <41.726151, 36.420689, 25.536150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848492, 36.132774, 25.785423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430034, 0.479532, 0.764932,
		-0.849425, -0.501949, -0.162865,
		0.305858, -0.719789, 0.623181,
		41.940250, 35.916836, 25.972378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177010, 36.282204, 25.950615>,  <41.726151, 36.420689, 25.536150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177010, 36.282204, 25.950615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467762, 36.117104, 26.170174>,  <41.642212, 36.018044, 26.301908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467762, 36.117104, 26.170174>,  <41.177010, 36.282204, 25.950615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467762, 36.117104, 26.170174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508584, 0.213582, 0.834102,
		-0.461508, -0.885450, -0.054668,
		0.726879, -0.412748, 0.548895,
		41.685825, 35.993279, 26.334843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837860, 36.133858, 26.525026>,  <41.177010, 36.282204, 25.950615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837860, 36.133858, 26.525026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205887, 36.072845, 26.669367>,  <41.426704, 36.036240, 26.755970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205887, 36.072845, 26.669367>,  <40.837860, 36.133858, 26.525026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205887, 36.072845, 26.669367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320208, 0.237887, 0.916993,
		-0.225712, -0.959241, 0.170030,
		0.920066, -0.152531, 0.360850,
		41.481907, 36.027084, 26.777622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829258, 35.565918, 27.038757>,  <40.837860, 36.133858, 26.525026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829258, 35.565918, 27.038757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149063, 35.791615, 27.121134>,  <41.340946, 35.927032, 27.170561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149063, 35.791615, 27.121134>,  <40.829258, 35.565918, 27.038757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149063, 35.791615, 27.121134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146104, -0.149881, 0.977849,
		0.582610, -0.811891, -0.037393,
		0.799511, 0.564242, 0.205943,
		41.388916, 35.960888, 27.182917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223476, 35.160896, 27.520569>,  <40.829258, 35.565918, 27.038757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223476, 35.160896, 27.520569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322742, 35.546524, 27.558474>,  <41.382301, 35.777901, 27.581217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322742, 35.546524, 27.558474>,  <41.223476, 35.160896, 27.520569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.322742, 35.546524, 27.558474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213374, -0.041018, 0.976109,
		0.944925, -0.262458, 0.195528,
		0.248168, 0.964071, 0.094761,
		41.397194, 35.835747, 27.586903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612427, 35.223572, 28.158419>,  <41.223476, 35.160896, 27.520569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612427, 35.223572, 28.158419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497932, 35.604069, 28.112450>,  <41.429237, 35.832367, 28.084867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497932, 35.604069, 28.112450>,  <41.612427, 35.223572, 28.158419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497932, 35.604069, 28.112450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358651, 0.004854, 0.933459,
		0.888504, 0.308405, 0.339775,
		-0.286234, 0.951243, -0.114922,
		41.412064, 35.889442, 28.077972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772736, 35.530102, 28.774643>,  <41.612427, 35.223572, 28.158419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772736, 35.530102, 28.774643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.504139, 35.773079, 28.604887>,  <41.342979, 35.918865, 28.503035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.504139, 35.773079, 28.604887>,  <41.772736, 35.530102, 28.774643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.504139, 35.773079, 28.604887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452859, 0.116912, 0.883884,
		0.586527, 0.785711, 0.196581,
		-0.671495, 0.607445, -0.424388,
		41.302692, 35.955311, 28.477570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816452, 36.163113, 29.159552>,  <41.772736, 35.530102, 28.774643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.816452, 36.163113, 29.159552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.458359, 36.188316, 28.983105>,  <41.243504, 36.203438, 28.877235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.458359, 36.188316, 28.983105>,  <41.816452, 36.163113, 29.159552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.458359, 36.188316, 28.983105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443552, -0.031291, 0.895702,
		0.042632, 0.997523, 0.055959,
		-0.895234, 0.063006, -0.441119,
		41.189789, 36.207218, 28.850769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.459618, 36.720608, 29.456762>,  <41.816452, 36.163113, 29.159552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.459618, 36.720608, 29.456762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165115, 36.496616, 29.304787>,  <40.988415, 36.362221, 29.213600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165115, 36.496616, 29.304787>,  <41.459618, 36.720608, 29.456762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165115, 36.496616, 29.304787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462088, 0.005849, 0.886815,
		-0.494376, 0.828486, -0.263066,
		-0.736253, -0.559979, -0.379941,
		40.944241, 36.328621, 29.190804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863659, 37.150513, 29.487907>,  <41.459618, 36.720608, 29.456762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863659, 37.150513, 29.487907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703735, 36.784031, 29.477211>,  <40.607780, 36.564140, 29.470793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703735, 36.784031, 29.477211>,  <40.863659, 37.150513, 29.487907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703735, 36.784031, 29.477211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583145, 0.231747, 0.778611,
		-0.707171, 0.326892, -0.626937,
		-0.399813, -0.916207, -0.026741,
		40.583790, 36.509171, 29.469189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106693, 37.307354, 29.473701>,  <40.863659, 37.150513, 29.487907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106693, 37.307354, 29.473701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191647, 36.937092, 29.598957>,  <40.242619, 36.714935, 29.674110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191647, 36.937092, 29.598957>,  <40.106693, 37.307354, 29.473701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191647, 36.937092, 29.598957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586038, 0.135776, 0.798827,
		-0.781956, -0.353166, -0.513633,
		0.212379, -0.925656, 0.313140,
		40.255360, 36.659393, 29.692900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426403, 37.011909, 29.623219>,  <40.106693, 37.307354, 29.473701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426403, 37.011909, 29.623219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697781, 36.799446, 29.826229>,  <39.860607, 36.671967, 29.948036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697781, 36.799446, 29.826229>,  <39.426403, 37.011909, 29.623219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697781, 36.799446, 29.826229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567246, 0.060265, 0.821340,
		-0.466851, -0.845124, -0.260413,
		0.678441, -0.531162, 0.507529,
		39.901314, 36.640099, 29.978487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088173, 36.385151, 29.913782>,  <39.426403, 37.011909, 29.623219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088173, 36.385151, 29.913782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416649, 36.397228, 30.141722>,  <39.613735, 36.404472, 30.278486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416649, 36.397228, 30.141722>,  <39.088173, 36.385151, 29.913782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416649, 36.397228, 30.141722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569935, -0.006528, 0.821664,
		0.028534, -0.999523, 0.011851,
		0.821195, 0.030200, 0.569849,
		39.663006, 36.406284, 30.312677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998966, 35.996193, 30.489546>,  <39.088173, 36.385151, 29.913782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998966, 35.996193, 30.489546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318604, 36.196461, 30.622677>,  <39.510387, 36.316620, 30.702555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318604, 36.196461, 30.622677>,  <38.998966, 35.996193, 30.489546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318604, 36.196461, 30.622677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347752, -0.066666, 0.935214,
		0.490419, -0.863069, 0.120835,
		0.799098, 0.500667, 0.332828,
		39.558334, 36.346661, 30.722525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168533, 35.668190, 31.164701>,  <38.998966, 35.996193, 30.489546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168533, 35.668190, 31.164701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344917, 36.026924, 31.150625>,  <39.450748, 36.242165, 31.142179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344917, 36.026924, 31.150625>,  <39.168533, 35.668190, 31.164701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344917, 36.026924, 31.150625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229572, 0.150610, 0.961568,
		0.867669, -0.415934, 0.272302,
		0.440960, 0.896836, -0.035193,
		39.477207, 36.295975, 31.140068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593628, 35.633747, 31.711714>,  <39.168533, 35.668190, 31.164701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593628, 35.633747, 31.711714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522869, 36.015903, 31.617115>,  <39.480412, 36.245197, 31.560356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522869, 36.015903, 31.617115>,  <39.593628, 35.633747, 31.711714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522869, 36.015903, 31.617115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336906, 0.166992, 0.926611,
		0.924770, 0.243596, 0.292336,
		-0.176901, 0.955392, -0.236499,
		39.469799, 36.302521, 31.546165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750217, 36.000702, 32.281139>,  <39.593628, 35.633747, 31.711714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750217, 36.000702, 32.281139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528248, 36.280151, 32.100483>,  <39.395065, 36.447823, 31.992090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528248, 36.280151, 32.100483>,  <39.750217, 36.000702, 32.281139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528248, 36.280151, 32.100483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424522, 0.229076, 0.875959,
		0.715429, 0.677822, 0.169463,
		-0.554925, 0.698628, -0.451638,
		39.361771, 36.489738, 31.964991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709335, 36.601200, 32.734406>,  <39.750217, 36.000702, 32.281139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709335, 36.601200, 32.734406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402580, 36.664642, 32.485653>,  <39.218529, 36.702709, 32.336403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402580, 36.664642, 32.485653>,  <39.709335, 36.601200, 32.734406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402580, 36.664642, 32.485653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629226, 0.004955, 0.777207,
		0.126354, 0.987329, 0.096002,
		-0.766883, 0.158610, -0.621879,
		39.172516, 36.712227, 32.299088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462383, 37.209965, 32.998829>,  <39.709335, 36.601200, 32.734406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462383, 37.209965, 32.998829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171425, 37.021942, 32.798847>,  <38.996849, 36.909130, 32.678860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171425, 37.021942, 32.798847>,  <39.462383, 37.209965, 32.998829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171425, 37.021942, 32.798847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590604, 0.057865, 0.804884,
		-0.349408, 0.880740, -0.319705,
		-0.727393, -0.470052, -0.499950,
		38.953205, 36.880928, 32.648861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915653, 37.641628, 33.139103>,  <39.462383, 37.209965, 32.998829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915653, 37.641628, 33.139103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751392, 37.308823, 32.989910>,  <38.652836, 37.109138, 32.900394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751392, 37.308823, 32.989910>,  <38.915653, 37.641628, 33.139103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751392, 37.308823, 32.989910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638205, -0.029871, 0.769287,
		-0.651201, 0.553946, -0.518731,
		-0.410648, -0.832017, -0.372983,
		38.628197, 37.059219, 32.878014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122547, 37.694580, 33.110565>,  <38.915653, 37.641628, 33.139103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122547, 37.694580, 33.110565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230000, 37.309830, 33.131100>,  <38.294472, 37.078979, 33.143421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230000, 37.309830, 33.131100>,  <38.122547, 37.694580, 33.110565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230000, 37.309830, 33.131100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687231, -0.154036, 0.709920,
		-0.674946, -0.225988, -0.702408,
		0.268629, -0.961874, 0.051340,
		38.310589, 37.021267, 33.146503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454529, 37.335876, 33.114609>,  <38.122547, 37.694580, 33.110565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454529, 37.335876, 33.114609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714245, 37.071377, 33.264904>,  <37.870075, 36.912678, 33.355083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714245, 37.071377, 33.264904>,  <37.454529, 37.335876, 33.114609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714245, 37.071377, 33.264904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589756, -0.125798, 0.797723,
		-0.480225, -0.739545, -0.471654,
		0.649285, -0.661248, 0.375740,
		37.909031, 36.873001, 33.377625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032791, 36.972176, 33.553658>,  <37.454529, 37.335876, 33.114609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032791, 36.972176, 33.553658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.399632, 36.869820, 33.675938>,  <37.619736, 36.808407, 33.749306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.399632, 36.869820, 33.675938>,  <37.032791, 36.972176, 33.553658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399632, 36.869820, 33.675938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367921, -0.247987, 0.896179,
		-0.153511, -0.934358, -0.321574,
		0.917098, -0.255887, 0.305701,
		37.674759, 36.793053, 33.767647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027473, 36.327274, 33.969975>,  <37.032791, 36.972176, 33.553658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027473, 36.327274, 33.969975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375221, 36.479378, 34.096218>,  <37.583870, 36.570641, 34.171963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375221, 36.479378, 34.096218>,  <37.027473, 36.327274, 33.969975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375221, 36.479378, 34.096218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202639, -0.308179, 0.929496,
		0.450709, -0.872027, -0.190866,
		0.869367, 0.380255, 0.315606,
		37.636032, 36.593452, 34.190899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314087, 35.835957, 34.391819>,  <37.027473, 36.327274, 33.969975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314087, 35.835957, 34.391819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518097, 36.162888, 34.499039>,  <37.640503, 36.359047, 34.563370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518097, 36.162888, 34.499039>,  <37.314087, 35.835957, 34.391819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518097, 36.162888, 34.499039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052595, -0.281408, 0.958146,
		0.858551, -0.502775, -0.100538,
		0.510024, 0.817329, 0.268046,
		37.671104, 36.408085, 34.579453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750004, 35.694897, 35.054813>,  <37.314087, 35.835957, 34.391819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750004, 35.694897, 35.054813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681252, 36.088436, 35.034801>,  <37.639999, 36.324558, 35.022793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681252, 36.088436, 35.034801>,  <37.750004, 35.694897, 35.054813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681252, 36.088436, 35.034801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153028, 0.023505, 0.987942,
		0.973160, 0.177465, 0.146516,
		-0.171881, 0.983846, -0.050031,
		37.629688, 36.383591, 35.019791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895542, 35.873016, 35.758049>,  <37.750004, 35.694897, 35.054813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895542, 35.873016, 35.758049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718136, 36.211163, 35.638958>,  <37.611691, 36.414051, 35.567505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718136, 36.211163, 35.638958>,  <37.895542, 35.873016, 35.758049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718136, 36.211163, 35.638958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141783, 0.261829, 0.954643,
		0.884981, 0.465613, 0.003734,
		-0.443517, 0.845370, -0.297729,
		37.585079, 36.464775, 35.549641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301579, 36.395676, 36.045879>,  <37.895542, 35.873016, 35.758049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301579, 36.395676, 36.045879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941048, 36.538830, 35.948296>,  <37.724728, 36.624722, 35.889744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941048, 36.538830, 35.948296>,  <38.301579, 36.395676, 36.045879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941048, 36.538830, 35.948296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112343, 0.350809, 0.929684,
		0.418308, 0.865360, -0.275988,
		-0.901331, 0.357889, -0.243963,
		37.670647, 36.646198, 35.875107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163158, 37.021107, 36.511776>,  <38.301579, 36.395676, 36.045879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163158, 37.021107, 36.511776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790901, 36.953270, 36.382076>,  <37.567547, 36.912567, 36.304256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790901, 36.953270, 36.382076>,  <38.163158, 37.021107, 36.511776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790901, 36.953270, 36.382076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365718, 0.401620, 0.839614,
		-0.012170, 0.899966, -0.435790,
		-0.930646, -0.169594, -0.324246,
		37.511707, 36.902393, 36.284801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850288, 37.253609, 36.564400>,  <38.163158, 37.021107, 36.511776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850288, 37.253609, 36.564400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174793, 37.242855, 36.798023>,  <39.369495, 37.236404, 36.938198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174793, 37.242855, 36.798023>,  <38.850288, 37.253609, 36.564400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174793, 37.242855, 36.798023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571575, 0.246786, -0.782559,
		-0.123099, 0.968697, 0.215576,
		0.811264, -0.026885, 0.584062,
		39.418171, 37.234791, 36.973244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274937, 37.891968, 36.472309>,  <38.850288, 37.253609, 36.564400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274937, 37.891968, 36.472309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516777, 37.593571, 36.583988>,  <39.661880, 37.414532, 36.650993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516777, 37.593571, 36.583988>,  <39.274937, 37.891968, 36.472309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516777, 37.593571, 36.583988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455935, 0.036707, -0.889256,
		0.653131, 0.664940, 0.362318,
		0.604601, -0.745994, 0.279195,
		39.698158, 37.369774, 36.667747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926151, 38.079536, 36.275249>,  <39.274937, 37.891968, 36.472309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926151, 38.079536, 36.275249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.955124, 37.685669, 36.338726>,  <39.972507, 37.449348, 36.376812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.955124, 37.685669, 36.338726>,  <39.926151, 38.079536, 36.275249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955124, 37.685669, 36.338726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569762, -0.089741, -0.816895,
		0.818611, 0.149587, 0.554526,
		0.072433, -0.984668, 0.158692,
		39.976852, 37.390270, 36.386333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683296, 37.932983, 36.223236>,  <39.926151, 38.079536, 36.275249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683296, 37.932983, 36.223236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489594, 37.584377, 36.192348>,  <40.373371, 37.375214, 36.173817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489594, 37.584377, 36.192348>,  <40.683296, 37.932983, 36.223236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489594, 37.584377, 36.192348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524681, -0.218640, -0.822743,
		0.700147, -0.438935, 0.563144,
		-0.484256, -0.871512, -0.077221,
		40.344318, 37.322926, 36.169182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210705, 37.456509, 35.961811>,  <40.683296, 37.932983, 36.223236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210705, 37.456509, 35.961811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865120, 37.279415, 35.865852>,  <40.657768, 37.173157, 35.808277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865120, 37.279415, 35.865852>,  <41.210705, 37.456509, 35.961811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865120, 37.279415, 35.865852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424245, -0.383336, -0.820408,
		0.271264, -0.810578, 0.519017,
		-0.863963, -0.442738, -0.239898,
		40.605930, 37.146595, 35.793884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.356812, 36.838032, 35.954449>,  <41.210705, 37.456509, 35.961811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.356812, 36.838032, 35.954449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.044434, 36.920338, 35.718555>,  <40.857006, 36.969719, 35.577019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.044434, 36.920338, 35.718555>,  <41.356812, 36.838032, 35.954449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044434, 36.920338, 35.718555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512689, -0.328112, -0.793406,
		-0.356757, -0.921955, 0.150741,
		-0.780944, 0.205769, -0.589732,
		40.810150, 36.982067, 35.541637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453342, 36.332249, 35.379250>,  <41.356812, 36.838032, 35.954449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453342, 36.332249, 35.379250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.175968, 36.582458, 35.236214>,  <41.009544, 36.732586, 35.150391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.175968, 36.582458, 35.236214>,  <41.453342, 36.332249, 35.379250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175968, 36.582458, 35.236214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356567, -0.133347, -0.924704,
		-0.626109, -0.768725, -0.130574,
		-0.693432, 0.625524, -0.357592,
		40.967937, 36.770115, 35.128937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136711, 35.972473, 34.745014>,  <41.453342, 36.332249, 35.379250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136711, 35.972473, 34.745014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032513, 36.350971, 34.668320>,  <40.969994, 36.578072, 34.622303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032513, 36.350971, 34.668320>,  <41.136711, 35.972473, 34.745014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032513, 36.350971, 34.668320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344846, -0.094297, -0.933911,
		-0.901788, -0.309402, -0.301744,
		-0.260500, 0.946244, -0.191732,
		40.954361, 36.634846, 34.610802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753788, 35.988136, 34.078434>,  <41.136711, 35.972473, 34.745014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753788, 35.988136, 34.078434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885944, 36.359169, 34.148220>,  <40.965240, 36.581787, 34.190090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885944, 36.359169, 34.148220>,  <40.753788, 35.988136, 34.078434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885944, 36.359169, 34.148220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364480, 0.045118, -0.930118,
		-0.870629, 0.370893, -0.323177,
		0.330393, 0.927579, 0.174464,
		40.985062, 36.637444, 34.200558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650967, 36.335236, 33.463535>,  <40.753788, 35.988136, 34.078434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650967, 36.335236, 33.463535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.925861, 36.542229, 33.667461>,  <41.090797, 36.666424, 33.789818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.925861, 36.542229, 33.667461>,  <40.650967, 36.335236, 33.463535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925861, 36.542229, 33.667461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493703, 0.182091, -0.850353,
		-0.532879, 0.836092, -0.130345,
		0.687239, 0.517487, 0.509814,
		41.132034, 36.697475, 33.820404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795681, 36.795696, 32.969357>,  <40.650967, 36.335236, 33.463535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795681, 36.795696, 32.969357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.075977, 36.823822, 33.253334>,  <41.244156, 36.840698, 33.423721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.075977, 36.823822, 33.253334>,  <40.795681, 36.795696, 32.969357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075977, 36.823822, 33.253334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671273, 0.271969, -0.689510,
		-0.241562, 0.959734, 0.143383,
		0.700742, 0.070310, 0.709941,
		41.286201, 36.844913, 33.466316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253166, 37.423260, 32.757374>,  <40.795681, 36.795696, 32.969357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253166, 37.423260, 32.757374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462067, 37.176933, 32.993351>,  <41.587406, 37.029137, 33.134937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462067, 37.176933, 32.993351>,  <41.253166, 37.423260, 32.757374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462067, 37.176933, 32.993351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797464, 0.107537, -0.593707,
		0.302171, 0.780520, 0.547248,
		0.522250, -0.615811, 0.589942,
		41.618740, 36.992191, 33.170334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885780, 37.661259, 32.812336>,  <41.253166, 37.423260, 32.757374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885780, 37.661259, 32.812336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934490, 37.267708, 32.864727>,  <41.963715, 37.031578, 32.896164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934490, 37.267708, 32.864727>,  <41.885780, 37.661259, 32.812336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934490, 37.267708, 32.864727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843423, 0.033001, -0.536235,
		0.523268, 0.175770, 0.833844,
		0.121772, -0.983878, 0.130980,
		41.971024, 36.972546, 32.904022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.548885, 37.607071, 32.923485>,  <41.885780, 37.661259, 32.812336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.548885, 37.607071, 32.923485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.480740, 37.216488, 32.870567>,  <42.439850, 36.982140, 32.838818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.480740, 37.216488, 32.870567>,  <42.548885, 37.607071, 32.923485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480740, 37.216488, 32.870567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709827, -0.028492, -0.703799,
		0.683462, -0.213813, 0.697972,
		-0.170368, -0.976459, -0.132297,
		42.429630, 36.923550, 32.830879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.247128, 37.257561, 32.804253>,  <42.548885, 37.607071, 32.923485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.247128, 37.257561, 32.804253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.970356, 37.012230, 32.651905>,  <42.804295, 36.865032, 32.560497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.970356, 37.012230, 32.651905>,  <43.247128, 37.257561, 32.804253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.970356, 37.012230, 32.651905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546148, -0.099641, -0.831742,
		0.472182, -0.783517, 0.403913,
		-0.691930, -0.613330, -0.380867,
		42.762775, 36.828232, 32.537643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.638187, 36.794163, 32.425083>,  <43.247128, 37.257561, 32.804253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.638187, 36.794163, 32.425083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.266224, 36.795380, 32.277969>,  <43.043045, 36.796112, 32.189701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.266224, 36.795380, 32.277969>,  <43.638187, 36.794163, 32.425083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.266224, 36.795380, 32.277969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366071, -0.089165, -0.926305,
		-0.035614, -0.996012, 0.081801,
		-0.929905, 0.003045, -0.367786,
		42.987251, 36.796295, 32.167633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.709339, 36.297806, 31.892891>,  <43.638187, 36.794163, 32.425083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.709339, 36.297806, 31.892891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356686, 36.469940, 31.815397>,  <43.145092, 36.573219, 31.768902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356686, 36.469940, 31.815397>,  <43.709339, 36.297806, 31.892891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356686, 36.469940, 31.815397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147312, -0.139055, -0.979267,
		-0.448350, -0.891896, 0.059202,
		-0.881635, 0.430333, -0.193733,
		43.092194, 36.599041, 31.757277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.401108, 35.864239, 31.456749>,  <43.709339, 36.297806, 31.892891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.401108, 35.864239, 31.456749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.198750, 36.204792, 31.401289>,  <43.077335, 36.409122, 31.368013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.198750, 36.204792, 31.401289>,  <43.401108, 35.864239, 31.456749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.198750, 36.204792, 31.401289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171713, -0.058125, -0.983431,
		-0.845333, -0.521318, -0.116789,
		-0.505892, 0.851381, -0.138652,
		43.046982, 36.460205, 31.359694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.870316, 35.731792, 31.033688>,  <43.401108, 35.864239, 31.456749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.870316, 35.731792, 31.033688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891098, 36.130390, 31.007471>,  <42.903568, 36.369549, 30.991741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891098, 36.130390, 31.007471>,  <42.870316, 35.731792, 31.033688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891098, 36.130390, 31.007471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006212, -0.065306, -0.997846,
		-0.998630, 0.052255, 0.002797,
		0.051960, 0.996496, -0.065541,
		42.906685, 36.429340, 30.987808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376518, 36.037693, 30.605104>,  <42.870316, 35.731792, 31.033688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376518, 36.037693, 30.605104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.686527, 36.290451, 30.602058>,  <42.872532, 36.442104, 30.600231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.686527, 36.290451, 30.602058>,  <42.376518, 36.037693, 30.605104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.686527, 36.290451, 30.602058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142789, -0.186843, -0.971957,
		-0.615593, 0.752199, -0.235034,
		0.775020, 0.631890, -0.007613,
		42.919033, 36.480019, 30.599775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.304443, 36.440166, 30.078846>,  <42.376518, 36.037693, 30.605104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.304443, 36.440166, 30.078846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691654, 36.515968, 30.144588>,  <42.923981, 36.561451, 30.184034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691654, 36.515968, 30.144588>,  <42.304443, 36.440166, 30.078846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.691654, 36.515968, 30.144588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186567, -0.105911, -0.976717,
		-0.167683, 0.976151, -0.137880,
		0.968026, 0.189503, 0.164358,
		42.982063, 36.572819, 30.193895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575886, 36.901295, 29.532246>,  <42.304443, 36.440166, 30.078846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575886, 36.901295, 29.532246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.900417, 36.720795, 29.680908>,  <43.095135, 36.612495, 29.770105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.900417, 36.720795, 29.680908>,  <42.575886, 36.901295, 29.532246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.900417, 36.720795, 29.680908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345946, -0.141879, -0.927465,
		0.471245, 0.881049, 0.040996,
		0.811326, -0.451245, 0.371656,
		43.143814, 36.585423, 29.792404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.165474, 37.328175, 29.152128>,  <42.575886, 36.901295, 29.532246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.165474, 37.328175, 29.152128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.331341, 36.980705, 29.260546>,  <43.430859, 36.772224, 29.325596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.331341, 36.980705, 29.260546>,  <43.165474, 37.328175, 29.152128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.331341, 36.980705, 29.260546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326358, -0.136076, -0.935400,
		0.849438, 0.476333, 0.227072,
		0.414663, -0.868671, 0.271044,
		43.455738, 36.720104, 29.341858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.006470, 37.245823, 28.846064>,  <43.165474, 37.328175, 29.152128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.006470, 37.245823, 28.846064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.812428, 36.905560, 28.927114>,  <43.696003, 36.701401, 28.975744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.812428, 36.905560, 28.927114>,  <44.006470, 37.245823, 28.846064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.812428, 36.905560, 28.927114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281317, -0.371213, -0.884908,
		0.827971, -0.372269, 0.419380,
		-0.485103, -0.850657, 0.202628,
		43.666897, 36.650364, 28.987904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.496258, 36.765137, 28.677427>,  <44.006470, 37.245823, 28.846064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.496258, 36.765137, 28.677427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.151279, 36.563232, 28.662430>,  <43.944294, 36.442089, 28.653431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.151279, 36.563232, 28.662430>,  <44.496258, 36.765137, 28.677427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.151279, 36.563232, 28.662430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278819, -0.411961, -0.867495,
		0.422429, -0.758622, 0.496031,
		-0.862446, -0.504758, -0.037494,
		43.892544, 36.411804, 28.651182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.688293, 36.060509, 28.486286>,  <44.496258, 36.765137, 28.677427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.688293, 36.060509, 28.486286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.301826, 36.086658, 28.386484>,  <44.069946, 36.102348, 28.326603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.301826, 36.086658, 28.386484>,  <44.688293, 36.060509, 28.486286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.301826, 36.086658, 28.386484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200304, -0.419268, -0.885490,
		-0.162495, -0.905506, 0.391988,
		-0.966164, 0.065371, -0.249505,
		44.011978, 36.106270, 28.311632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.511593, 35.452618, 28.176208>,  <44.688293, 36.060509, 28.486286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.511593, 35.452618, 28.176208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.262493, 35.738983, 28.049936>,  <44.113033, 35.910801, 27.974173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.262493, 35.738983, 28.049936>,  <44.511593, 35.452618, 28.176208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.262493, 35.738983, 28.049936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178511, -0.262823, -0.948187,
		-0.761788, -0.646833, 0.035874,
		-0.622747, 0.715913, -0.315682,
		44.075668, 35.953758, 27.955233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.191963, 35.113552, 27.680931>,  <44.511593, 35.452618, 28.176208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.191963, 35.113552, 27.680931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.093426, 35.492210, 27.597816>,  <44.034302, 35.719406, 27.547947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.093426, 35.492210, 27.597816>,  <44.191963, 35.113552, 27.680931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.093426, 35.492210, 27.597816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130570, -0.180025, -0.974958,
		-0.960347, -0.267304, -0.079255,
		-0.246342, 0.946646, -0.207789,
		44.019524, 35.776203, 27.535480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.753094, 35.110435, 27.076921>,  <44.191963, 35.113552, 27.680931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.753094, 35.110435, 27.076921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.891895, 35.485580, 27.077129>,  <43.975178, 35.710667, 27.077253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.891895, 35.485580, 27.077129>,  <43.753094, 35.110435, 27.076921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.891895, 35.485580, 27.077129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114860, -0.041948, -0.992496,
		-0.930802, 0.344463, -0.122279,
		0.347007, 0.937862, 0.000520,
		43.995998, 35.766937, 27.077286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518124, 35.436832, 26.420170>,  <43.753094, 35.110435, 27.076921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.518124, 35.436832, 26.420170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.840046, 35.652187, 26.520109>,  <44.033199, 35.781403, 26.580072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.840046, 35.652187, 26.520109>,  <43.518124, 35.436832, 26.420170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.840046, 35.652187, 26.520109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324216, -0.046175, -0.944855,
		-0.497165, 0.841429, -0.211717,
		0.804805, 0.538391, 0.249848,
		44.081486, 35.813705, 26.595064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.574158, 36.016006, 25.960905>,  <43.518124, 35.436832, 26.420170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.574158, 36.016006, 25.960905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.946457, 35.999691, 26.106256>,  <44.169838, 35.989902, 26.193468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.946457, 35.999691, 26.106256>,  <43.574158, 36.016006, 25.960905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.946457, 35.999691, 26.106256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365658, 0.099030, -0.925466,
		0.001760, 0.994248, 0.107085,
		0.930748, -0.040785, 0.363380,
		44.225681, 35.987457, 26.215271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.015217, 36.421692, 25.484428>,  <43.574158, 36.016006, 25.960905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.015217, 36.421692, 25.484428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266308, 36.191448, 25.694050>,  <44.416962, 36.053303, 25.819822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266308, 36.191448, 25.694050>,  <44.015217, 36.421692, 25.484428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.266308, 36.191448, 25.694050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559695, -0.134155, -0.817768,
		0.541021, 0.806644, 0.237953,
		0.627725, -0.575611, 0.524055,
		44.454624, 36.018764, 25.851267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.681446, 36.626396, 25.241337>,  <44.015217, 36.421692, 25.484428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.681446, 36.626396, 25.241337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.715015, 36.261322, 25.401320>,  <44.735157, 36.042278, 25.497309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.715015, 36.261322, 25.401320>,  <44.681446, 36.626396, 25.241337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.715015, 36.261322, 25.401320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542958, -0.294674, -0.786361,
		0.835556, 0.283153, 0.470820,
		0.083922, -0.912684, 0.399956,
		44.740192, 35.987518, 25.521307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.346550, 36.464817, 25.110773>,  <44.681446, 36.626396, 25.241337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.346550, 36.464817, 25.110773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.203812, 36.098412, 25.184076>,  <45.118168, 35.878571, 25.228058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.203812, 36.098412, 25.184076>,  <45.346550, 36.464817, 25.110773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.203812, 36.098412, 25.184076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625403, -0.379985, -0.681529,
		0.693923, -0.128592, 0.708473,
		-0.356849, -0.916010, 0.183258,
		45.096756, 35.823608, 25.239054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.885395, 36.091774, 25.053028>,  <45.346550, 36.464817, 25.110773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.885395, 36.091774, 25.053028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.592499, 35.819801, 25.037436>,  <45.416763, 35.656616, 25.028080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.592499, 35.819801, 25.037436>,  <45.885395, 36.091774, 25.053028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.592499, 35.819801, 25.037436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527515, -0.530035, -0.663920,
		0.430760, -0.506711, 0.746787,
		-0.732239, -0.679931, -0.038980,
		45.372826, 35.615822, 25.025742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.284111, 35.458992, 25.138416>,  <45.885395, 36.091774, 25.053028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.284111, 35.458992, 25.138416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.932163, 35.369793, 24.970556>,  <45.720997, 35.316273, 24.869841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.932163, 35.369793, 24.970556>,  <46.284111, 35.458992, 25.138416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.932163, 35.369793, 24.970556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453994, -0.655406, -0.603600,
		-0.140438, -0.721606, 0.677911,
		-0.879867, -0.222999, -0.419649,
		45.668201, 35.302895, 24.844662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.320236, 34.709099, 25.128071>,  <46.284111, 35.458992, 25.138416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.320236, 34.709099, 25.128071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.049126, 34.828751, 24.859406>,  <45.886459, 34.900543, 24.698206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.049126, 34.828751, 24.859406>,  <46.320236, 34.709099, 25.128071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.049126, 34.828751, 24.859406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332989, -0.689571, -0.643125,
		-0.655536, -0.659556, 0.367774,
		-0.677784, 0.299127, -0.671664,
		45.845791, 34.918491, 24.657906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.751514, 34.214325, 25.025351>,  <46.320236, 34.709099, 25.128071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.751514, 34.214325, 25.025351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.838764, 34.442440, 24.708569>,  <45.891113, 34.579311, 24.518499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.838764, 34.442440, 24.708569>,  <45.751514, 34.214325, 25.025351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.838764, 34.442440, 24.708569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386566, -0.795606, -0.466452,
		-0.896096, -0.204399, -0.393995,
		0.218123, 0.570291, -0.791954,
		45.904202, 34.613525, 24.470982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.008095, 33.544472, 24.758396>,  <45.751514, 34.214325, 25.025351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.008095, 33.544472, 24.758396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.183506, 33.195217, 24.843563>,  <46.288754, 32.985664, 24.894663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.183506, 33.195217, 24.843563>,  <46.008095, 33.544472, 24.758396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.183506, 33.195217, 24.843563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627030, -0.127523, 0.768487,
		-0.643841, -0.470503, -0.603403,
		0.438523, -0.873135, 0.212915,
		46.315063, 32.933277, 24.907438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.454327, 33.094082, 25.078508>,  <46.008095, 33.544472, 24.758396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.454327, 33.094082, 25.078508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.801445, 32.909283, 25.151705>,  <46.009716, 32.798405, 25.195623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.801445, 32.909283, 25.151705>,  <45.454327, 33.094082, 25.078508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.801445, 32.909283, 25.151705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346869, -0.299500, 0.888809,
		-0.355823, -0.834779, -0.420159,
		0.867797, -0.461999, 0.182990,
		46.061783, 32.770683, 25.206602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.260723, 32.482304, 25.252321>,  <45.454327, 33.094082, 25.078508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.260723, 32.482304, 25.252321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.622166, 32.584728, 25.389690>,  <45.839031, 32.646183, 25.472111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.622166, 32.584728, 25.389690>,  <45.260723, 32.482304, 25.252321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.622166, 32.584728, 25.389690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342960, -0.047929, 0.938126,
		0.256674, -0.965473, 0.044509,
		0.903602, 0.256058, 0.343421,
		45.893246, 32.661545, 25.492716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.278877, 32.086285, 25.918367>,  <45.260723, 32.482304, 25.252321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.278877, 32.086285, 25.918367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.598042, 32.326160, 25.942757>,  <45.789539, 32.470085, 25.957390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.598042, 32.326160, 25.942757>,  <45.278877, 32.086285, 25.918367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.598042, 32.326160, 25.942757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134824, 0.078964, 0.987718,
		0.587508, -0.796329, 0.143858,
		0.797908, 0.599688, 0.060973,
		45.837414, 32.506065, 25.961048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.644890, 31.828424, 26.412651>,  <45.278877, 32.086285, 25.918367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.644890, 31.828424, 26.412651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.734482, 32.216572, 26.376387>,  <45.788239, 32.449459, 26.354628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.734482, 32.216572, 26.376387>,  <45.644890, 31.828424, 26.412651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.734482, 32.216572, 26.376387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130367, 0.122020, 0.983929,
		0.965835, -0.208563, 0.153834,
		0.223982, 0.970367, -0.090662,
		45.801678, 32.507683, 26.349188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.984020, 31.948107, 26.996773>,  <45.644890, 31.828424, 26.412651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.984020, 31.948107, 26.996773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.893810, 32.316296, 26.869106>,  <45.839684, 32.537209, 26.792507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.893810, 32.316296, 26.869106>,  <45.984020, 31.948107, 26.996773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.893810, 32.316296, 26.869106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342589, 0.231753, 0.910452,
		0.912014, 0.314674, 0.263078,
		-0.225527, 0.920473, -0.319166,
		45.826153, 32.592438, 26.773357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.251289, 32.497665, 27.426659>,  <45.984020, 31.948107, 26.996773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.251289, 32.497665, 27.426659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.950100, 32.707966, 27.268358>,  <45.769386, 32.834145, 27.173378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.950100, 32.707966, 27.268358>,  <46.251289, 32.497665, 27.426659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.950100, 32.707966, 27.268358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233578, 0.348700, 0.907662,
		0.615203, 0.775882, -0.139757,
		-0.752972, 0.525752, -0.395750,
		45.724209, 32.865692, 27.149633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.335026, 33.121563, 27.727819>,  <46.251289, 32.497665, 27.426659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.335026, 33.121563, 27.727819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.958046, 33.082523, 27.599899>,  <45.731857, 33.059101, 27.523148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.958046, 33.082523, 27.599899>,  <46.335026, 33.121563, 27.727819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.958046, 33.082523, 27.599899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334161, 0.307861, 0.890819,
		0.011515, 0.946413, -0.322754,
		-0.942446, -0.097595, -0.319799,
		45.675312, 33.053246, 27.503960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.040142, 33.652576, 27.991980>,  <46.335026, 33.121563, 27.727819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.040142, 33.652576, 27.991980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.721672, 33.422588, 27.916592>,  <45.530590, 33.284595, 27.871359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.721672, 33.422588, 27.916592>,  <46.040142, 33.652576, 27.991980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.721672, 33.422588, 27.916592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434919, 0.327263, 0.838895,
		-0.420658, 0.749874, -0.510622,
		-0.796173, -0.574968, -0.188469,
		45.482819, 33.250099, 27.860050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.452091, 34.092541, 28.074087>,  <46.040142, 33.652576, 27.991980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.452091, 34.092541, 28.074087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.294720, 33.725552, 28.097624>,  <45.200298, 33.505360, 28.111746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.294720, 33.725552, 28.097624>,  <45.452091, 34.092541, 28.074087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.294720, 33.725552, 28.097624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544040, 0.283930, 0.789560,
		-0.741106, 0.278621, -0.610846,
		-0.393425, -0.917472, 0.058841,
		45.176693, 33.450310, 28.115276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.697372, 34.221333, 28.235186>,  <45.452091, 34.092541, 28.074087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.697372, 34.221333, 28.235186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.776260, 33.843327, 28.339527>,  <44.823593, 33.616524, 28.402132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.776260, 33.843327, 28.339527>,  <44.697372, 34.221333, 28.235186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.776260, 33.843327, 28.339527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491191, 0.135021, 0.860523,
		-0.848432, -0.297838, -0.437557,
		0.197217, -0.945019, 0.260852,
		44.835426, 33.559822, 28.417782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.032207, 33.906967, 28.389780>,  <44.697372, 34.221333, 28.235186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.032207, 33.906967, 28.389780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.320080, 33.707951, 28.583487>,  <44.492802, 33.588539, 28.699711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.320080, 33.707951, 28.583487>,  <44.032207, 33.906967, 28.389780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.320080, 33.707951, 28.583487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538300, 0.040674, 0.841771,
		-0.438513, -0.866486, -0.238554,
		0.719680, -0.497541, 0.484266,
		44.535984, 33.558689, 28.728765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.724205, 33.527927, 28.891317>,  <44.032207, 33.906967, 28.389780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.724205, 33.527927, 28.891317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.098606, 33.519787, 29.031874>,  <44.323246, 33.514904, 29.116207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.098606, 33.519787, 29.031874>,  <43.724205, 33.527927, 28.891317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.098606, 33.519787, 29.031874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342628, 0.175939, 0.922850,
		-0.080605, -0.984191, 0.157707,
		0.936007, -0.020352, 0.351393,
		44.379410, 33.513683, 29.137291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.734402, 33.074291, 29.499876>,  <43.724205, 33.527927, 28.891317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.734402, 33.074291, 29.499876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067524, 33.288055, 29.557617>,  <44.267399, 33.416313, 29.592262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067524, 33.288055, 29.557617>,  <43.734402, 33.074291, 29.499876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.067524, 33.288055, 29.557617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227956, 0.093446, 0.969177,
		0.504448, -0.840044, 0.199644,
		0.832807, 0.534410, 0.144355,
		44.317368, 33.448380, 29.600924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.994114, 32.893787, 30.107681>,  <43.734402, 33.074291, 29.499876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.994114, 32.893787, 30.107681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.195431, 33.236546, 30.063093>,  <44.316219, 33.442200, 30.036341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.195431, 33.236546, 30.063093>,  <43.994114, 32.893787, 30.107681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.195431, 33.236546, 30.063093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001715, 0.128010, 0.991771,
		0.864114, -0.499342, 0.062957,
		0.503292, 0.856896, -0.111472,
		44.346420, 33.493614, 30.029652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.584873, 32.868553, 30.573977>,  <43.994114, 32.893787, 30.107681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.584873, 32.868553, 30.573977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.469734, 33.243916, 30.497517>,  <44.400650, 33.469131, 30.451641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.469734, 33.243916, 30.497517>,  <44.584873, 32.868553, 30.573977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.469734, 33.243916, 30.497517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271705, 0.111371, 0.955914,
		0.918323, 0.327097, 0.222911,
		-0.287851, 0.938405, -0.191149,
		44.383377, 33.525436, 30.440172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.761772, 33.213196, 31.240345>,  <44.584873, 32.868553, 30.573977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.761772, 33.213196, 31.240345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.537022, 33.500767, 31.076664>,  <44.402172, 33.673309, 30.978455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.537022, 33.500767, 31.076664>,  <44.761772, 33.213196, 31.240345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.537022, 33.500767, 31.076664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191324, 0.368321, 0.909800,
		0.804795, 0.589482, -0.069402,
		-0.561872, 0.718924, -0.409205,
		44.368462, 33.716442, 30.953903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.840603, 33.800045, 31.629461>,  <44.761772, 33.213196, 31.240345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.840603, 33.800045, 31.629461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.493046, 33.922386, 31.473778>,  <44.284512, 33.995792, 31.380367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.493046, 33.922386, 31.473778>,  <44.840603, 33.800045, 31.629461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.493046, 33.922386, 31.473778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287401, 0.328462, 0.899730,
		0.403024, 0.893626, -0.197496,
		-0.868892, 0.305852, -0.389206,
		44.232380, 34.014141, 31.357016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.754272, 34.535294, 31.788834>,  <44.840603, 33.800045, 31.629461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.754272, 34.535294, 31.788834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.382935, 34.406269, 31.714939>,  <44.160133, 34.328854, 31.670603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.382935, 34.406269, 31.714939>,  <44.754272, 34.535294, 31.788834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.382935, 34.406269, 31.714939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335656, 0.513880, 0.789470,
		-0.159721, 0.794909, -0.585329,
		-0.928345, -0.322564, -0.184738,
		44.104431, 34.309502, 31.659517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.341400, 35.083897, 31.981375>,  <44.754272, 34.535294, 31.788834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.341400, 35.083897, 31.981375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.065342, 34.794998, 31.963223>,  <43.899708, 34.621658, 31.952332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.065342, 34.794998, 31.963223>,  <44.341400, 35.083897, 31.981375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.065342, 34.794998, 31.963223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387450, 0.315810, 0.866110,
		-0.611215, 0.615323, -0.497789,
		-0.690144, -0.722248, -0.045379,
		43.858299, 34.578323, 31.949610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.638004, 35.402313, 31.982906>,  <44.341400, 35.083897, 31.981375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.638004, 35.402313, 31.982906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.604733, 35.031040, 32.127987>,  <43.584770, 34.808277, 32.215034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.604733, 35.031040, 32.127987>,  <43.638004, 35.402313, 31.982906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.604733, 35.031040, 32.127987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308820, 0.370056, 0.876179,
		-0.947477, -0.039131, -0.317422,
		-0.083178, -0.928185, 0.362704,
		43.579781, 34.752586, 32.236797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.913742, 35.315281, 32.397491>,  <43.638004, 35.402313, 31.982906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.913742, 35.315281, 32.397491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155933, 35.017521, 32.510101>,  <43.301247, 34.838863, 32.577667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155933, 35.017521, 32.510101>,  <42.913742, 35.315281, 32.397491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.155933, 35.017521, 32.510101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348991, 0.069576, 0.934540,
		-0.715263, -0.664094, -0.217664,
		0.605478, -0.744405, 0.281528,
		43.337578, 34.794201, 32.594559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.480560, 34.878368, 32.798149>,  <42.913742, 35.315281, 32.397491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.480560, 34.878368, 32.798149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.851444, 34.764862, 32.895935>,  <43.073975, 34.696758, 32.954609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.851444, 34.764862, 32.895935>,  <42.480560, 34.878368, 32.798149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.851444, 34.764862, 32.895935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285298, -0.112187, 0.951850,
		-0.242677, -0.952308, -0.184979,
		0.927207, -0.283766, 0.244467,
		43.129608, 34.679733, 32.969276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406174, 34.342377, 33.234398>,  <42.480560, 34.878368, 32.798149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.406174, 34.342377, 33.234398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.781631, 34.458267, 33.309246>,  <43.006905, 34.527802, 33.354153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.781631, 34.458267, 33.309246>,  <42.406174, 34.342377, 33.234398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.781631, 34.458267, 33.309246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153803, -0.133975, 0.978977,
		0.308706, -0.947686, -0.081193,
		0.938640, 0.289728, 0.187116,
		43.063225, 34.545185, 33.365379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618858, 33.810005, 33.723652>,  <42.406174, 34.342377, 33.234398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618858, 33.810005, 33.723652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849529, 34.136166, 33.743927>,  <42.987930, 34.331863, 33.756092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849529, 34.136166, 33.743927>,  <42.618858, 33.810005, 33.723652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.849529, 34.136166, 33.743927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033119, -0.038658, 0.998703,
		0.816302, -0.577606, 0.004712,
		0.576675, 0.815399, 0.050686,
		43.022533, 34.380787, 33.759132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.201782, 33.695312, 34.264469>,  <42.618858, 33.810005, 33.723652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.201782, 33.695312, 34.264469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117840, 34.083614, 34.217819>,  <43.067474, 34.316593, 34.189831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117840, 34.083614, 34.217819>,  <43.201782, 33.695312, 34.264469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117840, 34.083614, 34.217819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113419, 0.142645, 0.983254,
		0.971131, 0.193118, -0.140037,
		-0.209860, 0.970751, -0.116624,
		43.054882, 34.374840, 34.182831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.647141, 34.050240, 34.667183>,  <43.201782, 33.695312, 34.264469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.647141, 34.050240, 34.667183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342819, 34.301788, 34.603058>,  <43.160225, 34.452717, 34.564583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342819, 34.301788, 34.603058>,  <43.647141, 34.050240, 34.667183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.342819, 34.301788, 34.603058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039578, 0.291516, 0.955747,
		0.647776, 0.720789, -0.246675,
		-0.760802, 0.628873, -0.160310,
		43.114578, 34.490452, 34.554966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.705235, 34.447372, 35.244892>,  <43.647141, 34.050240, 34.667183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.705235, 34.447372, 35.244892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.355362, 34.557590, 35.085392>,  <43.145439, 34.623722, 34.989693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.355362, 34.557590, 35.085392>,  <43.705235, 34.447372, 35.244892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.355362, 34.557590, 35.085392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298741, 0.341354, 0.891197,
		0.381680, 0.898639, -0.216260,
		-0.874685, 0.275546, -0.398748,
		43.092957, 34.640255, 34.965767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.657421, 35.058895, 35.519783>,  <43.705235, 34.447372, 35.244892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.657421, 35.058895, 35.519783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.287067, 34.962563, 35.403339>,  <43.064857, 34.904762, 35.333473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.287067, 34.962563, 35.403339>,  <43.657421, 35.058895, 35.519783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.287067, 34.962563, 35.403339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355317, 0.293133, 0.887594,
		-0.128423, 0.925243, -0.356977,
		-0.925882, -0.240827, -0.291109,
		43.009304, 34.890316, 35.316006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.292397, 35.722752, 35.490944>,  <43.657421, 35.058895, 35.519783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.292397, 35.722752, 35.490944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.042274, 35.416904, 35.553371>,  <42.892200, 35.233395, 35.590828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.042274, 35.416904, 35.553371>,  <43.292397, 35.722752, 35.490944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.042274, 35.416904, 35.553371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068500, 0.252995, 0.965040,
		-0.777369, 0.592752, -0.210575,
		-0.625304, -0.764617, 0.156067,
		42.854683, 35.187519, 35.600193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.706512, 35.999454, 35.827835>,  <43.292397, 35.722752, 35.490944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.706512, 35.999454, 35.827835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689327, 35.610287, 35.918686>,  <42.679016, 35.376785, 35.973194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689327, 35.610287, 35.918686>,  <42.706512, 35.999454, 35.827835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.689327, 35.610287, 35.918686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113718, 0.230619, 0.966376,
		-0.992584, 0.015692, -0.120546,
		-0.042964, -0.972917, 0.227125,
		42.676437, 35.318413, 35.986824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.119106, 35.931274, 36.187695>,  <42.706512, 35.999454, 35.827835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.119106, 35.931274, 36.187695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.305561, 35.593704, 36.293911>,  <42.417435, 35.391163, 36.357639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.305561, 35.593704, 36.293911>,  <42.119106, 35.931274, 36.187695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.305561, 35.593704, 36.293911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275765, 0.146597, 0.949980,
		-0.840637, -0.516049, -0.164390,
		0.466137, -0.843921, 0.265543,
		42.445404, 35.340527, 36.373573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.641563, 35.479168, 36.555096>,  <42.119106, 35.931274, 36.187695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.641563, 35.479168, 36.555096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.010250, 35.397892, 36.687252>,  <42.231461, 35.349125, 36.766544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.010250, 35.397892, 36.687252>,  <41.641563, 35.479168, 36.555096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.010250, 35.397892, 36.687252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304509, 0.148530, 0.940858,
		-0.240247, -0.967808, 0.075028,
		0.921714, -0.203191, 0.330390,
		42.286766, 35.336933, 36.786369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601303, 34.982277, 37.175919>,  <41.641563, 35.479168, 36.555096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601303, 34.982277, 37.175919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972385, 35.124836, 37.220348>,  <42.195034, 35.210369, 37.247005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972385, 35.124836, 37.220348>,  <41.601303, 34.982277, 37.175919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972385, 35.124836, 37.220348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134559, 0.041705, 0.990028,
		0.348209, -0.933404, 0.086646,
		0.927709, 0.356395, 0.111076,
		42.250698, 35.231754, 37.253670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795296, 34.643456, 37.665833>,  <41.601303, 34.982277, 37.175919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.795296, 34.643456, 37.665833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.061737, 34.941364, 37.649738>,  <42.221603, 35.120110, 37.640083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.061737, 34.941364, 37.649738>,  <41.795296, 34.643456, 37.665833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.061737, 34.941364, 37.649738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038591, 0.019454, 0.999066,
		0.744858, -0.667036, -0.015783,
		0.666106, 0.744771, -0.040232,
		42.261570, 35.164795, 37.637669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.295219, 34.420895, 38.148712>,  <41.795296, 34.643456, 37.665833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.295219, 34.420895, 38.148712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353031, 34.813332, 38.097214>,  <42.387718, 35.048794, 38.066315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353031, 34.813332, 38.097214>,  <42.295219, 34.420895, 38.148712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353031, 34.813332, 38.097214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286139, 0.083116, 0.954576,
		0.947225, -0.174808, -0.268715,
		0.144533, 0.981088, -0.128748,
		42.396393, 35.107658, 38.058590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.006565, 34.601982, 38.375286>,  <42.295219, 34.420895, 38.148712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.006565, 34.601982, 38.375286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.752171, 34.909992, 38.395596>,  <42.599533, 35.094799, 38.407780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.752171, 34.909992, 38.395596>,  <43.006565, 34.601982, 38.375286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.752171, 34.909992, 38.395596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200187, 0.101084, 0.974529,
		0.745282, 0.629953, -0.218438,
		-0.635988, 0.770027, 0.050772,
		42.561375, 35.140999, 38.410828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.398392, 35.149586, 38.772415>,  <43.006565, 34.601982, 38.375286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.398392, 35.149586, 38.772415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.008320, 35.234200, 38.798561>,  <42.774277, 35.284969, 38.814247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.008320, 35.234200, 38.798561>,  <43.398392, 35.149586, 38.772415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.008320, 35.234200, 38.798561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089277, 0.105539, 0.990399,
		0.202608, 0.971655, -0.121805,
		-0.975182, 0.211538, 0.065363,
		42.715767, 35.297661, 38.818169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.414604, 35.585655, 39.305565>,  <43.398392, 35.149586, 38.772415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.414604, 35.585655, 39.305565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.034710, 35.469143, 39.259670>,  <42.806774, 35.399235, 39.232136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.034710, 35.469143, 39.259670>,  <43.414604, 35.585655, 39.305565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.034710, 35.469143, 39.259670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123663, 0.012367, 0.992247,
		-0.287600, 0.956559, -0.047766,
		-0.949734, -0.291277, -0.114734,
		42.749790, 35.381760, 39.225250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.075794, 35.962456, 39.715382>,  <43.414604, 35.585655, 39.305565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.075794, 35.962456, 39.715382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.786102, 35.688694, 39.681725>,  <42.612286, 35.524437, 39.661530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.786102, 35.688694, 39.681725>,  <43.075794, 35.962456, 39.715382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.786102, 35.688694, 39.681725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213744, 0.106801, 0.971034,
		-0.655592, 0.721239, -0.223636,
		-0.724232, -0.684403, -0.084142,
		42.568832, 35.483372, 39.656483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.567070, 36.314365, 40.051636>,  <43.075794, 35.962456, 39.715382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.567070, 36.314365, 40.051636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.509045, 35.918762, 40.040211>,  <42.474228, 35.681400, 40.033356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.509045, 35.918762, 40.040211>,  <42.567070, 36.314365, 40.051636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.509045, 35.918762, 40.040211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202447, 0.001416, 0.979292,
		-0.968489, 0.147844, -0.200428,
		-0.145066, -0.989010, -0.028559,
		42.465527, 35.622059, 40.031643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891941, 36.211548, 40.423946>,  <42.567070, 36.314365, 40.051636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.891941, 36.211548, 40.423946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.113548, 35.878746, 40.435486>,  <42.246513, 35.679066, 40.442410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.113548, 35.878746, 40.435486>,  <41.891941, 36.211548, 40.423946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.113548, 35.878746, 40.435486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132271, -0.053757, 0.989755,
		-0.821930, -0.552158, -0.139833,
		0.554018, -0.832005, 0.028850,
		42.279755, 35.629143, 40.444141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523010, 35.815521, 40.718021>,  <41.891941, 36.211548, 40.423946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523010, 35.815521, 40.718021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867664, 35.624397, 40.786465>,  <42.074459, 35.509724, 40.827530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867664, 35.624397, 40.786465>,  <41.523010, 35.815521, 40.718021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867664, 35.624397, 40.786465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213887, -0.036112, 0.976191,
		-0.460254, -0.877721, -0.133313,
		0.861637, -0.477809, 0.171112,
		42.126156, 35.481056, 40.837799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394699, 35.229603, 41.065758>,  <41.523010, 35.815521, 40.718021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394699, 35.229603, 41.065758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.775955, 35.297028, 41.166252>,  <42.004707, 35.337482, 41.226547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.775955, 35.297028, 41.166252>,  <41.394699, 35.229603, 41.065758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.775955, 35.297028, 41.166252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189727, -0.313803, 0.930340,
		0.235659, -0.934406, -0.267116,
		0.953136, 0.168564, 0.251232,
		42.061897, 35.347595, 41.241623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664391, 34.595951, 41.437428>,  <41.394699, 35.229603, 41.065758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664391, 34.595951, 41.437428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885445, 34.912693, 41.541393>,  <42.018078, 35.102737, 41.603775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885445, 34.912693, 41.541393>,  <41.664391, 34.595951, 41.437428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885445, 34.912693, 41.541393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138147, -0.220519, 0.965550,
		0.821896, -0.569502, -0.012473,
		0.552633, 0.791858, 0.259919,
		42.051235, 35.150249, 41.619370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073994, 34.411331, 42.009541>,  <41.664391, 34.595951, 41.437428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073994, 34.411331, 42.009541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085758, 34.811043, 42.000008>,  <42.092815, 35.050869, 41.994286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085758, 34.811043, 42.000008>,  <42.073994, 34.411331, 42.009541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.085758, 34.811043, 42.000008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131986, 0.027519, 0.990869,
		0.990815, -0.025998, 0.132701,
		0.029412, 0.999283, -0.023835,
		42.094582, 35.110828, 41.992859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.391636, 34.696362, 42.606247>,  <42.073994, 34.411331, 42.009541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.391636, 34.696362, 42.606247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.201057, 35.034004, 42.507874>,  <42.086712, 35.236591, 42.448849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.201057, 35.034004, 42.507874>,  <42.391636, 34.696362, 42.606247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.201057, 35.034004, 42.507874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141308, 0.202567, 0.969020,
		0.867773, 0.496438, 0.022767,
		-0.476447, 0.844106, -0.245933,
		42.058125, 35.287235, 42.434093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.694439, 35.183769, 42.959187>,  <42.391636, 34.696362, 42.606247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.694439, 35.183769, 42.959187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.335915, 35.344776, 42.884769>,  <42.120800, 35.441380, 42.840118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.335915, 35.344776, 42.884769>,  <42.694439, 35.183769, 42.959187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.335915, 35.344776, 42.884769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082927, 0.259990, 0.962044,
		0.435604, 0.877718, -0.199653,
		-0.896310, 0.402514, -0.186039,
		42.067020, 35.465530, 42.828957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633614, 35.890156, 43.338524>,  <42.694439, 35.183769, 42.959187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.633614, 35.890156, 43.338524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260674, 35.755527, 43.285683>,  <42.036911, 35.674751, 43.253979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260674, 35.755527, 43.285683>,  <42.633614, 35.890156, 43.338524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.260674, 35.755527, 43.285683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229280, 0.267850, 0.935781,
		-0.279575, 0.902760, -0.326898,
		-0.932346, -0.336573, -0.132101,
		41.980968, 35.654556, 43.246052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.239643, 36.447227, 43.431236>,  <42.633614, 35.890156, 43.338524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.239643, 36.447227, 43.431236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.028034, 36.128151, 43.547047>,  <41.901070, 35.936703, 43.616531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.028034, 36.128151, 43.547047>,  <42.239643, 36.447227, 43.431236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.028034, 36.128151, 43.547047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214869, 0.455967, 0.863670,
		-0.820957, 0.394688, -0.412614,
		-0.529018, -0.797694, 0.289523,
		41.869328, 35.888844, 43.633904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571854, 36.654785, 43.480778>,  <42.239643, 36.447227, 43.431236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571854, 36.654785, 43.480778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.605412, 36.325085, 43.704765>,  <41.625546, 36.127262, 43.839157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.605412, 36.325085, 43.704765>,  <41.571854, 36.654785, 43.480778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.605412, 36.325085, 43.704765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479026, 0.459399, 0.747988,
		-0.873783, -0.330990, -0.356299,
		0.083893, -0.824256, 0.559968,
		41.630581, 36.077808, 43.872757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918533, 36.638687, 43.827305>,  <41.571854, 36.654785, 43.480778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918533, 36.638687, 43.827305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184784, 36.420826, 44.031380>,  <41.344536, 36.290108, 44.153824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184784, 36.420826, 44.031380>,  <40.918533, 36.638687, 43.827305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184784, 36.420826, 44.031380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396525, 0.321038, 0.860059,
		-0.632227, -0.774780, -0.002279,
		0.665625, -0.544656, 0.510188,
		41.384472, 36.257427, 44.184437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617744, 36.230679, 44.177891>,  <40.918533, 36.638687, 43.827305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617744, 36.230679, 44.177891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970253, 36.285767, 44.358734>,  <41.181759, 36.318817, 44.467239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970253, 36.285767, 44.358734>,  <40.617744, 36.230679, 44.177891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970253, 36.285767, 44.358734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465144, 0.422157, 0.778090,
		-0.083705, -0.896001, 0.436091,
		0.881269, 0.137715, 0.452106,
		41.234634, 36.327080, 44.494366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682789, 35.805016, 44.889545>,  <40.617744, 36.230679, 44.177891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682789, 35.805016, 44.889545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879951, 36.152588, 44.871666>,  <40.998249, 36.361134, 44.860939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879951, 36.152588, 44.871666>,  <40.682789, 35.805016, 44.889545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879951, 36.152588, 44.871666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511484, 0.330932, 0.793012,
		0.703866, -0.368020, 0.607564,
		0.492907, 0.868933, -0.044695,
		41.027824, 36.413269, 44.858257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723618, 35.908154, 45.646412>,  <40.682789, 35.805016, 44.889545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723618, 35.908154, 45.646412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778141, 36.250412, 45.446697>,  <40.810856, 36.455769, 45.326870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778141, 36.250412, 45.446697>,  <40.723618, 35.908154, 45.646412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778141, 36.250412, 45.446697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463377, 0.500527, 0.731270,
		0.875615, 0.131678, 0.464714,
		0.136310, 0.855648, -0.499285,
		40.819035, 36.507107, 45.296913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048061, 36.401180, 46.088612>,  <40.723618, 35.908154, 45.646412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048061, 36.401180, 46.088612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830509, 36.622131, 45.835926>,  <40.699978, 36.754704, 45.684315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830509, 36.622131, 45.835926>,  <41.048061, 36.401180, 46.088612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830509, 36.622131, 45.835926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460550, 0.432808, 0.774965,
		0.701490, 0.712426, 0.019004,
		-0.543881, 0.552382, -0.631718,
		40.667343, 36.787846, 45.646412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089016, 37.023605, 46.344788>,  <41.048061, 36.401180, 46.088612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.089016, 37.023605, 46.344788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770206, 37.040642, 46.103809>,  <40.578918, 37.050865, 45.959225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770206, 37.040642, 46.103809>,  <41.089016, 37.023605, 46.344788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770206, 37.040642, 46.103809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450603, 0.622237, 0.640139,
		0.402128, 0.781669, -0.476746,
		-0.797026, 0.042595, -0.602442,
		40.531097, 37.053421, 45.923077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903339, 37.698845, 46.498032>,  <41.089016, 37.023605, 46.344788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903339, 37.698845, 46.498032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.584797, 37.555756, 46.302956>,  <40.393669, 37.469902, 46.185909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.584797, 37.555756, 46.302956>,  <40.903339, 37.698845, 46.498032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584797, 37.555756, 46.302956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571129, 0.710144, 0.411713,
		0.199051, 0.606407, -0.769837,
		-0.796360, -0.357724, -0.487691,
		40.345890, 37.448437, 46.156647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632366, 38.256386, 46.372505>,  <40.903339, 37.698845, 46.498032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632366, 38.256386, 46.372505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346653, 37.980751, 46.323574>,  <40.175224, 37.815372, 46.294216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346653, 37.980751, 46.323574>,  <40.632366, 38.256386, 46.372505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346653, 37.980751, 46.323574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633509, 0.562324, 0.531468,
		-0.297437, 0.457116, -0.838199,
		-0.714281, -0.689085, -0.122331,
		40.132370, 37.774025, 46.286873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001263, 38.566200, 46.042919>,  <40.632366, 38.256386, 46.372505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001263, 38.566200, 46.042919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931248, 38.270912, 46.303501>,  <39.889236, 38.093739, 46.459850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931248, 38.270912, 46.303501>,  <40.001263, 38.566200, 46.042919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931248, 38.270912, 46.303501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133232, 0.673348, 0.727222,
		-0.975505, 0.040499, -0.216217,
		-0.175041, -0.738216, 0.651458,
		39.878735, 38.049446, 46.498940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232513, 38.392597, 46.056007>,  <40.001263, 38.566200, 46.042919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232513, 38.392597, 46.056007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897091, 38.605549, 46.102295>,  <38.695835, 38.733318, 46.130070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897091, 38.605549, 46.102295>,  <39.232513, 38.392597, 46.056007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897091, 38.605549, 46.102295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378775, -0.722369, 0.578544,
		0.391598, 0.441311, 0.807401,
		-0.838558, 0.532380, 0.115721,
		38.645523, 38.765263, 46.137012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126122, 38.267708, 46.713669>,  <39.232513, 38.392597, 46.056007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126122, 38.267708, 46.713669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800335, 38.352318, 46.497559>,  <38.604862, 38.403084, 46.367893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800335, 38.352318, 46.497559>,  <39.126122, 38.267708, 46.713669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800335, 38.352318, 46.497559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435030, -0.838775, 0.327423,
		-0.383914, 0.501712, 0.775174,
		-0.814468, 0.211522, -0.540278,
		38.555996, 38.415775, 46.335476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649738, 38.453587, 47.215786>,  <39.126122, 38.267708, 46.713669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649738, 38.453587, 47.215786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499332, 38.312126, 46.873199>,  <38.409088, 38.227249, 46.667648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499332, 38.312126, 46.873199>,  <38.649738, 38.453587, 47.215786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499332, 38.312126, 46.873199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563197, -0.646752, 0.514315,
		-0.735811, 0.675754, 0.044016,
		-0.376019, -0.353649, -0.856471,
		38.386528, 38.206032, 46.616257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392750, 37.777737, 47.148556>,  <38.649738, 38.453587, 47.215786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392750, 37.777737, 47.148556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286018, 37.398960, 47.076893>,  <38.221981, 37.171692, 47.033894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286018, 37.398960, 47.076893>,  <38.392750, 37.777737, 47.148556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286018, 37.398960, 47.076893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364268, 0.073013, -0.928427,
		0.892251, -0.312992, 0.325460,
		-0.266828, -0.946945, -0.179159,
		38.205971, 37.114876, 47.023144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933334, 37.543419, 46.634792>,  <38.392750, 37.777737, 47.148556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933334, 37.543419, 46.634792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598248, 37.325130, 46.626659>,  <38.397194, 37.194157, 46.621780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598248, 37.325130, 46.626659>,  <38.933334, 37.543419, 46.634792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598248, 37.325130, 46.626659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205238, -0.280114, -0.937771,
		0.506064, -0.789763, 0.346660,
		-0.837721, -0.545720, -0.020333,
		38.346931, 37.161415, 46.620560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375267, 36.991875, 46.980728>,  <38.933334, 37.543419, 46.634792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375267, 36.991875, 46.980728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443462, 37.298176, 46.732677>,  <39.484379, 37.481956, 46.583847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443462, 37.298176, 46.732677>,  <39.375267, 36.991875, 46.980728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443462, 37.298176, 46.732677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740919, -0.514511, -0.431644,
		-0.649595, -0.385873, -0.655079,
		0.170485, 0.765754, -0.620125,
		39.494610, 37.527901, 46.546638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310795, 36.723995, 46.306198>,  <39.375267, 36.991875, 46.980728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310795, 36.723995, 46.306198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538502, 37.052135, 46.284424>,  <39.675125, 37.249020, 46.271358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538502, 37.052135, 46.284424>,  <39.310795, 36.723995, 46.306198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538502, 37.052135, 46.284424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701824, -0.519370, -0.487542,
		-0.428228, 0.239336, -0.871401,
		0.569266, 0.820349, -0.054438,
		39.709282, 37.298241, 46.268093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284409, 37.019627, 45.558655>,  <39.310795, 36.723995, 46.306198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284409, 37.019627, 45.558655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607788, 37.144711, 45.758102>,  <39.801815, 37.219761, 45.877769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607788, 37.144711, 45.758102>,  <39.284409, 37.019627, 45.558655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607788, 37.144711, 45.758102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587926, -0.389568, -0.708929,
		-0.027444, 0.866284, -0.498797,
		0.808449, 0.312712, 0.498620,
		39.850323, 37.238525, 45.907688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653343, 37.380432, 45.085323>,  <39.284409, 37.019627, 45.558655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653343, 37.380432, 45.085323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927345, 37.266548, 45.353565>,  <40.091747, 37.198219, 45.514511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927345, 37.266548, 45.353565>,  <39.653343, 37.380432, 45.085323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927345, 37.266548, 45.353565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667425, -0.123810, -0.734312,
		0.292091, 0.950586, 0.105210,
		0.685001, -0.284706, 0.670609,
		40.132847, 37.181137, 45.554749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143120, 37.120361, 44.611515>,  <39.653343, 37.380432, 45.085323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143120, 37.120361, 44.611515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356903, 37.156227, 44.947685>,  <40.485172, 37.177746, 45.149387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356903, 37.156227, 44.947685>,  <40.143120, 37.120361, 44.611515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356903, 37.156227, 44.947685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823132, -0.280932, -0.493489,
		0.191856, 0.955530, -0.223950,
		0.534458, 0.089662, 0.840426,
		40.517239, 37.183125, 45.199814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875668, 37.580605, 44.533699>,  <40.143120, 37.120361, 44.611515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875668, 37.580605, 44.533699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867275, 37.268059, 44.783192>,  <40.862240, 37.080532, 44.932888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867275, 37.268059, 44.783192>,  <40.875668, 37.580605, 44.533699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867275, 37.268059, 44.783192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764989, -0.414220, -0.493167,
		0.643702, 0.466795, 0.606424,
		-0.020985, -0.781360, 0.623727,
		40.860981, 37.033649, 44.970310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611862, 37.523003, 44.685532>,  <40.875668, 37.580605, 44.533699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611862, 37.523003, 44.685532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421906, 37.176205, 44.745918>,  <41.307930, 36.968124, 44.782150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421906, 37.176205, 44.745918>,  <41.611862, 37.523003, 44.685532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421906, 37.176205, 44.745918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684488, -0.471710, -0.555847,
		0.553132, -0.160630, 0.817461,
		-0.474890, -0.866999, 0.150968,
		41.279438, 36.916103, 44.791210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.129581, 37.064045, 45.065029>,  <41.611862, 37.523003, 44.685532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.129581, 37.064045, 45.065029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839962, 36.920448, 44.829445>,  <41.666191, 36.834290, 44.688095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839962, 36.920448, 44.829445>,  <42.129581, 37.064045, 45.065029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839962, 36.920448, 44.829445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686479, -0.292024, -0.665934,
		0.067074, -0.886480, 0.457880,
		-0.724049, -0.358992, -0.588963,
		41.622746, 36.812752, 44.652756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.279266, 36.356251, 45.054424>,  <42.129581, 37.064045, 45.065029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.279266, 36.356251, 45.054424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.088928, 36.503319, 44.734829>,  <41.974724, 36.591560, 44.543072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.088928, 36.503319, 44.734829>,  <42.279266, 36.356251, 45.054424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.088928, 36.503319, 44.734829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819152, -0.145503, -0.554814,
		-0.320246, -0.918501, -0.231943,
		-0.475850, 0.367674, -0.798989,
		41.946175, 36.613621, 44.495132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.150215, 35.803146, 44.537445>,  <42.279266, 36.356251, 45.054424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.150215, 35.803146, 44.537445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252941, 36.177792, 44.442108>,  <42.314579, 36.402576, 44.384907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252941, 36.177792, 44.442108>,  <42.150215, 35.803146, 44.537445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.252941, 36.177792, 44.442108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773739, -0.347032, -0.529997,
		-0.579113, -0.048306, -0.813815,
		0.256818, 0.936609, -0.238347,
		42.329987, 36.458775, 44.370605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.481377, 35.485779, 44.156384>,  <42.150215, 35.803146, 44.537445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.481377, 35.485779, 44.156384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.446423, 35.807308, 43.921017>,  <41.425449, 36.000225, 43.779797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.446423, 35.807308, 43.921017>,  <41.481377, 35.485779, 44.156384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446423, 35.807308, 43.921017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030011, -0.588286, -0.808096,
		-0.995722, -0.088278, 0.027286,
		-0.087389, 0.803820, -0.588418,
		41.420204, 36.048454, 43.744492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043625, 35.337952, 43.542782>,  <41.481377, 35.485779, 44.156384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043625, 35.337952, 43.542782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265137, 35.653503, 43.436207>,  <41.398045, 35.842834, 43.372261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265137, 35.653503, 43.436207>,  <41.043625, 35.337952, 43.542782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265137, 35.653503, 43.436207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111314, -0.387250, -0.915230,
		-0.825186, 0.477182, -0.302266,
		0.553784, 0.788882, -0.266436,
		41.431271, 35.890167, 43.356277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944477, 35.468506, 42.845226>,  <41.043625, 35.337952, 43.542782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944477, 35.468506, 42.845226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278149, 35.676533, 42.918621>,  <41.478352, 35.801350, 42.962658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278149, 35.676533, 42.918621>,  <40.944477, 35.468506, 42.845226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278149, 35.676533, 42.918621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278236, -0.109624, -0.954237,
		-0.476157, 0.847058, -0.236149,
		0.834182, 0.520072, 0.183484,
		41.528404, 35.832554, 42.973667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987770, 36.030994, 42.447037>,  <40.944477, 35.468506, 42.845226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987770, 36.030994, 42.447037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.345871, 35.885036, 42.549320>,  <41.560730, 35.797462, 42.610691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.345871, 35.885036, 42.549320>,  <40.987770, 36.030994, 42.447037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345871, 35.885036, 42.549320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286091, 0.030779, -0.957708,
		0.341588, 0.930542, 0.131947,
		0.895248, -0.364891, 0.255706,
		41.614445, 35.775570, 42.626034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544315, 36.437332, 42.251183>,  <40.987770, 36.030994, 42.447037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544315, 36.437332, 42.251183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707066, 36.074898, 42.297569>,  <41.804718, 35.857437, 42.325401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707066, 36.074898, 42.297569>,  <41.544315, 36.437332, 42.251183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707066, 36.074898, 42.297569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501717, 0.115574, -0.857276,
		0.763366, 0.406993, 0.501626,
		0.406880, -0.906090, 0.115970,
		41.829128, 35.803070, 42.332359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195576, 36.454857, 41.899944>,  <41.544315, 36.437332, 42.251183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.195576, 36.454857, 41.899944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.125927, 36.062874, 41.938656>,  <42.084137, 35.827682, 41.961884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.125927, 36.062874, 41.938656>,  <42.195576, 36.454857, 41.899944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.125927, 36.062874, 41.938656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554027, -0.178740, -0.813084,
		0.814087, -0.087953, 0.574045,
		-0.174118, -0.979957, 0.096782,
		42.073692, 35.768887, 41.967690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.817986, 36.176746, 41.813129>,  <42.195576, 36.454857, 41.899944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.817986, 36.176746, 41.813129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.562057, 35.875805, 41.750412>,  <42.408501, 35.695240, 41.712780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.562057, 35.875805, 41.750412>,  <42.817986, 36.176746, 41.813129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.562057, 35.875805, 41.750412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596420, -0.357428, -0.718699,
		0.484674, -0.553358, 0.677412,
		-0.639824, -0.752356, -0.156798,
		42.370110, 35.650097, 41.703373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.243954, 35.563606, 41.511185>,  <42.817986, 36.176746, 41.813129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.243954, 35.563606, 41.511185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.863697, 35.507568, 41.400436>,  <42.635544, 35.473946, 41.333988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.863697, 35.507568, 41.400436>,  <43.243954, 35.563606, 41.511185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.863697, 35.507568, 41.400436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310063, -0.394307, -0.865091,
		0.012027, -0.908237, 0.418283,
		-0.950640, -0.140099, -0.276869,
		42.578506, 35.465538, 41.317375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.235764, 34.911556, 41.118275>,  <43.243954, 35.563606, 41.511185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.235764, 34.911556, 41.118275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.913685, 35.125259, 41.015331>,  <42.720440, 35.253483, 40.953568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.913685, 35.125259, 41.015331>,  <43.235764, 34.911556, 41.118275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.913685, 35.125259, 41.015331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258661, -0.074109, -0.963121,
		-0.533628, -0.842066, -0.078519,
		-0.805193, 0.534259, -0.257356,
		42.672127, 35.285538, 40.938126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.885807, 34.469757, 40.586914>,  <43.235764, 34.911556, 41.118275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.885807, 34.469757, 40.586914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715412, 34.826904, 40.528515>,  <42.613174, 35.041195, 40.493473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715412, 34.826904, 40.528515>,  <42.885807, 34.469757, 40.586914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.715412, 34.826904, 40.528515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107688, -0.210268, -0.971695,
		-0.898296, -0.398209, 0.185724,
		-0.425989, 0.892870, -0.146001,
		42.587616, 35.094765, 40.484715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180275, 34.349648, 40.275131>,  <42.885807, 34.469757, 40.586914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.180275, 34.349648, 40.275131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.270592, 34.726299, 40.175251>,  <42.324783, 34.952290, 40.115322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.270592, 34.726299, 40.175251>,  <42.180275, 34.349648, 40.275131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.270592, 34.726299, 40.175251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283665, -0.181666, -0.941558,
		-0.931962, 0.283428, 0.226089,
		0.225791, 0.941629, -0.249705,
		42.338329, 35.008789, 40.100338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.651794, 34.268753, 39.779186>,  <42.180275, 34.349648, 40.275131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.651794, 34.268753, 39.779186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.819794, 34.615265, 39.670990>,  <42.920593, 34.823174, 39.606071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.819794, 34.615265, 39.670990>,  <42.651794, 34.268753, 39.779186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.819794, 34.615265, 39.670990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692672, -0.113423, 0.712279,
		0.586353, -0.486512, -0.647685,
		0.419995, 0.866280, -0.270487,
		42.945793, 34.875149, 39.589844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.406494, 34.109161, 39.654179>,  <42.651794, 34.268753, 39.779186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.406494, 34.109161, 39.654179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.296272, 34.474083, 39.775352>,  <43.230137, 34.693035, 39.848057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.296272, 34.474083, 39.775352>,  <43.406494, 34.109161, 39.654179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.296272, 34.474083, 39.775352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592800, -0.086804, 0.800658,
		0.756739, 0.400206, -0.516895,
		-0.275559, 0.912305, 0.302930,
		43.213604, 34.747776, 39.866230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.065964, 34.071995, 39.255592>,  <43.406494, 34.109161, 39.654179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.065964, 34.071995, 39.255592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.318153, 33.762360, 39.278553>,  <44.469467, 33.576580, 39.292328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.318153, 33.762360, 39.278553>,  <44.065964, 34.071995, 39.255592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.318153, 33.762360, 39.278553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435420, 0.291478, -0.851734,
		0.642587, 0.561985, 0.520822,
		0.630469, -0.774089, 0.057399,
		44.507294, 33.530132, 39.295773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.743011, 34.343792, 39.222748>,  <44.065964, 34.071995, 39.255592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.743011, 34.343792, 39.222748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.693230, 33.973106, 39.080921>,  <44.663361, 33.750694, 38.995827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.693230, 33.973106, 39.080921>,  <44.743011, 34.343792, 39.222748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.693230, 33.973106, 39.080921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394630, 0.281634, -0.874614,
		0.910372, -0.248774, 0.330656,
		-0.124457, -0.926711, -0.354566,
		44.655891, 33.695091, 38.974552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.448704, 34.160213, 38.938747>,  <44.743011, 34.343792, 39.222748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.448704, 34.160213, 38.938747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.132809, 33.967186, 38.787254>,  <44.943272, 33.851368, 38.696358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.132809, 33.967186, 38.787254>,  <45.448704, 34.160213, 38.938747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.132809, 33.967186, 38.787254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092130, 0.517087, -0.850960,
		0.606485, -0.706929, -0.363905,
		-0.789739, -0.482568, -0.378735,
		44.895885, 33.822414, 38.673634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.692936, 34.173870, 38.340473>,  <45.448704, 34.160213, 38.938747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.692936, 34.173870, 38.340473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.693489, 33.779472, 38.273758>,  <45.693821, 33.542835, 38.233727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.693489, 33.779472, 38.273758>,  <45.692936, 34.173870, 38.340473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.693489, 33.779472, 38.273758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596275, 0.133081, -0.791673,
		0.802779, 0.100550, -0.587737,
		0.001387, -0.985992, -0.166790,
		45.693905, 33.483673, 38.223721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.320206, 34.151306, 37.641068>,  <45.692936, 34.173870, 38.340473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.320206, 34.151306, 37.641068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.330723, 33.759914, 37.722935>,  <45.337032, 33.525078, 37.772057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.330723, 33.759914, 37.722935>,  <45.320206, 34.151306, 37.641068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.330723, 33.759914, 37.722935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427600, -0.196069, -0.882448,
		0.903586, -0.064317, -0.423552,
		0.026289, -0.978479, 0.204667,
		45.338608, 33.466370, 37.784336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.756626, 34.815685, 37.658432>,  <45.320206, 34.151306, 37.641068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.756626, 34.815685, 37.658432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.445549, 34.944675, 37.442577>,  <45.258904, 35.022068, 37.313065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.445549, 34.944675, 37.442577>,  <45.756626, 34.815685, 37.658432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.445549, 34.944675, 37.442577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604876, 0.150008, -0.782063,
		-0.171243, -0.934618, -0.311715,
		-0.777690, 0.322471, -0.539640,
		45.212242, 35.041416, 37.280685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.668179, 34.392853, 37.048450>,  <45.756626, 34.815685, 37.658432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.668179, 34.392853, 37.048450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.570499, 34.779461, 37.016926>,  <45.511890, 35.011425, 36.998013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.570499, 34.779461, 37.016926>,  <45.668179, 34.392853, 37.048450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.570499, 34.779461, 37.016926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660389, 0.106239, -0.743371,
		-0.710109, -0.233573, -0.664221,
		-0.244197, 0.966518, -0.078808,
		45.497242, 35.069416, 36.993282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.902279, 34.572094, 36.455605>,  <45.668179, 34.392853, 37.048450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.902279, 34.572094, 36.455605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.815914, 34.932121, 36.607002>,  <45.764095, 35.148136, 36.697842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.815914, 34.932121, 36.607002>,  <45.902279, 34.572094, 36.455605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.815914, 34.932121, 36.607002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553816, 0.432142, -0.711718,
		-0.804157, 0.055945, -0.591778,
		-0.215915, 0.900069, 0.378493,
		45.751141, 35.202141, 36.720551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.667137, 34.937981, 35.856186>,  <45.902279, 34.572094, 36.455605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.667137, 34.937981, 35.856186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.785030, 35.182507, 36.149967>,  <45.855766, 35.329224, 36.326237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.785030, 35.182507, 36.149967>,  <45.667137, 34.937981, 35.856186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.785030, 35.182507, 36.149967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556302, 0.515159, -0.652028,
		-0.776956, 0.600754, -0.188241,
		0.294734, 0.611315, 0.734456,
		45.873451, 35.365902, 36.370304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.282196, 35.315113, 35.368206>,  <45.667137, 34.937981, 35.856186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.282196, 35.315113, 35.368206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.190041, 35.570255, 35.074249>,  <45.134747, 35.723339, 34.897877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.190041, 35.570255, 35.074249>,  <45.282196, 35.315113, 35.368206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.190041, 35.570255, 35.074249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314216, 0.763513, 0.564195,
		0.920972, -0.100929, -0.376330,
		-0.230390, 0.637856, -0.734888,
		45.120922, 35.761612, 34.853783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.819332, 35.755630, 35.148689>,  <45.282196, 35.315113, 35.368206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.819332, 35.755630, 35.148689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.475941, 35.956047, 35.104916>,  <45.269905, 36.076298, 35.078651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.475941, 35.956047, 35.104916>,  <45.819332, 35.755630, 35.148689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.475941, 35.956047, 35.104916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250237, 0.595479, 0.763405,
		0.447664, 0.627980, -0.636583,
		-0.858474, 0.501045, -0.109431,
		45.218399, 36.106361, 35.072086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.744400, 36.459507, 34.808113>,  <45.819332, 35.755630, 35.148689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.744400, 36.459507, 34.808113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.510132, 36.388256, 35.124405>,  <45.369572, 36.345505, 35.314182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.510132, 36.388256, 35.124405>,  <45.744400, 36.459507, 34.808113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.510132, 36.388256, 35.124405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515928, 0.670480, 0.533174,
		-0.625145, 0.720226, -0.300779,
		-0.585672, -0.178131, 0.790732,
		45.334431, 36.334816, 35.361626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.286449, 36.626789, 34.243130>,  <45.744400, 36.459507, 34.808113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.286449, 36.626789, 34.243130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.553596, 36.505291, 33.971336>,  <46.713882, 36.432392, 33.808262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.553596, 36.505291, 33.971336>,  <46.286449, 36.626789, 34.243130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.553596, 36.505291, 33.971336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029803, -0.923119, 0.383358,
		-0.743687, -0.235781, -0.625570,
		0.667864, -0.303742, -0.679484,
		46.753956, 36.414169, 33.767490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.079597, 36.010067, 33.995712>,  <46.286449, 36.626789, 34.243130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.079597, 36.010067, 33.995712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.478115, 36.040813, 33.980274>,  <46.717224, 36.059261, 33.971012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.478115, 36.040813, 33.980274>,  <46.079597, 36.010067, 33.995712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.478115, 36.040813, 33.980274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085264, -0.941515, 0.326005,
		-0.011276, -0.328087, -0.944580,
		0.996295, 0.076863, -0.038591,
		46.777004, 36.063873, 33.968697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.342949, 35.378620, 33.930714>,  <46.079597, 36.010067, 33.995712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.342949, 35.378620, 33.930714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.648834, 35.575607, 34.096935>,  <46.832367, 35.693802, 34.196667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.648834, 35.575607, 34.096935>,  <46.342949, 35.378620, 33.930714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.648834, 35.575607, 34.096935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307092, -0.845486, 0.436861,
		0.566488, -0.206459, -0.797788,
		0.764713, 0.492471, 0.415556,
		46.878246, 35.723351, 34.221603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.985924, 34.931347, 33.744801>,  <46.342949, 35.378620, 33.930714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.985924, 34.931347, 33.744801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.009869, 35.150261, 34.078720>,  <47.024235, 35.281609, 34.279072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.009869, 35.150261, 34.078720>,  <46.985924, 34.931347, 33.744801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.009869, 35.150261, 34.078720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499892, -0.740312, 0.449495,
		0.864016, 0.390404, -0.317901,
		0.059862, 0.547287, 0.834801,
		47.027828, 35.314445, 34.329159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.702026, 35.100925, 33.984135>,  <46.985924, 34.931347, 33.744801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.702026, 35.100925, 33.984135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.455193, 35.090107, 34.298706>,  <47.307091, 35.083614, 34.487450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.455193, 35.090107, 34.298706>,  <47.702026, 35.100925, 33.984135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.455193, 35.090107, 34.298706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560975, -0.715975, 0.415555,
		0.551825, 0.697601, 0.456992,
		-0.617087, -0.027047, 0.786430,
		47.270065, 35.081993, 34.534634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.054256, 35.292580, 34.752213>,  <47.702026, 35.100925, 33.984135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.054256, 35.292580, 34.752213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.755428, 35.027206, 34.735504>,  <47.576134, 34.867981, 34.725479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.755428, 35.027206, 34.735504>,  <48.054256, 35.292580, 34.752213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.755428, 35.027206, 34.735504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619262, -0.717422, 0.319093,
		-0.241668, 0.212514, 0.946802,
		-0.747068, -0.663433, -0.041775,
		47.531307, 34.828175, 34.722973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.955986, 34.942318, 35.501835>,  <48.054256, 35.292580, 34.752213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.955986, 34.942318, 35.501835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.841515, 34.715389, 35.192966>,  <47.772831, 34.579231, 35.007645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.841515, 34.715389, 35.192966>,  <47.955986, 34.942318, 35.501835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.841515, 34.715389, 35.192966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470403, -0.785259, 0.402602,
		-0.834758, -0.248014, 0.491597,
		-0.286180, -0.567325, -0.772168,
		47.755661, 34.545193, 34.961315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<42.616684, 29.184650, 32.025703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.318523, 29.383619, 31.848186>,  <42.139626, 29.503000, 31.741676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.318523, 29.383619, 31.848186>,  <42.616684, 29.184650, 32.025703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.318523, 29.383619, 31.848186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184647, 0.485621, 0.854446,
		0.640532, 0.718850, -0.270136,
		-0.745402, 0.497420, -0.443789,
		42.094902, 29.532845, 31.715050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662033, 29.875715, 32.102535>,  <42.616684, 29.184650, 32.025703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.662033, 29.875715, 32.102535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.272377, 29.788195, 32.079971>,  <42.038586, 29.735682, 32.066433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.272377, 29.788195, 32.079971>,  <42.662033, 29.875715, 32.102535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.272377, 29.788195, 32.079971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192861, 0.675049, 0.712118,
		-0.117731, 0.704581, -0.699789,
		-0.974137, -0.218801, -0.056412,
		41.980137, 29.722555, 32.063049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262951, 30.476864, 32.263920>,  <42.662033, 29.875715, 32.102535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262951, 30.476864, 32.263920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.990147, 30.186623, 32.300495>,  <41.826466, 30.012478, 32.322441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.990147, 30.186623, 32.300495>,  <42.262951, 30.476864, 32.263920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.990147, 30.186623, 32.300495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285087, 0.378911, 0.880427,
		-0.673489, 0.574392, -0.465281,
		-0.682011, -0.725603, 0.091441,
		41.785542, 29.968941, 32.327927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631310, 30.759623, 32.429939>,  <42.262951, 30.476864, 32.263920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631310, 30.759623, 32.429939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.552349, 30.378563, 32.522457>,  <41.504974, 30.149927, 32.577969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.552349, 30.378563, 32.522457>,  <41.631310, 30.759623, 32.429939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552349, 30.378563, 32.522457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501599, 0.300864, 0.811097,
		-0.842278, 0.044093, -0.537237,
		-0.197399, -0.952647, 0.231294,
		41.493130, 30.092770, 32.591846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893993, 30.658197, 32.505558>,  <41.631310, 30.759623, 32.429939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.893993, 30.658197, 32.505558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.053406, 30.350822, 32.705830>,  <41.149055, 30.166397, 32.825993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.053406, 30.350822, 32.705830>,  <40.893993, 30.658197, 32.505558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053406, 30.350822, 32.705830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504147, 0.272482, 0.819506,
		-0.766163, -0.579015, -0.278811,
		0.398535, -0.768437, 0.500674,
		41.172966, 30.120291, 32.856033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268421, 30.416679, 32.864620>,  <40.893993, 30.658197, 32.505558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268421, 30.416679, 32.864620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.603653, 30.301960, 33.050251>,  <40.804790, 30.233128, 33.161629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.603653, 30.301960, 33.050251>,  <40.268421, 30.416679, 32.864620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603653, 30.301960, 33.050251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379822, 0.303887, 0.873721,
		-0.391610, -0.908515, 0.145748,
		0.838079, -0.286799, 0.464079,
		40.855076, 30.215919, 33.189476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059788, 30.028942, 33.443306>,  <40.268421, 30.416679, 32.864620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059788, 30.028942, 33.443306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.437023, 30.143911, 33.510201>,  <40.663364, 30.212893, 33.550335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.437023, 30.143911, 33.510201>,  <40.059788, 30.028942, 33.443306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437023, 30.143911, 33.510201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248950, 0.276850, 0.928105,
		0.220458, -0.916921, 0.332648,
		0.943092, 0.287420, 0.167234,
		40.719952, 30.230137, 33.560371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318932, 29.605869, 33.894188>,  <40.059788, 30.028942, 33.443306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318932, 29.605869, 33.894188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.530807, 29.941376, 33.944614>,  <40.657936, 30.142679, 33.974869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.530807, 29.941376, 33.944614>,  <40.318932, 29.605869, 33.894188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530807, 29.941376, 33.944614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311660, 0.054242, 0.948644,
		0.788855, -0.541780, 0.290142,
		0.529695, 0.838768, 0.126062,
		40.689716, 30.193007, 33.982433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626133, 29.605244, 34.525745>,  <40.318932, 29.605869, 33.894188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626133, 29.605244, 34.525745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.656631, 30.001888, 34.484005>,  <40.674931, 30.239876, 34.458961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.656631, 30.001888, 34.484005>,  <40.626133, 29.605244, 34.525745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.656631, 30.001888, 34.484005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197531, 0.117601, 0.973217,
		0.977327, -0.053592, 0.204841,
		0.076246, 0.991614, -0.104348,
		40.679504, 30.299372, 34.452702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111580, 29.918024, 35.105633>,  <40.626133, 29.605244, 34.525745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111580, 29.918024, 35.105633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.887554, 30.217907, 34.964626>,  <40.753139, 30.397837, 34.880024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.887554, 30.217907, 34.964626>,  <41.111580, 29.918024, 35.105633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887554, 30.217907, 34.964626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074640, 0.378118, 0.922743,
		0.825081, 0.543106, -0.155812,
		-0.560063, 0.749708, -0.352516,
		40.719536, 30.442820, 34.858871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479050, 30.602732, 35.282730>,  <41.111580, 29.918024, 35.105633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479050, 30.602732, 35.282730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.081394, 30.608303, 35.239830>,  <40.842800, 30.611645, 35.214088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.081394, 30.608303, 35.239830>,  <41.479050, 30.602732, 35.282730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081394, 30.608303, 35.239830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098017, 0.303160, 0.947885,
		0.045716, 0.952838, -0.300017,
		-0.994134, 0.013926, -0.107254,
		40.783154, 30.612480, 35.207653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341930, 31.162134, 35.678345>,  <41.479050, 30.602732, 35.282730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341930, 31.162134, 35.678345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.986237, 30.997820, 35.597828>,  <40.772820, 30.899231, 35.549519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.986237, 30.997820, 35.597828>,  <41.341930, 31.162134, 35.678345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986237, 30.997820, 35.597828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343911, 0.310165, 0.886298,
		-0.301643, 0.857353, -0.417082,
		-0.889234, -0.410784, -0.201294,
		40.719467, 30.874584, 35.537441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882416, 31.726458, 35.664421>,  <41.341930, 31.162134, 35.678345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882416, 31.726458, 35.664421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.673103, 31.389690, 35.717113>,  <40.547516, 31.187630, 35.748730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.673103, 31.389690, 35.717113>,  <40.882416, 31.726458, 35.664421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673103, 31.389690, 35.717113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375653, 0.366655, 0.851146,
		-0.764892, 0.395906, -0.508133,
		-0.523283, -0.841916, 0.131728,
		40.516117, 31.137115, 35.756630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162338, 31.839899, 35.744274>,  <40.882416, 31.726458, 35.664421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162338, 31.839899, 35.744274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.219803, 31.487288, 35.924171>,  <40.254284, 31.275721, 36.032112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.219803, 31.487288, 35.924171>,  <40.162338, 31.839899, 35.744274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219803, 31.487288, 35.924171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520082, 0.319388, 0.792153,
		-0.841947, -0.347709, -0.412581,
		0.143666, -0.881527, 0.449745,
		40.262901, 31.222830, 36.059093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570370, 31.633453, 36.024895>,  <40.162338, 31.839899, 35.744274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570370, 31.633453, 36.024895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.816032, 31.400173, 36.237568>,  <39.963428, 31.260204, 36.365173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.816032, 31.400173, 36.237568>,  <39.570370, 31.633453, 36.024895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816032, 31.400173, 36.237568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395859, 0.355172, 0.846846,
		-0.682722, -0.730567, -0.012735,
		0.614154, -0.583202, 0.531686,
		40.000278, 31.225212, 36.397072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158524, 31.276546, 36.536346>,  <39.570370, 31.633453, 36.024895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158524, 31.276546, 36.536346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.519623, 31.250473, 36.706425>,  <39.736282, 31.234829, 36.808472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.519623, 31.250473, 36.706425>,  <39.158524, 31.276546, 36.536346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519623, 31.250473, 36.706425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395922, 0.260574, 0.880538,
		-0.168193, -0.963251, 0.209425,
		0.902749, -0.065185, 0.425199,
		39.790447, 31.230917, 36.833984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078178, 31.004637, 37.253696>,  <39.158524, 31.276546, 36.536346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078178, 31.004637, 37.253696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.444176, 31.163578, 37.281715>,  <39.663773, 31.258942, 37.298527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.444176, 31.163578, 37.281715>,  <39.078178, 31.004637, 37.253696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444176, 31.163578, 37.281715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176699, 0.238549, 0.954920,
		0.362731, -0.886118, 0.288481,
		0.914988, 0.397353, 0.070047,
		39.718674, 31.282784, 37.302731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178448, 30.850212, 38.004639>,  <39.078178, 31.004637, 37.253696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178448, 30.850212, 38.004639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.469521, 31.098063, 37.886963>,  <39.644165, 31.246773, 37.816357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.469521, 31.098063, 37.886963>,  <39.178448, 30.850212, 38.004639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469521, 31.098063, 37.886963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041778, 0.388066, 0.920684,
		0.684644, -0.682253, 0.256501,
		0.727679, 0.619625, -0.294191,
		39.687824, 31.283951, 37.798706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723476, 30.784094, 38.448395>,  <39.178448, 30.850212, 38.004639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723476, 30.784094, 38.448395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.794163, 31.150537, 38.304440>,  <39.836575, 31.370403, 38.218067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.794163, 31.150537, 38.304440>,  <39.723476, 30.784094, 38.448395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794163, 31.150537, 38.304440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139698, 0.338599, 0.930503,
		0.974298, -0.214706, -0.068143,
		0.176712, 0.916107, -0.359891,
		39.847176, 31.425369, 38.196472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217487, 31.020279, 38.881981>,  <39.723476, 30.784094, 38.448395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217487, 31.020279, 38.881981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.057377, 31.342213, 38.706699>,  <39.961311, 31.535374, 38.601532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.057377, 31.342213, 38.706699>,  <40.217487, 31.020279, 38.881981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057377, 31.342213, 38.706699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149784, 0.529207, 0.835167,
		0.904072, 0.268659, -0.332379,
		-0.400273, 0.804837, -0.438201,
		39.937294, 31.583664, 38.575237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589039, 31.615015, 39.053417>,  <40.217487, 31.020279, 38.881981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589039, 31.615015, 39.053417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.219955, 31.734238, 38.955620>,  <39.998505, 31.805771, 38.896942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.219955, 31.734238, 38.955620>,  <40.589039, 31.615015, 39.053417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219955, 31.734238, 38.955620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003838, 0.641289, 0.767290,
		0.385489, 0.707043, -0.592865,
		-0.922705, 0.298057, -0.244496,
		39.943146, 31.823654, 38.882271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957058, 32.172535, 39.264198>,  <40.589039, 31.615015, 39.053417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957058, 32.172535, 39.264198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.244579, 32.427578, 39.375038>,  <41.417091, 32.580605, 39.441540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.244579, 32.427578, 39.375038>,  <40.957058, 32.172535, 39.264198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244579, 32.427578, 39.375038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564443, -0.302545, -0.768030,
		-0.405866, 0.708467, -0.577362,
		0.718802, 0.637606, 0.277096,
		41.460220, 32.618858, 39.458168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050133, 32.488281, 38.756462>,  <40.957058, 32.172535, 39.264198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050133, 32.488281, 38.756462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.394321, 32.543507, 38.952637>,  <41.600834, 32.576641, 39.070339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.394321, 32.543507, 38.952637>,  <41.050133, 32.488281, 38.756462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394321, 32.543507, 38.952637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509484, -0.226343, -0.830178,
		-0.003608, 0.964214, -0.265101,
		0.860473, 0.138060, 0.490435,
		41.652462, 32.584923, 39.099766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507381, 32.746426, 38.290653>,  <41.050133, 32.488281, 38.756462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.507381, 32.746426, 38.290653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.791359, 32.642048, 38.552303>,  <41.961746, 32.579422, 38.709293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.791359, 32.642048, 38.552303>,  <41.507381, 32.746426, 38.290653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.791359, 32.642048, 38.552303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581177, -0.307509, -0.753440,
		0.397753, 0.915067, -0.066663,
		0.709948, -0.260940, 0.654129,
		42.004345, 32.563766, 38.748543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088837, 32.912663, 38.083778>,  <41.507381, 32.746426, 38.290653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.088837, 32.912663, 38.083778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.226036, 32.643353, 38.345787>,  <42.308353, 32.481766, 38.502995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.226036, 32.643353, 38.345787>,  <42.088837, 32.912663, 38.083778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.226036, 32.643353, 38.345787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678446, -0.304722, -0.668473,
		0.649665, 0.673682, 0.352261,
		0.342996, -0.673274, 0.655024,
		42.328934, 32.441372, 38.542294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.804916, 32.919487, 37.994595>,  <42.088837, 32.912663, 38.083778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.804916, 32.919487, 37.994595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.747147, 32.571407, 38.183022>,  <42.712482, 32.362560, 38.296078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.747147, 32.571407, 38.183022>,  <42.804916, 32.919487, 37.994595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.747147, 32.571407, 38.183022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573999, -0.461451, -0.676453,
		0.806019, 0.172692, 0.566137,
		-0.144426, -0.870196, 0.471064,
		42.703819, 32.310349, 38.324341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.501213, 32.648499, 38.056568>,  <42.804916, 32.919487, 37.994595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.501213, 32.648499, 38.056568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.258255, 32.335045, 38.108719>,  <43.112480, 32.146973, 38.140011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.258255, 32.335045, 38.108719>,  <43.501213, 32.648499, 38.056568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.258255, 32.335045, 38.108719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558162, -0.537760, -0.631877,
		0.565271, -0.311024, 0.764024,
		-0.607391, -0.783631, 0.130379,
		43.076038, 32.099957, 38.147831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.845238, 32.015888, 38.281178>,  <43.501213, 32.648499, 38.056568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.845238, 32.015888, 38.281178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.512245, 31.840330, 38.145912>,  <43.312450, 31.734997, 38.064754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.512245, 31.840330, 38.145912>,  <43.845238, 32.015888, 38.281178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.512245, 31.840330, 38.145912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553436, -0.629861, -0.544962,
		0.026185, -0.640819, 0.767245,
		-0.832480, -0.438891, -0.338159,
		43.262501, 31.708662, 38.044464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.944618, 31.266617, 38.241478>,  <43.845238, 32.015888, 38.281178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.944618, 31.266617, 38.241478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.620792, 31.292883, 38.008141>,  <43.426498, 31.308641, 37.868137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.620792, 31.292883, 38.008141>,  <43.944618, 31.266617, 38.241478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.620792, 31.292883, 38.008141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415092, -0.638639, -0.647949,
		-0.415094, -0.766700, 0.489764,
		-0.809565, 0.065662, -0.583346,
		43.377922, 31.312582, 37.833138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.845387, 30.607481, 37.933426>,  <43.944618, 31.266617, 38.241478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.845387, 30.607481, 37.933426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.645447, 30.876141, 37.714687>,  <43.525482, 31.037336, 37.583443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.645447, 30.876141, 37.714687>,  <43.845387, 30.607481, 37.933426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.645447, 30.876141, 37.714687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252512, -0.490940, -0.833796,
		-0.828486, -0.554856, 0.075796,
		-0.499848, 0.671649, -0.546845,
		43.495491, 31.077635, 37.550632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.433769, 30.235243, 37.421234>,  <43.845387, 30.607481, 37.933426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.433769, 30.235243, 37.421234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.496700, 30.605944, 37.284775>,  <43.534458, 30.828363, 37.202900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.496700, 30.605944, 37.284775>,  <43.433769, 30.235243, 37.421234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.496700, 30.605944, 37.284775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417666, -0.375474, -0.827390,
		-0.894876, -0.012316, -0.446144,
		0.157326, 0.926751, -0.341147,
		43.543900, 30.883968, 37.182430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.136955, 30.196903, 36.707943>,  <43.433769, 30.235243, 37.421234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.136955, 30.196903, 36.707943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.374454, 30.517735, 36.733643>,  <43.516956, 30.710234, 36.749062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.374454, 30.517735, 36.733643>,  <43.136955, 30.196903, 36.707943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.374454, 30.517735, 36.733643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477660, -0.287085, -0.830315,
		-0.647533, 0.523691, -0.553578,
		0.593752, 0.802079, 0.064249,
		43.552582, 30.758358, 36.752918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.132404, 30.382557, 36.035107>,  <43.136955, 30.196903, 36.707943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.132404, 30.382557, 36.035107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.451195, 30.564743, 36.193794>,  <43.642467, 30.674055, 36.289005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.451195, 30.564743, 36.193794>,  <43.132404, 30.382557, 36.035107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451195, 30.564743, 36.193794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482696, -0.085437, -0.871611,
		-0.363096, 0.886143, -0.287943,
		0.796973, 0.455467, 0.396716,
		43.690285, 30.701384, 36.312809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.278240, 30.920679, 35.656418>,  <43.132404, 30.382557, 36.035107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.278240, 30.920679, 35.656418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.616058, 30.800953, 35.834026>,  <43.818748, 30.729116, 35.940590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.616058, 30.800953, 35.834026>,  <43.278240, 30.920679, 35.656418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.616058, 30.800953, 35.834026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399878, -0.198971, -0.894711,
		0.356150, 0.933177, -0.048350,
		0.844544, -0.299317, 0.444020,
		43.869423, 30.711157, 35.967232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.809608, 31.238449, 35.298805>,  <43.278240, 30.920679, 35.656418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.809608, 31.238449, 35.298805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.958130, 30.907879, 35.468109>,  <44.047245, 30.709536, 35.569691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.958130, 30.907879, 35.468109>,  <43.809608, 31.238449, 35.298805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.958130, 30.907879, 35.468109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559073, -0.164963, -0.812542,
		0.741329, 0.538336, 0.400781,
		0.371306, -0.826427, 0.423261,
		44.069523, 30.659950, 35.595089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.531433, 31.285234, 35.370754>,  <43.809608, 31.238449, 35.298805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.531433, 31.285234, 35.370754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.445492, 30.895704, 35.341091>,  <44.393929, 30.661985, 35.323292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.445492, 30.895704, 35.341091>,  <44.531433, 31.285234, 35.370754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.445492, 30.895704, 35.341091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534025, -0.053566, -0.843770,
		0.817714, -0.220889, 0.531556,
		-0.214852, -0.973827, -0.074159,
		44.381035, 30.603556, 35.318844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.213924, 30.909307, 35.169975>,  <44.531433, 31.285234, 35.370754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.213924, 30.909307, 35.169975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.907658, 30.658564, 35.112293>,  <44.723896, 30.508118, 35.077682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.907658, 30.658564, 35.112293>,  <45.213924, 30.909307, 35.169975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.907658, 30.658564, 35.112293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337961, -0.201297, -0.919381,
		0.547295, -0.752679, 0.365982,
		-0.765670, -0.626860, -0.144207,
		44.677956, 30.470505, 35.069031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.459747, 30.466959, 34.623581>,  <45.213924, 30.909307, 35.169975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.459747, 30.466959, 34.623581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.070000, 30.377542, 34.613499>,  <44.836151, 30.323893, 34.607449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.070000, 30.377542, 34.613499>,  <45.459747, 30.466959, 34.623581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.070000, 30.377542, 34.613499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069426, -0.192232, -0.978891,
		0.213977, -0.955550, 0.202824,
		-0.974369, -0.223542, -0.025206,
		44.777691, 30.310480, 34.605938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.381138, 29.718719, 34.258331>,  <45.459747, 30.466959, 34.623581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.381138, 29.718719, 34.258331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.044865, 29.934521, 34.239628>,  <44.843102, 30.064001, 34.228405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.044865, 29.934521, 34.239628>,  <45.381138, 29.718719, 34.258331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.044865, 29.934521, 34.239628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016003, -0.111055, -0.993685,
		-0.541291, -0.834626, 0.101996,
		-0.840683, 0.539506, -0.046756,
		44.792660, 30.096373, 34.225601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.036896, 29.366381, 33.730240>,  <45.381138, 29.718719, 34.258331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.036896, 29.366381, 33.730240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.832188, 29.708496, 33.762672>,  <44.709362, 29.913765, 33.782131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.832188, 29.708496, 33.762672>,  <45.036896, 29.366381, 33.730240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.832188, 29.708496, 33.762672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212562, -0.034612, -0.976534,
		-0.832411, -0.516997, 0.199515,
		-0.511771, 0.855287, 0.081083,
		44.678658, 29.965082, 33.786999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<44.414265, 29.275604, 33.304401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.470623, 29.669001, 33.349815>,  <44.504440, 29.905039, 33.377064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.470623, 29.669001, 33.349815>,  <44.414265, 29.275604, 33.304401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.470623, 29.669001, 33.349815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289820, 0.150630, -0.945153,
		-0.946652, 0.100268, 0.306260,
		0.140901, 0.983492, 0.113535,
		44.512894, 29.964048, 33.383877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.840343, 29.623455, 33.108955>,  <44.414265, 29.275604, 33.304401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.840343, 29.623455, 33.108955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.118126, 29.903519, 33.042610>,  <44.284794, 30.071556, 33.002804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.118126, 29.903519, 33.042610>,  <43.840343, 29.623455, 33.108955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.118126, 29.903519, 33.042610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358767, 0.137118, -0.923301,
		-0.623715, 0.700697, 0.346416,
		0.694454, 0.700159, -0.165864,
		44.326462, 30.113565, 32.992851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.528255, 29.875530, 32.619377>,  <43.840343, 29.623455, 33.108955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.528255, 29.875530, 32.619377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.884064, 30.057844, 32.606682>,  <44.097549, 30.167233, 32.599064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.884064, 30.057844, 32.606682>,  <43.528255, 29.875530, 32.619377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.884064, 30.057844, 32.606682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113012, 0.152178, -0.981871,
		-0.442693, 0.876984, 0.186876,
		0.889523, 0.455786, -0.031741,
		44.150921, 30.194580, 32.597160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.428928, 30.458920, 32.142830>,  <43.528255, 29.875530, 32.619377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.428928, 30.458920, 32.142830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.822117, 30.387346, 32.159584>,  <44.058029, 30.344402, 32.169636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.822117, 30.387346, 32.159584>,  <43.428928, 30.458920, 32.142830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.822117, 30.387346, 32.159584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040949, -0.008942, -0.999121,
		0.179149, 0.983821, -0.001463,
		0.982969, -0.178932, 0.041888,
		44.117008, 30.333666, 32.172150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.728649, 30.878384, 31.625347>,  <43.428928, 30.458920, 32.142830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.728649, 30.878384, 31.625347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.028652, 30.626116, 31.705099>,  <44.208652, 30.474754, 31.752951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.028652, 30.626116, 31.705099>,  <43.728649, 30.878384, 31.625347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.028652, 30.626116, 31.705099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087700, -0.203955, -0.975044,
		0.655594, 0.748772, -0.097657,
		0.750003, -0.630669, 0.199379,
		44.253654, 30.436914, 31.764914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.354473, 31.098049, 31.202892>,  <43.728649, 30.878384, 31.625347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.354473, 31.098049, 31.202892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.394665, 30.709848, 31.290558>,  <44.418781, 30.476929, 31.343157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.394665, 30.709848, 31.290558>,  <44.354473, 31.098049, 31.202892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.394665, 30.709848, 31.290558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170028, -0.200290, -0.964870,
		0.980303, 0.134218, 0.144887,
		0.100484, -0.970500, 0.219165,
		44.424809, 30.418699, 31.356308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.753609, 30.963350, 30.749044>,  <44.354473, 31.098049, 31.202892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.753609, 30.963350, 30.749044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.630920, 30.592552, 30.835394>,  <44.557308, 30.370073, 30.887203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.630920, 30.592552, 30.835394>,  <44.753609, 30.963350, 30.749044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.630920, 30.592552, 30.835394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315265, -0.312951, -0.895918,
		0.898071, -0.206736, 0.388237,
		-0.306718, -0.926996, 0.215876,
		44.538906, 30.314453, 30.900156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.348843, 30.576302, 30.570116>,  <44.753609, 30.963350, 30.749044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.348843, 30.576302, 30.570116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.026993, 30.339615, 30.550314>,  <44.833881, 30.197603, 30.538433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.026993, 30.339615, 30.550314>,  <45.348843, 30.576302, 30.570116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.026993, 30.339615, 30.550314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196061, -0.186060, -0.962778,
		0.560480, -0.784382, 0.265721,
		-0.804625, -0.591715, -0.049504,
		44.785606, 30.162100, 30.535463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.641121, 29.993944, 30.231743>,  <45.348843, 30.576302, 30.570116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.641121, 29.993944, 30.231743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.243557, 30.022114, 30.197824>,  <45.005020, 30.039015, 30.177473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.243557, 30.022114, 30.197824>,  <45.641121, 29.993944, 30.231743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.243557, 30.022114, 30.197824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062504, -0.273568, -0.959820,
		-0.090789, -0.959271, 0.267499,
		-0.993907, 0.070421, -0.084795,
		44.945385, 30.043240, 30.172386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.522533, 29.420532, 29.770088>,  <45.641121, 29.993944, 30.231743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.522533, 29.420532, 29.770088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.161430, 29.585957, 29.722775>,  <44.944767, 29.685211, 29.694387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.161430, 29.585957, 29.722775>,  <45.522533, 29.420532, 29.770088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.161430, 29.585957, 29.722775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045490, -0.181652, -0.982310,
		-0.427730, -0.892172, 0.145176,
		-0.902761, 0.413559, -0.118283,
		44.890602, 29.710024, 29.687290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.156551, 28.962664, 29.394701>,  <45.522533, 29.420532, 29.770088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.156551, 28.962664, 29.394701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.006458, 29.330099, 29.345066>,  <44.916401, 29.550560, 29.315285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.006458, 29.330099, 29.345066>,  <45.156551, 28.962664, 29.394701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.006458, 29.330099, 29.345066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234431, -0.035472, -0.971485,
		-0.896795, -0.393625, -0.202034,
		-0.375234, 0.918587, -0.124089,
		44.893887, 29.605675, 29.307838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.717583, 28.961252, 28.875332>,  <45.156551, 28.962664, 29.394701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.717583, 28.961252, 28.875332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.793224, 29.353973, 28.868313>,  <44.838608, 29.589605, 28.864101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.793224, 29.353973, 28.868313>,  <44.717583, 28.961252, 28.875332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.793224, 29.353973, 28.868313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161350, -0.048697, -0.985695,
		-0.968611, 0.183565, -0.167623,
		0.189102, 0.981801, -0.017550,
		44.849957, 29.648514, 28.863049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.277908, 29.176685, 28.290789>,  <44.717583, 28.961252, 28.875332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.277908, 29.176685, 28.290789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.555473, 29.457077, 28.356649>,  <44.722012, 29.625313, 28.396166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.555473, 29.457077, 28.356649>,  <44.277908, 29.176685, 28.290789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.555473, 29.457077, 28.356649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146705, 0.086236, -0.985414,
		-0.704955, 0.707948, -0.042997,
		0.693914, 0.700980, 0.164652,
		44.763649, 29.667372, 28.406046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.072514, 29.729898, 27.903973>,  <44.277908, 29.176685, 28.290789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.072514, 29.729898, 27.903973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.460590, 29.802460, 27.968237>,  <44.693436, 29.845997, 28.006796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.460590, 29.802460, 27.968237>,  <44.072514, 29.729898, 27.903973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.460590, 29.802460, 27.968237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139985, 0.121615, -0.982657,
		-0.197796, 0.975860, 0.092596,
		0.970196, 0.181404, 0.160661,
		44.751648, 29.856880, 28.016436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.192097, 30.361635, 27.586763>,  <44.072514, 29.729898, 27.903973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.192097, 30.361635, 27.586763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.551601, 30.187548, 27.607986>,  <44.767303, 30.083096, 27.620720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.551601, 30.187548, 27.607986>,  <44.192097, 30.361635, 27.586763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.551601, 30.187548, 27.607986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130274, 0.149531, -0.980137,
		0.418640, 0.887820, 0.191090,
		0.898760, -0.435219, 0.053060,
		44.821228, 30.056982, 27.623905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.621700, 30.795343, 27.198011>,  <44.192097, 30.361635, 27.586763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.621700, 30.795343, 27.198011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.808350, 30.442089, 27.217329>,  <44.920338, 30.230137, 27.228920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.808350, 30.442089, 27.217329>,  <44.621700, 30.795343, 27.198011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.808350, 30.442089, 27.217329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340100, 0.128758, -0.931533,
		0.816453, 0.451100, 0.360436,
		0.466623, -0.883137, 0.048294,
		44.948338, 30.177149, 27.231817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.264755, 30.986002, 27.077627>,  <44.621700, 30.795343, 27.198011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.264755, 30.986002, 27.077627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.253159, 30.591253, 27.014074>,  <45.246201, 30.354404, 26.975943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.253159, 30.591253, 27.014074>,  <45.264755, 30.986002, 27.077627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.253159, 30.591253, 27.014074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494861, 0.123935, -0.860089,
		0.868489, -0.103561, 0.484771,
		-0.028992, -0.986871, -0.158884,
		45.244461, 30.295193, 26.966410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.801144, 30.943718, 26.689253>,  <45.264755, 30.986002, 27.077627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.801144, 30.943718, 26.689253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.612377, 30.598513, 26.617132>,  <45.499119, 30.391390, 26.573860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.612377, 30.598513, 26.617132>,  <45.801144, 30.943718, 26.689253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.612377, 30.598513, 26.617132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439273, -0.052845, -0.896798,
		0.764419, -0.502413, 0.404036,
		-0.471914, -0.863012, -0.180300,
		45.470802, 30.339609, 26.563042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.271004, 30.485075, 26.323463>,  <45.801144, 30.943718, 26.689253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.271004, 30.485075, 26.323463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.907139, 30.348259, 26.229204>,  <45.688820, 30.266169, 26.172649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.907139, 30.348259, 26.229204>,  <46.271004, 30.485075, 26.323463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.907139, 30.348259, 26.229204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319916, -0.215131, -0.922698,
		0.264905, -0.914728, 0.305120,
		-0.909659, -0.342040, -0.235647,
		45.634243, 30.245647, 26.158510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.362812, 29.934376, 25.732477>,  <46.271004, 30.485075, 26.323463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.362812, 29.934376, 25.732477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.974766, 30.031393, 25.729994>,  <45.741936, 30.089603, 25.728504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.974766, 30.031393, 25.729994>,  <46.362812, 29.934376, 25.732477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.974766, 30.031393, 25.729994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018426, -0.099170, -0.994900,
		-0.241923, -0.965058, 0.100676,
		-0.970121, 0.242545, -0.006209,
		45.683731, 30.104156, 25.728130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.946579, 29.386904, 25.514204>,  <46.362812, 29.934376, 25.732477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.946579, 29.386904, 25.514204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.722385, 29.708023, 25.432842>,  <45.587868, 29.900694, 25.384026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.722385, 29.708023, 25.432842>,  <45.946579, 29.386904, 25.514204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.722385, 29.708023, 25.432842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127355, -0.326239, -0.936669,
		-0.818316, -0.499081, 0.285091,
		-0.560482, 0.802799, -0.203406,
		45.554241, 29.948862, 25.371820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.388260, 29.112267, 25.111845>,  <45.946579, 29.386904, 25.514204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.388260, 29.112267, 25.111845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.413456, 29.503016, 25.030115>,  <45.428574, 29.737465, 24.981077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.413456, 29.503016, 25.030115>,  <45.388260, 29.112267, 25.111845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.413456, 29.503016, 25.030115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126339, -0.195279, -0.972576,
		-0.989985, 0.087081, 0.111116,
		0.062994, 0.976874, -0.204325,
		45.432354, 29.796078, 24.968817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.934834, 29.243752, 24.623306>,  <45.388260, 29.112267, 25.111845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.934834, 29.243752, 24.623306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.217888, 29.522432, 24.576208>,  <45.387718, 29.689640, 24.547949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.217888, 29.522432, 24.576208>,  <44.934834, 29.243752, 24.623306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.217888, 29.522432, 24.576208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005227, -0.171797, -0.985119,
		-0.706562, 0.696486, -0.125210,
		0.707632, 0.696701, -0.117745,
		45.430176, 29.731443, 24.540884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.795090, 29.843592, 24.164526>,  <44.934834, 29.243752, 24.623306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.795090, 29.843592, 24.164526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.187107, 29.766390, 24.145493>,  <45.422318, 29.720068, 24.134073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.187107, 29.766390, 24.145493>,  <44.795090, 29.843592, 24.164526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.187107, 29.766390, 24.145493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068571, -0.103559, -0.992257,
		0.186582, 0.975718, -0.114727,
		0.980043, -0.193004, -0.047583,
		45.481121, 29.708488, 24.131218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.231468, 29.490314, 23.715137>,  <44.795090, 29.843592, 24.164526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.231468, 29.490314, 23.715137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.840641, 29.567732, 23.679634>,  <43.606144, 29.614182, 23.658333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.840641, 29.567732, 23.679634>,  <44.231468, 29.490314, 23.715137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.840641, 29.567732, 23.679634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134303, -0.236723, 0.962250,
		0.165224, 0.952105, 0.257287,
		-0.977069, 0.193542, -0.088758,
		43.547520, 29.625793, 23.653008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.080502, 29.932631, 24.322672>,  <44.231468, 29.490314, 23.715137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.080502, 29.932631, 24.322672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.760574, 29.719654, 24.211824>,  <43.568619, 29.591867, 24.145315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.760574, 29.719654, 24.211824>,  <44.080502, 29.932631, 24.322672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.760574, 29.719654, 24.211824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185689, -0.219551, 0.957767,
		-0.570796, 0.817499, 0.076733,
		-0.799820, -0.532440, -0.277120,
		43.520630, 29.559921, 24.128689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.515289, 30.214886, 24.693512>,  <44.080502, 29.932631, 24.322672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.515289, 30.214886, 24.693512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.379665, 29.850834, 24.598261>,  <43.298290, 29.632402, 24.541111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.379665, 29.850834, 24.598261>,  <43.515289, 30.214886, 24.693512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.379665, 29.850834, 24.598261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491241, -0.044587, 0.869882,
		-0.802321, 0.411922, -0.431974,
		-0.339063, -0.910128, -0.238126,
		43.277946, 29.577795, 24.526823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.748768, 30.176508, 24.858276>,  <43.515289, 30.214886, 24.693512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.748768, 30.176508, 24.858276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.898163, 29.805611, 24.869030>,  <42.987801, 29.583073, 24.875483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.898163, 29.805611, 24.869030>,  <42.748768, 30.176508, 24.858276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.898163, 29.805611, 24.869030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413374, -0.140420, 0.899669,
		-0.830438, -0.347131, -0.435744,
		0.373490, -0.927244, 0.026885,
		43.010208, 29.527437, 24.877096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110825, 29.768211, 25.017519>,  <42.748768, 30.176508, 24.858276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110825, 29.768211, 25.017519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.438168, 29.568804, 25.131899>,  <42.634575, 29.449160, 25.200527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.438168, 29.568804, 25.131899>,  <42.110825, 29.768211, 25.017519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.438168, 29.568804, 25.131899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371279, -0.078808, 0.925171,
		-0.438682, -0.863288, -0.249583,
		0.818358, -0.498521, 0.285949,
		42.683674, 29.419249, 25.217684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.851215, 29.192472, 25.493927>,  <42.110825, 29.768211, 25.017519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.851215, 29.192472, 25.493927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.247818, 29.186859, 25.545652>,  <42.485779, 29.183491, 25.576687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.247818, 29.186859, 25.545652>,  <41.851215, 29.192472, 25.493927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247818, 29.186859, 25.545652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130056, -0.091398, 0.987285,
		-0.002036, -0.995715, -0.092447,
		0.991504, -0.014033, 0.129313,
		42.545269, 29.182650, 25.584446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072021, 28.661448, 25.882505>,  <41.851215, 29.192472, 25.493927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072021, 28.661448, 25.882505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.364376, 28.923279, 25.959784>,  <42.539791, 29.080378, 26.006151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.364376, 28.923279, 25.959784>,  <42.072021, 28.661448, 25.882505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.364376, 28.923279, 25.959784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225258, -0.035847, 0.973639,
		0.644251, -0.755142, 0.121250,
		0.730889, 0.654581, 0.193197,
		42.583641, 29.119654, 26.017742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346054, 28.406355, 26.503666>,  <42.072021, 28.661448, 25.882505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.346054, 28.406355, 26.503666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.505383, 28.772539, 26.480801>,  <42.600979, 28.992250, 26.467081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.505383, 28.772539, 26.480801>,  <42.346054, 28.406355, 26.503666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505383, 28.772539, 26.480801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112461, 0.013109, 0.993569,
		0.910325, -0.402189, -0.097732,
		0.398322, 0.915463, -0.057164,
		42.624878, 29.047178, 26.463652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.946457, 28.356928, 26.872648>,  <42.346054, 28.406355, 26.503666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.946457, 28.356928, 26.872648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.831169, 28.739775, 26.884354>,  <42.761997, 28.969482, 26.891376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.831169, 28.739775, 26.884354>,  <42.946457, 28.356928, 26.872648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.831169, 28.739775, 26.884354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075720, -0.053247, 0.995707,
		0.954565, 0.284770, 0.087820,
		-0.288224, 0.957116, 0.029265,
		42.744701, 29.026909, 26.893133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.284195, 28.571785, 27.408384>,  <42.946457, 28.356928, 26.872648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.284195, 28.571785, 27.408384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.023819, 28.872066, 27.363274>,  <42.867592, 29.052235, 27.336206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.023819, 28.872066, 27.363274>,  <43.284195, 28.571785, 27.408384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.023819, 28.872066, 27.363274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042266, 0.112491, 0.992753,
		0.757950, 0.650992, -0.041496,
		-0.650942, 0.750703, -0.112778,
		42.828537, 29.097277, 27.329441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.445240, 29.225298, 27.675982>,  <43.284195, 28.571785, 27.408384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.445240, 29.225298, 27.675982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.051098, 29.293306, 27.681288>,  <42.814613, 29.334112, 27.684471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.051098, 29.293306, 27.681288>,  <43.445240, 29.225298, 27.675982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051098, 29.293306, 27.681288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035975, 0.131208, 0.990702,
		0.166702, 0.976666, -0.135403,
		-0.985351, 0.170023, 0.013263,
		42.755493, 29.344313, 27.685266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.342560, 29.856716, 28.083706>,  <43.445240, 29.225298, 27.675982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.342560, 29.856716, 28.083706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.992485, 29.663376, 28.075502>,  <42.782440, 29.547371, 28.070580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.992485, 29.663376, 28.075502>,  <43.342560, 29.856716, 28.083706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.992485, 29.663376, 28.075502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207159, 0.336111, 0.918757,
		-0.437189, 0.808332, -0.394291,
		-0.875186, -0.483351, -0.020509,
		42.729931, 29.518370, 28.069349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.893780, 30.295223, 28.504564>,  <43.342560, 29.856716, 28.083706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.893780, 30.295223, 28.504564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.698997, 29.948086, 28.465124>,  <42.582127, 29.739803, 28.441460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.698997, 29.948086, 28.465124>,  <42.893780, 30.295223, 28.504564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.698997, 29.948086, 28.465124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386193, 0.112680, 0.915510,
		-0.783409, 0.483891, -0.390025,
		-0.486955, -0.867843, -0.098601,
		42.552910, 29.687733, 28.435543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320877, 30.441002, 28.861240>,  <42.893780, 30.295223, 28.504564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320877, 30.441002, 28.861240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.337116, 30.041340, 28.858730>,  <42.346859, 29.801542, 28.857225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.337116, 30.041340, 28.858730>,  <42.320877, 30.441002, 28.861240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.337116, 30.041340, 28.858730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375801, -0.021087, 0.926461,
		-0.925811, -0.035257, -0.376340,
		0.040600, -0.999156, -0.006273,
		42.349297, 29.741592, 28.856848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596672, 30.187574, 28.980804>,  <42.320877, 30.441002, 28.861240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596672, 30.187574, 28.980804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.839413, 29.889816, 29.092237>,  <41.985058, 29.711161, 29.159098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.839413, 29.889816, 29.092237>,  <41.596672, 30.187574, 28.980804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839413, 29.889816, 29.092237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471465, -0.054956, 0.880171,
		-0.639885, -0.665474, -0.384306,
		0.606851, -0.744395, 0.278582,
		42.021469, 29.666498, 29.175812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206944, 29.801828, 29.377901>,  <41.596672, 30.187574, 28.980804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206944, 29.801828, 29.377901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.573036, 29.682920, 29.486700>,  <41.792690, 29.611576, 29.551979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.573036, 29.682920, 29.486700>,  <41.206944, 29.801828, 29.377901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.573036, 29.682920, 29.486700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285177, -0.001007, 0.958474,
		-0.284653, -0.954793, -0.085696,
		0.915230, -0.297271, 0.271998,
		41.847607, 29.593739, 29.568300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052422, 29.228662, 29.880888>,  <41.206944, 29.801828, 29.377901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052422, 29.228662, 29.880888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.421124, 29.362953, 29.958504>,  <41.642345, 29.443527, 30.005074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.421124, 29.362953, 29.958504>,  <41.052422, 29.228662, 29.880888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421124, 29.362953, 29.958504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151043, -0.150021, 0.977077,
		0.357142, -0.929936, -0.087573,
		0.921757, 0.335728, 0.194039,
		41.697651, 29.463671, 30.016716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335606, 28.799324, 30.425045>,  <41.052422, 29.228662, 29.880888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335606, 28.799324, 30.425045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.584972, 29.111074, 30.450115>,  <41.734592, 29.298124, 30.465157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.584972, 29.111074, 30.450115>,  <41.335606, 28.799324, 30.425045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.584972, 29.111074, 30.450115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132142, 0.026017, 0.990889,
		0.770644, -0.626017, 0.119207,
		0.623415, 0.779375, 0.062673,
		41.771996, 29.344887, 30.468918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741680, 28.661612, 30.931807>,  <41.335606, 28.799324, 30.425045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741680, 28.661612, 30.931807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.800102, 29.055506, 30.893936>,  <41.835155, 29.291842, 30.871214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.800102, 29.055506, 30.893936>,  <41.741680, 28.661612, 30.931807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800102, 29.055506, 30.893936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101728, 0.110146, 0.988696,
		0.984033, -0.134769, 0.116262,
		0.146051, 0.984736, -0.094678,
		41.843918, 29.350927, 30.865532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.248177, 28.736420, 31.416294>,  <41.741680, 28.661612, 30.931807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.248177, 28.736420, 31.416294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.088791, 29.098576, 31.357651>,  <41.993160, 29.315868, 31.322466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.088791, 29.098576, 31.357651>,  <42.248177, 28.736420, 31.416294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.088791, 29.098576, 31.357651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107227, 0.204734, 0.972927,
		0.910893, 0.371959, -0.178662,
		-0.398467, 0.905390, -0.146607,
		41.969250, 29.370192, 31.313669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.790863, 30.465410, 36.679745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.558342, 30.647581, 36.410027>,  <44.418831, 30.756884, 36.248196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.558342, 30.647581, 36.410027>,  <44.790863, 30.465410, 36.679745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.558342, 30.647581, 36.410027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621336, 0.286629, 0.729236,
		0.525386, 0.842871, 0.116355,
		-0.581301, 0.455426, -0.674297,
		44.383953, 30.784208, 36.207737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.778297, 31.226921, 36.812931>,  <44.790863, 30.465410, 36.679745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.778297, 31.226921, 36.812931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.437183, 31.093664, 36.652050>,  <44.232513, 31.013710, 36.555519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.437183, 31.093664, 36.652050>,  <44.778297, 31.226921, 36.812931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.437183, 31.093664, 36.652050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509068, 0.358247, 0.782629,
		-0.116639, 0.872166, -0.475101,
		-0.852787, -0.333144, -0.402207,
		44.181347, 30.993721, 36.531387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.370949, 31.792501, 36.885815>,  <44.778297, 31.226921, 36.812931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.370949, 31.792501, 36.885815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.129925, 31.478390, 36.828884>,  <43.985310, 31.289923, 36.794727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.129925, 31.478390, 36.828884>,  <44.370949, 31.792501, 36.885815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.129925, 31.478390, 36.828884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667205, 0.397828, 0.629738,
		-0.437901, 0.474413, -0.763659,
		-0.602561, -0.785280, -0.142322,
		43.949158, 31.242805, 36.786186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.751663, 32.072960, 36.696278>,  <44.370949, 31.792501, 36.885815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.751663, 32.072960, 36.696278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.677280, 31.708513, 36.843399>,  <43.632648, 31.489845, 36.931671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.677280, 31.708513, 36.843399>,  <43.751663, 32.072960, 36.696278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.677280, 31.708513, 36.843399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659596, 0.393210, 0.640561,
		-0.728253, -0.123486, -0.674091,
		-0.185959, -0.911118, 0.367807,
		43.621494, 31.435177, 36.953743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.011929, 31.996201, 36.788086>,  <43.751663, 32.072960, 36.696278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.011929, 31.996201, 36.788086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.173565, 31.728836, 37.037865>,  <43.270546, 31.568419, 37.187733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.173565, 31.728836, 37.037865>,  <43.011929, 31.996201, 36.788086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.173565, 31.728836, 37.037865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678919, 0.238335, 0.694453,
		-0.613008, -0.704574, -0.357487,
		0.404091, -0.668410, 0.624450,
		43.294792, 31.528313, 37.225201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.460747, 31.820889, 37.096870>,  <43.011929, 31.996201, 36.788086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.460747, 31.820889, 37.096870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.748642, 31.665991, 37.327354>,  <42.921379, 31.573053, 37.465645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.748642, 31.665991, 37.327354>,  <42.460747, 31.820889, 37.096870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.748642, 31.665991, 37.327354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462663, 0.351267, 0.813974,
		-0.517610, -0.852440, 0.073657,
		0.719738, -0.387243, 0.576212,
		42.964561, 31.549818, 37.500217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184505, 31.189608, 37.564751>,  <42.460747, 31.820889, 37.096870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.184505, 31.189608, 37.564751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.513779, 31.362608, 37.711891>,  <42.711342, 31.466408, 37.800175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.513779, 31.362608, 37.711891>,  <42.184505, 31.189608, 37.564751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.513779, 31.362608, 37.711891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499401, 0.243299, 0.831507,
		0.270142, -0.868181, 0.416276,
		0.823178, 0.432513, 0.367845,
		42.760735, 31.492357, 37.822247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.117809, 31.146975, 38.223545>,  <42.184505, 31.189608, 37.564751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.117809, 31.146975, 38.223545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.393658, 31.436592, 38.218067>,  <42.559166, 31.610363, 38.214779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.393658, 31.436592, 38.218067>,  <42.117809, 31.146975, 38.223545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.393658, 31.436592, 38.218067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451220, 0.444410, 0.773886,
		0.566414, -0.527507, 0.633176,
		0.689620, 0.724042, -0.013698,
		42.600544, 31.653805, 38.213959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408657, 31.184446, 38.854195>,  <42.117809, 31.146975, 38.223545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.408657, 31.184446, 38.854195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.498295, 31.540619, 38.695744>,  <42.552078, 31.754322, 38.600674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.498295, 31.540619, 38.695744>,  <42.408657, 31.184446, 38.854195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498295, 31.540619, 38.695744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243074, 0.444686, 0.862073,
		0.943766, -0.096901, 0.316094,
		0.224099, 0.890430, -0.396125,
		42.565525, 31.807747, 38.576904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.564358, 31.535561, 39.397015>,  <42.408657, 31.184446, 38.854195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.564358, 31.535561, 39.397015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.523235, 31.834139, 39.134033>,  <42.498562, 32.013287, 38.976242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.523235, 31.834139, 39.134033>,  <42.564358, 31.535561, 39.397015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.523235, 31.834139, 39.134033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251679, 0.619931, 0.743198,
		0.962335, 0.241874, 0.124131,
		-0.102808, 0.746447, -0.657456,
		42.492393, 32.058071, 38.936798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.835384, 32.138512, 39.595608>,  <42.564358, 31.535561, 39.397015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.835384, 32.138512, 39.595608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.568268, 32.297756, 39.344032>,  <42.407997, 32.393303, 39.193089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.568268, 32.297756, 39.344032>,  <42.835384, 32.138512, 39.595608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.568268, 32.297756, 39.344032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378160, 0.546328, 0.747342,
		0.641131, 0.736908, -0.214285,
		-0.667792, 0.398110, -0.628937,
		42.367931, 32.417191, 39.155350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671501, 32.840370, 39.871429>,  <42.835384, 32.138512, 39.595608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671501, 32.840370, 39.871429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.370361, 32.764275, 39.619389>,  <42.189678, 32.718616, 39.468163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.370361, 32.764275, 39.619389>,  <42.671501, 32.840370, 39.871429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.370361, 32.764275, 39.619389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648136, 0.380970, 0.659379,
		0.114613, 0.904805, -0.410112,
		-0.752850, -0.190235, -0.630101,
		42.144505, 32.707203, 39.430359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411064, 33.438782, 39.809128>,  <42.671501, 32.840370, 39.871429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.411064, 33.438782, 39.809128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.119709, 33.180706, 39.716881>,  <41.944897, 33.025860, 39.661533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.119709, 33.180706, 39.716881>,  <42.411064, 33.438782, 39.809128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119709, 33.180706, 39.716881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630276, 0.498942, 0.594818,
		-0.268707, 0.578609, -0.770070,
		-0.728388, -0.645189, -0.230614,
		41.901192, 32.987148, 39.647697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752705, 33.710995, 39.760357>,  <42.411064, 33.438782, 39.809128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752705, 33.710995, 39.760357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.471725, 33.881847, 39.988083>,  <41.303139, 33.984360, 40.124718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.471725, 33.881847, 39.988083>,  <41.752705, 33.710995, 39.760357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.471725, 33.881847, 39.988083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408651, 0.896957, -0.168736,
		-0.582725, 0.114122, -0.804616,
		-0.702450, 0.427134, 0.569316,
		41.260990, 34.009987, 40.158878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773617, 34.482944, 39.555592>,  <41.752705, 33.710995, 39.760357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773617, 34.482944, 39.555592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.995304, 34.814877, 39.581577>,  <42.128315, 35.014038, 39.597168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.995304, 34.814877, 39.581577>,  <41.773617, 34.482944, 39.555592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995304, 34.814877, 39.581577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058146, 0.116451, -0.991493,
		-0.830338, 0.545727, 0.112791,
		0.554219, 0.829832, 0.064962,
		42.161572, 35.063828, 39.601067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468678, 35.046810, 39.134212>,  <41.773617, 34.482944, 39.555592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468678, 35.046810, 39.134212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.854717, 35.144161, 39.172897>,  <42.086342, 35.202572, 39.196106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.854717, 35.144161, 39.172897>,  <41.468678, 35.046810, 39.134212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.854717, 35.144161, 39.172897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032913, 0.253631, -0.966741,
		-0.259816, 0.936182, 0.236768,
		0.965097, 0.243382, 0.096710,
		42.144245, 35.217175, 39.201912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452442, 35.677315, 38.773060>,  <41.468678, 35.046810, 39.134212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.452442, 35.677315, 38.773060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.833561, 35.560070, 38.804718>,  <42.062233, 35.489723, 38.823715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.833561, 35.560070, 38.804718>,  <41.452442, 35.677315, 38.773060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.833561, 35.560070, 38.804718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123117, 0.134714, -0.983206,
		0.277526, 0.946540, 0.164442,
		0.952797, -0.293110, 0.079148,
		42.119400, 35.472137, 38.828461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900528, 36.250042, 38.581467>,  <41.452442, 35.677315, 38.773060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900528, 36.250042, 38.581467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.080807, 35.899380, 38.514118>,  <42.188972, 35.688984, 38.473709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.080807, 35.899380, 38.514118>,  <41.900528, 36.250042, 38.581467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080807, 35.899380, 38.514118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064133, 0.219928, -0.973406,
		0.890372, 0.427909, 0.155343,
		0.450693, -0.876656, -0.168374,
		42.216015, 35.636383, 38.463608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.379608, 36.391220, 38.020977>,  <41.900528, 36.250042, 38.581467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.379608, 36.391220, 38.020977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.347080, 35.993317, 38.045761>,  <42.327564, 35.754574, 38.060631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.347080, 35.993317, 38.045761>,  <42.379608, 36.391220, 38.020977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347080, 35.993317, 38.045761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134454, -0.072550, -0.988260,
		0.987578, -0.072030, 0.139649,
		-0.081316, -0.994760, 0.061965,
		42.322685, 35.694889, 38.064350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.987988, 36.198273, 37.641464>,  <42.379608, 36.391220, 38.020977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.987988, 36.198273, 37.641464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.776920, 35.858498, 37.643341>,  <42.650280, 35.654633, 37.644466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.776920, 35.858498, 37.643341>,  <42.987988, 36.198273, 37.641464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.776920, 35.858498, 37.643341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274389, -0.175669, -0.945437,
		0.803915, -0.497589, 0.325771,
		-0.527667, -0.849439, 0.004690,
		42.618622, 35.603664, 37.644749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.412704, 35.676632, 37.329578>,  <42.987988, 36.198273, 37.641464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.412704, 35.676632, 37.329578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.027958, 35.570297, 37.303837>,  <42.797108, 35.506496, 37.288391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.027958, 35.570297, 37.303837>,  <43.412704, 35.676632, 37.329578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.027958, 35.570297, 37.303837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175699, -0.420211, -0.890254,
		0.209617, -0.867615, 0.450894,
		-0.961868, -0.265834, -0.064355,
		42.739399, 35.490547, 37.284531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.479977, 34.948895, 37.130848>,  <43.412704, 35.676632, 37.329578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.479977, 34.948895, 37.130848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.118069, 35.082893, 37.025650>,  <42.900925, 35.163292, 36.962532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.118069, 35.082893, 37.025650>,  <43.479977, 34.948895, 37.130848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118069, 35.082893, 37.025650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138939, -0.351566, -0.925795,
		-0.402601, -0.874173, 0.271542,
		-0.904770, 0.334998, -0.262998,
		42.846638, 35.183392, 36.946751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267502, 34.398262, 36.701172>,  <43.479977, 34.948895, 37.130848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267502, 34.398262, 36.701172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.014549, 34.690571, 36.598354>,  <42.862778, 34.865955, 36.536663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.014549, 34.690571, 36.598354>,  <43.267502, 34.398262, 36.701172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.014549, 34.690571, 36.598354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041428, -0.299432, -0.953218,
		-0.773553, -0.613441, 0.159080,
		-0.632377, 0.730773, -0.257040,
		42.824837, 34.909801, 36.521244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.681736, 34.075153, 36.348480>,  <43.267502, 34.398262, 36.701172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.681736, 34.075153, 36.348480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.646790, 34.453621, 36.223824>,  <42.625820, 34.680702, 36.149029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.646790, 34.453621, 36.223824>,  <42.681736, 34.075153, 36.348480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.646790, 34.453621, 36.223824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086683, -0.304434, -0.948581,
		-0.992398, -0.109889, -0.055420,
		-0.087366, 0.946174, -0.311645,
		42.620579, 34.737473, 36.130329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.081375, 34.093624, 35.827450>,  <42.681736, 34.075153, 36.348480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.081375, 34.093624, 35.827450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.276127, 34.432808, 35.743629>,  <42.392979, 34.636318, 35.693336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.276127, 34.432808, 35.743629>,  <42.081375, 34.093624, 35.827450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.276127, 34.432808, 35.743629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031727, -0.222579, -0.974398,
		-0.872895, 0.481058, -0.081465,
		0.486875, 0.847963, -0.209551,
		42.422188, 34.687199, 35.680763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797104, 34.438496, 35.154526>,  <42.081375, 34.093624, 35.827450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797104, 34.438496, 35.154526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.161339, 34.596592, 35.202873>,  <42.379879, 34.691448, 35.231880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.161339, 34.596592, 35.202873>,  <41.797104, 34.438496, 35.154526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161339, 34.596592, 35.202873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156847, -0.059891, -0.985805,
		-0.382391, 0.916623, -0.116529,
		0.910591, 0.395240, 0.120868,
		42.434517, 34.715164, 35.239132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.875107, 34.892426, 34.522533>,  <41.797104, 34.438496, 35.154526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.875107, 34.892426, 34.522533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.237656, 34.825851, 34.677856>,  <42.455185, 34.785908, 34.771049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.237656, 34.825851, 34.677856>,  <41.875107, 34.892426, 34.522533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.237656, 34.825851, 34.677856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375562, -0.103547, -0.920995,
		0.193491, 0.980601, -0.031347,
		0.906375, -0.166431, 0.388311,
		42.509567, 34.775921, 34.794350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.267410, 35.446648, 34.332989>,  <41.875107, 34.892426, 34.522533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.267410, 35.446648, 34.332989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.527336, 35.150097, 34.400047>,  <42.683292, 34.972168, 34.440281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.527336, 35.150097, 34.400047>,  <42.267410, 35.446648, 34.332989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527336, 35.150097, 34.400047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420879, 0.167294, -0.891557,
		0.632934, 0.649901, 0.420740,
		0.649811, -0.741378, 0.167644,
		42.722279, 34.927685, 34.450340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254162, 36.166405, 33.937824>,  <42.267410, 35.446648, 34.332989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254162, 36.166405, 33.937824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.082825, 36.453316, 33.717991>,  <41.980022, 36.625462, 33.586090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.082825, 36.453316, 33.717991>,  <42.254162, 36.166405, 33.937824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082825, 36.453316, 33.717991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553472, 0.272505, 0.787026,
		0.714277, 0.641296, 0.280265,
		-0.428343, 0.717273, -0.549583,
		41.954323, 36.668499, 33.553116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.256855, 36.731415, 34.386307>,  <42.254162, 36.166405, 33.937824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.256855, 36.731415, 34.386307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.971615, 36.790432, 34.112164>,  <41.800468, 36.825844, 33.947678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.971615, 36.790432, 34.112164>,  <42.256855, 36.731415, 34.386307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.971615, 36.790432, 34.112164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664236, 0.170474, 0.727825,
		0.224222, 0.974253, -0.023561,
		-0.713102, 0.147545, -0.685358,
		41.757683, 36.834694, 33.906555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001980, 37.392754, 34.480026>,  <42.256855, 36.731415, 34.386307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001980, 37.392754, 34.480026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.713268, 37.214722, 34.268013>,  <41.540039, 37.107903, 34.140804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.713268, 37.214722, 34.268013>,  <42.001980, 37.392754, 34.480026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713268, 37.214722, 34.268013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666950, 0.242623, 0.704494,
		-0.184958, 0.861997, -0.471966,
		-0.721782, -0.445079, -0.530033,
		41.496735, 37.081200, 34.109001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426762, 37.871330, 34.335716>,  <42.001980, 37.392754, 34.480026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426762, 37.871330, 34.335716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.297756, 37.493179, 34.316750>,  <41.220352, 37.266289, 34.305370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.297756, 37.493179, 34.316750>,  <41.426762, 37.871330, 34.335716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297756, 37.493179, 34.316750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635816, 0.179256, 0.750737,
		-0.701229, 0.272271, -0.658898,
		-0.322515, -0.945376, -0.047414,
		41.201000, 37.209568, 34.302525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735073, 37.881950, 34.495770>,  <41.426762, 37.871330, 34.335716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735073, 37.881950, 34.495770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.813324, 37.491619, 34.534737>,  <40.860275, 37.257420, 34.558117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.813324, 37.491619, 34.534737>,  <40.735073, 37.881950, 34.495770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813324, 37.491619, 34.534737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673065, -0.061351, 0.737034,
		-0.713242, -0.209753, -0.668798,
		0.195626, -0.975828, 0.097419,
		40.872013, 37.198872, 34.563961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065502, 37.639839, 34.709728>,  <40.735073, 37.881950, 34.495770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065502, 37.639839, 34.709728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.328514, 37.360634, 34.823166>,  <40.486320, 37.193111, 34.891228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.328514, 37.360634, 34.823166>,  <40.065502, 37.639839, 34.709728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328514, 37.360634, 34.823166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399897, -0.004322, 0.916550,
		-0.638538, -0.716072, -0.281975,
		0.657535, -0.698013, 0.283596,
		40.525776, 37.151230, 34.908245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668865, 37.104591, 34.952847>,  <40.065502, 37.639839, 34.709728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668865, 37.104591, 34.952847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.024582, 37.065880, 35.131638>,  <40.238014, 37.042652, 35.238911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.024582, 37.065880, 35.131638>,  <39.668865, 37.104591, 34.952847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024582, 37.065880, 35.131638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456615, -0.242756, 0.855904,
		0.025671, -0.965248, -0.260073,
		0.889294, -0.096782, 0.446978,
		40.291370, 37.036846, 35.265732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583946, 36.487663, 35.328800>,  <39.668865, 37.104591, 34.952847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583946, 36.487663, 35.328800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.875149, 36.710567, 35.488529>,  <40.049870, 36.844311, 35.584366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.875149, 36.710567, 35.488529>,  <39.583946, 36.487663, 35.328800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875149, 36.710567, 35.488529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416550, -0.103074, 0.903251,
		0.544505, -0.823916, 0.157088,
		0.728011, 0.557260, 0.399327,
		40.093552, 36.877747, 35.608326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788406, 36.185585, 35.946823>,  <39.583946, 36.487663, 35.328800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788406, 36.185585, 35.946823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.973557, 36.536049, 36.000610>,  <40.084648, 36.746326, 36.032883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.973557, 36.536049, 36.000610>,  <39.788406, 36.185585, 35.946823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973557, 36.536049, 36.000610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223921, -0.031208, 0.974108,
		0.857674, -0.481003, 0.181747,
		0.462876, 0.876164, 0.134473,
		40.112419, 36.798897, 36.040951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087975, 36.152023, 36.638710>,  <39.788406, 36.185585, 35.946823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087975, 36.152023, 36.638710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.081226, 36.541321, 36.547054>,  <40.077175, 36.774899, 36.492062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.081226, 36.541321, 36.547054>,  <40.087975, 36.152023, 36.638710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081226, 36.541321, 36.547054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240943, 0.218464, 0.945632,
		0.970393, 0.071166, 0.230810,
		-0.016873, 0.973246, -0.229143,
		40.076164, 36.833294, 36.478310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393093, 36.387966, 37.117847>,  <40.087975, 36.152023, 36.638710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393093, 36.387966, 37.117847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.154530, 36.671070, 36.966389>,  <40.011391, 36.840931, 36.875515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.154530, 36.671070, 36.966389>,  <40.393093, 36.387966, 37.117847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154530, 36.671070, 36.966389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393720, 0.153132, 0.906386,
		0.699486, 0.689658, 0.187329,
		-0.596410, 0.707759, -0.378646,
		39.975605, 36.883396, 36.852795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538589, 36.911243, 37.557304>,  <40.393093, 36.387966, 37.117847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538589, 36.911243, 37.557304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.189407, 36.966702, 37.370235>,  <39.979897, 36.999977, 37.257992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.189407, 36.966702, 37.370235>,  <40.538589, 36.911243, 37.557304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189407, 36.966702, 37.370235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458667, 0.093031, 0.883725,
		0.166033, 0.985963, -0.017620,
		-0.872959, 0.138645, -0.467675,
		39.927521, 37.008297, 37.229935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<44.241028, 36.820763, 30.387993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.849697, 36.754711, 30.338013>,  <43.614899, 36.715080, 30.308023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.849697, 36.754711, 30.338013>,  <44.241028, 36.820763, 30.387993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.849697, 36.754711, 30.338013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170207, 0.297578, 0.939402,
		-0.117936, 0.940309, -0.319233,
		-0.978325, -0.165125, -0.124953,
		43.556198, 36.705173, 30.300528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.914654, 37.267178, 30.747467>,  <44.241028, 36.820763, 30.387993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.914654, 37.267178, 30.747467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.584534, 37.048439, 30.691114>,  <43.386463, 36.917198, 30.657303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.584534, 37.048439, 30.691114>,  <43.914654, 37.267178, 30.747467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.584534, 37.048439, 30.691114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362363, 0.321499, 0.874832,
		-0.433104, 0.773046, -0.463488,
		-0.825297, -0.546844, -0.140881,
		43.336945, 36.884384, 30.648849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.294556, 37.713066, 31.002544>,  <43.914654, 37.267178, 30.747467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.294556, 37.713066, 31.002544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.171246, 37.333927, 30.970160>,  <43.097260, 37.106445, 30.950729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.171246, 37.333927, 30.970160>,  <43.294556, 37.713066, 31.002544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.171246, 37.333927, 30.970160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326018, 0.025315, 0.945025,
		-0.893687, 0.317726, -0.316818,
		-0.308279, -0.947844, -0.080961,
		43.078762, 37.049572, 30.945871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.588120, 37.680061, 31.212439>,  <43.294556, 37.713066, 31.002544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.588120, 37.680061, 31.212439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.733692, 37.309132, 31.247364>,  <42.821033, 37.086575, 31.268320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.733692, 37.309132, 31.247364>,  <42.588120, 37.680061, 31.212439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.733692, 37.309132, 31.247364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377026, -0.060942, 0.924196,
		-0.851709, -0.369260, -0.371804,
		0.363927, -0.927325, 0.087315,
		42.842869, 37.030933, 31.273560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084480, 37.344219, 31.464619>,  <42.588120, 37.680061, 31.212439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084480, 37.344219, 31.464619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399803, 37.118137, 31.561880>,  <42.588997, 36.982491, 31.620237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399803, 37.118137, 31.561880>,  <42.084480, 37.344219, 31.464619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.399803, 37.118137, 31.561880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335285, -0.063239, 0.939992,
		-0.515908, -0.822526, -0.239355,
		0.788304, -0.565202, 0.243156,
		42.636295, 36.948578, 31.634827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790897, 36.711384, 31.739735>,  <42.084480, 37.344219, 31.464619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790897, 36.711384, 31.739735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171970, 36.715492, 31.861258>,  <42.400612, 36.717957, 31.934172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171970, 36.715492, 31.861258>,  <41.790897, 36.711384, 31.739735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.171970, 36.715492, 31.861258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297536, -0.173191, 0.938870,
		0.062262, -0.984835, -0.161938,
		0.952678, 0.010273, 0.303807,
		42.457775, 36.718575, 31.952400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874969, 36.069283, 32.094246>,  <41.790897, 36.711384, 31.739735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874969, 36.069283, 32.094246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158119, 36.316116, 32.231720>,  <42.328011, 36.464214, 32.314205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158119, 36.316116, 32.231720>,  <41.874969, 36.069283, 32.094246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.158119, 36.316116, 32.231720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254424, -0.231150, 0.939062,
		0.658921, -0.752183, -0.006625,
		0.707878, 0.617083, 0.343684,
		42.370483, 36.501240, 32.334824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.239075, 35.690910, 32.622078>,  <41.874969, 36.069283, 32.094246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.239075, 35.690910, 32.622078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292072, 36.082535, 32.683887>,  <42.323872, 36.317509, 32.720974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292072, 36.082535, 32.683887>,  <42.239075, 35.690910, 32.622078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292072, 36.082535, 32.683887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396136, -0.090603, 0.913710,
		0.908582, -0.182273, 0.375839,
		0.132492, 0.979065, 0.154525,
		42.331821, 36.376255, 32.730244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.521072, 35.822666, 33.292294>,  <42.239075, 35.690910, 32.622078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.521072, 35.822666, 33.292294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.321281, 36.155907, 33.197247>,  <42.201405, 36.355850, 33.140217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.321281, 36.155907, 33.197247>,  <42.521072, 35.822666, 33.292294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.321281, 36.155907, 33.197247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201856, 0.154816, 0.967102,
		0.842480, 0.531014, 0.090838,
		-0.499481, 0.833100, -0.237618,
		42.171436, 36.405838, 33.125961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.879337, 35.627861, 33.919579>,  <42.521072, 35.822666, 33.292294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.879337, 35.627861, 33.919579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949181, 35.249001, 34.027222>,  <42.991085, 35.021683, 34.091808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949181, 35.249001, 34.027222>,  <42.879337, 35.627861, 33.919579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949181, 35.249001, 34.027222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283494, -0.213373, -0.934935,
		0.942945, 0.239533, 0.231256,
		0.174604, -0.947152, 0.269105,
		43.001560, 34.964855, 34.107952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.622997, 35.501095, 34.021729>,  <42.879337, 35.627861, 33.919579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.622997, 35.501095, 34.021729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.434113, 35.162964, 33.921772>,  <43.320782, 34.960087, 33.861797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.434113, 35.162964, 33.921772>,  <43.622997, 35.501095, 34.021729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.434113, 35.162964, 33.921772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374316, 0.064363, -0.925065,
		0.798064, -0.530361, 0.286026,
		-0.472209, -0.845325, -0.249889,
		43.292450, 34.909367, 33.846806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.174324, 35.070972, 33.708237>,  <43.622997, 35.501095, 34.021729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.174324, 35.070972, 33.708237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.820850, 34.921974, 33.594852>,  <43.608765, 34.832577, 33.526821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.820850, 34.921974, 33.594852>,  <44.174324, 35.070972, 33.708237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.820850, 34.921974, 33.594852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334342, -0.078467, -0.939180,
		0.327594, -0.924712, 0.193879,
		-0.883684, -0.372492, -0.283465,
		43.555744, 34.810226, 33.509811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.340656, 34.422821, 33.296837>,  <44.174324, 35.070972, 33.708237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.340656, 34.422821, 33.296837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.965076, 34.506058, 33.187244>,  <43.739727, 34.556000, 33.121490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.965076, 34.506058, 33.187244>,  <44.340656, 34.422821, 33.296837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.965076, 34.506058, 33.187244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226484, -0.225594, -0.947530,
		-0.258988, -0.951737, 0.164691,
		-0.938952, 0.208098, -0.273980,
		43.683392, 34.568485, 33.105049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.014362, 33.765762, 32.915234>,  <44.340656, 34.422821, 33.296837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.014362, 33.765762, 32.915234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.806419, 34.095268, 32.824757>,  <43.681656, 34.292973, 32.770470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.806419, 34.095268, 32.824757>,  <44.014362, 33.765762, 32.915234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.806419, 34.095268, 32.824757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087314, -0.212154, -0.973328,
		-0.849781, -0.525739, 0.038363,
		-0.519855, 0.823766, -0.226188,
		43.650463, 34.342400, 32.756901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.328709, 33.588413, 32.718327>,  <44.014362, 33.765762, 32.915234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.328709, 33.588413, 32.718327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.411915, 33.939575, 32.545811>,  <43.461838, 34.150272, 32.442299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.411915, 33.939575, 32.545811>,  <43.328709, 33.588413, 32.718327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.411915, 33.939575, 32.545811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237864, -0.473106, -0.848287,
		-0.948762, 0.073869, -0.307236,
		0.208017, 0.877903, -0.431294,
		43.474319, 34.202946, 32.416424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.973812, 33.599045, 31.972620>,  <43.328709, 33.588413, 32.718327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.973812, 33.599045, 31.972620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.245491, 33.892418, 31.961508>,  <43.408497, 34.068439, 31.954840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.245491, 33.892418, 31.961508>,  <42.973812, 33.599045, 31.972620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245491, 33.892418, 31.961508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211754, -0.232058, -0.949373,
		-0.702745, 0.638929, -0.312920,
		0.679198, 0.733429, -0.027782,
		43.449249, 34.112446, 31.953173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.832123, 33.910912, 31.405523>,  <42.973812, 33.599045, 31.972620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.832123, 33.910912, 31.405523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.205795, 34.032780, 31.479790>,  <43.430000, 34.105900, 31.524349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.205795, 34.032780, 31.479790>,  <42.832123, 33.910912, 31.405523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.205795, 34.032780, 31.479790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295622, -0.369620, -0.880902,
		-0.199761, 0.877813, -0.435362,
		0.934186, 0.304673, 0.185665,
		43.486050, 34.124180, 31.535490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.084995, 34.343163, 30.889015>,  <42.832123, 33.910912, 31.405523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.084995, 34.343163, 30.889015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.444195, 34.235085, 31.027922>,  <43.659714, 34.170238, 31.111265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.444195, 34.235085, 31.027922>,  <43.084995, 34.343163, 30.889015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.444195, 34.235085, 31.027922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306794, -0.181246, -0.934359,
		0.315404, 0.945591, -0.079863,
		0.897997, -0.270199, 0.347267,
		43.713593, 34.154026, 31.132101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580002, 34.578465, 30.358698>,  <43.084995, 34.343163, 30.889015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.580002, 34.578465, 30.358698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.829075, 34.330673, 30.549910>,  <43.978519, 34.181999, 30.664637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.829075, 34.330673, 30.549910>,  <43.580002, 34.578465, 30.358698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.829075, 34.330673, 30.549910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475407, -0.185720, -0.859940,
		0.621497, 0.762725, 0.178862,
		0.622679, -0.619482, 0.478029,
		44.015877, 34.144829, 30.693319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.245399, 34.795551, 30.114468>,  <43.580002, 34.578465, 30.358698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.245399, 34.795551, 30.114468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.306335, 34.424061, 30.249683>,  <44.342896, 34.201168, 30.330812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.306335, 34.424061, 30.249683>,  <44.245399, 34.795551, 30.114468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.306335, 34.424061, 30.249683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372433, -0.262872, -0.890052,
		0.915471, 0.261486, 0.305841,
		0.152339, -0.928721, 0.338037,
		44.352036, 34.145443, 30.351095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.950108, 34.635624, 29.977228>,  <44.245399, 34.795551, 30.114468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.950108, 34.635624, 29.977228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.756985, 34.286060, 29.999779>,  <44.641113, 34.076321, 30.013309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.756985, 34.286060, 29.999779>,  <44.950108, 34.635624, 29.977228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.756985, 34.286060, 29.999779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456327, -0.306005, -0.835540,
		0.747439, -0.377677, 0.546530,
		-0.482805, -0.873911, 0.056376,
		44.612144, 34.023888, 30.016691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.389458, 34.149830, 29.700022>,  <44.950108, 34.635624, 29.977228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.389458, 34.149830, 29.700022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.043816, 33.954128, 29.652788>,  <44.836430, 33.836708, 29.624449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.043816, 33.954128, 29.652788>,  <45.389458, 34.149830, 29.700022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.043816, 33.954128, 29.652788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340898, -0.396334, -0.852471,
		0.370278, -0.776882, 0.509263,
		-0.864108, -0.489259, -0.118083,
		44.784584, 33.807350, 29.617363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.511856, 33.432629, 29.728168>,  <45.389458, 34.149830, 29.700022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.511856, 33.432629, 29.728168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.163723, 33.450115, 29.531960>,  <44.954842, 33.460609, 29.414234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.163723, 33.450115, 29.531960>,  <45.511856, 33.432629, 29.728168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.163723, 33.450115, 29.531960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419885, -0.454592, -0.785520,
		-0.257328, -0.889626, 0.377290,
		-0.870332, 0.043718, -0.490520,
		44.902622, 33.463230, 29.384804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.052395, 29.499052, 28.757603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.255871, 29.843367, 28.764227>,  <39.377956, 30.049955, 28.768202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.255871, 29.843367, 28.764227>,  <39.052395, 29.499052, 28.757603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255871, 29.843367, 28.764227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148836, 0.068976, 0.986453,
		0.847986, -0.504267, 0.163204,
		0.508693, 0.860789, 0.016563,
		39.408478, 30.101603, 28.769196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705860, 29.496548, 29.128700>,  <39.052395, 29.499052, 28.757603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705860, 29.496548, 29.128700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.580879, 29.876335, 29.140593>,  <39.505890, 30.104208, 29.147728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.580879, 29.876335, 29.140593>,  <39.705860, 29.496548, 29.128700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580879, 29.876335, 29.140593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163212, -0.084490, 0.982967,
		0.935806, 0.302281, 0.181364,
		-0.312456, 0.949467, 0.029730,
		39.487141, 30.161175, 29.149511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052773, 29.780104, 29.744221>,  <39.705860, 29.496548, 29.128700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052773, 29.780104, 29.744221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.805824, 30.090677, 29.693619>,  <39.657654, 30.277021, 29.663258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.805824, 30.090677, 29.693619>,  <40.052773, 29.780104, 29.744221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805824, 30.090677, 29.693619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200661, 0.000062, 0.979661,
		0.760649, 0.630200, 0.155762,
		-0.617373, 0.776433, -0.126504,
		39.620613, 30.323606, 29.655668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289009, 30.435177, 30.050007>,  <40.052773, 29.780104, 29.744221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289009, 30.435177, 30.050007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.891308, 30.458004, 30.013792>,  <39.652687, 30.471701, 29.992064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.891308, 30.458004, 30.013792>,  <40.289009, 30.435177, 30.050007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891308, 30.458004, 30.013792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074850, 0.233872, 0.969382,
		0.076493, 0.970591, -0.228257,
		-0.994257, 0.057066, -0.090539,
		39.593029, 30.475124, 29.986629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149082, 30.918060, 30.532114>,  <40.289009, 30.435177, 30.050007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149082, 30.918060, 30.532114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.778957, 30.782793, 30.463490>,  <39.556881, 30.701633, 30.422316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.778957, 30.782793, 30.463490>,  <40.149082, 30.918060, 30.532114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778957, 30.782793, 30.463490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266019, 0.256479, 0.929222,
		-0.270231, 0.905462, -0.327283,
		-0.925316, -0.338168, -0.171561,
		39.501362, 30.681343, 30.412022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818424, 31.380850, 30.739183>,  <40.149082, 30.918060, 30.532114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818424, 31.380850, 30.739183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.547672, 31.086445, 30.743586>,  <39.385223, 30.909801, 30.746227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.547672, 31.086445, 30.743586>,  <39.818424, 31.380850, 30.739183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547672, 31.086445, 30.743586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243338, 0.237846, 0.940328,
		-0.694711, 0.633809, -0.340093,
		-0.676877, -0.736014, 0.011005,
		39.344608, 30.865641, 30.746887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160114, 31.602732, 31.020538>,  <39.818424, 31.380850, 30.739183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160114, 31.602732, 31.020538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.147923, 31.207153, 31.078585>,  <39.140610, 30.969807, 31.113413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.147923, 31.207153, 31.078585>,  <39.160114, 31.602732, 31.020538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147923, 31.207153, 31.078585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135055, 0.147925, 0.979734,
		-0.990369, 0.010260, -0.138070,
		-0.030476, -0.988945, 0.145114,
		39.138779, 30.910469, 31.122120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451485, 31.276976, 31.147152>,  <39.160114, 31.602732, 31.020538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451485, 31.276976, 31.147152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.713852, 31.016697, 31.300184>,  <38.871273, 30.860531, 31.392004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.713852, 31.016697, 31.300184>,  <38.451485, 31.276976, 31.147152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713852, 31.016697, 31.300184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462623, 0.053956, 0.884912,
		-0.596450, -0.757420, -0.265636,
		0.655918, -0.650695, 0.382582,
		38.910625, 30.821489, 31.414959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033325, 30.851109, 31.636740>,  <38.451485, 31.276976, 31.147152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033325, 30.851109, 31.636740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.415573, 30.812956, 31.748236>,  <38.644920, 30.790064, 31.815134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.415573, 30.812956, 31.748236>,  <38.033325, 30.851109, 31.636740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415573, 30.812956, 31.748236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259367, 0.176338, 0.949544,
		-0.139723, -0.979697, 0.143773,
		0.955618, -0.095383, 0.278740,
		38.702259, 30.784342, 31.831858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026257, 30.541302, 32.259300>,  <38.033325, 30.851109, 31.636740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026257, 30.541302, 32.259300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.398182, 30.688406, 32.264828>,  <38.621338, 30.776669, 32.268143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.398182, 30.688406, 32.264828>,  <38.026257, 30.541302, 32.259300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398182, 30.688406, 32.264828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102335, 0.222315, 0.969589,
		0.353507, -0.902955, 0.244347,
		0.929818, 0.367762, 0.013814,
		38.677128, 30.798735, 32.268970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372311, 30.209627, 32.832558>,  <38.026257, 30.541302, 32.259300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372311, 30.209627, 32.832558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.594574, 30.532166, 32.751518>,  <38.727932, 30.725689, 32.702896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.594574, 30.532166, 32.751518>,  <38.372311, 30.209627, 32.832558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594574, 30.532166, 32.751518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014142, 0.252813, 0.967412,
		0.831288, -0.534688, 0.151882,
		0.555662, 0.806346, -0.202599,
		38.761272, 30.774069, 32.690739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916100, 30.241623, 33.262268>,  <38.372311, 30.209627, 32.832558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916100, 30.241623, 33.262268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.891315, 30.624487, 33.149128>,  <38.876446, 30.854206, 33.081245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.891315, 30.624487, 33.149128>,  <38.916100, 30.241623, 33.262268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891315, 30.624487, 33.149128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131934, 0.273054, 0.952909,
		0.989320, 0.096356, 0.109365,
		-0.061956, 0.957161, -0.282851,
		38.872730, 30.911634, 33.064274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097332, 30.618866, 33.859501>,  <38.916100, 30.241623, 33.262268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097332, 30.618866, 33.859501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.939064, 30.905548, 33.629795>,  <38.844101, 31.077557, 33.491970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.939064, 30.905548, 33.629795>,  <39.097332, 30.618866, 33.859501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939064, 30.905548, 33.629795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100658, 0.587682, 0.802806,
		0.912859, 0.375453, -0.160388,
		-0.395673, 0.716704, -0.574263,
		38.820362, 31.120560, 33.457516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410233, 31.272545, 34.008846>,  <39.097332, 30.618866, 33.859501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410233, 31.272545, 34.008846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.039207, 31.357340, 33.885761>,  <38.816593, 31.408216, 33.811913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.039207, 31.357340, 33.885761>,  <39.410233, 31.272545, 34.008846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039207, 31.357340, 33.885761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183467, 0.459024, 0.869274,
		0.325522, 0.862762, -0.386882,
		-0.927564, 0.211988, -0.307711,
		38.760937, 31.420937, 33.793449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036236, 31.417858, 34.432999>,  <39.410233, 31.272545, 34.008846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036236, 31.417858, 34.432999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.240196, 31.102316, 34.570229>,  <40.362572, 30.912991, 34.652569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.240196, 31.102316, 34.570229>,  <40.036236, 31.417858, 34.432999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240196, 31.102316, 34.570229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398124, -0.137130, -0.907024,
		0.762559, 0.599082, 0.244140,
		0.509903, -0.788857, 0.343078,
		40.393166, 30.865658, 34.673153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820793, 31.544552, 34.323257>,  <40.036236, 31.417858, 34.432999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820793, 31.544552, 34.323257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.748234, 31.151264, 34.331001>,  <40.704697, 30.915291, 34.335648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.748234, 31.151264, 34.331001>,  <40.820793, 31.544552, 34.323257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748234, 31.151264, 34.331001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441843, -0.099074, -0.891605,
		0.878561, -0.153184, 0.452400,
		-0.181400, -0.983219, 0.019359,
		40.693813, 30.856298, 34.336807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506054, 31.226189, 34.002750>,  <40.820793, 31.544552, 34.323257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506054, 31.226189, 34.002750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.246033, 30.922668, 34.019005>,  <41.090019, 30.740557, 34.028759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.246033, 30.922668, 34.019005>,  <41.506054, 31.226189, 34.002750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.246033, 30.922668, 34.019005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468632, -0.442426, -0.764620,
		0.598173, -0.478000, 0.643199,
		-0.650056, -0.758798, 0.040640,
		41.051014, 30.695028, 34.031197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943333, 30.645369, 33.835903>,  <41.506054, 31.226189, 34.002750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943333, 30.645369, 33.835903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.571220, 30.517031, 33.764751>,  <41.347954, 30.440029, 33.722061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.571220, 30.517031, 33.764751>,  <41.943333, 30.645369, 33.835903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571220, 30.517031, 33.764751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311302, -0.433878, -0.845483,
		0.194090, -0.841909, 0.503506,
		-0.930280, -0.320843, -0.177876,
		41.292137, 30.420778, 33.711388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.941807, 29.854467, 33.809841>,  <41.943333, 30.645369, 33.835903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.941807, 29.854467, 33.809841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.609348, 29.972258, 33.621166>,  <41.409874, 30.042933, 33.507961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.609348, 29.972258, 33.621166>,  <41.941807, 29.854467, 33.809841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609348, 29.972258, 33.621166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229574, -0.590873, -0.773412,
		-0.506458, -0.751101, 0.423494,
		-0.831141, 0.294477, -0.471685,
		41.360004, 30.060600, 33.479660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.651081, 29.166164, 33.580948>,  <41.941807, 29.854467, 33.809841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.651081, 29.166164, 33.580948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.495384, 29.458334, 33.356457>,  <41.401966, 29.633635, 33.221764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.495384, 29.458334, 33.356457>,  <41.651081, 29.166164, 33.580948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495384, 29.458334, 33.356457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273114, -0.490366, -0.827617,
		-0.879716, -0.475421, -0.008618,
		-0.389241, 0.730422, -0.561227,
		41.378613, 29.677460, 33.188087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317417, 28.860155, 32.964161>,  <41.651081, 29.166164, 33.580948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317417, 28.860155, 32.964161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.388500, 29.241180, 32.865334>,  <41.431149, 29.469795, 32.806038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.388500, 29.241180, 32.865334>,  <41.317417, 28.860155, 32.964161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388500, 29.241180, 32.865334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094434, -0.266413, -0.959222,
		-0.979542, 0.147128, -0.137298,
		0.177706, 0.952564, -0.247069,
		41.441811, 29.526949, 32.791214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895206, 28.929811, 32.402573>,  <41.317417, 28.860155, 32.964161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895206, 28.929811, 32.402573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.148785, 29.239138, 32.398727>,  <41.300934, 29.424734, 32.396420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.148785, 29.239138, 32.398727>,  <40.895206, 28.929811, 32.402573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148785, 29.239138, 32.398727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148403, -0.133844, -0.979828,
		-0.759002, 0.619734, -0.199613,
		0.633949, 0.773315, -0.009618,
		41.338970, 29.471132, 32.395844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780586, 29.432217, 31.827652>,  <40.895206, 28.929811, 32.402573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780586, 29.432217, 31.827652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.163815, 29.509613, 31.912193>,  <41.393749, 29.556051, 31.962917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.163815, 29.509613, 31.912193>,  <40.780586, 29.432217, 31.827652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163815, 29.509613, 31.912193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225944, -0.056492, -0.972501,
		-0.176230, 0.979474, -0.097841,
		0.958067, 0.193491, 0.211351,
		41.451233, 29.567659, 31.975599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919746, 30.049225, 31.367313>,  <40.780586, 29.432217, 31.827652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919746, 30.049225, 31.367313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.280792, 29.917494, 31.478191>,  <41.497417, 29.838455, 31.544718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.280792, 29.917494, 31.478191>,  <40.919746, 30.049225, 31.367313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.280792, 29.917494, 31.478191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268028, -0.073910, -0.960572,
		0.336828, 0.941319, 0.021557,
		0.902612, -0.329326, 0.277195,
		41.551575, 29.818697, 31.561350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337288, 30.486912, 31.034008>,  <40.919746, 30.049225, 31.367313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337288, 30.486912, 31.034008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.538445, 30.152546, 31.121960>,  <41.659138, 29.951925, 31.174730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.538445, 30.152546, 31.121960>,  <41.337288, 30.486912, 31.034008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.538445, 30.152546, 31.121960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326230, -0.052011, -0.943859,
		0.800422, 0.546388, 0.246545,
		0.502890, -0.835915, 0.219879,
		41.689312, 29.901772, 31.187923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.972435, 30.602945, 30.765606>,  <41.337288, 30.486912, 31.034008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.972435, 30.602945, 30.765606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.937668, 30.206501, 30.805893>,  <41.916809, 29.968634, 30.830065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.937668, 30.206501, 30.805893>,  <41.972435, 30.602945, 30.765606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.937668, 30.206501, 30.805893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329243, -0.123995, -0.936069,
		0.940237, -0.048197, 0.337093,
		-0.086913, -0.991112, 0.100716,
		41.911594, 29.909168, 30.836107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575050, 30.400167, 30.448591>,  <41.972435, 30.602945, 30.765606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575050, 30.400167, 30.448591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.337383, 30.078789, 30.463757>,  <42.194782, 29.885962, 30.472855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.337383, 30.078789, 30.463757>,  <42.575050, 30.400167, 30.448591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.337383, 30.078789, 30.463757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344104, -0.296510, -0.890884,
		0.727018, -0.516290, 0.452646,
		-0.594169, -0.803446, 0.037911,
		42.159134, 29.837755, 30.475130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.995171, 29.844429, 30.239578>,  <42.575050, 30.400167, 30.448591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.995171, 29.844429, 30.239578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.619522, 29.723848, 30.173632>,  <42.394135, 29.651501, 30.134064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.619522, 29.723848, 30.173632>,  <42.995171, 29.844429, 30.239578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.619522, 29.723848, 30.173632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268929, -0.346265, -0.898765,
		0.213847, -0.888385, 0.406253,
		-0.939120, -0.301452, -0.164865,
		42.337788, 29.633413, 30.124172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.690304, 29.439161, 30.564365>,  <42.995171, 29.844429, 30.239578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.690304, 29.439161, 30.564365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.018990, 29.664997, 30.533321>,  <44.216202, 29.800499, 30.514694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.018990, 29.664997, 30.533321>,  <43.690304, 29.439161, 30.564365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.018990, 29.664997, 30.533321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093353, 0.000998, 0.995633,
		0.562203, -0.825370, -0.051887,
		0.821713, 0.564592, -0.077612,
		44.265503, 29.834375, 30.510038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.205498, 29.078115, 31.065353>,  <43.690304, 29.439161, 30.564365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.205498, 29.078115, 31.065353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.289997, 29.466434, 31.019886>,  <44.340698, 29.699427, 30.992605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.289997, 29.466434, 31.019886>,  <44.205498, 29.078115, 31.065353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.289997, 29.466434, 31.019886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211884, 0.068046, 0.974923,
		0.954189, -0.230040, -0.191322,
		0.211253, 0.970799, -0.113670,
		44.353374, 29.757675, 30.985785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.541458, 29.174582, 31.703287>,  <44.205498, 29.078115, 31.065353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.541458, 29.174582, 31.703287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.512524, 29.552992, 31.576923>,  <44.495163, 29.780039, 31.501104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.512524, 29.552992, 31.576923>,  <44.541458, 29.174582, 31.703287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.512524, 29.552992, 31.576923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089710, 0.321626, 0.942607,
		0.993338, 0.039846, -0.108134,
		-0.072337, 0.946028, -0.315909,
		44.490822, 29.836800, 31.482151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.102650, 29.517012, 31.941565>,  <44.541458, 29.174582, 31.703287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.102650, 29.517012, 31.941565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.829720, 29.804407, 31.887594>,  <44.665962, 29.976845, 31.855213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.829720, 29.804407, 31.887594>,  <45.102650, 29.517012, 31.941565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.829720, 29.804407, 31.887594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108948, 0.282442, 0.953077,
		0.722883, 0.635610, -0.270996,
		-0.682327, 0.718488, -0.134924,
		44.625023, 30.019953, 31.847116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.337688, 30.018078, 32.394299>,  <45.102650, 29.517012, 31.941565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.337688, 30.018078, 32.394299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.963768, 30.135738, 32.314678>,  <44.739414, 30.206335, 32.266907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.963768, 30.135738, 32.314678>,  <45.337688, 30.018078, 32.394299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.963768, 30.135738, 32.314678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123798, 0.255423, 0.958871,
		0.332895, 0.920996, -0.202355,
		-0.934802, 0.294152, -0.199047,
		44.683327, 30.223984, 32.254963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.368984, 30.639711, 32.633572>,  <45.337688, 30.018078, 32.394299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.368984, 30.639711, 32.633572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.987858, 30.519127, 32.619343>,  <44.759182, 30.446775, 32.610806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.987858, 30.519127, 32.619343>,  <45.368984, 30.639711, 32.633572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.987858, 30.519127, 32.619343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110584, 0.235583, 0.965542,
		-0.282696, 0.923916, -0.257804,
		-0.952814, -0.301463, -0.035572,
		44.702015, 30.428688, 32.608669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.064384, 31.120302, 33.115131>,  <45.368984, 30.639711, 32.633572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.064384, 31.120302, 33.115131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.817707, 30.807028, 33.083340>,  <44.669701, 30.619064, 33.064266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.817707, 30.807028, 33.083340>,  <45.064384, 31.120302, 33.115131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.817707, 30.807028, 33.083340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201322, 0.059300, 0.977728,
		-0.761028, 0.618956, -0.194242,
		-0.616689, -0.783184, -0.079481,
		44.632702, 30.572073, 33.059494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.607674, 31.241285, 33.542694>,  <45.064384, 31.120302, 33.115131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.607674, 31.241285, 33.542694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.534328, 30.852478, 33.483971>,  <44.490322, 30.619194, 33.448734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.534328, 30.852478, 33.483971>,  <44.607674, 31.241285, 33.542694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.534328, 30.852478, 33.483971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248798, -0.098594, 0.963524,
		-0.951040, 0.213204, -0.223758,
		-0.183366, -0.972020, -0.146811,
		44.479317, 30.560871, 33.439926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.135471, 31.161863, 33.936752>,  <44.607674, 31.241285, 33.542694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.135471, 31.161863, 33.936752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.273697, 30.791260, 33.877201>,  <44.356632, 30.568897, 33.841469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.273697, 30.791260, 33.877201>,  <44.135471, 31.161863, 33.936752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.273697, 30.791260, 33.877201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120981, -0.201316, 0.972027,
		-0.930564, -0.317886, -0.181657,
		0.345564, -0.926510, -0.148879,
		44.377365, 30.513308, 33.832539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.678368, 30.757595, 34.191303>,  <44.135471, 31.161863, 33.936752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.678368, 30.757595, 34.191303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.020302, 30.550158, 34.198437>,  <44.225464, 30.425695, 34.202717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.020302, 30.550158, 34.198437>,  <43.678368, 30.757595, 34.191303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.020302, 30.550158, 34.198437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127813, -0.177130, 0.975853,
		-0.502913, -0.836472, -0.217700,
		0.854835, -0.518594, 0.017831,
		44.276752, 30.394579, 34.203785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.506573, 30.144367, 34.545124>,  <43.678368, 30.757595, 34.191303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.506573, 30.144367, 34.545124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.900921, 30.204094, 34.575478>,  <44.137531, 30.239929, 34.593689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.900921, 30.204094, 34.575478>,  <43.506573, 30.144367, 34.545124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.900921, 30.204094, 34.575478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050245, -0.168557, 0.984410,
		0.159779, -0.974317, -0.158674,
		0.985873, 0.149316, 0.075886,
		44.196682, 30.248888, 34.598244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.736778, 29.545315, 34.826630>,  <43.506573, 30.144367, 34.545124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.736778, 29.545315, 34.826630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.007984, 29.827606, 34.908848>,  <44.170708, 29.996981, 34.958179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.007984, 29.827606, 34.908848>,  <43.736778, 29.545315, 34.826630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007984, 29.827606, 34.908848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146057, -0.144705, 0.978636,
		0.720393, -0.693548, 0.004965,
		0.678013, 0.705728, 0.205542,
		44.211388, 30.039324, 34.970509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.982464, 29.370775, 35.448811>,  <43.736778, 29.545315, 34.826630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.982464, 29.370775, 35.448811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.107399, 29.749666, 35.419952>,  <44.182362, 29.977001, 35.402637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.107399, 29.749666, 35.419952>,  <43.982464, 29.370775, 35.448811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.107399, 29.749666, 35.419952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216699, 0.144986, 0.965412,
		0.924924, -0.285902, 0.250548,
		0.312339, 0.947227, -0.072146,
		44.201099, 30.033834, 35.398308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.253788, 29.437305, 36.062420>,  <43.982464, 29.370775, 35.448811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.253788, 29.437305, 36.062420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.202351, 29.805277, 35.914257>,  <44.171490, 30.026060, 35.825359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.202351, 29.805277, 35.914257>,  <44.253788, 29.437305, 36.062420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.202351, 29.805277, 35.914257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278057, 0.325075, 0.903886,
		0.951918, 0.219227, 0.213989,
		-0.128594, 0.919927, -0.370403,
		44.163773, 30.081255, 35.803135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<45.426537, 32.772514, 29.282345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.152924, 33.014915, 29.119932>,  <44.988754, 33.160355, 29.022484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.152924, 33.014915, 29.119932>,  <45.426537, 32.772514, 29.282345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.152924, 33.014915, 29.119932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145881, -0.431737, -0.890125,
		-0.714715, -0.668107, 0.206919,
		-0.684034, 0.606000, -0.406033,
		44.947712, 33.196716, 28.998123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.121323, 32.351048, 28.809093>,  <45.426537, 32.772514, 29.282345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.121323, 32.351048, 28.809093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.024090, 32.718521, 28.684561>,  <44.965752, 32.939007, 28.609840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.024090, 32.718521, 28.684561>,  <45.121323, 32.351048, 28.809093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.024090, 32.718521, 28.684561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249417, -0.250970, -0.935310,
		-0.937391, -0.305008, -0.168130,
		-0.243082, 0.918686, -0.311332,
		44.951164, 32.994125, 28.591162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.701214, 32.220181, 28.233496>,  <45.121323, 32.351048, 28.809093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.701214, 32.220181, 28.233496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.836678, 32.592796, 28.180506>,  <44.917957, 32.816364, 28.148712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.836678, 32.592796, 28.180506>,  <44.701214, 32.220181, 28.233496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.836678, 32.592796, 28.180506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254720, -0.226307, -0.940161,
		-0.905775, 0.284649, -0.313922,
		0.338659, 0.931536, -0.132477,
		44.938274, 32.872257, 28.140762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.514656, 32.430843, 27.632811>,  <44.701214, 32.220181, 28.233496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.514656, 32.430843, 27.632811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.813686, 32.688423, 27.697865>,  <44.993107, 32.842972, 27.736897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.813686, 32.688423, 27.697865>,  <44.514656, 32.430843, 27.632811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.813686, 32.688423, 27.697865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276989, -0.079723, -0.957560,
		-0.603658, 0.760900, -0.237967,
		0.747579, 0.643953, 0.162635,
		45.037960, 32.881611, 27.746655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.460079, 32.815865, 27.100502>,  <44.514656, 32.430843, 27.632811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.460079, 32.815865, 27.100502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.836792, 32.901623, 27.204100>,  <45.062820, 32.953079, 27.266258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.836792, 32.901623, 27.204100>,  <44.460079, 32.815865, 27.100502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.836792, 32.901623, 27.204100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273323, -0.039601, -0.961107,
		-0.195805, 0.975943, -0.095896,
		0.941783, 0.214400, 0.258993,
		45.119328, 32.965942, 27.281797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.734531, 33.352528, 26.524582>,  <44.460079, 32.815865, 27.100502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.734531, 33.352528, 26.524582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.044479, 33.196095, 26.723230>,  <45.230450, 33.102234, 26.842419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.044479, 33.196095, 26.723230>,  <44.734531, 33.352528, 26.524582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.044479, 33.196095, 26.723230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538584, -0.002823, -0.842567,
		0.330916, 0.920351, 0.208444,
		0.774869, -0.391084, 0.496621,
		45.276939, 33.078770, 26.872217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.365406, 33.769573, 26.304804>,  <44.734531, 33.352528, 26.524582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.365406, 33.769573, 26.304804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.514885, 33.432606, 26.460073>,  <45.604572, 33.230427, 26.553236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.514885, 33.432606, 26.460073>,  <45.365406, 33.769573, 26.304804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.514885, 33.432606, 26.460073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588024, -0.108487, -0.801535,
		0.717340, 0.527788, 0.454821,
		0.373698, -0.842419, 0.388175,
		45.626995, 33.179878, 26.576527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.127327, 33.762028, 26.266043>,  <45.365406, 33.769573, 26.304804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.127327, 33.762028, 26.266043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.018497, 33.377132, 26.262772>,  <45.953201, 33.146194, 26.260809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.018497, 33.377132, 26.262772>,  <46.127327, 33.762028, 26.266043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.018497, 33.377132, 26.262772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568864, -0.153981, -0.807888,
		0.776125, -0.224455, 0.589279,
		-0.272072, -0.962242, -0.008176,
		45.936874, 33.088459, 26.260319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.788639, 33.385727, 26.188877>,  <46.127327, 33.762028, 26.266043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.788639, 33.385727, 26.188877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.503010, 33.123501, 26.090628>,  <46.331631, 32.966167, 26.031677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.503010, 33.123501, 26.090628>,  <46.788639, 33.385727, 26.188877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.503010, 33.123501, 26.090628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516726, -0.256843, -0.816716,
		0.472321, -0.710119, 0.522152,
		-0.714077, -0.655562, -0.245625,
		46.288788, 32.926834, 26.016941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.110889, 32.896053, 25.916161>,  <46.788639, 33.385727, 26.188877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.110889, 32.896053, 25.916161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.739040, 32.814297, 25.793510>,  <46.515930, 32.765244, 25.719919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.739040, 32.814297, 25.793510>,  <47.110889, 32.896053, 25.916161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.739040, 32.814297, 25.793510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353487, -0.259493, -0.898727,
		0.104123, -0.943869, 0.313481,
		-0.929626, -0.204389, -0.306627,
		46.460152, 32.752979, 25.701523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.106045, 32.184261, 25.568979>,  <47.110889, 32.896053, 25.916161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.106045, 32.184261, 25.568979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.783279, 32.377262, 25.432699>,  <46.589619, 32.493061, 25.350931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.783279, 32.377262, 25.432699>,  <47.106045, 32.184261, 25.568979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.783279, 32.377262, 25.432699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313168, -0.139585, -0.939384,
		-0.500813, -0.864700, -0.038471,
		-0.806915, 0.482503, -0.340702,
		46.541206, 32.522015, 25.330488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.928974, 31.787605, 24.969830>,  <47.106045, 32.184261, 25.568979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.928974, 31.787605, 24.969830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.727077, 32.132877, 24.964846>,  <46.605938, 32.340042, 24.961855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.727077, 32.132877, 24.964846>,  <46.928974, 31.787605, 24.969830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.727077, 32.132877, 24.964846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140323, 0.067793, -0.987782,
		-0.851789, -0.500324, -0.155342,
		-0.504742, 0.863180, -0.012461,
		46.575653, 32.391830, 24.961107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.373127, 31.711367, 24.417686>,  <46.928974, 31.787605, 24.969830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.373127, 31.711367, 24.417686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.477970, 32.090923, 24.488001>,  <46.540874, 32.318657, 24.530190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.477970, 32.090923, 24.488001>,  <46.373127, 31.711367, 24.417686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.477970, 32.090923, 24.488001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362648, 0.071958, -0.929144,
		-0.894308, 0.307283, -0.325253,
		0.262106, 0.948893, 0.175788,
		46.556602, 32.375591, 24.540737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.980717, 31.089724, 24.267546>,  <46.373127, 31.711367, 24.417686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.980717, 31.089724, 24.267546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.903339, 30.730307, 24.425127>,  <45.856915, 30.514656, 24.519676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.903339, 30.730307, 24.425127>,  <45.980717, 31.089724, 24.267546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.903339, 30.730307, 24.425127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839738, -0.056015, -0.540095,
		0.507366, -0.435293, -0.743706,
		-0.193440, -0.898544, 0.393953,
		45.845306, 30.460743, 24.543312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.442093, 31.134966, 24.794416>,  <45.980717, 31.089724, 24.267546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.442093, 31.134966, 24.794416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.407211, 30.739365, 24.842192>,  <45.386284, 30.502003, 24.870857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.407211, 30.739365, 24.842192>,  <45.442093, 31.134966, 24.794416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.407211, 30.739365, 24.842192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099537, 0.110645, 0.988863,
		-0.991205, 0.098120, 0.088794,
		-0.087203, -0.989005, 0.119439,
		45.381050, 30.442663, 24.878023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.788219, 30.968887, 25.226219>,  <45.442093, 31.134966, 24.794416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.788219, 30.968887, 25.226219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.014935, 30.641817, 25.266537>,  <45.150963, 30.445574, 25.290728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.014935, 30.641817, 25.266537>,  <44.788219, 30.968887, 25.226219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.014935, 30.641817, 25.266537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109835, 0.046259, 0.992873,
		-0.816512, -0.573815, -0.063591,
		0.566784, -0.817677, 0.100796,
		45.184971, 30.396515, 25.296776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.448734, 30.456823, 25.672918>,  <44.788219, 30.968887, 25.226219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.448734, 30.456823, 25.672918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.828167, 30.331297, 25.689425>,  <45.055828, 30.255981, 25.699329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.828167, 30.331297, 25.689425>,  <44.448734, 30.456823, 25.672918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.828167, 30.331297, 25.689425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094966, -0.157803, 0.982894,
		-0.301936, -0.936278, -0.179492,
		0.948586, -0.313817, 0.041268,
		45.112743, 30.237152, 25.701805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.496231, 29.769815, 25.958757>,  <44.448734, 30.456823, 25.672918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.496231, 29.769815, 25.958757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.850006, 29.946144, 26.020012>,  <45.062271, 30.051941, 26.056765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.850006, 29.946144, 26.020012>,  <44.496231, 29.769815, 25.958757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.850006, 29.946144, 26.020012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006651, -0.316214, 0.948665,
		0.466616, -0.840051, -0.276739,
		0.884435, 0.440821, 0.153137,
		45.115337, 30.078390, 26.065952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.966873, 29.201126, 26.255165>,  <44.496231, 29.769815, 25.958757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.966873, 29.201126, 26.255165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.097412, 29.565493, 26.356146>,  <45.175735, 29.784113, 26.416735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.097412, 29.565493, 26.356146>,  <44.966873, 29.201126, 26.255165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.097412, 29.565493, 26.356146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003157, -0.266023, 0.963962,
		0.945246, -0.315379, -0.083938,
		0.326343, 0.910916, 0.252453,
		45.195316, 29.838768, 26.431881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.243362, 29.008064, 26.795618>,  <44.966873, 29.201126, 26.255165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.243362, 29.008064, 26.795618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.259037, 29.406979, 26.820555>,  <45.268440, 29.646328, 26.835518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.259037, 29.406979, 26.820555>,  <45.243362, 29.008064, 26.795618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.259037, 29.406979, 26.820555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130201, -0.056763, 0.989861,
		0.990713, -0.046904, 0.127624,
		0.039184, 0.997285, 0.062343,
		45.270794, 29.706163, 26.839258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.655491, 29.124947, 27.246965>,  <45.243362, 29.008064, 26.795618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.655491, 29.124947, 27.246965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.431984, 29.456661, 27.243782>,  <45.297882, 29.655691, 27.241873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.431984, 29.456661, 27.243782>,  <45.655491, 29.124947, 27.246965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.431984, 29.456661, 27.243782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004623, 0.006482, 0.999968,
		0.829313, 0.558784, 0.000212,
		-0.558765, 0.829288, -0.007959,
		45.264355, 29.705448, 27.241394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.027477, 29.677197, 27.751320>,  <45.655491, 29.124947, 27.246965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.027477, 29.677197, 27.751320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.640316, 29.766401, 27.704969>,  <45.408020, 29.819923, 27.677160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.640316, 29.766401, 27.704969>,  <46.027477, 29.677197, 27.751320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.640316, 29.766401, 27.704969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059622, 0.244144, 0.967904,
		0.244144, 0.943748, -0.223012,
		-0.967904, 0.223012, -0.115874,
		45.349945, 29.833305, 27.670208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.995998, 30.100643, 28.305279>,  <46.027477, 29.677197, 27.751320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.995998, 30.100643, 28.305279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.612183, 30.032831, 28.215351>,  <45.381893, 29.992144, 28.161394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.612183, 30.032831, 28.215351>,  <45.995998, 30.100643, 28.305279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.612183, 30.032831, 28.215351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254935, 0.184079, 0.949275,
		-0.119546, 0.968181, -0.219851,
		-0.959540, -0.169530, -0.224818,
		45.324322, 29.981972, 28.147905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.602669, 30.682867, 28.509970>,  <45.995998, 30.100643, 28.305279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.602669, 30.682867, 28.509970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.363419, 30.362722, 28.493610>,  <45.219868, 30.170635, 28.483795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.363419, 30.362722, 28.493610>,  <45.602669, 30.682867, 28.509970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.363419, 30.362722, 28.493610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244479, 0.133625, 0.960403,
		-0.763203, 0.584439, -0.275595,
		-0.598123, -0.800360, -0.040900,
		45.183983, 30.122614, 28.481340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.044350, 30.884319, 28.970789>,  <45.602669, 30.682867, 28.509970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.044350, 30.884319, 28.970789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.968746, 30.493740, 28.929178>,  <44.923386, 30.259392, 28.904213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.968746, 30.493740, 28.929178>,  <45.044350, 30.884319, 28.970789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.968746, 30.493740, 28.929178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347081, -0.032668, 0.937266,
		-0.918592, 0.213257, -0.332732,
		-0.189009, -0.976450, -0.104026,
		44.912045, 30.200806, 28.897970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.341434, 30.804800, 29.327513>,  <45.044350, 30.884319, 28.970789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.341434, 30.804800, 29.327513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.486122, 30.432148, 29.313543>,  <44.572937, 30.208557, 29.305162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.486122, 30.432148, 29.313543>,  <44.341434, 30.804800, 29.327513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.486122, 30.432148, 29.313543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258331, -0.136154, 0.956414,
		-0.895781, -0.336933, -0.289919,
		0.361722, -0.931632, -0.034924,
		44.594639, 30.152658, 29.303066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.803318, 30.388737, 29.569361>,  <44.341434, 30.804800, 29.327513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.803318, 30.388737, 29.569361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.145821, 30.189028, 29.622364>,  <44.351322, 30.069202, 29.654165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.145821, 30.189028, 29.622364>,  <43.803318, 30.388737, 29.569361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.145821, 30.189028, 29.622364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209149, -0.100532, 0.972703,
		-0.472323, -0.860593, -0.190503,
		0.856252, -0.499273, 0.132509,
		44.402695, 30.039246, 29.662117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.640575, 29.765953, 29.940720>,  <43.803318, 30.388737, 29.569361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.640575, 29.765953, 29.940720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.024857, 29.862387, 29.995747>,  <44.255424, 29.920246, 30.028763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.024857, 29.862387, 29.995747>,  <43.640575, 29.765953, 29.940720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.024857, 29.862387, 29.995747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149649, 0.032452, 0.988207,
		0.233777, -0.969961, 0.067255,
		0.960705, 0.241085, 0.137567,
		44.313068, 29.934711, 30.037016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.055946, 29.229530, 29.874691>,  <43.640575, 29.765953, 29.940720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.055946, 29.229530, 29.874691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.673328, 29.304272, 29.785147>,  <42.443760, 29.349117, 29.731421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.673328, 29.304272, 29.785147>,  <43.055946, 29.229530, 29.874691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.673328, 29.304272, 29.785147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181533, -0.219205, -0.958642,
		-0.228220, -0.957615, 0.175753,
		-0.956536, 0.186876, -0.223865,
		42.386368, 29.360329, 29.717989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798466, 28.706705, 29.487125>,  <43.055946, 29.229530, 29.874691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798466, 28.706705, 29.487125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.547619, 29.002745, 29.389980>,  <42.397110, 29.180368, 29.331694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.547619, 29.002745, 29.389980>,  <42.798466, 28.706705, 29.487125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547619, 29.002745, 29.389980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183441, -0.162696, -0.969474,
		-0.757019, -0.652522, -0.033735,
		-0.627114, 0.740098, -0.242863,
		42.359486, 29.224773, 29.317122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186878, 28.408424, 29.104618>,  <42.798466, 28.706705, 29.487125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186878, 28.408424, 29.104618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.257221, 28.788059, 29.000074>,  <42.299427, 29.015841, 28.937349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.257221, 28.788059, 29.000074>,  <42.186878, 28.408424, 29.104618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257221, 28.788059, 29.000074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036575, -0.271611, -0.961712,
		-0.983736, 0.159561, -0.082477,
		0.175854, 0.949088, -0.261358,
		42.309978, 29.072786, 28.921667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874199, 28.535679, 28.414505>,  <42.186878, 28.408424, 29.104618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874199, 28.535679, 28.414505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.089817, 28.872473, 28.423386>,  <42.219189, 29.074549, 28.428715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.089817, 28.872473, 28.423386>,  <41.874199, 28.535679, 28.414505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.089817, 28.872473, 28.423386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010822, 0.019436, -0.999753,
		-0.842209, 0.539149, 0.001365,
		0.539042, 0.841986, 0.022204,
		42.251530, 29.125069, 28.430046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514992, 29.005190, 28.057688>,  <41.874199, 28.535679, 28.414505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514992, 29.005190, 28.057688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.889606, 29.144979, 28.046650>,  <42.114376, 29.228853, 28.040028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.889606, 29.144979, 28.046650>,  <41.514992, 29.005190, 28.057688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889606, 29.144979, 28.046650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146613, 0.318958, -0.936360,
		-0.318432, 0.880984, 0.349954,
		0.936539, 0.349475, -0.027597,
		42.170567, 29.249823, 28.038370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493839, 29.514782, 27.546314>,  <41.514992, 29.005190, 28.057688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493839, 29.514782, 27.546314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.889393, 29.481316, 27.595469>,  <42.126724, 29.461235, 27.624962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.889393, 29.481316, 27.595469>,  <41.493839, 29.514782, 27.546314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889393, 29.481316, 27.595469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133315, 0.133286, -0.982070,
		0.065787, 0.987540, 0.142959,
		0.988888, -0.083667, 0.122886,
		42.186058, 29.456215, 27.632334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.857727, 30.009100, 27.185074>,  <41.493839, 29.514782, 27.546314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.857727, 30.009100, 27.185074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.135117, 29.724310, 27.229221>,  <42.301552, 29.553436, 27.255711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.135117, 29.724310, 27.229221>,  <41.857727, 30.009100, 27.185074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.135117, 29.724310, 27.229221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160728, 0.003549, -0.986992,
		0.702323, 0.702195, 0.116896,
		0.693476, -0.711976, 0.110370,
		42.343159, 29.510717, 27.262333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.817787, 30.801731, 26.882362>,  <41.857727, 30.009100, 27.185074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.817787, 30.801731, 26.882362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.480053, 30.727200, 26.681412>,  <41.277412, 30.682482, 26.560841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.480053, 30.727200, 26.681412>,  <41.817787, 30.801731, 26.882362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480053, 30.727200, 26.681412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487052, -0.123921, 0.864537,
		-0.223342, 0.974641, 0.013879,
		-0.844333, -0.186327, -0.502378,
		41.226753, 30.671301, 26.530699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335781, 31.263874, 27.208918>,  <41.817787, 30.801731, 26.882362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335781, 31.263874, 27.208918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.089455, 31.001169, 27.034821>,  <40.941658, 30.843546, 26.930363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.089455, 31.001169, 27.034821>,  <41.335781, 31.263874, 27.208918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089455, 31.001169, 27.034821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544111, -0.045030, 0.837803,
		-0.569837, 0.752752, -0.329621,
		-0.615816, -0.656762, -0.435241,
		40.904709, 30.804140, 26.904247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758076, 31.366962, 27.619032>,  <41.335781, 31.263874, 27.208918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.758076, 31.366962, 27.619032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.655071, 31.024754, 27.439358>,  <40.593269, 30.819427, 27.331553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.655071, 31.024754, 27.439358>,  <40.758076, 31.366962, 27.619032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655071, 31.024754, 27.439358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637109, -0.199178, 0.744594,
		-0.726486, 0.477920, -0.493773,
		-0.257508, -0.855524, -0.449187,
		40.577820, 30.768097, 27.304602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043636, 31.384535, 27.649889>,  <40.758076, 31.366962, 27.619032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043636, 31.384535, 27.649889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.164326, 31.010382, 27.576105>,  <40.236740, 30.785891, 27.531834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.164326, 31.010382, 27.576105>,  <40.043636, 31.384535, 27.649889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164326, 31.010382, 27.576105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640702, -0.342207, 0.687310,
		-0.706022, -0.089190, -0.702551,
		0.301719, -0.935382, -0.184461,
		40.254841, 30.729767, 27.520767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463818, 31.048761, 27.614178>,  <40.043636, 31.384535, 27.649889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463818, 31.048761, 27.614178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.721584, 30.749748, 27.678577>,  <39.876244, 30.570341, 27.717218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.721584, 30.749748, 27.678577>,  <39.463818, 31.048761, 27.614178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721584, 30.749748, 27.678577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594241, -0.357052, 0.720688,
		-0.481253, -0.560097, -0.674305,
		0.644417, -0.747533, 0.161000,
		39.914909, 30.525488, 27.726877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994289, 30.448191, 27.626446>,  <39.463818, 31.048761, 27.614178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994289, 30.448191, 27.626446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.348614, 30.381104, 27.799520>,  <39.561207, 30.340851, 27.903366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.348614, 30.381104, 27.799520>,  <38.994289, 30.448191, 27.626446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348614, 30.381104, 27.799520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464012, -0.332692, 0.820980,
		0.006261, -0.928002, -0.372523,
		0.885807, -0.167715, 0.432687,
		39.614357, 30.330788, 27.929327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907089, 29.853703, 28.013828>,  <38.994289, 30.448191, 27.626446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907089, 29.853703, 28.013828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.227413, 30.030949, 28.175003>,  <39.419605, 30.137297, 28.271708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.227413, 30.030949, 28.175003>,  <38.907089, 29.853703, 28.013828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227413, 30.030949, 28.175003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428180, -0.046837, 0.902479,
		0.418775, -0.895240, 0.152226,
		0.800805, 0.443116, 0.402937,
		39.467655, 30.163883, 28.295885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<45.465904, 35.760212, 23.815018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.542236, 35.381752, 23.919619>,  <45.588036, 35.154675, 23.982378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.542236, 35.381752, 23.919619>,  <45.465904, 35.760212, 23.815018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.542236, 35.381752, 23.919619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553435, 0.116321, 0.824730,
		-0.810737, -0.302104, -0.501436,
		0.190827, -0.946151, 0.261501,
		45.599483, 35.097908, 23.998070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.916656, 35.373569, 23.872444>,  <45.465904, 35.760212, 23.815018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.916656, 35.373569, 23.872444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.182755, 35.201454, 24.116508>,  <45.342415, 35.098183, 24.262947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.182755, 35.201454, 24.116508>,  <44.916656, 35.373569, 23.872444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.182755, 35.201454, 24.116508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517849, 0.322795, 0.792235,
		-0.537851, -0.843001, -0.008090,
		0.665244, -0.430293, 0.610163,
		45.382328, 35.072365, 24.299557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.538033, 34.960999, 24.285603>,  <44.916656, 35.373569, 23.872444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.538033, 34.960999, 24.285603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.881157, 35.077770, 24.454805>,  <45.087032, 35.147835, 24.556326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.881157, 35.077770, 24.454805>,  <44.538033, 34.960999, 24.285603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.881157, 35.077770, 24.454805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509355, 0.372933, 0.775550,
		0.068653, -0.880737, 0.468602,
		0.857814, 0.291929, 0.423005,
		45.138500, 35.165348, 24.581707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.449249, 34.761440, 24.946941>,  <44.538033, 34.960999, 24.285603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.449249, 34.761440, 24.946941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.756512, 35.015579, 24.978630>,  <44.940868, 35.168060, 24.997643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.756512, 35.015579, 24.978630>,  <44.449249, 34.761440, 24.946941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.756512, 35.015579, 24.978630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315843, 0.268388, 0.910061,
		0.556941, -0.724088, 0.406833,
		0.768154, 0.635346, 0.079222,
		44.986958, 35.206184, 25.002398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.647907, 34.611229, 25.503216>,  <44.449249, 34.761440, 24.946941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.647907, 34.611229, 25.503216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.797287, 34.976509, 25.437969>,  <44.886913, 35.195675, 25.398821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.797287, 34.976509, 25.437969>,  <44.647907, 34.611229, 25.503216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.797287, 34.976509, 25.437969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344094, 0.299659, 0.889834,
		0.861473, -0.276180, 0.426133,
		0.373449, 0.913198, -0.163116,
		44.909321, 35.250469, 25.389034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.912544, 34.790318, 26.087200>,  <44.647907, 34.611229, 25.503216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.912544, 34.790318, 26.087200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.881989, 35.151932, 25.918966>,  <44.863655, 35.368900, 25.818026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.881989, 35.151932, 25.918966>,  <44.912544, 34.790318, 26.087200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.881989, 35.151932, 25.918966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425426, 0.351940, 0.833757,
		0.901763, 0.242618, 0.357714,
		-0.076391, 0.904032, -0.420583,
		44.859070, 35.423141, 25.792791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.273754, 35.315243, 26.531963>,  <44.912544, 34.790318, 26.087200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.273754, 35.315243, 26.531963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.997875, 35.507671, 26.315485>,  <44.832348, 35.623127, 26.185598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.997875, 35.507671, 26.315485>,  <45.273754, 35.315243, 26.531963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.997875, 35.507671, 26.315485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377514, 0.398902, 0.835680,
		0.617902, 0.780674, -0.093511,
		-0.689695, 0.481067, -0.541198,
		44.790966, 35.651993, 26.153126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.440773, 36.016125, 26.619608>,  <45.273754, 35.315243, 26.531963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.440773, 36.016125, 26.619608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.057575, 36.010254, 26.505045>,  <44.827656, 36.006729, 26.436306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.057575, 36.010254, 26.505045>,  <45.440773, 36.016125, 26.619608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.057575, 36.010254, 26.505045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285488, 0.143671, 0.947552,
		0.027238, 0.989517, -0.141827,
		-0.957995, -0.014681, -0.286408,
		44.770176, 36.005848, 26.419123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.063629, 36.537361, 26.998354>,  <45.440773, 36.016125, 26.619608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.063629, 36.537361, 26.998354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.760113, 36.309551, 26.871948>,  <44.578003, 36.172863, 26.796104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.760113, 36.309551, 26.871948>,  <45.063629, 36.537361, 26.998354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.760113, 36.309551, 26.871948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443767, 0.096909, 0.890887,
		-0.476761, 0.816239, -0.326273,
		-0.758795, -0.569529, -0.316017,
		44.532475, 36.138691, 26.777143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.465992, 36.931095, 27.038416>,  <45.063629, 36.537361, 26.998354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.465992, 36.931095, 27.038416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.351284, 36.550049, 27.079000>,  <44.282459, 36.321423, 27.103352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.351284, 36.550049, 27.079000>,  <44.465992, 36.931095, 27.038416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.351284, 36.550049, 27.079000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320298, 0.195151, 0.926998,
		-0.902870, 0.233335, -0.361083,
		-0.286767, -0.952613, 0.101459,
		44.265255, 36.264263, 27.109438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.782677, 37.018196, 27.178545>,  <44.465992, 36.931095, 27.038416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.782677, 37.018196, 27.178545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.867813, 36.646397, 27.299028>,  <43.918896, 36.423317, 27.371319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.867813, 36.646397, 27.299028>,  <43.782677, 37.018196, 27.178545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.867813, 36.646397, 27.299028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484620, 0.167260, 0.858585,
		-0.848435, -0.328714, -0.414855,
		0.212840, -0.929500, 0.301211,
		43.931664, 36.367546, 27.389391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.157352, 36.687214, 27.412975>,  <43.782677, 37.018196, 27.178545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.157352, 36.687214, 27.412975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.461052, 36.502445, 27.596352>,  <43.643272, 36.391582, 27.706377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.461052, 36.502445, 27.596352>,  <43.157352, 36.687214, 27.412975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.461052, 36.502445, 27.596352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472015, 0.094105, 0.876553,
		-0.448041, -0.881914, -0.146585,
		0.759250, -0.461923, 0.458440,
		43.688828, 36.363869, 27.733883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725368, 36.095997, 27.143848>,  <43.157352, 36.687214, 27.412975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725368, 36.095997, 27.143848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.342010, 36.054951, 27.037310>,  <42.111996, 36.030323, 26.973387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.342010, 36.054951, 27.037310>,  <42.725368, 36.095997, 27.143848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342010, 36.054951, 27.037310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282390, -0.476747, -0.832447,
		-0.041559, -0.873031, 0.485891,
		-0.958399, -0.102616, -0.266348,
		42.054489, 36.024166, 26.957405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645786, 35.391663, 26.920465>,  <42.725368, 36.095997, 27.143848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.645786, 35.391663, 26.920465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.337353, 35.587086, 26.757128>,  <42.152294, 35.704338, 26.659124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.337353, 35.587086, 26.757128>,  <42.645786, 35.391663, 26.920465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.337353, 35.587086, 26.757128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060377, -0.582320, -0.810714,
		-0.633868, -0.649781, 0.419519,
		-0.771081, 0.488557, -0.408346,
		42.106030, 35.733654, 26.634624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130802, 34.841248, 26.700645>,  <42.645786, 35.391663, 26.920465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130802, 34.841248, 26.700645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.070637, 35.180470, 26.497398>,  <42.034538, 35.384003, 26.375450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.070637, 35.180470, 26.497398>,  <42.130802, 34.841248, 26.700645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070637, 35.180470, 26.497398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137423, -0.491038, -0.860231,
		-0.979025, -0.199218, -0.042682,
		-0.150414, 0.848053, -0.508116,
		42.025513, 35.434887, 26.344963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779537, 34.629574, 26.165756>,  <42.130802, 34.841248, 26.700645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779537, 34.629574, 26.165756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.913952, 34.983837, 26.037577>,  <41.994602, 35.196396, 25.960669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.913952, 34.983837, 26.037577>,  <41.779537, 34.629574, 26.165756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913952, 34.983837, 26.037577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053541, -0.357649, -0.932320,
		-0.940325, 0.296139, -0.167603,
		0.336039, 0.885657, -0.320451,
		42.014763, 35.249535, 25.941441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376869, 34.751518, 25.604187>,  <41.779537, 34.629574, 26.165756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376869, 34.751518, 25.604187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.683678, 35.001148, 25.544580>,  <41.867764, 35.150925, 25.508816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.683678, 35.001148, 25.544580>,  <41.376869, 34.751518, 25.604187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683678, 35.001148, 25.544580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103423, -0.349475, -0.931220,
		-0.633226, 0.698858, -0.332599,
		0.767026, 0.624071, -0.149019,
		41.913784, 35.188370, 25.499874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265072, 35.106064, 24.895655>,  <41.376869, 34.751518, 25.604187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265072, 35.106064, 24.895655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.657631, 35.114662, 24.971966>,  <41.893166, 35.119820, 25.017754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.657631, 35.114662, 24.971966>,  <41.265072, 35.106064, 24.895655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657631, 35.114662, 24.971966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183992, -0.389070, -0.902647,
		0.054826, 0.920957, -0.385787,
		0.981398, 0.021493, 0.190780,
		41.952049, 35.121109, 25.029200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506950, 35.182571, 24.231676>,  <41.265072, 35.106064, 24.895655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506950, 35.182571, 24.231676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.816177, 35.068027, 24.458078>,  <42.001713, 34.999302, 24.593920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.816177, 35.068027, 24.458078>,  <41.506950, 35.182571, 24.231676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.816177, 35.068027, 24.458078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468118, -0.344595, -0.813707,
		0.428056, 0.894009, -0.132346,
		0.773068, -0.286358, 0.566008,
		42.048100, 34.982121, 24.627880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.181385, 35.482136, 23.868202>,  <41.506950, 35.182571, 24.231676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.181385, 35.482136, 23.868202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.254192, 35.153027, 24.083578>,  <42.297878, 34.955563, 24.212803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.254192, 35.153027, 24.083578>,  <42.181385, 35.482136, 23.868202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254192, 35.153027, 24.083578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404383, -0.436502, -0.803704,
		0.896294, 0.364028, 0.253261,
		0.182022, -0.822770, 0.538440,
		42.308800, 34.906197, 24.245110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.720936, 35.348179, 23.557522>,  <42.181385, 35.482136, 23.868202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.720936, 35.348179, 23.557522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.621868, 35.020905, 23.765076>,  <42.562428, 34.824539, 23.889608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.621868, 35.020905, 23.765076>,  <42.720936, 35.348179, 23.557522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621868, 35.020905, 23.765076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373230, -0.574806, -0.728216,
		0.894069, 0.013306, 0.447731,
		-0.247669, -0.818182, 0.518882,
		42.547569, 34.775452, 23.920740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.260735, 34.910877, 23.434704>,  <42.720936, 35.348179, 23.557522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.260735, 34.910877, 23.434704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.961597, 34.677578, 23.561546>,  <42.782116, 34.537598, 23.637651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.961597, 34.677578, 23.561546>,  <43.260735, 34.910877, 23.434704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.961597, 34.677578, 23.561546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338833, -0.746091, -0.573185,
		0.570898, -0.321205, 0.755581,
		-0.747842, -0.583245, 0.317107,
		42.737244, 34.502605, 23.656679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.618626, 34.351109, 23.674448>,  <43.260735, 34.910877, 23.434704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.618626, 34.351109, 23.674448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.245495, 34.227303, 23.600651>,  <43.021618, 34.153019, 23.556372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.245495, 34.227303, 23.600651>,  <43.618626, 34.351109, 23.674448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245495, 34.227303, 23.600651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355852, -0.710853, -0.606678,
		0.056628, -0.631577, 0.773243,
		-0.932825, -0.309515, -0.184494,
		42.965649, 34.134449, 23.545303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.493561, 33.643200, 23.889395>,  <43.618626, 34.351109, 23.674448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.493561, 33.643200, 23.889395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.202755, 33.717464, 23.624977>,  <43.028271, 33.762024, 23.466326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.202755, 33.717464, 23.624977>,  <43.493561, 33.643200, 23.889395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.202755, 33.717464, 23.624977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323690, -0.756379, -0.568432,
		-0.605539, -0.627231, 0.489799,
		-0.727012, 0.185665, -0.661045,
		42.984650, 33.773163, 23.426664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.189304, 32.911373, 23.772882>,  <43.493561, 33.643200, 23.889395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.189304, 32.911373, 23.772882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.111862, 33.157513, 23.467239>,  <43.065395, 33.305199, 23.283854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.111862, 33.157513, 23.467239>,  <43.189304, 32.911373, 23.772882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.111862, 33.157513, 23.467239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255423, -0.720369, -0.644847,
		-0.947247, -0.320016, -0.017707,
		-0.193606, 0.615352, -0.764107,
		43.053780, 33.342117, 23.238007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.775433, 32.831917, 24.352350>,  <43.189304, 32.911373, 23.772882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.775433, 32.831917, 24.352350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.881016, 32.448940, 24.305647>,  <42.944366, 32.219154, 24.277624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.881016, 32.448940, 24.305647>,  <42.775433, 32.831917, 24.352350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.881016, 32.448940, 24.305647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848823, -0.288077, 0.443296,
		-0.458066, -0.017904, -0.888738,
		0.263962, -0.957440, -0.116761,
		42.960205, 32.161709, 24.270618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102013, 32.518417, 24.495115>,  <42.775433, 32.831917, 24.352350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102013, 32.518417, 24.495115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.329926, 32.189884, 24.506155>,  <42.466675, 31.992764, 24.512779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.329926, 32.189884, 24.506155>,  <42.102013, 32.518417, 24.495115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329926, 32.189884, 24.506155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693595, -0.462613, 0.552191,
		-0.440761, -0.333777, -0.833260,
		0.569786, -0.821330, 0.027605,
		42.500858, 31.943485, 24.514435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674603, 32.001228, 24.324900>,  <42.102013, 32.518417, 24.495115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674603, 32.001228, 24.324900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.987434, 31.810146, 24.484974>,  <42.175133, 31.695498, 24.581018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.987434, 31.810146, 24.484974>,  <41.674603, 32.001228, 24.324900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.987434, 31.810146, 24.484974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623158, -0.594667, 0.507981,
		-0.004684, -0.646663, -0.762761,
		0.782082, -0.477700, 0.400188,
		42.222057, 31.666836, 24.605030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516182, 31.359262, 24.316460>,  <41.674603, 32.001228, 24.324900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516182, 31.359262, 24.316460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.800217, 31.398481, 24.595364>,  <41.970638, 31.422012, 24.762705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.800217, 31.398481, 24.595364>,  <41.516182, 31.359262, 24.316460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800217, 31.398481, 24.595364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520923, -0.593095, 0.613904,
		0.473731, -0.799140, -0.370073,
		0.710084, 0.098046, 0.697258,
		42.013241, 31.427895, 24.804541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540058, 30.670048, 24.510126>,  <41.516182, 31.359262, 24.316460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540058, 30.670048, 24.510126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.710587, 30.875658, 24.807858>,  <41.812904, 30.999023, 24.986496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.710587, 30.875658, 24.807858>,  <41.540058, 30.670048, 24.510126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.710587, 30.875658, 24.807858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575670, -0.480539, 0.661578,
		0.697748, -0.710534, 0.091045,
		0.426323, 0.514026, 0.744329,
		41.838482, 31.029865, 25.031157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544891, 30.236488, 25.044641>,  <41.540058, 30.670048, 24.510126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544891, 30.236488, 25.044641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.619404, 30.568844, 25.254375>,  <41.664112, 30.768257, 25.380217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.619404, 30.568844, 25.254375>,  <41.544891, 30.236488, 25.044641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.619404, 30.568844, 25.254375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466946, -0.394682, 0.791321,
		0.864443, -0.392241, 0.314459,
		0.186278, 0.830887, 0.524335,
		41.675285, 30.818110, 25.411676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829361, 29.967903, 25.642752>,  <41.544891, 30.236488, 25.044641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.829361, 29.967903, 25.642752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.637745, 30.315321, 25.693592>,  <41.522778, 30.523771, 25.724096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.637745, 30.315321, 25.693592>,  <41.829361, 29.967903, 25.642752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637745, 30.315321, 25.693592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390921, -0.340732, 0.855034,
		0.785941, 0.359908, 0.502756,
		-0.479038, 0.868544, 0.127100,
		41.494034, 30.575884, 25.731722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987137, 30.388418, 26.330822>,  <41.829361, 29.967903, 25.642752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987137, 30.388418, 26.330822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.649487, 30.568581, 26.214483>,  <41.446896, 30.676678, 26.144680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.649487, 30.568581, 26.214483>,  <41.987137, 30.388418, 26.330822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.649487, 30.568581, 26.214483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423381, -0.227150, 0.877013,
		0.328948, 0.863444, 0.382436,
		-0.844122, 0.450407, -0.290845,
		41.396252, 30.703703, 26.127230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.496197, 30.295759, 26.900331>,  <41.987137, 30.388418, 26.330822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.496197, 30.295759, 26.900331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.607880, 29.911753, 26.908476>,  <42.674889, 29.681349, 26.913363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.607880, 29.911753, 26.908476>,  <42.496197, 30.295759, 26.900331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.607880, 29.911753, 26.908476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339953, 0.078993, -0.937119,
		0.898040, 0.268571, 0.348416,
		0.279205, -0.960015, 0.020362,
		42.691643, 29.623749, 26.914585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.983280, 30.269989, 26.461313>,  <42.496197, 30.295759, 26.900331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.983280, 30.269989, 26.461313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.879616, 29.883879, 26.448177>,  <42.817417, 29.652212, 26.440296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.879616, 29.883879, 26.448177>,  <42.983280, 30.269989, 26.461313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.879616, 29.883879, 26.448177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396946, -0.075454, -0.914735,
		0.880494, -0.250097, 0.402717,
		-0.259159, -0.965276, -0.032839,
		42.801868, 29.594296, 26.438326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.575848, 29.952248, 26.104389>,  <42.983280, 30.269989, 26.461313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.575848, 29.952248, 26.104389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.280918, 29.683401, 26.077206>,  <43.103962, 29.522093, 26.060896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.280918, 29.683401, 26.077206>,  <43.575848, 29.952248, 26.104389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.280918, 29.683401, 26.077206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254547, -0.183232, -0.949543,
		0.625751, -0.717416, 0.306186,
		-0.737321, -0.672116, -0.067959,
		43.059723, 29.481766, 26.056818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.825951, 29.222168, 25.760164>,  <43.575848, 29.952248, 26.104389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.825951, 29.222168, 25.760164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.429691, 29.214352, 25.706142>,  <43.191936, 29.209661, 25.673729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.429691, 29.214352, 25.706142>,  <43.825951, 29.222168, 25.760164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429691, 29.214352, 25.706142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133286, 0.073674, -0.988335,
		0.029265, -0.997091, -0.070380,
		-0.990646, -0.019543, -0.135055,
		43.132496, 29.208488, 25.665627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.711590, 28.641729, 25.473368>,  <43.825951, 29.222168, 25.760164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.711590, 28.641729, 25.473368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.393806, 28.864971, 25.377569>,  <43.203136, 28.998917, 25.320091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.393806, 28.864971, 25.377569>,  <43.711590, 28.641729, 25.473368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.393806, 28.864971, 25.377569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197250, -0.135849, -0.970895,
		-0.574397, -0.818574, -0.002160,
		-0.794456, 0.558105, -0.239495,
		43.155468, 29.032402, 25.305721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.341709, 28.296480, 24.877838>,  <43.711590, 28.641729, 25.473368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.341709, 28.296480, 24.877838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.211636, 28.673933, 24.853130>,  <43.133591, 28.900404, 24.838306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.211636, 28.673933, 24.853130>,  <43.341709, 28.296480, 24.877838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211636, 28.673933, 24.853130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158104, -0.010148, -0.987370,
		-0.932341, -0.330841, -0.145892,
		-0.325182, 0.943632, -0.061769,
		43.114082, 28.957022, 24.834600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.024567, 28.345112, 24.247683>,  <43.341709, 28.296480, 24.877838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.024567, 28.345112, 24.247683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.068287, 28.738243, 24.307144>,  <43.094521, 28.974123, 24.342821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.068287, 28.738243, 24.307144>,  <43.024567, 28.345112, 24.247683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.068287, 28.738243, 24.307144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203347, 0.124277, -0.971188,
		-0.972987, 0.136381, -0.186272,
		0.109302, 0.982830, 0.148652,
		43.101078, 29.033092, 24.351740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557243, 28.740734, 23.720503>,  <43.024567, 28.345112, 24.247683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.557243, 28.740734, 23.720503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.844585, 28.985933, 23.852076>,  <43.016991, 29.133053, 23.931019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.844585, 28.985933, 23.852076>,  <42.557243, 28.740734, 23.720503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.844585, 28.985933, 23.852076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161529, 0.312929, -0.935940,
		-0.676663, 0.725470, 0.125777,
		0.718356, 0.612999, 0.328932,
		43.060093, 29.169832, 23.950754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562805, 29.401543, 23.376354>,  <42.557243, 28.740734, 23.720503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562805, 29.401543, 23.376354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.940701, 29.294464, 23.452040>,  <43.167439, 29.230217, 23.497450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.940701, 29.294464, 23.452040>,  <42.562805, 29.401543, 23.376354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.940701, 29.294464, 23.452040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254043, 0.233079, -0.938689,
		0.207180, 0.934887, 0.288205,
		0.944743, -0.267694, 0.189212,
		43.224125, 29.214155, 23.508802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.756992, 31.769274, 39.035042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.123489, 31.928356, 39.054321>,  <39.343388, 32.023804, 39.065891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.123489, 31.928356, 39.054321>,  <38.756992, 31.769274, 39.035042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123489, 31.928356, 39.054321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128035, -0.176696, -0.975902,
		-0.379604, 0.900338, -0.212818,
		0.916246, 0.397705, 0.048201,
		39.398365, 32.047668, 39.068783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795017, 32.280846, 38.518764>,  <38.756992, 31.769274, 39.035042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795017, 32.280846, 38.518764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.163910, 32.167122, 38.623573>,  <39.385246, 32.098888, 38.686459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.163910, 32.167122, 38.623573>,  <38.795017, 32.280846, 38.518764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163910, 32.167122, 38.623573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229264, -0.143565, -0.962719,
		0.311325, 0.947923, -0.067219,
		0.922234, -0.284307, 0.262020,
		39.440578, 32.081829, 38.702179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295540, 32.546104, 38.039547>,  <38.795017, 32.280846, 38.518764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295540, 32.546104, 38.039547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.498386, 32.242634, 38.203129>,  <39.620094, 32.060551, 38.301277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.498386, 32.242634, 38.203129>,  <39.295540, 32.546104, 38.039547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498386, 32.242634, 38.203129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329738, -0.267615, -0.905348,
		0.796309, 0.593963, 0.114453,
		0.507114, -0.758677, 0.408956,
		39.650520, 32.015030, 38.325817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930779, 32.581181, 37.671844>,  <39.295540, 32.546104, 38.039547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930779, 32.581181, 37.671844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.929569, 32.216946, 37.837170>,  <39.928844, 31.998405, 37.936363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.929569, 32.216946, 37.837170>,  <39.930779, 32.581181, 37.671844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929569, 32.216946, 37.837170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322782, -0.392078, -0.861444,
		0.946468, 0.130809, 0.295104,
		-0.003020, -0.910584, 0.413312,
		39.928665, 31.943769, 37.961163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461082, 32.232704, 37.399765>,  <39.930779, 32.581181, 37.671844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461082, 32.232704, 37.399765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.242290, 31.918053, 37.514332>,  <40.111015, 31.729263, 37.583073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.242290, 31.918053, 37.514332>,  <40.461082, 32.232704, 37.399765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242290, 31.918053, 37.514332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162922, -0.435623, -0.885262,
		0.821141, -0.437554, 0.366435,
		-0.546978, -0.786625, 0.286421,
		40.078197, 31.682066, 37.600258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969749, 31.645382, 37.359840>,  <40.461082, 32.232704, 37.399765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969749, 31.645382, 37.359840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.589394, 31.522991, 37.341122>,  <40.361179, 31.449556, 37.329891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.589394, 31.522991, 37.341122>,  <40.969749, 31.645382, 37.359840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589394, 31.522991, 37.341122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220732, -0.564308, -0.795509,
		0.217003, -0.766768, 0.604133,
		-0.950887, -0.305979, -0.046794,
		40.304127, 31.431198, 37.327084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046562, 30.961838, 37.256363>,  <40.969749, 31.645382, 37.359840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046562, 30.961838, 37.256363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.674686, 31.053596, 37.141083>,  <40.451561, 31.108652, 37.071915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.674686, 31.053596, 37.141083>,  <41.046562, 30.961838, 37.256363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674686, 31.053596, 37.141083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089925, -0.617397, -0.781496,
		-0.357209, -0.752462, 0.553356,
		-0.929686, 0.229396, -0.288204,
		40.395782, 31.122416, 37.054623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611622, 30.346912, 37.097569>,  <41.046562, 30.961838, 37.256363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611622, 30.346912, 37.097569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.447956, 30.632475, 36.870262>,  <40.349758, 30.803812, 36.733879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.447956, 30.632475, 36.870262>,  <40.611622, 30.346912, 37.097569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447956, 30.632475, 36.870262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000291, -0.622885, -0.782314,
		-0.912461, -0.319929, 0.255069,
		-0.409163, 0.713905, -0.568265,
		40.325207, 30.846647, 36.699783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363281, 29.985624, 36.552048>,  <40.611622, 30.346912, 37.097569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363281, 29.985624, 36.552048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.352268, 30.355219, 36.399471>,  <40.345661, 30.576975, 36.307926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.352268, 30.355219, 36.399471>,  <40.363281, 29.985624, 36.552048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352268, 30.355219, 36.399471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038885, -0.380304, -0.924044,
		-0.998864, -0.040275, -0.025457,
		-0.027535, 0.923985, -0.381438,
		40.344009, 30.632414, 36.285042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958553, 29.959715, 35.983734>,  <40.363281, 29.985624, 36.552048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958553, 29.959715, 35.983734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.111298, 30.323755, 35.919365>,  <40.202946, 30.542179, 35.880745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.111298, 30.323755, 35.919365>,  <39.958553, 29.959715, 35.983734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111298, 30.323755, 35.919365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073287, -0.203388, -0.976352,
		-0.921309, 0.361039, -0.144365,
		0.381863, 0.910102, -0.160923,
		40.225857, 30.596786, 35.871086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528828, 30.270838, 35.346504>,  <39.958553, 29.959715, 35.983734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528828, 30.270838, 35.346504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.885395, 30.441174, 35.408524>,  <40.099335, 30.543375, 35.445736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.885395, 30.441174, 35.408524>,  <39.528828, 30.270838, 35.346504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885395, 30.441174, 35.408524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224503, -0.117759, -0.967332,
		-0.393669, 0.897103, -0.200574,
		0.891416, 0.425839, 0.155044,
		40.152821, 30.568926, 35.455036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597931, 30.829256, 34.821117>,  <39.528828, 30.270838, 35.346504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597931, 30.829256, 34.821117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.971100, 30.744749, 34.937752>,  <40.195000, 30.694044, 35.007732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.971100, 30.744749, 34.937752>,  <39.597931, 30.829256, 34.821117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971100, 30.744749, 34.937752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287885, -0.048779, -0.956422,
		0.216285, 0.976210, 0.015314,
		0.932922, -0.211268, 0.291586,
		40.250977, 30.681368, 35.025227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081146, 31.305895, 34.666084>,  <39.597931, 30.829256, 34.821117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081146, 31.305895, 34.666084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.813511, 31.429197, 34.395588>,  <38.652931, 31.503180, 34.233292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.813511, 31.429197, 34.395588>,  <39.081146, 31.305895, 34.666084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813511, 31.429197, 34.395588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539101, 0.425014, 0.727140,
		0.511557, 0.851082, -0.118191,
		-0.669089, 0.308257, -0.676238,
		38.612785, 31.521675, 34.192715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047092, 32.056789, 34.737885>,  <39.081146, 31.305895, 34.666084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047092, 32.056789, 34.737885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.697712, 31.930153, 34.589909>,  <38.488083, 31.854172, 34.501125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.697712, 31.930153, 34.589909>,  <39.047092, 32.056789, 34.737885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697712, 31.930153, 34.589909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486243, 0.527365, 0.696745,
		-0.025489, 0.788453, -0.614567,
		-0.873452, -0.316588, -0.369938,
		38.435677, 31.835176, 34.478928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590984, 32.578125, 34.763474>,  <39.047092, 32.056789, 34.737885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590984, 32.578125, 34.763474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.325298, 32.280926, 34.730576>,  <38.165886, 32.102604, 34.710838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.325298, 32.280926, 34.730576>,  <38.590984, 32.578125, 34.763474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325298, 32.280926, 34.730576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625390, 0.492037, 0.605630,
		-0.409515, 0.453706, -0.791485,
		-0.664218, -0.743001, -0.082246,
		38.126034, 32.058025, 34.705902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885292, 32.986603, 34.608131>,  <38.590984, 32.578125, 34.763474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885292, 32.986603, 34.608131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.836830, 32.615578, 34.749527>,  <37.807755, 32.392963, 34.834366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.836830, 32.615578, 34.749527>,  <37.885292, 32.986603, 34.608131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836830, 32.615578, 34.749527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768281, 0.313119, 0.558301,
		-0.628542, -0.203940, -0.750562,
		-0.121155, -0.927558, 0.353492,
		37.800484, 32.337311, 34.855576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233128, 32.986389, 34.425953>,  <37.885292, 32.986603, 34.608131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233128, 32.986389, 34.425953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.277798, 32.690540, 34.691429>,  <37.304600, 32.513031, 34.850716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.277798, 32.690540, 34.691429>,  <37.233128, 32.986389, 34.425953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277798, 32.690540, 34.691429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834615, 0.292703, 0.466629,
		-0.539394, -0.606037, -0.584613,
		0.111676, -0.739624, 0.663691,
		37.311302, 32.468655, 34.890537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549835, 32.624981, 34.463013>,  <37.233128, 32.986389, 34.425953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549835, 32.624981, 34.463013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.750050, 32.566769, 34.804371>,  <36.870178, 32.531841, 35.009186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.750050, 32.566769, 34.804371>,  <36.549835, 32.624981, 34.463013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750050, 32.566769, 34.804371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817128, 0.246175, 0.521249,
		-0.285945, -0.958236, 0.004299,
		0.500538, -0.145536, 0.853394,
		36.900211, 32.523109, 35.060390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167919, 32.204052, 35.000961>,  <36.549835, 32.624981, 34.463013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167919, 32.204052, 35.000961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.413986, 32.418949, 35.231762>,  <36.561626, 32.547886, 35.370243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.413986, 32.418949, 35.231762>,  <36.167919, 32.204052, 35.000961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413986, 32.418949, 35.231762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754358, 0.188384, 0.628853,
		0.229147, -0.822121, 0.521160,
		0.615172, 0.537241, 0.577006,
		36.598537, 32.580120, 35.404865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811367, 32.166897, 35.646381>,  <36.167919, 32.204052, 35.000961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811367, 32.166897, 35.646381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.073566, 32.460899, 35.715767>,  <36.230885, 32.637302, 35.757397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.073566, 32.460899, 35.715767>,  <35.811367, 32.166897, 35.646381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073566, 32.460899, 35.715767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619736, 0.392272, 0.679743,
		0.431576, -0.553065, 0.712644,
		0.655492, 0.735012, 0.173459,
		36.270214, 32.681400, 35.767807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825397, 32.284790, 36.380421>,  <35.811367, 32.166897, 35.646381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825397, 32.284790, 36.380421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.971661, 32.622166, 36.222992>,  <36.059418, 32.824593, 36.128532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.971661, 32.622166, 36.222992>,  <35.825397, 32.284790, 36.380421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971661, 32.622166, 36.222992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540497, 0.536678, 0.647950,
		0.757730, -0.024203, 0.652119,
		0.365660, 0.843440, -0.393575,
		36.081360, 32.875198, 36.104919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974125, 32.666481, 36.935474>,  <35.825397, 32.284790, 36.380421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974125, 32.666481, 36.935474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.939552, 32.916927, 36.625504>,  <35.918808, 33.067196, 36.439522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.939552, 32.916927, 36.625504>,  <35.974125, 32.666481, 36.935474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939552, 32.916927, 36.625504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560860, 0.612285, 0.557264,
		0.823386, 0.482793, 0.298239,
		-0.086436, 0.626114, -0.774926,
		35.913620, 33.104763, 36.393024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925667, 33.374695, 37.267410>,  <35.974125, 32.666481, 36.935474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925667, 33.374695, 37.267410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.822350, 33.456173, 36.889671>,  <35.760361, 33.505058, 36.663029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.822350, 33.456173, 36.889671>,  <35.925667, 33.374695, 37.267410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822350, 33.456173, 36.889671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573091, 0.754634, 0.319520,
		0.777721, 0.623728, -0.078184,
		-0.258294, 0.203691, -0.944349,
		35.744862, 33.517281, 36.606365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132450, 34.037647, 37.168236>,  <35.925667, 33.374695, 37.267410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132450, 34.037647, 37.168236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.833328, 33.967800, 36.912018>,  <35.653854, 33.925892, 36.758286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.833328, 33.967800, 36.912018>,  <36.132450, 34.037647, 37.168236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833328, 33.967800, 36.912018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503463, 0.778082, 0.375651,
		0.432800, 0.603404, -0.669767,
		-0.747803, -0.174621, -0.640545,
		35.608986, 33.915413, 36.719852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916527, 34.578552, 36.981705>,  <36.132450, 34.037647, 37.168236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916527, 34.578552, 36.981705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.596233, 34.409321, 36.812084>,  <35.404057, 34.307781, 36.710312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.596233, 34.409321, 36.812084>,  <35.916527, 34.578552, 36.981705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596233, 34.409321, 36.812084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556417, 0.787528, 0.264954,
		0.221856, 0.448109, -0.866013,
		-0.800737, -0.423083, -0.424053,
		35.356010, 34.282394, 36.684868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623547, 35.047100, 36.480030>,  <35.916527, 34.578552, 36.981705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623547, 35.047100, 36.480030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.329319, 34.818188, 36.625046>,  <35.152782, 34.680840, 36.712055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.329319, 34.818188, 36.625046>,  <35.623547, 35.047100, 36.480030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329319, 34.818188, 36.625046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532023, 0.819288, 0.213821,
		-0.419389, -0.035599, -0.907108,
		-0.735570, -0.572276, 0.362540,
		35.108646, 34.646503, 36.733807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752968, 35.853092, 36.604210>,  <35.623547, 35.047100, 36.480030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752968, 35.853092, 36.604210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.606495, 36.116825, 36.341549>,  <35.518612, 36.275066, 36.183952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.606495, 36.116825, 36.341549>,  <35.752968, 35.853092, 36.604210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606495, 36.116825, 36.341549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890698, 0.044062, -0.452455,
		-0.269386, -0.750559, -0.603401,
		-0.366182, 0.659333, -0.656651,
		35.496639, 36.314625, 36.144554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434433, 36.229847, 36.504963>,  <35.752968, 35.853092, 36.604210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434433, 36.229847, 36.504963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.707951, 36.521030, 36.484959>,  <36.872063, 36.695740, 36.472958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.707951, 36.521030, 36.484959>,  <36.434433, 36.229847, 36.504963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707951, 36.521030, 36.484959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096131, -0.157813, -0.982779,
		-0.723315, 0.667211, -0.177891,
		0.683794, 0.727959, -0.050009,
		36.913090, 36.739418, 36.469955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330357, 36.522453, 35.856533>,  <36.434433, 36.229847, 36.504963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330357, 36.522453, 35.856533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.688385, 36.638340, 35.992126>,  <36.903202, 36.707870, 36.073483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.688385, 36.638340, 35.992126>,  <36.330357, 36.522453, 35.856533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688385, 36.638340, 35.992126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337101, 0.057997, -0.939680,
		-0.291900, 0.955354, -0.045751,
		0.895074, 0.289716, 0.338980,
		36.956905, 36.725254, 36.093819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528305, 37.170414, 35.519756>,  <36.330357, 36.522453, 35.856533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528305, 37.170414, 35.519756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.869286, 36.993874, 35.631851>,  <37.073875, 36.887951, 35.699108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.869286, 36.993874, 35.631851>,  <36.528305, 37.170414, 35.519756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869286, 36.993874, 35.631851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337055, 0.054202, -0.939924,
		0.399647, 0.895696, 0.194964,
		0.852453, -0.441351, 0.280237,
		37.125023, 36.861469, 35.715923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957397, 37.529491, 35.038300>,  <36.528305, 37.170414, 35.519756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957397, 37.529491, 35.038300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.152985, 37.214489, 35.188358>,  <37.270336, 37.025486, 35.278393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.152985, 37.214489, 35.188358>,  <36.957397, 37.529491, 35.038300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152985, 37.214489, 35.188358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583684, -0.024224, -0.811619,
		0.648246, 0.615825, 0.447812,
		0.488968, -0.787510, 0.375151,
		37.299675, 36.978237, 35.300903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697514, 37.652660, 35.015274>,  <36.957397, 37.529491, 35.038300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697514, 37.652660, 35.015274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.692879, 37.253376, 35.038727>,  <37.690098, 37.013805, 35.052799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.692879, 37.253376, 35.038727>,  <37.697514, 37.652660, 35.015274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692879, 37.253376, 35.038727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485893, -0.056867, -0.872166,
		0.873941, 0.018381, 0.485683,
		-0.011588, -0.998212, 0.058629,
		37.689404, 36.953911, 35.056316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359947, 37.534019, 34.841797>,  <37.697514, 37.652660, 35.015274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359947, 37.534019, 34.841797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.136509, 37.211979, 34.762020>,  <38.002445, 37.018753, 34.714153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.136509, 37.211979, 34.762020>,  <38.359947, 37.534019, 34.841797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136509, 37.211979, 34.762020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556288, -0.185291, -0.810069,
		0.615234, -0.563450, 0.551372,
		-0.558598, -0.805103, -0.199443,
		37.968929, 36.970448, 34.702187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757675, 37.160507, 34.390644>,  <38.359947, 37.534019, 34.841797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757675, 37.160507, 34.390644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.399166, 36.988789, 34.346115>,  <38.184059, 36.885757, 34.319397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.399166, 36.988789, 34.346115>,  <38.757675, 37.160507, 34.390644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399166, 36.988789, 34.346115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284867, -0.364892, -0.886400,
		0.339910, -0.826170, 0.449337,
		-0.896276, -0.429298, -0.111318,
		38.130283, 36.860001, 34.312721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883884, 36.460255, 34.149715>,  <38.757675, 37.160507, 34.390644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883884, 36.460255, 34.149715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.513092, 36.563919, 34.041245>,  <38.290615, 36.626118, 33.976162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.513092, 36.563919, 34.041245>,  <38.883884, 36.460255, 34.149715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513092, 36.563919, 34.041245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253464, -0.100152, -0.962147,
		-0.276513, -0.960627, 0.027150,
		-0.926983, 0.259164, -0.271177,
		38.234997, 36.641666, 33.959892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711147, 35.932957, 33.769894>,  <38.883884, 36.460255, 34.149715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711147, 35.932957, 33.769894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.471214, 36.237503, 33.671490>,  <38.327255, 36.420231, 33.612446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.471214, 36.237503, 33.671490>,  <38.711147, 35.932957, 33.769894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471214, 36.237503, 33.671490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350911, -0.025991, -0.936048,
		-0.719070, -0.647800, -0.251582,
		-0.599833, 0.761367, -0.246009,
		38.291264, 36.465912, 33.597687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570454, 35.754417, 33.180878>,  <38.711147, 35.932957, 33.769894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570454, 35.754417, 33.180878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.453568, 36.135471, 33.147182>,  <38.383434, 36.364105, 33.126965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.453568, 36.135471, 33.147182>,  <38.570454, 35.754417, 33.180878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453568, 36.135471, 33.147182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352704, 0.025479, -0.935388,
		-0.888938, -0.303044, -0.343444,
		-0.292215, 0.952636, -0.084235,
		38.365902, 36.421261, 33.121910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259827, 35.845421, 32.529709>,  <38.570454, 35.754417, 33.180878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259827, 35.845421, 32.529709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.342731, 36.226059, 32.620487>,  <38.392475, 36.454441, 32.674953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.342731, 36.226059, 32.620487>,  <38.259827, 35.845421, 32.529709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342731, 36.226059, 32.620487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515247, 0.091020, -0.852195,
		-0.831602, 0.293564, -0.471442,
		0.207263, 0.951596, 0.226951,
		38.404911, 36.511539, 32.688572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114140, 36.183624, 31.900805>,  <38.259827, 35.845421, 32.529709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114140, 36.183624, 31.900805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.351669, 36.404663, 32.134731>,  <38.494186, 36.537285, 32.275085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.351669, 36.404663, 32.134731>,  <38.114140, 36.183624, 31.900805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351669, 36.404663, 32.134731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565005, 0.231090, -0.792065,
		-0.572837, 0.800772, -0.174992,
		0.593824, 0.552596, 0.584817,
		38.529816, 36.570442, 32.310177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152359, 36.724937, 31.536507>,  <38.114140, 36.183624, 31.900805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152359, 36.724937, 31.536507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.464535, 36.738525, 31.786228>,  <38.651840, 36.746677, 31.936062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.464535, 36.738525, 31.786228>,  <38.152359, 36.724937, 31.536507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464535, 36.738525, 31.786228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609252, 0.182950, -0.771583,
		-0.140428, 0.982535, 0.122085,
		0.780443, 0.033971, 0.624303,
		38.698669, 36.748718, 31.973518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556324, 37.351864, 31.352011>,  <38.152359, 36.724937, 31.536507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556324, 37.351864, 31.352011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.805790, 37.101681, 31.539564>,  <38.955467, 36.951572, 31.652096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.805790, 37.101681, 31.539564>,  <38.556324, 37.351864, 31.352011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805790, 37.101681, 31.539564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669515, 0.117792, -0.733399,
		0.403477, 0.771318, 0.492214,
		0.623663, -0.625455, 0.468882,
		38.992889, 36.914043, 31.680229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224289, 37.614586, 31.296627>,  <38.556324, 37.351864, 31.352011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224289, 37.614586, 31.296627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.288437, 37.229668, 31.384514>,  <39.326923, 36.998718, 31.437246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.288437, 37.229668, 31.384514>,  <39.224289, 37.614586, 31.296627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288437, 37.229668, 31.384514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609908, -0.078414, -0.788583,
		0.776076, 0.260471, 0.574335,
		0.160367, -0.962292, 0.219719,
		39.336548, 36.940979, 31.450430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909760, 37.527462, 31.064449>,  <39.224289, 37.614586, 31.296627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909760, 37.527462, 31.064449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.785496, 37.149792, 31.108297>,  <39.710938, 36.923187, 31.134607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.785496, 37.149792, 31.108297>,  <39.909760, 37.527462, 31.064449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785496, 37.149792, 31.108297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489902, -0.257878, -0.832764,
		0.814547, -0.205003, 0.542667,
		-0.310660, -0.944178, 0.109622,
		39.692299, 36.866539, 31.141184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472954, 37.120369, 31.200035>,  <39.909760, 37.527462, 31.064449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472954, 37.120369, 31.200035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.187958, 36.894093, 31.033974>,  <40.016960, 36.758327, 30.934338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.187958, 36.894093, 31.033974>,  <40.472954, 37.120369, 31.200035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187958, 36.894093, 31.033974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635055, -0.268229, -0.724402,
		0.298431, -0.779774, 0.550356,
		-0.712491, -0.565690, -0.415151,
		39.974209, 36.724384, 30.909428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797035, 36.559212, 30.984991>,  <40.472954, 37.120369, 31.200035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.797035, 36.559212, 30.984991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.458649, 36.530766, 30.773600>,  <40.255619, 36.513699, 30.646765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.458649, 36.530766, 30.773600>,  <40.797035, 36.559212, 30.984991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458649, 36.530766, 30.773600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517530, -0.348297, -0.781570,
		-0.128484, -0.934682, 0.331452,
		-0.845963, -0.071118, -0.528477,
		40.204861, 36.509430, 30.615057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760849, 35.890980, 30.564804>,  <40.797035, 36.559212, 30.984991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760849, 35.890980, 30.564804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.498386, 36.118279, 30.366188>,  <40.340908, 36.254658, 30.247019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.498386, 36.118279, 30.366188>,  <40.760849, 35.890980, 30.564804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498386, 36.118279, 30.366188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354681, -0.348558, -0.867588,
		-0.666074, -0.745391, 0.027165,
		-0.656161, 0.568243, -0.496542,
		40.301537, 36.288750, 30.217226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474041, 35.449852, 30.054577>,  <40.760849, 35.890980, 30.564804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474041, 35.449852, 30.054577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.386234, 35.823978, 29.943588>,  <40.333549, 36.048454, 29.876995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.386234, 35.823978, 29.943588>,  <40.474041, 35.449852, 30.054577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386234, 35.823978, 29.943588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464589, -0.149876, -0.872751,
		-0.857888, -0.320491, -0.401639,
		-0.219513, 0.935320, -0.277473,
		40.320381, 36.104576, 29.860346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995827, 35.372036, 29.464310>,  <40.474041, 35.449852, 30.054577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995827, 35.372036, 29.464310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.187454, 35.723118, 29.468864>,  <40.302433, 35.933765, 29.471598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.187454, 35.723118, 29.468864>,  <39.995827, 35.372036, 29.464310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187454, 35.723118, 29.468864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372908, -0.191767, -0.907835,
		-0.794624, 0.439166, -0.419173,
		0.479074, 0.877701, 0.011386,
		40.331177, 35.986427, 29.472281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877434, 35.774765, 28.749941>,  <39.995827, 35.372036, 29.464310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877434, 35.774765, 28.749941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.218876, 35.928291, 28.890820>,  <40.423740, 36.020405, 28.975348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.218876, 35.928291, 28.890820>,  <39.877434, 35.774765, 28.749941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218876, 35.928291, 28.890820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375009, 0.016502, -0.926874,
		-0.361557, 0.923264, -0.129847,
		0.853607, 0.383812, 0.352198,
		40.474957, 36.043434, 28.996479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036556, 36.241852, 28.249186>,  <39.877434, 35.774765, 28.749941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036556, 36.241852, 28.249186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.385303, 36.214462, 28.443157>,  <40.594551, 36.198029, 28.559540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.385303, 36.214462, 28.443157>,  <40.036556, 36.241852, 28.249186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385303, 36.214462, 28.443157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486249, 0.239029, -0.840492,
		-0.058363, 0.968595, 0.241696,
		0.871869, -0.068471, 0.484929,
		40.646866, 36.193920, 28.588636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360847, 36.734905, 28.068468>,  <40.036556, 36.241852, 28.249186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360847, 36.734905, 28.068468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.653519, 36.490162, 28.188644>,  <40.829124, 36.343315, 28.260750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.653519, 36.490162, 28.188644>,  <40.360847, 36.734905, 28.068468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653519, 36.490162, 28.188644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532460, 0.237845, -0.812352,
		0.425590, 0.754357, 0.499820,
		0.731683, -0.611863, 0.300440,
		40.873024, 36.306602, 28.278776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021778, 37.094810, 27.930735>,  <40.360847, 36.734905, 28.068468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021778, 37.094810, 27.930735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.161980, 36.722382, 27.971254>,  <41.246101, 36.498924, 27.995565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.161980, 36.722382, 27.971254>,  <41.021778, 37.094810, 27.930735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161980, 36.722382, 27.971254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595485, 0.138068, -0.791413,
		0.722873, 0.337713, 0.602830,
		0.350502, -0.931068, 0.101297,
		41.267132, 36.443062, 28.001644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852112, 36.966587, 27.962534>,  <41.021778, 37.094810, 27.930735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852112, 36.966587, 27.962534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.670521, 36.646309, 27.806181>,  <41.561565, 36.454140, 27.712370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.670521, 36.646309, 27.806181>,  <41.852112, 36.966587, 27.962534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670521, 36.646309, 27.806181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635322, 0.016695, -0.772066,
		0.624718, -0.598835, 0.501122,
		-0.453974, -0.800698, -0.390883,
		41.534328, 36.406101, 27.688915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.352829, 36.685387, 27.601519>,  <41.852112, 36.966587, 27.962534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.352829, 36.685387, 27.601519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.056156, 36.465992, 27.447081>,  <41.878151, 36.334354, 27.354418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.056156, 36.465992, 27.447081>,  <42.352829, 36.685387, 27.601519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.056156, 36.465992, 27.447081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521023, -0.108597, -0.846606,
		0.422426, -0.829075, 0.366321,
		-0.741681, -0.548490, -0.386093,
		41.833652, 36.301445, 27.331253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709404, 36.250259, 28.174454>,  <42.352829, 36.685387, 27.601519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709404, 36.250259, 28.174454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.097328, 36.157131, 28.203461>,  <43.330082, 36.101254, 28.220865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.097328, 36.157131, 28.203461>,  <42.709404, 36.250259, 28.174454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.097328, 36.157131, 28.203461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018302, 0.227042, 0.973713,
		-0.243164, -0.945646, 0.215927,
		0.969813, -0.232820, 0.072516,
		43.388271, 36.087284, 28.225216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.736340, 35.746582, 28.660778>,  <42.709404, 36.250259, 28.174454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.736340, 35.746582, 28.660778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.086834, 35.939301, 28.656885>,  <43.297131, 36.054932, 28.654549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.086834, 35.939301, 28.656885>,  <42.736340, 35.746582, 28.660778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.086834, 35.939301, 28.656885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070102, 0.147426, 0.986586,
		0.476764, -0.863795, 0.162954,
		0.876232, 0.481792, -0.009734,
		43.349705, 36.083839, 28.653965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.201687, 35.480412, 29.296618>,  <42.736340, 35.746582, 28.660778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.201687, 35.480412, 29.296618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.347557, 35.835590, 29.184500>,  <43.435078, 36.048698, 29.117229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.347557, 35.835590, 29.184500>,  <43.201687, 35.480412, 29.296618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347557, 35.835590, 29.184500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115598, 0.255520, 0.959868,
		0.923932, -0.382441, -0.009463,
		0.364674, 0.887946, -0.280292,
		43.456959, 36.101974, 29.100412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.764133, 35.544476, 29.705990>,  <43.201687, 35.480412, 29.296618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.764133, 35.544476, 29.705990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.679722, 35.915535, 29.582750>,  <43.629074, 36.138172, 29.508806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.679722, 35.915535, 29.582750>,  <43.764133, 35.544476, 29.705990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.679722, 35.915535, 29.582750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042767, 0.323658, 0.945207,
		0.976543, 0.186294, -0.107975,
		-0.211034, 0.927653, -0.308099,
		43.616413, 36.193832, 29.490320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.254326, 36.045597, 30.056530>,  <43.764133, 35.544476, 29.705990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.254326, 36.045597, 30.056530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.892426, 36.197395, 29.979160>,  <43.675285, 36.288475, 29.932737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.892426, 36.197395, 29.979160>,  <44.254326, 36.045597, 30.056530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.892426, 36.197395, 29.979160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088043, 0.277685, 0.956629,
		0.416746, 0.882539, -0.217824,
		-0.904749, 0.379494, -0.193426,
		43.621002, 36.311245, 29.921133>
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
