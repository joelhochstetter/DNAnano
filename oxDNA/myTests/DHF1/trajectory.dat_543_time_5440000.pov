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
	<1.577623, 1.552010, 2.288561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.595207, 1.689220, 2.663879>,  <1.605758, 1.771547, 2.889071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.595207, 1.689220, 2.663879>,  <1.577623, 1.552010, 2.288561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.595207, 1.689220, 2.663879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778101, 0.577318, -0.247514,
		-0.626599, 0.740970, -0.241529,
		0.043961, 0.343026, 0.938297,
		1.608396, 1.792128, 2.945368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.514058, 2.313521, 2.244866>,  <1.577623, 1.552010, 2.288561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.514058, 2.313521, 2.244866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.749672, 2.155415, 2.526802>,  <1.891041, 2.060551, 2.695964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.749672, 2.155415, 2.526802>,  <1.514058, 2.313521, 2.244866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.749672, 2.155415, 2.526802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748003, 0.596770, -0.290445,
		-0.305825, 0.698305, 0.647179,
		0.589036, -0.395266, 0.704841,
		1.926383, 2.036835, 2.738255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.757162, 2.838310, 2.797852>,  <1.514058, 2.313521, 2.244866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.757162, 2.838310, 2.797852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.023586, 2.541805, 2.764641>,  <2.183441, 2.363902, 2.744714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.023586, 2.541805, 2.764641>,  <1.757162, 2.838310, 2.797852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.023586, 2.541805, 2.764641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713547, 0.665639, -0.218575,
		0.217287, 0.086341, 0.972281,
		0.666061, -0.741262, -0.083027,
		2.223404, 2.319427, 2.739733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.426606, 2.973356, 3.189852>,  <1.757162, 2.838310, 2.797852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.426606, 2.973356, 3.189852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.532238, 2.698597, 2.919022>,  <2.595617, 2.533741, 2.756523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.532238, 2.698597, 2.919022>,  <2.426606, 2.973356, 3.189852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.532238, 2.698597, 2.919022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904714, 0.419727, -0.072949,
		0.334296, -0.593297, 0.732288,
		0.264080, -0.686898, -0.677077,
		2.611462, 2.492527, 2.715899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.074066, 2.654215, 3.390771>,  <2.426606, 2.973356, 3.189852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.074066, 2.654215, 3.390771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.041489, 2.595619, 2.996429>,  <3.021942, 2.560462, 2.759825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.041489, 2.595619, 2.996429>,  <3.074066, 2.654215, 3.390771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.041489, 2.595619, 2.996429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984747, 0.140765, -0.102269,
		0.153754, -0.979146, 0.132790,
		-0.081444, -0.146489, -0.985854,
		3.017056, 2.551672, 2.700673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.613951, 2.182703, 3.150171>,  <3.074066, 2.654215, 3.390771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.613951, 2.182703, 3.150171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.520992, 2.409225, 2.833870>,  <3.465217, 2.545139, 2.644089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.520992, 2.409225, 2.833870>,  <3.613951, 2.182703, 3.150171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.520992, 2.409225, 2.833870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959109, 0.268482, -0.089599,
		0.161562, -0.779240, -0.605544,
		-0.232397, 0.566306, -0.790752,
		3.451273, 2.579117, 2.596644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.159977, 2.083450, 2.700748>,  <3.613951, 2.182703, 3.150171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.159977, 2.083450, 2.700748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.008686, 2.411072, 2.528194>,  <3.917911, 2.607645, 2.424662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.008686, 2.411072, 2.528194>,  <4.159977, 2.083450, 2.700748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.008686, 2.411072, 2.528194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923425, 0.301087, -0.237977,
		-0.065032, -0.488360, -0.870215,
		-0.378229, 0.819055, -0.431384,
		3.895217, 2.656788, 2.398779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.394466, 2.199568, 2.051315>,  <4.159977, 2.083450, 2.700748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.394466, 2.199568, 2.051315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.292084, 2.567371, 2.170639>,  <4.230654, 2.788054, 2.242233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.292084, 2.567371, 2.170639>,  <4.394466, 2.199568, 2.051315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.292084, 2.567371, 2.170639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952501, 0.292566, -0.084539,
		-0.165009, 0.262502, -0.950718,
		-0.255956, 0.919510, 0.298309,
		4.215297, 2.843224, 2.260132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.270553, 2.985188, 2.579769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.226028, 3.330170, 2.382271>,  <5.199314, 3.537158, 2.263772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.226028, 3.330170, 2.382271>,  <5.270553, 2.985188, 2.579769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.226028, 3.330170, 2.382271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967648, 0.019136, 0.251576,
		0.226420, 0.505776, 0.832421,
		-0.111312, 0.862453, -0.493746,
		5.192635, 3.588906, 2.234147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.029549, 3.570256, 2.978509>,  <5.270553, 2.985188, 2.579769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.029549, 3.570256, 2.978509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.935226, 3.534615, 2.591427>,  <4.878633, 3.513230, 2.359177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.935226, 3.534615, 2.591427>,  <5.029549, 3.570256, 2.978509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.935226, 3.534615, 2.591427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971700, 0.007368, 0.236102,
		-0.013907, 0.995995, -0.088319,
		-0.235807, -0.089103, -0.967707,
		4.864484, 3.507884, 2.301115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.372077, 3.807284, 2.909729>,  <5.029549, 3.570256, 2.978509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.372077, 3.807284, 2.909729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.393425, 3.629066, 2.552261>,  <4.406234, 3.522136, 2.337781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.393425, 3.629066, 2.552261>,  <4.372077, 3.807284, 2.909729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.393425, 3.629066, 2.552261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965551, -0.251276, 0.067612,
		-0.254682, 0.859275, -0.443602,
		0.053369, -0.445540, -0.893670,
		4.409436, 3.495404, 2.284161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.811702, 4.021901, 2.454954>,  <4.372077, 3.807284, 2.909729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.811702, 4.021901, 2.454954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.939331, 3.658600, 2.346680>,  <4.015909, 3.440619, 2.281715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.939331, 3.658600, 2.346680>,  <3.811702, 4.021901, 2.454954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.939331, 3.658600, 2.346680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919797, -0.365601, 0.142511,
		-0.228399, 0.203504, -0.952061,
		0.319073, -0.908252, -0.270685,
		4.035053, 3.386124, 2.265474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.486731, 3.721757, 1.809651>,  <3.811702, 4.021901, 2.454954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.486731, 3.721757, 1.809651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.572998, 3.412659, 2.048431>,  <3.624758, 3.227200, 2.191700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.572998, 3.412659, 2.048431>,  <3.486731, 3.721757, 1.809651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.572998, 3.412659, 2.048431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959623, -0.280789, -0.016785,
		0.180588, -0.569228, -0.802102,
		0.215667, -0.772746, 0.596951,
		3.637698, 3.180835, 2.227517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.097218, 3.128725, 1.465490>,  <3.486731, 3.721757, 1.809651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.097218, 3.128725, 1.465490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.192909, 2.982277, 1.825207>,  <3.250324, 2.894408, 2.041037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.192909, 2.982277, 1.825207>,  <3.097218, 3.128725, 1.465490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.192909, 2.982277, 1.825207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784799, -0.618261, -0.042936,
		0.571717, -0.695492, -0.435235,
		0.239227, -0.366120, 0.899292,
		3.264678, 2.872441, 2.094995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.070195, 2.463969, 1.464474>,  <3.097218, 3.128725, 1.465490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.070195, 2.463969, 1.464474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.030197, 2.512886, 1.859451>,  <3.006199, 2.542236, 2.096438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.030197, 2.512886, 1.859451>,  <3.070195, 2.463969, 1.464474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.030197, 2.512886, 1.859451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766941, -0.641715, 0.001809,
		0.633878, -0.757131, 0.157958,
		-0.099994, 0.122291, 0.987444,
		3.000199, 2.549573, 2.155684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.965641, 1.852488, 1.709197>,  <3.070195, 2.463969, 1.464474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.965641, 1.852488, 1.709197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.820221, 2.070221, 2.011597>,  <2.732969, 2.200861, 2.193036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.820221, 2.070221, 2.011597>,  <2.965641, 1.852488, 1.709197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.820221, 2.070221, 2.011597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824759, -0.565387, 0.010474,
		0.433133, -0.619709, 0.654490,
		-0.363549, 0.544333, 0.755998,
		2.711156, 2.233521, 2.238396>
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
