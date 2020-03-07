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
	<1.359790, 0.578810, 3.351779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.444471, 0.742381, 3.706847>,  <1.495280, 0.840524, 3.919888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.444471, 0.742381, 3.706847>,  <1.359790, 0.578810, 3.351779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.444471, 0.742381, 3.706847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923824, -0.212681, 0.318302,
		0.318954, -0.887437, 0.332752,
		0.211703, 0.408927, 0.887671,
		1.507982, 0.865059, 3.973149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.159858, 0.051558, 3.894199>,  <1.359790, 0.578810, 3.351779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.159858, 0.051558, 3.894199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.177667, 0.422279, 4.043360>,  <1.188352, 0.644712, 4.132856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.177667, 0.422279, 4.043360>,  <1.159858, 0.051558, 3.894199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.177667, 0.422279, 4.043360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955004, -0.070080, 0.288194,
		0.293232, -0.368953, 0.881980,
		0.044520, 0.926802, 0.372902,
		1.191023, 0.700320, 4.155230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.002424, 0.179081, 4.664530>,  <1.159858, 0.051558, 3.894199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.002424, 0.179081, 4.664530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.888952, 0.469254, 4.413684>,  <0.820869, 0.643358, 4.263176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.888952, 0.469254, 4.413684>,  <1.002424, 0.179081, 4.664530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.888952, 0.469254, 4.413684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945262, -0.101569, 0.310101,
		0.161262, 0.680758, 0.714537,
		-0.283679, 0.725433, -0.627116,
		0.803849, 0.686884, 4.225549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.583308, 0.615708, 4.995019>,  <1.002424, 0.179081, 4.664530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.583308, 0.615708, 4.995019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.487980, 0.661277, 4.609226>,  <0.430783, 0.688618, 4.377750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.487980, 0.661277, 4.609226>,  <0.583308, 0.615708, 4.995019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.487980, 0.661277, 4.609226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957422, -0.194164, 0.213642,
		-0.162930, 0.974332, 0.155344,
		-0.238320, 0.113921, -0.964482,
		0.416484, 0.695453, 4.319881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.014899, 1.042430, 4.965941>,  <0.583308, 0.615708, 4.995019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.014899, 1.042430, 4.965941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.006296, 0.850624, 4.615033>,  <-0.001134, 0.735540, 4.404489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.006296, 0.850624, 4.615033>,  <-0.014899, 1.042430, 4.965941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.006296, 0.850624, 4.615033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993233, -0.110415, 0.036002,
		-0.114127, 0.870560, -0.478645,
		0.021508, -0.479515, -0.877270,
		0.000156, 0.706769, 4.351852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.642367, 1.217341, 4.637262>,  <-0.014899, 1.042430, 4.965941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.642367, 1.217341, 4.637262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.524645, 0.874565, 4.468012>,  <-0.454011, 0.668899, 4.366461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.524645, 0.874565, 4.468012>,  <-0.642367, 1.217341, 4.637262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.524645, 0.874565, 4.468012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955388, -0.275314, -0.106939,
		-0.024853, 0.435723, -0.899737,
		0.294306, -0.856940, -0.423127,
		-0.436353, 0.617483, 4.341074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.105512, 1.053966, 4.004462>,  <-0.642367, 1.217341, 4.637262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.105512, 1.053966, 4.004462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.947643, 0.707629, 4.127459>,  <-0.852922, 0.499827, 4.201257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.947643, 0.707629, 4.127459>,  <-1.105512, 1.053966, 4.004462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.947643, 0.707629, 4.127459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911851, -0.410238, 0.015222,
		0.112965, -0.286395, -0.951429,
		0.394672, -0.865842, 0.307492,
		-0.829242, 0.447877, 4.219706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.366646, 0.563252, 3.580782>,  <-1.105512, 1.053966, 4.004462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.366646, 0.563252, 3.580782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-1.262520, 0.388322, 3.925103>,  <-1.200044, 0.283364, 4.131696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-1.262520, 0.388322, 3.925103>,  <-1.366646, 0.563252, 3.580782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.262520, 0.388322, 3.925103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926273, -0.364732, 0.094814,
		0.272498, -0.822020, -0.500028,
		0.260315, -0.437325, 0.860803,
		-1.184425, 0.257124, 4.183344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.325733, 5.068074, 4.551733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.528324, 4.723175, 4.552926>,  <2.649879, 4.516235, 4.553641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.528324, 4.723175, 4.552926>,  <2.325733, 5.068074, 4.551733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.528324, 4.723175, 4.552926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848417, 0.498964, 0.176703,
		-0.153850, -0.086967, 0.984260,
		0.506478, -0.862248, 0.002981,
		2.680268, 4.464501, 4.553820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.816002, 5.017713, 5.145779>,  <2.325733, 5.068074, 4.551733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.816002, 5.017713, 5.145779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.999207, 4.797976, 4.866222>,  <3.109129, 4.666134, 4.698488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.999207, 4.797976, 4.866222>,  <2.816002, 5.017713, 5.145779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.999207, 4.797976, 4.866222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840500, 0.523614, 0.139244,
		0.289457, -0.651193, 0.701543,
		0.458012, -0.549342, -0.698891,
		3.136610, 4.633174, 4.656554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.515646, 4.713200, 5.296304>,  <2.816002, 5.017713, 5.145779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.515646, 4.713200, 5.296304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.520012, 4.736938, 4.897033>,  <3.522632, 4.751181, 4.657471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.520012, 4.736938, 4.897033>,  <3.515646, 4.713200, 5.296304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.520012, 4.736938, 4.897033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975590, 0.218321, 0.023648,
		0.219327, -0.974071, -0.055512,
		0.010915, 0.059344, -0.998178,
		3.523286, 4.754742, 4.597580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.071735, 4.295376, 4.982179>,  <3.515646, 4.713200, 5.296304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.071735, 4.295376, 4.982179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.988369, 4.600504, 4.737339>,  <3.938349, 4.783581, 4.590435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.988369, 4.600504, 4.737339>,  <4.071735, 4.295376, 4.982179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.988369, 4.600504, 4.737339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971950, 0.231276, -0.042715,
		0.108980, -0.603834, -0.789625,
		-0.208415, 0.762821, -0.612101,
		3.925845, 4.829350, 4.553708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.689647, 4.330246, 4.620024>,  <4.071735, 4.295376, 4.982179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.689647, 4.330246, 4.620024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.524731, 4.669763, 4.487619>,  <4.425781, 4.873473, 4.408176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.524731, 4.669763, 4.487619>,  <4.689647, 4.330246, 4.620024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.524731, 4.669763, 4.487619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901039, 0.326171, -0.285905,
		-0.134707, -0.416130, -0.899272,
		-0.412290, 0.848792, -0.331012,
		4.401043, 4.924400, 4.388316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.089138, 4.515988, 4.001881>,  <4.689647, 4.330246, 4.620024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.089138, 4.515988, 4.001881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.898201, 4.860688, 4.070621>,  <4.783639, 5.067508, 4.111865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.898201, 4.860688, 4.070621>,  <5.089138, 4.515988, 4.001881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.898201, 4.860688, 4.070621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781513, 0.505749, -0.365317,
		-0.401724, -0.040078, -0.914883,
		-0.477342, 0.861749, 0.171850,
		4.754998, 5.119213, 4.122176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.997214, 4.920740, 3.334620>,  <5.089138, 4.515988, 4.001881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.997214, 4.920740, 3.334620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.984459, 5.189905, 3.630234>,  <4.976806, 5.351405, 3.807602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.984459, 5.189905, 3.630234>,  <4.997214, 4.920740, 3.334620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.984459, 5.189905, 3.630234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793501, 0.466637, -0.390649,
		-0.607733, 0.573966, -0.548838,
		-0.031889, 0.672914, 0.739033,
		4.974892, 5.391779, 3.851944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.135728, 5.612408, 3.054329>,  <4.997214, 4.920740, 3.334620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.135728, 5.612408, 3.054329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.210579, 5.655535, 3.444889>,  <5.255490, 5.681411, 3.679225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.210579, 5.655535, 3.444889>,  <5.135728, 5.612408, 3.054329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.210579, 5.655535, 3.444889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884480, 0.413973, -0.215224,
		-0.427408, 0.903881, -0.017896,
		0.187128, 0.107817, 0.976401,
		5.266717, 5.687880, 3.737809>
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
