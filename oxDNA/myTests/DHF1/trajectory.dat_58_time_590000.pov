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
	<5.258345, -0.226074, 1.559506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.312258, 0.063057, 1.830608>,  <5.344605, 0.236536, 1.993270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.312258, 0.063057, 1.830608>,  <5.258345, -0.226074, 1.559506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.312258, 0.063057, 1.830608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011991, 0.682758, -0.730546,
		-0.990803, 0.106591, 0.083356,
		0.134781, 0.722827, 0.677757,
		5.352692, 0.279905, 2.033936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.789846, 0.289756, 1.364798>,  <5.258345, -0.226074, 1.559506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.789846, 0.289756, 1.364798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.105289, 0.442272, 1.557762>,  <5.294554, 0.533782, 1.673540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.105289, 0.442272, 1.557762>,  <4.789846, 0.289756, 1.364798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.105289, 0.442272, 1.557762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139777, 0.652838, -0.744490,
		-0.598801, 0.654539, 0.461537,
		0.788606, 0.381289, 0.482409,
		5.341870, 0.556659, 1.702485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.642477, 1.048199, 1.404090>,  <4.789846, 0.289756, 1.364798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.642477, 1.048199, 1.404090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.023887, 0.944408, 1.342823>,  <5.252733, 0.882134, 1.306063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.023887, 0.944408, 1.342823>,  <4.642477, 1.048199, 1.404090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.023887, 0.944408, 1.342823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035490, 0.601517, -0.798071,
		0.299215, 0.755545, 0.582771,
		0.953525, -0.259477, -0.153169,
		5.309944, 0.866565, 1.296872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.420533, 1.127530, 2.137388>,  <4.642477, 1.048199, 1.404090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.420533, 1.127530, 2.137388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.259176, 1.401596, 2.379982>,  <4.162363, 1.566036, 2.525538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.259176, 1.401596, 2.379982>,  <4.420533, 1.127530, 2.137388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.259176, 1.401596, 2.379982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896956, 0.427167, 0.114008,
		-0.180956, 0.589980, -0.786879,
		-0.403391, 0.685166, 0.606485,
		4.138159, 1.607146, 2.561927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.590486, 1.844687, 1.851289>,  <4.420533, 1.127530, 2.137388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.590486, 1.844687, 1.851289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.523871, 1.856022, 2.245541>,  <4.483903, 1.862823, 2.482091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.523871, 1.856022, 2.245541>,  <4.590486, 1.844687, 1.851289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.523871, 1.856022, 2.245541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827895, 0.546968, 0.124160,
		-0.535589, 0.836674, -0.114549,
		-0.166536, 0.028336, 0.985628,
		4.473911, 1.864523, 2.541229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.794200, 2.545115, 2.131385>,  <4.590486, 1.844687, 1.851289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.794200, 2.545115, 2.131385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.768937, 2.331085, 2.468361>,  <4.753779, 2.202667, 2.670547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.768937, 2.331085, 2.468361>,  <4.794200, 2.545115, 2.131385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.768937, 2.331085, 2.468361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705427, 0.573179, 0.416940,
		-0.705963, 0.620613, 0.341255,
		-0.063158, -0.535075, 0.842440,
		4.749990, 2.170563, 2.721093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.629080, 3.015205, 2.653290>,  <4.794200, 2.545115, 2.131385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.629080, 3.015205, 2.653290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.828911, 2.699528, 2.796173>,  <4.948809, 2.510121, 2.881903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.828911, 2.699528, 2.796173>,  <4.629080, 3.015205, 2.653290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.828911, 2.699528, 2.796173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759911, 0.597211, 0.256659,
		-0.415882, 0.143226, 0.898069,
		0.499576, -0.789193, 0.357209,
		4.978784, 2.462770, 2.903336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.743016, 3.001383, 3.442252>,  <4.629080, 3.015205, 2.653290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.743016, 3.001383, 3.442252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.022978, 2.820930, 3.220760>,  <5.190955, 2.712659, 3.087866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.022978, 2.820930, 3.220760>,  <4.743016, 3.001383, 3.442252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.022978, 2.820930, 3.220760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700804, 0.583415, 0.410489,
		0.137869, -0.675357, 0.724489,
		0.699904, -0.451131, -0.553728,
		5.232949, 2.685591, 3.054642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.172416, 2.623416, 4.083589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.224115, 2.456947, 3.723568>,  <2.255135, 2.357066, 3.507555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.224115, 2.456947, 3.723568>,  <2.172416, 2.623416, 4.083589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.224115, 2.456947, 3.723568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988430, -0.126734, -0.083338,
		-0.079385, 0.900410, -0.427738,
		0.129247, -0.416173, -0.900053,
		2.262890, 2.332095, 3.453552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.805177, 2.956529, 3.565807>,  <2.172416, 2.623416, 4.083589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.805177, 2.956529, 3.565807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.816414, 2.573631, 3.450642>,  <1.823156, 2.343893, 3.381542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.816414, 2.573631, 3.450642>,  <1.805177, 2.956529, 3.565807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.816414, 2.573631, 3.450642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991804, 0.009221, -0.127432,
		0.124639, 0.289134, -0.949140,
		0.028093, -0.957244, -0.287913,
		1.824842, 2.286458, 3.364268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.342220, 2.851843, 2.909233>,  <1.805177, 2.956529, 3.565807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.342220, 2.851843, 2.909233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.387247, 2.505219, 3.103718>,  <1.414263, 2.297244, 3.220409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.387247, 2.505219, 3.103718>,  <1.342220, 2.851843, 2.909233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.387247, 2.505219, 3.103718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988983, -0.145049, -0.029550,
		0.096131, -0.477529, -0.873341,
		0.112567, -0.866561, 0.486212,
		1.421017, 2.245250, 3.249581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.013439, 2.288364, 2.490681>,  <1.342220, 2.851843, 2.909233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.013439, 2.288364, 2.490681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.992731, 2.240318, 2.887245>,  <0.980306, 2.211491, 3.125183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.992731, 2.240318, 2.887245>,  <1.013439, 2.288364, 2.490681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.992731, 2.240318, 2.887245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988816, -0.132873, -0.067733,
		0.139868, -0.983827, -0.111897,
		-0.051769, -0.120120, 0.991409,
		0.977200, 2.204284, 3.184668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.744295, 1.710215, 2.655312>,  <1.013439, 2.288364, 2.490681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.744295, 1.710215, 2.655312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.640192, 1.929596, 2.973171>,  <0.577730, 2.061224, 3.163887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.640192, 1.929596, 2.973171>,  <0.744295, 1.710215, 2.655312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.640192, 1.929596, 2.973171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928491, -0.367956, -0.050136,
		0.264899, -0.750873, 0.604995,
		-0.260257, 0.548451, 0.794649,
		0.562115, 2.094131, 3.211566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.457661, 1.334510, 3.293694>,  <0.744295, 1.710215, 2.655312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.457661, 1.334510, 3.293694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.308498, 1.703522, 3.253933>,  <0.219001, 1.924929, 3.230077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.308498, 1.703522, 3.253933>,  <0.457661, 1.334510, 3.293694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.308498, 1.703522, 3.253933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926289, -0.363882, 0.097867,
		0.054115, 0.128570, 0.990223,
		-0.372908, 0.922529, -0.099402,
		0.196626, 1.980280, 3.224113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.200055, 1.309492, 3.731112>,  <0.457661, 1.334510, 3.293694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.200055, 1.309492, 3.731112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.219496, 1.560478, 3.420261>,  <-0.231160, 1.711070, 3.233751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.219496, 1.560478, 3.420261>,  <-0.200055, 1.309492, 3.731112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.219496, 1.560478, 3.420261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955060, -0.256966, -0.147747,
		-0.292401, 0.735021, 0.611756,
		-0.048603, 0.627465, -0.777126,
		-0.234077, 1.748718, 3.187124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.767416, 1.856182, 3.795414>,  <-0.200055, 1.309492, 3.731112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.767416, 1.856182, 3.795414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.673626, 1.834717, 3.407158>,  <-0.617352, 1.821838, 3.174204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.673626, 1.834717, 3.407158>,  <-0.767416, 1.856182, 3.795414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.673626, 1.834717, 3.407158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956303, -0.192129, -0.220390,
		-0.174661, 0.979902, -0.096368,
		0.234475, -0.053663, -0.970640,
		-0.603283, 1.818618, 3.115966>
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
