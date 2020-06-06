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
	<24.313404, 35.222218, 34.862877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.317078, 34.900993, 35.101212>,  <24.319281, 34.708260, 35.244213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.317078, 34.900993, 35.101212>,  <24.313404, 35.222218, 34.862877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.317078, 34.900993, 35.101212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598467, -0.472945, -0.646653,
		0.801095, 0.362524, 0.476260,
		0.009182, -0.803057, 0.595832,
		24.319832, 34.660076, 35.279961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.040115, 35.020157, 35.138203>,  <24.313404, 35.222218, 34.862877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.040115, 35.020157, 35.138203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.796413, 34.704647, 35.105591>,  <24.650192, 34.515343, 35.086021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.796413, 34.704647, 35.105591>,  <25.040115, 35.020157, 35.138203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.796413, 34.704647, 35.105591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480412, -0.285353, -0.829324,
		0.630881, -0.544440, 0.552788,
		-0.609256, -0.788771, -0.081532,
		24.613636, 34.468018, 35.081131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.586308, 34.579037, 34.902454>,  <25.040115, 35.020157, 35.138203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.586308, 34.579037, 34.902454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.725821, 34.713497, 35.252392>,  <25.809528, 34.794174, 35.462353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.725821, 34.713497, 35.252392>,  <25.586308, 34.579037, 34.902454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.725821, 34.713497, 35.252392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880728, 0.201576, -0.428585,
		-0.320417, 0.919983, -0.225752,
		0.348785, 0.336152, 0.874843,
		25.830456, 34.814342, 35.514843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.170670, 34.716534, 34.354630>,  <25.586308, 34.579037, 34.902454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.170670, 34.716534, 34.354630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.125713, 34.848469, 33.979698>,  <26.098740, 34.927628, 33.754742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.125713, 34.848469, 33.979698>,  <26.170670, 34.716534, 34.354630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.125713, 34.848469, 33.979698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901367, 0.430862, 0.043536,
		0.418218, -0.839980, -0.345729,
		-0.112392, 0.329836, -0.937324,
		26.091995, 34.947418, 33.698502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756313, 34.427696, 34.090744>,  <26.170670, 34.716534, 34.354630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.756313, 34.427696, 34.090744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592949, 34.741215, 33.903614>,  <26.494930, 34.929325, 33.791336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592949, 34.741215, 33.903614>,  <26.756313, 34.427696, 34.090744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.592949, 34.741215, 33.903614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899079, 0.433946, -0.057865,
		0.157656, -0.444245, -0.881925,
		-0.408413, 0.783797, -0.467826,
		26.470425, 34.976353, 33.763268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.163847, 34.505234, 33.461304>,  <26.756313, 34.427696, 34.090744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.163847, 34.505234, 33.461304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.005083, 34.857243, 33.565628>,  <26.909824, 35.068447, 33.628223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.005083, 34.857243, 33.565628>,  <27.163847, 34.505234, 33.461304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.005083, 34.857243, 33.565628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913155, 0.407327, 0.015264,
		-0.092801, 0.244215, -0.965270,
		-0.396908, 0.880025, 0.260807,
		26.886011, 35.121250, 33.643871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.275574, 34.982582, 32.986080>,  <27.163847, 34.505234, 33.461304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.275574, 34.982582, 32.986080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248884, 35.147034, 33.349731>,  <27.232870, 35.245705, 33.567924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248884, 35.147034, 33.349731>,  <27.275574, 34.982582, 32.986080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.248884, 35.147034, 33.349731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932461, 0.349931, -0.089808,
		-0.355056, 0.841738, -0.406709,
		-0.066725, 0.411127, 0.909133,
		27.228867, 35.270370, 33.622471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.267288, 35.714008, 33.061504>,  <27.275574, 34.982582, 32.986080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.267288, 35.714008, 33.061504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451731, 35.580650, 33.390438>,  <27.562395, 35.500637, 33.587799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451731, 35.580650, 33.390438>,  <27.267288, 35.714008, 33.061504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.451731, 35.580650, 33.390438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809779, 0.537030, -0.236340,
		-0.362823, 0.774885, 0.517603,
		0.461105, -0.333394, 0.822333,
		27.590061, 35.480633, 33.637138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.516573, 36.174232, 33.559166>,  <27.267288, 35.714008, 33.061504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.516573, 36.174232, 33.559166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.762836, 35.862190, 33.514618>,  <27.910595, 35.674965, 33.487888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.762836, 35.862190, 33.514618>,  <27.516573, 36.174232, 33.559166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.762836, 35.862190, 33.514618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707793, 0.609562, -0.357019,
		0.346398, 0.140976, 0.927434,
		0.615660, -0.780102, -0.111369,
		27.947535, 35.628159, 33.481209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995464, 36.273815, 34.080444>,  <27.516573, 36.174232, 33.559166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995464, 36.273815, 34.080444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.129400, 36.080383, 33.756954>,  <28.209763, 35.964325, 33.562862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.129400, 36.080383, 33.756954>,  <27.995464, 36.273815, 34.080444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.129400, 36.080383, 33.756954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698909, 0.703101, -0.131051,
		0.631987, -0.521341, 0.573407,
		0.334841, -0.483582, -0.808721,
		28.229853, 35.935310, 33.514339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668364, 36.609249, 34.213779>,  <27.995464, 36.273815, 34.080444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668364, 36.609249, 34.213779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720329, 36.423439, 33.863388>,  <28.751509, 36.311951, 33.653152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720329, 36.423439, 33.863388>,  <28.668364, 36.609249, 34.213779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.720329, 36.423439, 33.863388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890424, 0.443316, -0.103034,
		0.436197, -0.766607, 0.471218,
		0.129912, -0.464527, -0.875978,
		28.759302, 36.284081, 33.600594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396601, 36.652058, 33.914333>,  <28.668364, 36.609249, 34.213779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396601, 36.652058, 33.914333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.240261, 36.463188, 33.598286>,  <29.146458, 36.349865, 33.408657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.240261, 36.463188, 33.598286>,  <29.396601, 36.652058, 33.914333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240261, 36.463188, 33.598286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889620, 0.026544, -0.455930,
		0.236252, -0.881105, 0.409682,
		-0.390847, -0.472176, -0.790119,
		29.123007, 36.321537, 33.361248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928307, 36.192455, 33.709457>,  <29.396601, 36.652058, 33.914333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928307, 36.192455, 33.709457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.690004, 36.324345, 33.416512>,  <29.547024, 36.403477, 33.240746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.690004, 36.324345, 33.416512>,  <29.928307, 36.192455, 33.709457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690004, 36.324345, 33.416512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802471, 0.206422, -0.559848,
		-0.033419, -0.921234, -0.387571,
		-0.595755, 0.329724, -0.732365,
		29.511278, 36.423264, 33.196800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307064, 35.930511, 33.101860>,  <29.928307, 36.192455, 33.709457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307064, 35.930511, 33.101860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.063591, 36.216549, 32.964371>,  <29.917507, 36.388172, 32.881878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.063591, 36.216549, 32.964371>,  <30.307064, 35.930511, 33.101860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063591, 36.216549, 32.964371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682796, 0.251470, -0.685969,
		-0.404096, -0.652230, -0.641329,
		-0.608684, 0.715094, -0.343722,
		29.880985, 36.431076, 32.861256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980333, 36.120964, 32.738838>,  <30.307064, 35.930511, 33.101860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980333, 36.120964, 32.738838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054472, 36.477604, 32.573574>,  <31.098955, 36.691586, 32.474415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054472, 36.477604, 32.573574>,  <30.980333, 36.120964, 32.738838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054472, 36.477604, 32.573574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909823, 0.314569, 0.270681,
		0.371307, 0.325735, 0.869499,
		0.185347, 0.891596, -0.413163,
		31.110077, 36.745083, 32.449627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.659937, 36.620117, 33.154522>,  <30.980333, 36.120964, 32.738838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.659937, 36.620117, 33.154522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682831, 36.798542, 32.797253>,  <30.696568, 36.905598, 32.582893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682831, 36.798542, 32.797253>,  <30.659937, 36.620117, 33.154522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682831, 36.798542, 32.797253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986516, 0.162671, 0.018025,
		0.153333, 0.880095, 0.449356,
		0.057234, 0.446061, -0.893171,
		30.700001, 36.932362, 32.529301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255589, 37.298416, 33.178085>,  <30.659937, 36.620117, 33.154522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.255589, 37.298416, 33.178085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250473, 37.153748, 32.805199>,  <30.247404, 37.066948, 32.581467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250473, 37.153748, 32.805199>,  <30.255589, 37.298416, 33.178085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250473, 37.153748, 32.805199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980735, -0.177206, 0.082205,
		-0.194925, 0.915309, -0.352439,
		-0.012788, -0.361673, -0.932218,
		30.246637, 37.045246, 32.525532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701263, 37.609787, 32.881439>,  <30.255589, 37.298416, 33.178085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701263, 37.609787, 32.881439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792789, 37.270851, 32.689751>,  <29.847706, 37.067490, 32.574738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792789, 37.270851, 32.689751>,  <29.701263, 37.609787, 32.881439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792789, 37.270851, 32.689751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865566, -0.402363, 0.298161,
		-0.445466, 0.346575, -0.825497,
		0.228814, -0.847343, -0.479222,
		29.861433, 37.016647, 32.545986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.076263, 37.366604, 32.456520>,  <29.701263, 37.609787, 32.881439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.076263, 37.366604, 32.456520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311077, 37.055157, 32.545193>,  <29.451965, 36.868290, 32.598396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311077, 37.055157, 32.545193>,  <29.076263, 37.366604, 32.456520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311077, 37.055157, 32.545193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790922, -0.493175, 0.362245,
		-0.172721, -0.387985, -0.905337,
		0.587035, -0.778618, 0.221684,
		29.487188, 36.821571, 32.611698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.704590, 36.776340, 32.185173>,  <29.076263, 37.366604, 32.456520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.704590, 36.776340, 32.185173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.958706, 36.654610, 32.469086>,  <29.111176, 36.581570, 32.639435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.958706, 36.654610, 32.469086>,  <28.704590, 36.776340, 32.185173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958706, 36.654610, 32.469086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750598, -0.459543, 0.474787,
		0.181682, -0.834388, -0.520374,
		0.635290, -0.304331, 0.709781,
		29.149294, 36.563309, 32.682018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.417706, 36.426517, 32.041508>,  <28.704590, 36.776340, 32.185173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.417706, 36.426517, 32.041508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548954, 36.767109, 31.877890>,  <29.627703, 36.971462, 31.779718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548954, 36.767109, 31.877890>,  <29.417706, 36.426517, 32.041508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548954, 36.767109, 31.877890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934924, -0.230791, 0.269543,
		0.135106, -0.470870, -0.871796,
		0.328122, 0.851479, -0.409046,
		29.647390, 37.022552, 31.755177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922045, 36.373272, 31.511532>,  <29.417706, 36.426517, 32.041508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922045, 36.373272, 31.511532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948265, 36.705788, 31.732319>,  <29.963997, 36.905296, 31.864792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948265, 36.705788, 31.732319>,  <29.922045, 36.373272, 31.511532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948265, 36.705788, 31.732319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996528, -0.082989, 0.006637,
		0.051325, 0.549616, -0.833839,
		0.065552, 0.831285, 0.551967,
		29.967930, 36.955173, 31.897909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541151, 36.798065, 31.266733>,  <29.922045, 36.373272, 31.511532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541151, 36.798065, 31.266733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440983, 36.937538, 31.628000>,  <30.380882, 37.021221, 31.844761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440983, 36.937538, 31.628000>,  <30.541151, 36.798065, 31.266733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440983, 36.937538, 31.628000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964693, 0.168492, 0.202432,
		-0.081592, 0.921972, -0.378564,
		-0.250421, 0.348681, 0.903167,
		30.365856, 37.042141, 31.898951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787281, 37.486046, 31.373379>,  <30.541151, 36.798065, 31.266733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787281, 37.486046, 31.373379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749783, 37.313251, 31.732176>,  <30.727283, 37.209576, 31.947454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749783, 37.313251, 31.732176>,  <30.787281, 37.486046, 31.373379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.749783, 37.313251, 31.732176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963054, 0.189120, 0.191730,
		-0.252464, 0.881827, 0.398299,
		-0.093747, -0.431989, 0.896994,
		30.721659, 37.183655, 32.001274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274826, 37.847420, 31.857977>,  <30.787281, 37.486046, 31.373379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274826, 37.847420, 31.857977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235003, 37.506653, 32.063625>,  <31.211107, 37.302193, 32.187016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235003, 37.506653, 32.063625>,  <31.274826, 37.847420, 31.857977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235003, 37.506653, 32.063625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994439, -0.103019, 0.021869,
		0.034334, 0.513440, 0.857438,
		-0.099561, -0.851919, 0.514122,
		31.205133, 37.251076, 32.217861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932953, 37.757439, 32.070702>,  <31.274826, 37.847420, 31.857977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932953, 37.757439, 32.070702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787399, 37.396576, 32.163395>,  <31.700068, 37.180058, 32.219013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787399, 37.396576, 32.163395>,  <31.932953, 37.757439, 32.070702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787399, 37.396576, 32.163395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917669, -0.389860, -0.076766,
		0.159599, 0.184723, 0.969745,
		-0.363884, -0.902157, 0.231736,
		31.678234, 37.125931, 32.232914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334343, 37.523743, 32.795063>,  <31.932953, 37.757439, 32.070702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334343, 37.523743, 32.795063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195736, 37.254101, 32.534138>,  <32.112572, 37.092316, 32.377583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195736, 37.254101, 32.534138>,  <32.334343, 37.523743, 32.795063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195736, 37.254101, 32.534138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924346, -0.363786, -0.115087,
		-0.159721, -0.642839, 0.749164,
		-0.346518, -0.674105, -0.652310,
		32.091782, 37.051868, 32.338444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501499, 36.825882, 33.028889>,  <32.334343, 37.523743, 32.795063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501499, 36.825882, 33.028889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477016, 36.864910, 32.631550>,  <32.462326, 36.888329, 32.393147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477016, 36.864910, 32.631550>,  <32.501499, 36.825882, 33.028889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477016, 36.864910, 32.631550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838997, -0.534075, -0.104155,
		-0.540683, -0.839788, -0.049177,
		-0.061204, 0.097574, -0.993344,
		32.458656, 36.894180, 32.333546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111374, 36.534927, 32.896225>,  <32.501499, 36.825882, 33.028889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111374, 36.534927, 32.896225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965805, 36.614040, 32.532150>,  <32.878464, 36.661507, 32.313705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965805, 36.614040, 32.532150>,  <33.111374, 36.534927, 32.896225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965805, 36.614040, 32.532150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801212, -0.431862, -0.414191,
		-0.474995, -0.879988, -0.001299,
		-0.363922, 0.197779, -0.910189,
		32.856628, 36.673374, 32.259094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181885, 35.897583, 32.447704>,  <33.111374, 36.534927, 32.896225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181885, 35.897583, 32.447704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177914, 36.235783, 32.234154>,  <33.175529, 36.438702, 32.106022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177914, 36.235783, 32.234154>,  <33.181885, 35.897583, 32.447704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177914, 36.235783, 32.234154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828206, -0.292228, -0.478203,
		-0.560336, -0.446911, -0.697348,
		-0.009929, 0.845502, -0.533881,
		33.174934, 36.489433, 32.073990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378696, 35.855358, 31.728914>,  <33.181885, 35.897583, 32.447704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378696, 35.855358, 31.728914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463226, 36.223141, 31.861547>,  <33.513943, 36.443810, 31.941128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463226, 36.223141, 31.861547>,  <33.378696, 35.855358, 31.728914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463226, 36.223141, 31.861547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843352, -0.000040, -0.537361,
		-0.494065, 0.393198, -0.775432,
		0.211320, 0.919454, 0.331585,
		33.526623, 36.498978, 31.961023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742538, 36.265129, 31.285955>,  <33.378696, 35.855358, 31.728914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742538, 36.265129, 31.285955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837387, 36.471870, 31.614986>,  <33.894299, 36.595917, 31.812405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837387, 36.471870, 31.614986>,  <33.742538, 36.265129, 31.285955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837387, 36.471870, 31.614986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940126, 0.091294, -0.328374,
		-0.244819, 0.851189, -0.464263,
		0.237124, 0.516858, 0.822575,
		33.908524, 36.626926, 31.861759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284603, 36.751389, 31.005030>,  <33.742538, 36.265129, 31.285955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284603, 36.751389, 31.005030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302868, 36.704281, 31.401825>,  <34.313828, 36.676014, 31.639902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302868, 36.704281, 31.401825>,  <34.284603, 36.751389, 31.005030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302868, 36.704281, 31.401825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992279, 0.119975, -0.031429,
		-0.115313, 0.985766, 0.122342,
		0.045659, -0.117773, 0.991990,
		34.316566, 36.668949, 31.699423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993855, 36.921638, 30.994766>,  <34.284603, 36.751389, 31.005030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993855, 36.921638, 30.994766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241692, 37.068371, 31.272339>,  <35.390392, 37.156410, 31.438883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241692, 37.068371, 31.272339>,  <34.993855, 36.921638, 30.994766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241692, 37.068371, 31.272339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694588, 0.155534, -0.702393,
		-0.365591, 0.917193, -0.158430,
		0.619589, 0.366832, 0.693933,
		35.427567, 37.178421, 31.480518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194294, 37.630493, 30.924572>,  <34.993855, 36.921638, 30.994766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194294, 37.630493, 30.924572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488686, 37.446011, 31.122814>,  <35.665321, 37.335320, 31.241760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488686, 37.446011, 31.122814>,  <35.194294, 37.630493, 30.924572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488686, 37.446011, 31.122814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635788, 0.219317, -0.740049,
		0.232623, 0.859759, 0.454644,
		0.735975, -0.461210, 0.495607,
		35.709476, 37.307648, 31.271496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770184, 38.124294, 30.951612>,  <35.194294, 37.630493, 30.924572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770184, 38.124294, 30.951612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902470, 37.747021, 30.938818>,  <35.981842, 37.520657, 30.931141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902470, 37.747021, 30.938818>,  <35.770184, 38.124294, 30.951612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902470, 37.747021, 30.938818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589500, 0.232930, -0.773455,
		0.736963, 0.236941, 0.633044,
		0.330718, -0.943187, -0.031984,
		36.001686, 37.464066, 30.929222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436722, 38.295650, 30.829159>,  <35.770184, 38.124294, 30.951612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436722, 38.295650, 30.829159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310642, 37.941578, 30.692280>,  <36.234997, 37.729134, 30.610153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310642, 37.941578, 30.692280>,  <36.436722, 38.295650, 30.829159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310642, 37.941578, 30.692280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427242, 0.189617, -0.884030,
		0.847418, -0.424842, 0.318422,
		-0.315195, -0.885186, -0.342195,
		36.216084, 37.676022, 30.589621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042953, 37.842094, 30.552622>,  <36.436722, 38.295650, 30.829159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042953, 37.842094, 30.552622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711700, 37.717060, 30.366512>,  <36.512947, 37.642040, 30.254847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711700, 37.717060, 30.366512>,  <37.042953, 37.842094, 30.552622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711700, 37.717060, 30.366512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414261, 0.217851, -0.883702,
		0.377595, -0.924570, -0.050917,
		-0.828136, -0.312589, -0.465272,
		36.463261, 37.623283, 30.226931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436317, 37.331024, 31.121767>,  <37.042953, 37.842094, 30.552622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436317, 37.331024, 31.121767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611732, 37.445717, 30.781069>,  <37.716980, 37.514534, 30.576651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611732, 37.445717, 30.781069>,  <37.436317, 37.331024, 31.121767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611732, 37.445717, 30.781069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213581, -0.953837, -0.211134,
		-0.872966, -0.089327, -0.479532,
		0.438535, 0.286732, -0.851746,
		37.743294, 37.531734, 30.525545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132359, 36.896927, 30.523151>,  <37.436317, 37.331024, 31.121767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132359, 36.896927, 30.523151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512371, 37.015144, 30.482958>,  <37.740379, 37.086075, 30.458841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512371, 37.015144, 30.482958>,  <37.132359, 36.896927, 30.523151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512371, 37.015144, 30.482958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266840, -0.935923, -0.229879,
		-0.161984, 0.191579, -0.968018,
		0.950031, 0.295542, -0.100484,
		37.797379, 37.103806, 30.452812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276508, 36.504566, 31.152576>,  <37.132359, 36.896927, 30.523151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276508, 36.504566, 31.152576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065166, 36.166275, 31.182489>,  <36.938362, 35.963299, 31.200438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065166, 36.166275, 31.182489>,  <37.276508, 36.504566, 31.152576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065166, 36.166275, 31.182489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826893, -0.492597, 0.271286,
		-0.192597, 0.205170, 0.959589,
		-0.528350, -0.845727, 0.074781,
		36.906662, 35.912556, 31.204924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479782, 36.282921, 31.789263>,  <37.276508, 36.504566, 31.152576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479782, 36.282921, 31.789263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398056, 35.966972, 31.557968>,  <37.349022, 35.777405, 31.419191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398056, 35.966972, 31.557968>,  <37.479782, 36.282921, 31.789263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398056, 35.966972, 31.557968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919132, -0.358043, 0.164323,
		-0.336828, -0.497904, 0.799149,
		-0.204313, -0.789871, -0.578238,
		37.336761, 35.730011, 31.384497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484707, 35.695835, 32.252445>,  <37.479782, 36.282921, 31.789263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484707, 35.695835, 32.252445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579861, 35.649330, 31.866722>,  <37.636951, 35.621426, 31.635288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579861, 35.649330, 31.866722>,  <37.484707, 35.695835, 32.252445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579861, 35.649330, 31.866722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828772, -0.493431, 0.263937,
		-0.506507, -0.861980, -0.021023,
		0.237882, -0.116263, -0.964311,
		37.651226, 35.614452, 31.577429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495556, 35.003216, 32.213551>,  <37.484707, 35.695835, 32.252445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495556, 35.003216, 32.213551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738880, 35.208229, 31.971142>,  <37.884876, 35.331238, 31.825695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738880, 35.208229, 31.971142>,  <37.495556, 35.003216, 32.213551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738880, 35.208229, 31.971142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775474, -0.546480, 0.316226,
		-0.169104, -0.662320, -0.729887,
		0.608312, 0.512534, -0.606024,
		37.921375, 35.361988, 31.789335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773190, 34.525665, 31.685711>,  <37.495556, 35.003216, 32.213551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773190, 34.525665, 31.685711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015640, 34.826908, 31.788031>,  <38.161110, 35.007656, 31.849422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015640, 34.826908, 31.788031>,  <37.773190, 34.525665, 31.685711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015640, 34.826908, 31.788031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688617, -0.657838, 0.305050,
		0.398009, -0.008754, -0.917340,
		0.606131, 0.753109, 0.255798,
		38.197479, 35.052841, 31.864769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527462, 34.334408, 31.592472>,  <37.773190, 34.525665, 31.685711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527462, 34.334408, 31.592472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511967, 34.636932, 31.853697>,  <38.502670, 34.818447, 32.010433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511967, 34.636932, 31.853697>,  <38.527462, 34.334408, 31.592472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511967, 34.636932, 31.853697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726564, -0.427357, 0.538025,
		0.686006, 0.495335, -0.532953,
		-0.038742, 0.756313, 0.653062,
		38.500343, 34.863827, 32.049614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152023, 34.702614, 31.647186>,  <38.527462, 34.334408, 31.592472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152023, 34.702614, 31.647186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955017, 34.709976, 31.995230>,  <38.836811, 34.714394, 32.204056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955017, 34.709976, 31.995230>,  <39.152023, 34.702614, 31.647186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955017, 34.709976, 31.995230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839665, -0.252891, 0.480635,
		0.228887, 0.967320, 0.109101,
		-0.492518, 0.018403, 0.870108,
		38.807262, 34.715496, 32.256264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656834, 34.964363, 32.178265>,  <39.152023, 34.702614, 31.647186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656834, 34.964363, 32.178265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366234, 34.808773, 32.404858>,  <39.191875, 34.715420, 32.540813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366234, 34.808773, 32.404858>,  <39.656834, 34.964363, 32.178265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366234, 34.808773, 32.404858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666827, -0.199946, 0.717888,
		-0.165973, 0.899290, 0.404637,
		-0.726495, -0.388973, 0.566485,
		39.148285, 34.692081, 32.574802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296928, 34.639835, 32.042240>,  <39.656834, 34.964363, 32.178265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296928, 34.639835, 32.042240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652737, 34.462231, 32.085327>,  <40.866222, 34.355667, 32.111179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652737, 34.462231, 32.085327>,  <40.296928, 34.639835, 32.042240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652737, 34.462231, 32.085327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454753, -0.837628, 0.302620,
		-0.044136, -0.318174, -0.947004,
		0.889523, -0.444009, 0.107722,
		40.919594, 34.329029, 32.117645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235653, 34.004292, 31.715710>,  <40.296928, 34.639835, 32.042240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235653, 34.004292, 31.715710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545418, 33.972656, 31.966795>,  <40.731277, 33.953674, 32.117447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545418, 33.972656, 31.966795>,  <40.235653, 34.004292, 31.715710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545418, 33.972656, 31.966795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275336, -0.935406, 0.221826,
		0.569624, -0.344617, -0.746169,
		0.774415, -0.079090, 0.627715,
		40.777744, 33.948929, 32.155109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212765, 33.294163, 31.879547>,  <40.235653, 34.004292, 31.715710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212765, 33.294163, 31.879547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525051, 33.433449, 32.087097>,  <40.712421, 33.517021, 32.211628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525051, 33.433449, 32.087097>,  <40.212765, 33.294163, 31.879547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525051, 33.433449, 32.087097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212459, -0.928800, 0.303632,
		0.587660, -0.126810, -0.799109,
		0.780715, 0.348211, 0.518877,
		40.759266, 33.537910, 32.242760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908756, 33.077682, 31.567652>,  <40.212765, 33.294163, 31.879547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908756, 33.077682, 31.567652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.876209, 33.148735, 31.959942>,  <40.856682, 33.191368, 32.195316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.876209, 33.148735, 31.959942>,  <40.908756, 33.077682, 31.567652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876209, 33.148735, 31.959942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220475, -0.956405, 0.191519,
		0.971993, 0.231809, 0.038655,
		-0.081366, 0.177633, 0.980727,
		40.851799, 33.202026, 32.254162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499008, 32.720474, 31.933340>,  <40.908756, 33.077682, 31.567652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499008, 32.720474, 31.933340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.181355, 32.780796, 32.168831>,  <40.990761, 32.816990, 32.310127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.181355, 32.780796, 32.168831>,  <41.499008, 32.720474, 31.933340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181355, 32.780796, 32.168831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013681, -0.964041, 0.265402,
		0.607583, 0.218820, 0.763519,
		-0.794138, 0.150808, 0.588728,
		40.943111, 32.826038, 32.345448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.673977, 32.584705, 32.695923>,  <41.499008, 32.720474, 31.933340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.673977, 32.584705, 32.695923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.302227, 32.514378, 32.566097>,  <41.079178, 32.472183, 32.488201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.302227, 32.514378, 32.566097>,  <41.673977, 32.584705, 32.695923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.302227, 32.514378, 32.566097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125225, -0.977310, 0.170832,
		-0.347237, 0.118124, 0.930308,
		-0.929379, -0.175817, -0.324566,
		41.023415, 32.461632, 32.468727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675091, 31.858244, 32.703213>,  <41.673977, 32.584705, 32.695923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675091, 31.858244, 32.703213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292889, 31.923155, 32.604691>,  <41.063568, 31.962101, 32.545578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292889, 31.923155, 32.604691>,  <41.675091, 31.858244, 32.703213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292889, 31.923155, 32.604691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169834, -0.985426, 0.009600,
		-0.241162, 0.051005, 0.969143,
		-0.955509, 0.162278, -0.246310,
		41.006237, 31.971838, 32.530796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233849, 31.598255, 33.287613>,  <41.675091, 31.858244, 32.703213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233849, 31.598255, 33.287613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091930, 31.577972, 32.914185>,  <41.006779, 31.565802, 32.690128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091930, 31.577972, 32.914185>,  <41.233849, 31.598255, 33.287613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091930, 31.577972, 32.914185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046042, -0.996369, 0.071617,
		-0.933808, 0.068392, 0.351176,
		-0.354799, -0.050708, -0.933566,
		40.985489, 31.562759, 32.634113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461647, 31.460768, 33.286320>,  <41.233849, 31.598255, 33.287613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461647, 31.460768, 33.286320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702702, 31.325743, 32.997078>,  <40.847336, 31.244728, 32.823532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702702, 31.325743, 32.997078>,  <40.461647, 31.460768, 33.286320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702702, 31.325743, 32.997078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251281, -0.940303, 0.229538,
		-0.757417, 0.043372, -0.651489,
		0.602641, -0.337563, -0.723101,
		40.883495, 31.224474, 32.780148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879051, 30.898735, 33.303486>,  <40.461647, 31.460768, 33.286320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879051, 30.898735, 33.303486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631157, 30.721676, 33.044258>,  <39.482422, 30.615440, 32.888721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631157, 30.721676, 33.044258>,  <39.879051, 30.898735, 33.303486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631157, 30.721676, 33.044258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732515, 0.029845, 0.680096,
		-0.281700, 0.896200, -0.342740,
		-0.619731, -0.442646, -0.648072,
		39.445236, 30.588882, 32.849838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197155, 31.174469, 33.393047>,  <39.879051, 30.898735, 33.303486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197155, 31.174469, 33.393047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181873, 30.808371, 33.232613>,  <39.172707, 30.588713, 33.136353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181873, 30.808371, 33.232613>,  <39.197155, 31.174469, 33.393047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181873, 30.808371, 33.232613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733776, -0.246768, 0.632991,
		-0.678316, 0.318488, -0.662157,
		-0.038201, -0.915244, -0.401086,
		39.170414, 30.533798, 33.112286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392632, 31.002693, 33.235245>,  <39.197155, 31.174469, 33.393047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392632, 31.002693, 33.235245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606174, 30.667412, 33.279804>,  <38.734299, 30.466242, 33.306541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606174, 30.667412, 33.279804>,  <38.392632, 31.002693, 33.235245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606174, 30.667412, 33.279804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770870, -0.428304, 0.471503,
		-0.347503, -0.337590, -0.874800,
		0.533855, -0.838206, 0.111402,
		38.766331, 30.415951, 33.313225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004585, 30.413885, 33.028774>,  <38.392632, 31.002693, 33.235245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004585, 30.413885, 33.028774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275520, 30.292505, 33.296844>,  <38.438080, 30.219677, 33.457687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275520, 30.292505, 33.296844>,  <38.004585, 30.413885, 33.028774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275520, 30.292505, 33.296844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707363, -0.518927, 0.479951,
		0.202131, -0.799145, -0.566136,
		0.677334, -0.303450, 0.670176,
		38.478722, 30.201469, 33.497898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956474, 29.667555, 33.160637>,  <38.004585, 30.413885, 33.028774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956474, 29.667555, 33.160637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054615, 29.916258, 33.458153>,  <38.113499, 30.065479, 33.636662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054615, 29.916258, 33.458153>,  <37.956474, 29.667555, 33.160637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054615, 29.916258, 33.458153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867427, -0.201783, 0.454812,
		0.432866, -0.756771, 0.489821,
		0.245351, 0.621757, 0.743789,
		38.128220, 30.102785, 33.681290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541748, 29.514866, 33.793858>,  <37.956474, 29.667555, 33.160637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541748, 29.514866, 33.793858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715813, 29.861370, 33.892021>,  <37.820251, 30.069273, 33.950920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715813, 29.861370, 33.892021>,  <37.541748, 29.514866, 33.793858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715813, 29.861370, 33.892021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708644, 0.161398, 0.686858,
		0.555390, -0.472802, 0.684105,
		0.435161, 0.866261, 0.245409,
		37.846359, 30.121248, 33.965645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690559, 28.790882, 33.469044>,  <37.541748, 29.514866, 33.793858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690559, 28.790882, 33.469044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017582, 28.844370, 33.244999>,  <38.213795, 28.876463, 33.110573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017582, 28.844370, 33.244999>,  <37.690559, 28.790882, 33.469044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017582, 28.844370, 33.244999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090816, -0.990433, -0.103894,
		-0.568647, 0.034072, -0.821876,
		0.817553, 0.133718, -0.560112,
		38.262848, 28.884485, 33.076965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772465, 28.381525, 32.765385>,  <37.690559, 28.790882, 33.469044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772465, 28.381525, 32.765385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142269, 28.379313, 32.917831>,  <38.364151, 28.377985, 33.009300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142269, 28.379313, 32.917831>,  <37.772465, 28.381525, 32.765385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142269, 28.379313, 32.917831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036187, -0.994104, -0.102217,
		0.379431, 0.108292, -0.918861,
		0.924512, -0.005534, 0.381112,
		38.419624, 28.377653, 33.032166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372318, 28.596931, 32.170856>,  <37.772465, 28.381525, 32.765385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372318, 28.596931, 32.170856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312870, 28.540997, 31.779272>,  <37.277203, 28.507437, 31.544323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312870, 28.540997, 31.779272>,  <37.372318, 28.596931, 32.170856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312870, 28.540997, 31.779272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856658, 0.476336, -0.198090,
		0.494013, -0.868072, 0.049000,
		-0.148616, -0.139835, -0.978958,
		37.268284, 28.499046, 31.485584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839752, 28.700005, 32.491531>,  <37.372318, 28.596931, 32.170856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839752, 28.700005, 32.491531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544167, 28.800091, 32.241310>,  <36.366814, 28.860144, 32.091179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544167, 28.800091, 32.241310>,  <36.839752, 28.700005, 32.491531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544167, 28.800091, 32.241310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533814, -0.349035, -0.770206,
		-0.411060, -0.903086, 0.124355,
		-0.738967, 0.250219, -0.625555,
		36.322475, 28.875156, 32.053642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724857, 28.102829, 31.997025>,  <36.839752, 28.700005, 32.491531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724857, 28.102829, 31.997025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605659, 28.459494, 31.860710>,  <36.534142, 28.673492, 31.778921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605659, 28.459494, 31.860710>,  <36.724857, 28.102829, 31.997025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605659, 28.459494, 31.860710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362135, -0.224714, -0.904634,
		-0.883208, -0.392989, -0.255938,
		-0.297998, 0.891663, -0.340784,
		36.516258, 28.726994, 31.758474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238647, 28.009802, 31.512455>,  <36.724857, 28.102829, 31.997025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238647, 28.009802, 31.512455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395733, 28.367538, 31.426729>,  <36.489986, 28.582180, 31.375294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395733, 28.367538, 31.426729>,  <36.238647, 28.009802, 31.512455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395733, 28.367538, 31.426729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322336, -0.352108, -0.878703,
		-0.861321, 0.275999, -0.426556,
		0.392716, 0.894340, -0.214313,
		36.513546, 28.635841, 31.362434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047375, 28.141850, 30.814384>,  <36.238647, 28.009802, 31.512455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047375, 28.141850, 30.814384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346458, 28.400579, 30.874454>,  <36.525909, 28.555817, 30.910498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346458, 28.400579, 30.874454>,  <36.047375, 28.141850, 30.814384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346458, 28.400579, 30.874454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376793, -0.227056, -0.898038,
		-0.546774, 0.728055, -0.413490,
		0.747706, 0.646824, 0.150177,
		36.570770, 28.594627, 30.919508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060658, 28.527613, 30.284214>,  <36.047375, 28.141850, 30.814384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060658, 28.527613, 30.284214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436852, 28.617609, 30.386087>,  <36.662567, 28.671606, 30.447212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436852, 28.617609, 30.386087>,  <36.060658, 28.527613, 30.284214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436852, 28.617609, 30.386087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253316, 0.035436, -0.966734,
		-0.226530, 0.973717, -0.023667,
		0.940486, 0.224990, 0.254686,
		36.718998, 28.685106, 30.462494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331898, 28.872047, 29.728779>,  <36.060658, 28.527613, 30.284214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331898, 28.872047, 29.728779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670261, 28.772018, 29.917204>,  <36.873280, 28.712000, 30.030258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670261, 28.772018, 29.917204>,  <36.331898, 28.872047, 29.728779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670261, 28.772018, 29.917204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449315, -0.141671, -0.882069,
		0.287318, 0.957806, -0.007479,
		0.845910, -0.250074, 0.471061,
		36.924034, 28.696997, 30.058523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870365, 29.144342, 29.354609>,  <36.331898, 28.872047, 29.728779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870365, 29.144342, 29.354609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055599, 28.852106, 29.555323>,  <37.166740, 28.676764, 29.675751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055599, 28.852106, 29.555323>,  <36.870365, 29.144342, 29.354609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055599, 28.852106, 29.555323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542623, -0.213946, -0.812273,
		0.700795, 0.648431, 0.297361,
		0.463084, -0.730592, 0.501786,
		37.194523, 28.632929, 29.705858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561188, 29.384434, 29.545309>,  <36.870365, 29.144342, 29.354609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561188, 29.384434, 29.545309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576843, 28.986546, 29.507357>,  <37.586235, 28.747812, 29.484585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576843, 28.986546, 29.507357>,  <37.561188, 29.384434, 29.545309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576843, 28.986546, 29.507357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562084, 0.100420, -0.820961,
		0.826154, -0.021203, 0.563046,
		0.039135, -0.994719, -0.094880,
		37.588585, 28.688129, 29.478893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228165, 29.222263, 29.312317>,  <37.561188, 29.384434, 29.545309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228165, 29.222263, 29.312317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016727, 28.898624, 29.209587>,  <37.889866, 28.704441, 29.147949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016727, 28.898624, 29.209587>,  <38.228165, 29.222263, 29.312317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016727, 28.898624, 29.209587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484958, -0.039517, -0.873644,
		0.696713, -0.586347, 0.413265,
		-0.528590, -0.809095, -0.256822,
		37.858150, 28.655895, 29.132540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771626, 28.823259, 28.940727>,  <38.228165, 29.222263, 29.312317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771626, 28.823259, 28.940727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406261, 28.689768, 28.847506>,  <38.187042, 28.609673, 28.791573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406261, 28.689768, 28.847506>,  <38.771626, 28.823259, 28.940727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406261, 28.689768, 28.847506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275362, -0.084949, -0.957580,
		0.299777, -0.938833, 0.169490,
		-0.913406, -0.333731, -0.233053,
		38.132240, 28.589649, 28.777590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928661, 28.336811, 28.374762>,  <38.771626, 28.823259, 28.940727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928661, 28.336811, 28.374762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533260, 28.397018, 28.369024>,  <38.296021, 28.433144, 28.365582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533260, 28.397018, 28.369024>,  <38.928661, 28.336811, 28.374762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533260, 28.397018, 28.369024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003601, -0.071393, -0.997442,
		-0.151162, -0.986025, 0.070030,
		-0.988502, 0.150523, -0.014342,
		38.236710, 28.442175, 28.364721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727535, 27.837715, 27.899027>,  <38.928661, 28.336811, 28.374762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727535, 27.837715, 27.899027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453468, 28.128778, 27.912056>,  <38.289028, 28.303417, 27.919874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453468, 28.128778, 27.912056>,  <38.727535, 27.837715, 27.899027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453468, 28.128778, 27.912056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133246, 0.169181, -0.976536,
		-0.716097, -0.664748, -0.212875,
		-0.685164, 0.727659, 0.032575,
		38.247917, 28.347076, 27.921829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255402, 27.695822, 27.306366>,  <38.727535, 27.837715, 27.899027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255402, 27.695822, 27.306366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212402, 28.082857, 27.397772>,  <38.186604, 28.315079, 27.452616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212402, 28.082857, 27.397772>,  <38.255402, 27.695822, 27.306366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212402, 28.082857, 27.397772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022891, 0.227378, -0.973537,
		-0.993942, -0.109882, -0.002293,
		-0.107495, 0.967587, 0.228515,
		38.180153, 28.373133, 27.466326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650219, 27.890982, 26.961851>,  <38.255402, 27.695822, 27.306366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650219, 27.890982, 26.961851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852055, 28.226139, 27.045113>,  <37.973156, 28.427233, 27.095070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852055, 28.226139, 27.045113>,  <37.650219, 27.890982, 26.961851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852055, 28.226139, 27.045113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017014, 0.231399, -0.972710,
		-0.863192, 0.494361, 0.102505,
		0.504589, 0.837891, 0.208153,
		38.003433, 28.477507, 27.107559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348976, 28.446005, 26.537474>,  <37.650219, 27.890982, 26.961851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348976, 28.446005, 26.537474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711102, 28.568785, 26.654903>,  <37.928375, 28.642452, 26.725361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711102, 28.568785, 26.654903>,  <37.348976, 28.446005, 26.537474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711102, 28.568785, 26.654903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168007, 0.376030, -0.911249,
		-0.390102, 0.874290, 0.288856,
		0.905315, 0.306950, 0.293577,
		37.982697, 28.660870, 26.742977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365681, 29.066160, 26.218285>,  <37.348976, 28.446005, 26.537474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365681, 29.066160, 26.218285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739941, 28.944437, 26.289780>,  <37.964497, 28.871403, 26.332676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739941, 28.944437, 26.289780>,  <37.365681, 29.066160, 26.218285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739941, 28.944437, 26.289780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300269, 0.420305, -0.856261,
		0.185444, 0.854833, 0.484634,
		0.935654, -0.304309, 0.178736,
		38.020638, 28.853144, 26.343401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686382, 29.652117, 26.084930>,  <37.365681, 29.066160, 26.218285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686382, 29.652117, 26.084930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966702, 29.368441, 26.054142>,  <38.134895, 29.198235, 26.035669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966702, 29.368441, 26.054142>,  <37.686382, 29.652117, 26.084930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966702, 29.368441, 26.054142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218740, 0.316338, -0.923084,
		0.678992, 0.630062, 0.376818,
		0.700802, -0.709191, -0.076971,
		38.176941, 29.155684, 26.031052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238403, 30.057995, 25.873947>,  <37.686382, 29.652117, 26.084930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238403, 30.057995, 25.873947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273460, 29.669962, 25.783384>,  <38.294495, 29.437143, 25.729046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273460, 29.669962, 25.783384>,  <38.238403, 30.057995, 25.873947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273460, 29.669962, 25.783384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277895, 0.242070, -0.929611,
		0.956605, 0.018558, 0.290797,
		0.087645, -0.970081, -0.226408,
		38.299755, 29.378937, 25.715462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836624, 30.071449, 25.485458>,  <38.238403, 30.057995, 25.873947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836624, 30.071449, 25.485458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685127, 29.705645, 25.428570>,  <38.594231, 29.486162, 25.394436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685127, 29.705645, 25.428570>,  <38.836624, 30.071449, 25.485458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685127, 29.705645, 25.428570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205675, 0.066660, -0.976348,
		0.902361, -0.399032, 0.162846,
		-0.378739, -0.914511, -0.142222,
		38.571507, 29.431292, 25.385902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090561, 29.956842, 24.847980>,  <38.836624, 30.071449, 25.485458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090561, 29.956842, 24.847980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827560, 29.656900, 24.877398>,  <38.669762, 29.476934, 24.895048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827560, 29.656900, 24.877398>,  <39.090561, 29.956842, 24.847980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827560, 29.656900, 24.877398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051166, -0.052942, -0.997286,
		0.751713, -0.659481, -0.003557,
		-0.657503, -0.749855, 0.073541,
		38.630310, 29.431944, 24.899460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341045, 29.344339, 24.421406>,  <39.090561, 29.956842, 24.847980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341045, 29.344339, 24.421406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946011, 29.322041, 24.480152>,  <38.708992, 29.308661, 24.515400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946011, 29.322041, 24.480152>,  <39.341045, 29.344339, 24.421406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946011, 29.322041, 24.480152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129892, -0.236025, -0.963027,
		0.088350, -0.970146, 0.225854,
		-0.987584, -0.055747, 0.146867,
		38.649734, 29.305317, 24.524212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185070, 28.748550, 23.928255>,  <39.341045, 29.344339, 24.421406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185070, 28.748550, 23.928255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845070, 28.945683, 24.002672>,  <38.641068, 29.063961, 24.047323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845070, 28.945683, 24.002672>,  <39.185070, 28.748550, 23.928255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845070, 28.945683, 24.002672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216522, -0.004904, -0.976265,
		-0.480219, -0.870113, 0.110876,
		-0.850005, 0.492829, 0.186043,
		38.590069, 29.093531, 24.058485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536976, 28.370531, 23.626028>,  <39.185070, 28.748550, 23.928255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536976, 28.370531, 23.626028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455013, 28.759247, 23.672739>,  <38.405838, 28.992477, 23.700766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455013, 28.759247, 23.672739>,  <38.536976, 28.370531, 23.626028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455013, 28.759247, 23.672739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235318, 0.066899, -0.969613,
		-0.950073, -0.226158, 0.214972,
		-0.204904, 0.971791, 0.116778,
		38.393543, 29.050783, 23.707773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027901, 28.539383, 23.127512>,  <38.536976, 28.370531, 23.626028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027901, 28.539383, 23.127512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130432, 28.915634, 23.216518>,  <38.191952, 29.141384, 23.269922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130432, 28.915634, 23.216518>,  <38.027901, 28.539383, 23.127512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130432, 28.915634, 23.216518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124276, 0.260368, -0.957478,
		-0.958567, 0.217778, 0.183638,
		0.256331, 0.940628, 0.222516,
		38.207333, 29.197823, 23.283274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508308, 29.011913, 22.840830>,  <38.027901, 28.539383, 23.127512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508308, 29.011913, 22.840830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835964, 29.238153, 22.879009>,  <38.032558, 29.373898, 22.901917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835964, 29.238153, 22.879009>,  <37.508308, 29.011913, 22.840830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835964, 29.238153, 22.879009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071533, 0.265832, -0.961362,
		-0.569121, 0.780659, 0.258212,
		0.819136, 0.565602, 0.095447,
		38.081703, 29.407833, 22.907644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334427, 29.757326, 22.566420>,  <37.508308, 29.011913, 22.840830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334427, 29.757326, 22.566420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730522, 29.703886, 22.582357>,  <37.968178, 29.671822, 22.591919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730522, 29.703886, 22.582357>,  <37.334427, 29.757326, 22.566420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730522, 29.703886, 22.582357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078026, 0.294255, -0.952537,
		0.115533, 0.946343, 0.301805,
		0.990234, -0.133598, 0.039843,
		38.027592, 29.663807, 22.594311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614887, 30.476345, 22.442614>,  <37.334427, 29.757326, 22.566420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614887, 30.476345, 22.442614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871483, 30.182741, 22.353424>,  <38.025440, 30.006578, 22.299910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871483, 30.182741, 22.353424>,  <37.614887, 30.476345, 22.442614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871483, 30.182741, 22.353424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072986, 0.230946, -0.970225,
		0.763649, 0.638667, 0.094578,
		0.641493, -0.734009, -0.222975,
		38.063931, 29.962538, 22.286531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191032, 30.799782, 22.190908>,  <37.614887, 30.476345, 22.442614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191032, 30.799782, 22.190908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180668, 30.421696, 22.060743>,  <38.174450, 30.194843, 21.982643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180668, 30.421696, 22.060743>,  <38.191032, 30.799782, 22.190908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180668, 30.421696, 22.060743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163715, 0.317117, -0.934149,
		0.986167, -0.077482, 0.146529,
		-0.025913, -0.945216, -0.325415,
		38.172894, 30.138130, 21.963120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734364, 30.773157, 21.739140>,  <38.191032, 30.799782, 22.190908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734364, 30.773157, 21.739140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541470, 30.438179, 21.636271>,  <38.425735, 30.237192, 21.574549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541470, 30.438179, 21.636271>,  <38.734364, 30.773157, 21.739140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541470, 30.438179, 21.636271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110410, 0.233120, -0.966160,
		0.869058, -0.494307, -0.019955,
		-0.482231, -0.837446, -0.257171,
		38.396801, 30.186945, 21.559118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226357, 30.319521, 21.380457>,  <38.734364, 30.773157, 21.739140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226357, 30.319521, 21.380457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850330, 30.247219, 21.264805>,  <38.624714, 30.203838, 21.195414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850330, 30.247219, 21.264805>,  <39.226357, 30.319521, 21.380457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850330, 30.247219, 21.264805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215134, 0.343457, -0.914196,
		0.264549, -0.921610, -0.283987,
		-0.940070, -0.180755, -0.289131,
		38.568310, 30.192993, 21.178066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413837, 30.118546, 20.727875>,  <39.226357, 30.319521, 21.380457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413837, 30.118546, 20.727875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.018398, 30.178539, 20.733358>,  <38.781136, 30.214537, 20.736649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.018398, 30.178539, 20.733358>,  <39.413837, 30.118546, 20.727875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018398, 30.178539, 20.733358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068522, 0.528956, -0.845878,
		-0.134121, -0.835290, -0.533200,
		-0.988593, 0.149986, 0.013708,
		38.721821, 30.223536, 20.737471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095787, 29.782948, 20.120384>,  <39.413837, 30.118546, 20.727875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095787, 29.782948, 20.120384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870708, 30.095718, 20.227690>,  <38.735661, 30.283381, 20.292074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870708, 30.095718, 20.227690>,  <39.095787, 29.782948, 20.120384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870708, 30.095718, 20.227690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124587, 0.401023, -0.907556,
		-0.817224, -0.477253, -0.323070,
		-0.562692, 0.781927, 0.268266,
		38.701900, 30.330297, 20.308170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737991, 29.890812, 19.630939>,  <39.095787, 29.782948, 20.120384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737991, 29.890812, 19.630939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.683975, 30.243380, 19.811987>,  <38.651566, 30.454920, 19.920614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.683975, 30.243380, 19.811987>,  <38.737991, 29.890812, 19.630939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683975, 30.243380, 19.811987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156977, 0.470064, -0.868561,
		-0.978326, -0.046244, -0.201842,
		-0.135045, 0.881420, 0.452617,
		38.643463, 30.507805, 19.947771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404194, 30.278046, 19.118965>,  <38.737991, 29.890812, 19.630939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404194, 30.278046, 19.118965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539124, 30.553350, 19.375874>,  <38.620079, 30.718533, 19.530018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539124, 30.553350, 19.375874>,  <38.404194, 30.278046, 19.118965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539124, 30.553350, 19.375874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200006, 0.614284, -0.763317,
		-0.919898, 0.385940, 0.069554,
		0.337320, 0.688262, 0.642270,
		38.640320, 30.759829, 19.568554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144775, 30.888451, 18.846760>,  <38.404194, 30.278046, 19.118965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144775, 30.888451, 18.846760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434803, 31.022522, 19.087404>,  <38.608818, 31.102964, 19.231791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434803, 31.022522, 19.087404>,  <38.144775, 30.888451, 18.846760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434803, 31.022522, 19.087404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316172, 0.614056, -0.723167,
		-0.611811, 0.714557, 0.339259,
		0.725068, 0.335177, 0.601609,
		38.652325, 31.123075, 19.267887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103718, 31.619446, 18.870857>,  <38.144775, 30.888451, 18.846760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103718, 31.619446, 18.870857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475018, 31.534601, 18.993082>,  <38.697796, 31.483694, 19.066416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475018, 31.534601, 18.993082>,  <38.103718, 31.619446, 18.870857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475018, 31.534601, 18.993082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371284, 0.578075, -0.726621,
		-0.022513, 0.787933, 0.615349,
		0.928247, -0.212110, 0.305561,
		38.753490, 31.470968, 19.084751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418011, 32.197159, 18.953039>,  <38.103718, 31.619446, 18.870857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418011, 32.197159, 18.953039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714783, 31.936506, 18.889898>,  <38.892845, 31.780115, 18.852013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714783, 31.936506, 18.889898>,  <38.418011, 32.197159, 18.953039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714783, 31.936506, 18.889898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354603, 0.581174, -0.732457,
		0.569032, 0.487456, 0.662261,
		0.741929, -0.651631, -0.157853,
		38.937363, 31.741016, 18.842543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030170, 32.608231, 18.733002>,  <38.418011, 32.197159, 18.953039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030170, 32.608231, 18.733002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106377, 32.236683, 18.605938>,  <39.152100, 32.013756, 18.529699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106377, 32.236683, 18.605938>,  <39.030170, 32.608231, 18.733002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106377, 32.236683, 18.605938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394943, 0.368769, -0.841445,
		0.898734, 0.034854, 0.437107,
		0.190520, -0.928867, -0.317660,
		39.163532, 31.958023, 18.510639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812580, 32.597343, 18.620016>,  <39.030170, 32.608231, 18.733002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812580, 32.597343, 18.620016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.614552, 32.324787, 18.404381>,  <39.495735, 32.161255, 18.275000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.614552, 32.324787, 18.404381>,  <39.812580, 32.597343, 18.620016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614552, 32.324787, 18.404381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562239, 0.221797, -0.796677,
		0.662415, -0.697506, 0.273299,
		-0.495070, -0.681389, -0.539086,
		39.466030, 32.120369, 18.242655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363880, 32.549934, 18.138571>,  <39.812580, 32.597343, 18.620016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363880, 32.549934, 18.138571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024296, 32.381012, 18.011499>,  <39.820545, 32.279659, 17.935257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024296, 32.381012, 18.011499>,  <40.363880, 32.549934, 18.138571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024296, 32.381012, 18.011499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309084, 0.090790, -0.946691,
		0.428637, -0.901894, 0.053451,
		-0.848963, -0.422308, -0.317677,
		39.769608, 32.254318, 17.916197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544716, 31.961304, 17.783066>,  <40.363880, 32.549934, 18.138571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544716, 31.961304, 17.783066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185780, 32.063335, 17.639004>,  <39.970417, 32.124554, 17.552567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185780, 32.063335, 17.639004>,  <40.544716, 31.961304, 17.783066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185780, 32.063335, 17.639004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364586, -0.031419, -0.930639,
		-0.248702, -0.966410, -0.064805,
		-0.897343, 0.255079, -0.360154,
		39.916576, 32.139858, 17.530958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591740, 31.643202, 17.061327>,  <40.544716, 31.961304, 17.783066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591740, 31.643202, 17.061327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293690, 31.909744, 17.072296>,  <40.114861, 32.069672, 17.078878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293690, 31.909744, 17.072296>,  <40.591740, 31.643202, 17.061327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293690, 31.909744, 17.072296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217298, 0.281452, -0.934648,
		-0.630528, -0.690473, -0.354516,
		-0.745129, 0.666357, 0.027425,
		40.070152, 32.109650, 17.080524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215034, 31.582684, 16.471375>,  <40.591740, 31.643202, 17.061327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215034, 31.582684, 16.471375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.124336, 31.957893, 16.576216>,  <40.069920, 32.183018, 16.639120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.124336, 31.957893, 16.576216>,  <40.215034, 31.582684, 16.471375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124336, 31.957893, 16.576216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155917, 0.300599, -0.940920,
		-0.961394, -0.172479, -0.214412,
		-0.226741, 0.938025, 0.262102,
		40.056313, 32.239300, 16.654846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692158, 31.800257, 16.023203>,  <40.215034, 31.582684, 16.471375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692158, 31.800257, 16.023203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909172, 32.112156, 16.148197>,  <40.039379, 32.299294, 16.223194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909172, 32.112156, 16.148197>,  <39.692158, 31.800257, 16.023203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909172, 32.112156, 16.148197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173009, 0.260300, -0.949901,
		-0.822023, 0.569420, 0.006319,
		0.542537, 0.779747, 0.312488,
		40.071934, 32.346081, 16.241943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338234, 32.494110, 15.911988>,  <39.692158, 31.800257, 16.023203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338234, 32.494110, 15.911988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734779, 32.444740, 15.894243>,  <39.972706, 32.415119, 15.883596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734779, 32.444740, 15.894243>,  <39.338234, 32.494110, 15.911988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734779, 32.444740, 15.894243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037604, 0.056566, -0.997690,
		0.125645, 0.990741, 0.051436,
		0.991362, -0.123420, -0.044363,
		40.032188, 32.407715, 15.880935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622574, 33.081131, 15.623908>,  <39.338234, 32.494110, 15.911988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622574, 33.081131, 15.623908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865700, 32.766102, 15.583321>,  <40.011574, 32.577084, 15.558968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865700, 32.766102, 15.583321>,  <39.622574, 33.081131, 15.623908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865700, 32.766102, 15.583321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095387, 0.199271, -0.975291,
		0.788330, 0.583116, 0.196243,
		0.607813, -0.787570, -0.101469,
		40.048042, 32.529831, 15.552879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270714, 33.123428, 15.164879>,  <39.622574, 33.081131, 15.623908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270714, 33.123428, 15.164879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316307, 32.726231, 15.152399>,  <40.343662, 32.487911, 15.144911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316307, 32.726231, 15.152399>,  <40.270714, 33.123428, 15.164879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316307, 32.726231, 15.152399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048786, 0.025772, -0.998477,
		0.992284, 0.115330, -0.045507,
		0.113982, -0.992993, -0.031200,
		40.350502, 32.428333, 15.143039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034019, 33.089676, 14.545794>,  <40.270714, 33.123428, 15.164879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034019, 33.089676, 14.545794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310062, 32.829681, 14.418497>,  <40.475689, 32.673687, 14.342119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310062, 32.829681, 14.418497>,  <40.034019, 33.089676, 14.545794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310062, 32.829681, 14.418497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518292, 0.750785, -0.409507,
		0.505105, 0.117660, 0.855000,
		0.690104, -0.649984, -0.318243,
		40.517094, 32.634686, 14.323025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562233, 33.630531, 14.713359>,  <40.034019, 33.089676, 14.545794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562233, 33.630531, 14.713359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644573, 34.015598, 14.643049>,  <39.693977, 34.246639, 14.600863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644573, 34.015598, 14.643049>,  <39.562233, 33.630531, 14.713359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644573, 34.015598, 14.643049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096170, 0.158851, 0.982608,
		0.973846, -0.219175, -0.059880,
		0.205851, 0.962667, -0.175775,
		39.706329, 34.304398, 14.590317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071980, 33.845181, 15.096858>,  <39.562233, 33.630531, 14.713359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071980, 33.845181, 15.096858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886887, 34.194618, 15.036568>,  <39.775829, 34.404282, 15.000394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886887, 34.194618, 15.036568>,  <40.071980, 33.845181, 15.096858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886887, 34.194618, 15.036568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032015, 0.153444, 0.987639,
		0.885919, 0.461839, -0.043035,
		-0.462733, 0.873590, -0.150725,
		39.748066, 34.456696, 14.991350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317028, 34.430553, 15.434990>,  <40.071980, 33.845181, 15.096858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317028, 34.430553, 15.434990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.941074, 34.541759, 15.355666>,  <39.715504, 34.608482, 15.308072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.941074, 34.541759, 15.355666>,  <40.317028, 34.430553, 15.434990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941074, 34.541759, 15.355666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170153, 0.122242, 0.977806,
		0.296089, 0.952766, -0.067587,
		-0.939883, 0.278017, -0.198310,
		39.659111, 34.625164, 15.296173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151199, 35.053780, 15.880582>,  <40.317028, 34.430553, 15.434990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151199, 35.053780, 15.880582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817852, 34.846401, 15.803947>,  <39.617844, 34.721973, 15.757967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817852, 34.846401, 15.803947>,  <40.151199, 35.053780, 15.880582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817852, 34.846401, 15.803947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204311, -0.033119, 0.978346,
		-0.513566, 0.854468, -0.078324,
		-0.833371, -0.518448, -0.191586,
		39.567841, 34.690868, 15.746471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581562, 35.302315, 16.297369>,  <40.151199, 35.053780, 15.880582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581562, 35.302315, 16.297369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438164, 34.936672, 16.221596>,  <39.352123, 34.717285, 16.176132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438164, 34.936672, 16.221596>,  <39.581562, 35.302315, 16.297369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438164, 34.936672, 16.221596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324881, -0.068071, 0.943302,
		-0.875175, 0.399716, -0.272572,
		-0.358499, -0.914108, -0.189434,
		39.330616, 34.662441, 16.164766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840702, 35.262386, 16.622068>,  <39.581562, 35.302315, 16.297369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840702, 35.262386, 16.622068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064869, 34.931458, 16.606745>,  <39.199371, 34.732899, 16.597549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064869, 34.931458, 16.606745>,  <38.840702, 35.262386, 16.622068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064869, 34.931458, 16.606745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205820, -0.183928, 0.961150,
		-0.802226, -0.530763, -0.273356,
		0.560420, -0.827322, -0.038310,
		39.232994, 34.683262, 16.595251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462284, 34.778393, 16.981213>,  <38.840702, 35.262386, 16.622068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462284, 34.778393, 16.981213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839523, 34.645416, 16.983896>,  <39.065868, 34.565632, 16.985506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839523, 34.645416, 16.983896>,  <38.462284, 34.778393, 16.981213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839523, 34.645416, 16.983896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057516, -0.143227, 0.988017,
		-0.327494, -0.932186, -0.154198,
		0.943101, -0.332439, 0.006710,
		39.122452, 34.545685, 16.985909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461117, 34.144394, 17.405659>,  <38.462284, 34.778393, 16.981213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461117, 34.144394, 17.405659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850574, 34.234634, 17.392265>,  <39.084248, 34.288780, 17.384230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850574, 34.234634, 17.392265>,  <38.461117, 34.144394, 17.405659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850574, 34.234634, 17.392265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062756, -0.123851, 0.990315,
		0.219270, -0.966315, -0.134745,
		0.973644, 0.225602, -0.033485,
		39.142666, 34.302315, 17.382219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736877, 33.564259, 17.637707>,  <38.461117, 34.144394, 17.405659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736877, 33.564259, 17.637707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990810, 33.866688, 17.701376>,  <39.143169, 34.048145, 17.739578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990810, 33.866688, 17.701376>,  <38.736877, 33.564259, 17.637707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990810, 33.866688, 17.701376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202929, -0.035621, 0.978546,
		0.745526, -0.653512, 0.130817,
		0.634831, 0.756078, 0.159173,
		39.181259, 34.093510, 17.749128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115074, 33.284199, 18.202038>,  <38.736877, 33.564259, 17.637707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115074, 33.284199, 18.202038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176781, 33.679268, 18.191458>,  <39.213802, 33.916309, 18.185110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176781, 33.679268, 18.191458>,  <39.115074, 33.284199, 18.202038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176781, 33.679268, 18.191458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140261, 0.048390, 0.988931,
		0.978024, -0.148845, 0.145997,
		0.154262, 0.987676, -0.026450,
		39.223061, 33.975571, 18.183523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546101, 33.401779, 18.677475>,  <39.115074, 33.284199, 18.202038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546101, 33.401779, 18.677475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.359257, 33.751751, 18.626406>,  <39.247150, 33.961735, 18.595764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.359257, 33.751751, 18.626406>,  <39.546101, 33.401779, 18.677475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359257, 33.751751, 18.626406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173935, 0.050651, 0.983454,
		0.866924, 0.481586, 0.128522,
		-0.467108, 0.874934, -0.127675,
		39.219124, 34.014233, 18.588102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678947, 33.763512, 19.282146>,  <39.546101, 33.401779, 18.677475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678947, 33.763512, 19.282146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360287, 33.964996, 19.148508>,  <39.169090, 34.085888, 19.068325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360287, 33.964996, 19.148508>,  <39.678947, 33.763512, 19.282146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360287, 33.964996, 19.148508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258006, 0.216464, 0.941582,
		0.546601, 0.836315, -0.042488,
		-0.796656, 0.503707, -0.334094,
		39.121288, 34.116108, 19.048281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652363, 34.539185, 19.670736>,  <39.678947, 33.763512, 19.282146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652363, 34.539185, 19.670736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.284813, 34.436600, 19.550812>,  <39.064281, 34.375050, 19.478857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.284813, 34.436600, 19.550812>,  <39.652363, 34.539185, 19.670736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284813, 34.436600, 19.550812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353296, 0.196601, 0.914620,
		-0.175623, 0.946348, -0.271260,
		-0.918879, -0.256464, -0.299813,
		39.009148, 34.359661, 19.460867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303471, 34.864246, 20.179499>,  <39.652363, 34.539185, 19.670736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303471, 34.864246, 20.179499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026470, 34.623703, 20.020094>,  <38.860268, 34.479378, 19.924452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026470, 34.623703, 20.020094>,  <39.303471, 34.864246, 20.179499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026470, 34.623703, 20.020094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357877, -0.193276, 0.913547,
		-0.626390, 0.775252, -0.081367,
		-0.692503, -0.601356, -0.398511,
		38.818718, 34.443295, 19.900541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746090, 35.023586, 20.526041>,  <39.303471, 34.864246, 20.179499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746090, 35.023586, 20.526041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675262, 34.664677, 20.364277>,  <38.632767, 34.449329, 20.267218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675262, 34.664677, 20.364277>,  <38.746090, 35.023586, 20.526041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675262, 34.664677, 20.364277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523957, -0.261897, 0.810481,
		-0.833137, 0.355403, -0.423760,
		-0.177066, -0.897273, -0.404412,
		38.622143, 34.395496, 20.242954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132275, 34.859211, 20.823816>,  <38.746090, 35.023586, 20.526041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132275, 34.859211, 20.823816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284035, 34.518242, 20.679909>,  <38.375092, 34.313660, 20.593565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284035, 34.518242, 20.679909>,  <38.132275, 34.859211, 20.823816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284035, 34.518242, 20.679909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177020, -0.448536, 0.876059,
		-0.908140, -0.268692, -0.321071,
		0.379402, -0.852420, -0.359769,
		38.397854, 34.262516, 20.571978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660267, 34.223370, 21.006544>,  <38.132275, 34.859211, 20.823816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660267, 34.223370, 21.006544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031609, 34.085476, 20.950943>,  <38.254414, 34.002739, 20.917582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031609, 34.085476, 20.950943>,  <37.660267, 34.223370, 21.006544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031609, 34.085476, 20.950943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033028, -0.448988, 0.892927,
		-0.370228, -0.824361, -0.428206,
		0.928354, -0.344730, -0.139001,
		38.310116, 33.982056, 20.909243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627804, 33.615120, 21.193281>,  <37.660267, 34.223370, 21.006544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627804, 33.615120, 21.193281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024178, 33.666897, 21.178902>,  <38.262001, 33.697964, 21.170275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024178, 33.666897, 21.178902>,  <37.627804, 33.615120, 21.193281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024178, 33.666897, 21.178902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112038, -0.648639, 0.752805,
		0.074127, -0.750008, -0.657262,
		0.990935, 0.129442, -0.035948,
		38.321457, 33.705730, 21.168118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007420, 32.873112, 21.161104>,  <37.627804, 33.615120, 21.193281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007420, 32.873112, 21.161104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233795, 33.164398, 21.315722>,  <38.369621, 33.339169, 21.408491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233795, 33.164398, 21.315722>,  <38.007420, 32.873112, 21.161104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233795, 33.164398, 21.315722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126733, -0.540121, 0.831991,
		0.814647, -0.421869, -0.397965,
		0.565940, 0.728214, 0.386543,
		38.403576, 33.382862, 21.431684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439800, 32.585670, 21.522934>,  <38.007420, 32.873112, 21.161104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439800, 32.585670, 21.522934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520885, 32.951401, 21.663174>,  <38.569534, 33.170837, 21.747318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520885, 32.951401, 21.663174>,  <38.439800, 32.585670, 21.522934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520885, 32.951401, 21.663174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057935, -0.368603, 0.927780,
		0.977524, -0.167758, -0.127691,
		0.202710, 0.914324, 0.350599,
		38.581699, 33.225697, 21.768354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886574, 32.407551, 22.000492>,  <38.439800, 32.585670, 21.522934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886574, 32.407551, 22.000492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742523, 32.769119, 22.092783>,  <38.656094, 32.986061, 22.148157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742523, 32.769119, 22.092783>,  <38.886574, 32.407551, 22.000492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742523, 32.769119, 22.092783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094338, -0.281341, 0.954960,
		0.928120, 0.322144, 0.186593,
		-0.360131, 0.903920, 0.230727,
		38.634483, 33.040295, 22.162001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217667, 32.611893, 22.622942>,  <38.886574, 32.407551, 22.000492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217667, 32.611893, 22.622942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895435, 32.848816, 22.617222>,  <38.702095, 32.990971, 22.613789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895435, 32.848816, 22.617222>,  <39.217667, 32.611893, 22.622942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895435, 32.848816, 22.617222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200452, -0.249753, 0.947334,
		0.557545, 0.766023, 0.319927,
		-0.805582, 0.592311, -0.014302,
		38.653759, 33.026508, 22.612930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265362, 32.948387, 23.229132>,  <39.217667, 32.611893, 22.622942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265362, 32.948387, 23.229132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880295, 32.985573, 23.127447>,  <38.649254, 33.007885, 23.066437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880295, 32.985573, 23.127447>,  <39.265362, 32.948387, 23.229132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880295, 32.985573, 23.127447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268420, -0.206905, 0.940819,
		0.034862, 0.973934, 0.224134,
		-0.962671, 0.092961, -0.254211,
		38.591492, 33.013462, 23.051184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912701, 33.189625, 23.812796>,  <39.265362, 32.948387, 23.229132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912701, 33.189625, 23.812796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600586, 33.054150, 23.602486>,  <38.413315, 32.972866, 23.476299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600586, 33.054150, 23.602486>,  <38.912701, 33.189625, 23.812796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600586, 33.054150, 23.602486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495541, -0.178081, 0.850133,
		-0.381556, 0.923894, -0.028877,
		-0.780291, -0.338683, -0.525775,
		38.366497, 32.952545, 23.444754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379288, 33.413120, 24.236074>,  <38.912701, 33.189625, 23.812796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379288, 33.413120, 24.236074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228317, 33.134674, 23.991791>,  <38.137733, 32.967606, 23.845221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228317, 33.134674, 23.991791>,  <38.379288, 33.413120, 24.236074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228317, 33.134674, 23.991791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629855, -0.290472, 0.720353,
		-0.678846, 0.656540, -0.328822,
		-0.377427, -0.696119, -0.610711,
		38.115089, 32.925838, 23.808578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655178, 33.470463, 24.378672>,  <38.379288, 33.413120, 24.236074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655178, 33.470463, 24.378672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714943, 33.120239, 24.194904>,  <37.750801, 32.910103, 24.084644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714943, 33.120239, 24.194904>,  <37.655178, 33.470463, 24.378672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714943, 33.120239, 24.194904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725377, -0.412810, 0.550832,
		-0.671942, 0.250954, -0.696790,
		0.149409, -0.875563, -0.459420,
		37.759766, 32.857571, 24.057077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959579, 33.154137, 24.183304>,  <37.655178, 33.470463, 24.378672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959579, 33.154137, 24.183304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236805, 32.871239, 24.239128>,  <37.403141, 32.701500, 24.272623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236805, 32.871239, 24.239128>,  <36.959579, 33.154137, 24.183304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236805, 32.871239, 24.239128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555581, -0.400673, 0.728553,
		-0.459347, -0.582467, -0.670621,
		0.693058, -0.707244, 0.139560,
		37.444721, 32.659065, 24.280996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628075, 32.589191, 24.441309>,  <36.959579, 33.154137, 24.183304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628075, 32.589191, 24.441309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009670, 32.503643, 24.525379>,  <37.238628, 32.452316, 24.575821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009670, 32.503643, 24.525379>,  <36.628075, 32.589191, 24.441309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009670, 32.503643, 24.525379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263563, -0.263792, 0.927873,
		-0.142996, -0.940572, -0.308020,
		0.953985, -0.213864, 0.210179,
		37.295864, 32.439484, 24.588432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720676, 31.966314, 24.577780>,  <36.628075, 32.589191, 24.441309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720676, 31.966314, 24.577780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020294, 32.148235, 24.770481>,  <37.200066, 32.257389, 24.886103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020294, 32.148235, 24.770481>,  <36.720676, 31.966314, 24.577780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020294, 32.148235, 24.770481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368953, -0.317611, 0.873497,
		0.550279, -0.832033, -0.070104,
		0.749044, 0.454802, 0.481755,
		37.245007, 32.284676, 24.915009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671730, 31.542019, 25.065321>,  <36.720676, 31.966314, 24.577780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671730, 31.542019, 25.065321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931278, 31.823999, 25.179871>,  <37.087009, 31.993187, 25.248600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931278, 31.823999, 25.179871>,  <36.671730, 31.542019, 25.065321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931278, 31.823999, 25.179871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084349, -0.307401, 0.947834,
		0.756206, -0.639180, -0.140003,
		0.648874, 0.704949, 0.286373,
		37.125942, 32.035484, 25.265783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103268, 31.295195, 25.649103>,  <36.671730, 31.542019, 25.065321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103268, 31.295195, 25.649103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101940, 31.694733, 25.668274>,  <37.101143, 31.934456, 25.679777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101940, 31.694733, 25.668274>,  <37.103268, 31.295195, 25.649103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101940, 31.694733, 25.668274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190379, -0.047683, 0.980552,
		0.981705, -0.005866, 0.190318,
		-0.003323, 0.998845, 0.047927,
		37.100945, 31.994387, 25.682652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508865, 31.443781, 26.213680>,  <37.103268, 31.295195, 25.649103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508865, 31.443781, 26.213680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308121, 31.782030, 26.140959>,  <37.187675, 31.984980, 26.097326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308121, 31.782030, 26.140959>,  <37.508865, 31.443781, 26.213680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308121, 31.782030, 26.140959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180052, 0.103450, 0.978202,
		0.846000, 0.523657, 0.100339,
		-0.501862, 0.845625, -0.181804,
		37.157562, 32.035717, 26.086418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780933, 31.987089, 26.529953>,  <37.508865, 31.443781, 26.213680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780933, 31.987089, 26.529953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398563, 32.096272, 26.486681>,  <37.169140, 32.161781, 26.460718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398563, 32.096272, 26.486681>,  <37.780933, 31.987089, 26.529953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398563, 32.096272, 26.486681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095705, 0.058652, 0.993680,
		0.277575, 0.960237, -0.029944,
		-0.955925, 0.272955, -0.108180,
		37.111786, 32.178158, 26.454227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581444, 32.244724, 27.230585>,  <37.780933, 31.987089, 26.529953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581444, 32.244724, 27.230585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216354, 32.227894, 27.068022>,  <36.997299, 32.217796, 26.970484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216354, 32.227894, 27.068022>,  <37.581444, 32.244724, 27.230585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216354, 32.227894, 27.068022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403947, -0.056420, 0.913041,
		-0.061347, 0.997520, 0.034499,
		-0.912723, -0.042077, -0.406407,
		36.942539, 32.215271, 26.946100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202831, 32.814129, 27.552246>,  <37.581444, 32.244724, 27.230585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202831, 32.814129, 27.552246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.942451, 32.542912, 27.415707>,  <36.786224, 32.380180, 27.333782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.942451, 32.542912, 27.415707>,  <37.202831, 32.814129, 27.552246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942451, 32.542912, 27.415707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448131, -0.019719, 0.893751,
		-0.612730, 0.734760, -0.291015,
		-0.650954, -0.678041, -0.341350,
		36.747166, 32.339500, 27.313301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651623, 32.904060, 27.977083>,  <37.202831, 32.814129, 27.552246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651623, 32.904060, 27.977083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539925, 32.562744, 27.800938>,  <36.472904, 32.357956, 27.695250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539925, 32.562744, 27.800938>,  <36.651623, 32.904060, 27.977083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539925, 32.562744, 27.800938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487287, -0.269237, 0.830700,
		-0.827388, 0.446557, -0.340611,
		-0.279250, -0.853287, -0.440365,
		36.456150, 32.306759, 27.668829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914314, 32.783260, 28.097319>,  <36.651623, 32.904060, 27.977083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914314, 32.783260, 28.097319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055130, 32.414436, 28.032990>,  <36.139622, 32.193142, 27.994392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055130, 32.414436, 28.032990>,  <35.914314, 32.783260, 28.097319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055130, 32.414436, 28.032990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436166, -0.313636, 0.843440,
		-0.828146, -0.226781, -0.512586,
		0.352042, -0.922064, -0.160822,
		36.160744, 32.137817, 27.984743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335342, 32.495068, 28.165977>,  <35.914314, 32.783260, 28.097319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335342, 32.495068, 28.165977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609455, 32.210400, 28.227827>,  <35.773922, 32.039597, 28.264936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609455, 32.210400, 28.227827>,  <35.335342, 32.495068, 28.165977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609455, 32.210400, 28.227827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425477, -0.218917, 0.878091,
		-0.591065, -0.667529, -0.452821,
		0.685282, -0.711675, 0.154624,
		35.815041, 31.996897, 28.274214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990829, 31.910608, 28.505127>,  <35.335342, 32.495068, 28.165977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990829, 31.910608, 28.505127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376167, 31.847336, 28.591799>,  <35.607368, 31.809372, 28.643801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376167, 31.847336, 28.591799>,  <34.990829, 31.910608, 28.505127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376167, 31.847336, 28.591799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250972, -0.246029, 0.936206,
		-0.094779, -0.956268, -0.276709,
		0.963343, -0.158179, 0.216678,
		35.665169, 31.799883, 28.656801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027996, 31.193016, 28.713930>,  <34.990829, 31.910608, 28.505127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027996, 31.193016, 28.713930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374535, 31.346880, 28.841356>,  <35.582458, 31.439199, 28.917812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374535, 31.346880, 28.841356>,  <35.027996, 31.193016, 28.713930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374535, 31.346880, 28.841356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165156, -0.381315, 0.909572,
		0.471353, -0.840615, -0.266820,
		0.866343, 0.384662, 0.318567,
		35.634438, 31.462278, 28.936926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289043, 30.683907, 29.119116>,  <35.027996, 31.193016, 28.713930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289043, 30.683907, 29.119116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475315, 31.020826, 29.227688>,  <35.587078, 31.222979, 29.292831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475315, 31.020826, 29.227688>,  <35.289043, 30.683907, 29.119116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475315, 31.020826, 29.227688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038130, -0.287337, 0.957070,
		0.884130, -0.456040, -0.101691,
		0.465682, 0.842298, 0.271432,
		35.615021, 31.273516, 29.309118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735485, 30.444586, 29.628304>,  <35.289043, 30.683907, 29.119116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735485, 30.444586, 29.628304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772068, 30.838785, 29.685478>,  <35.794018, 31.075304, 29.719782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772068, 30.838785, 29.685478>,  <35.735485, 30.444586, 29.628304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772068, 30.838785, 29.685478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026454, -0.145891, 0.988947,
		0.995457, -0.086670, -0.039413,
		0.091462, 0.985497, 0.142935,
		35.799507, 31.134434, 29.728359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398849, 30.610390, 30.000895>,  <35.735485, 30.444586, 29.628304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398849, 30.610390, 30.000895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125858, 30.894234, 30.070953>,  <35.962063, 31.064539, 30.112989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125858, 30.894234, 30.070953>,  <36.398849, 30.610390, 30.000895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125858, 30.894234, 30.070953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042108, -0.201061, 0.978673,
		0.729690, 0.675300, 0.107340,
		-0.682480, 0.709608, 0.175148,
		35.921116, 31.107117, 30.123497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593769, 30.878954, 30.574512>,  <36.398849, 30.610390, 30.000895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593769, 30.878954, 30.574512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217106, 31.013569, 30.572973>,  <35.991108, 31.094337, 30.572050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217106, 31.013569, 30.572973>,  <36.593769, 30.878954, 30.574512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217106, 31.013569, 30.572973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092739, -0.248473, 0.964189,
		0.323530, 0.908297, 0.265188,
		-0.941663, 0.336537, -0.003846,
		35.934608, 31.114531, 30.571819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545311, 31.292063, 31.226503>,  <36.593769, 30.878954, 30.574512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545311, 31.292063, 31.226503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.158283, 31.251921, 31.133776>,  <35.926067, 31.227835, 31.078138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.158283, 31.251921, 31.133776>,  <36.545311, 31.292063, 31.226503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158283, 31.251921, 31.133776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190925, -0.310380, 0.931242,
		-0.165407, 0.945301, 0.281153,
		-0.967568, -0.100355, -0.231821,
		35.868011, 31.221815, 31.064230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230076, 31.776775, 31.168205>,  <36.545311, 31.292063, 31.226503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230076, 31.776775, 31.168205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561916, 31.816008, 31.388073>,  <37.761021, 31.839548, 31.519995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561916, 31.816008, 31.388073>,  <37.230076, 31.776775, 31.168205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561916, 31.816008, 31.388073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465021, 0.423528, -0.777418,
		-0.309053, 0.900557, 0.305750,
		0.829603, 0.098083, 0.549671,
		37.810799, 31.845432, 31.552975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530109, 32.448120, 30.954828>,  <37.230076, 31.776775, 31.168205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530109, 32.448120, 30.954828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834385, 32.253811, 31.127048>,  <38.016953, 32.137226, 31.230381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834385, 32.253811, 31.127048>,  <37.530109, 32.448120, 30.954828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834385, 32.253811, 31.127048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588356, 0.235798, -0.773458,
		0.274200, 0.841680, 0.465176,
		0.760692, -0.485771, 0.430552,
		38.062592, 32.108078, 31.256214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091167, 32.979618, 31.075651>,  <37.530109, 32.448120, 30.954828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091167, 32.979618, 31.075651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.250969, 32.613247, 31.060259>,  <38.346848, 32.393425, 31.051023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.250969, 32.613247, 31.060259>,  <38.091167, 32.979618, 31.075651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250969, 32.613247, 31.060259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689934, 0.328040, -0.645276,
		0.603649, 0.231238, 0.762979,
		0.399500, -0.915925, -0.038482,
		38.370819, 32.338470, 31.048714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741337, 33.111710, 30.722708>,  <38.091167, 32.979618, 31.075651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741337, 33.111710, 30.722708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768250, 32.712990, 30.740023>,  <38.784397, 32.473759, 30.750412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768250, 32.712990, 30.740023>,  <38.741337, 33.111710, 30.722708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768250, 32.712990, 30.740023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707375, 0.017059, -0.706632,
		0.703629, 0.078162, 0.706256,
		0.067279, -0.996795, 0.043287,
		38.788433, 32.413952, 30.753008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517609, 32.960022, 30.853792>,  <38.741337, 33.111710, 30.722708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517609, 32.960022, 30.853792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302338, 32.678699, 30.668005>,  <39.173176, 32.509907, 30.556532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302338, 32.678699, 30.668005>,  <39.517609, 32.960022, 30.853792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302338, 32.678699, 30.668005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556546, 0.117308, -0.822493,
		0.632950, -0.701142, 0.328290,
		-0.538173, -0.703306, -0.464468,
		39.140884, 32.467709, 30.528666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092464, 32.510712, 30.570316>,  <39.517609, 32.960022, 30.853792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092464, 32.510712, 30.570316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758965, 32.408493, 30.374535>,  <39.558865, 32.347164, 30.257067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758965, 32.408493, 30.374535>,  <40.092464, 32.510712, 30.570316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758965, 32.408493, 30.374535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481866, 0.096037, -0.870966,
		0.269575, -0.962016, 0.043067,
		-0.833747, -0.255543, -0.489452,
		39.508839, 32.331829, 30.227699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388973, 32.114044, 30.078785>,  <40.092464, 32.510712, 30.570316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.388973, 32.114044, 30.078785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024090, 32.239613, 29.973467>,  <39.805161, 32.314953, 29.910276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024090, 32.239613, 29.973467>,  <40.388973, 32.114044, 30.078785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024090, 32.239613, 29.973467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313270, 0.120204, -0.942026,
		-0.264076, -0.941808, -0.207995,
		-0.912209, 0.313924, -0.263297,
		39.750427, 32.333790, 29.894478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328747, 31.763721, 29.353210>,  <40.388973, 32.114044, 30.078785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328747, 31.763721, 29.353210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.064964, 32.063808, 29.372374>,  <39.906696, 32.243862, 29.383871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.064964, 32.063808, 29.372374>,  <40.328747, 31.763721, 29.353210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064964, 32.063808, 29.372374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067959, 0.122961, -0.990082,
		-0.748667, -0.649658, -0.132071,
		-0.659454, 0.750217, 0.047907,
		39.867126, 32.288872, 29.386745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771107, 31.644503, 28.929529>,  <40.328747, 31.763721, 29.353210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771107, 31.644503, 28.929529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751884, 32.042603, 28.963402>,  <39.740349, 32.281464, 28.983725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751884, 32.042603, 28.963402>,  <39.771107, 31.644503, 28.929529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751884, 32.042603, 28.963402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068422, 0.087860, -0.993780,
		-0.996498, -0.041967, -0.072319,
		-0.048060, 0.995248, 0.084680,
		39.737465, 32.341179, 28.988806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326782, 31.883816, 28.483074>,  <39.771107, 31.644503, 28.929529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326782, 31.883816, 28.483074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537380, 32.214561, 28.562164>,  <39.663738, 32.413010, 28.609619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537380, 32.214561, 28.562164>,  <39.326782, 31.883816, 28.483074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537380, 32.214561, 28.562164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033384, 0.212285, -0.976637,
		-0.849520, 0.520799, 0.084164,
		0.526498, 0.826864, 0.197727,
		39.695332, 32.462620, 28.621483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995262, 32.305592, 28.113829>,  <39.326782, 31.883816, 28.483074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995262, 32.305592, 28.113829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341724, 32.483532, 28.204939>,  <39.549603, 32.590298, 28.259605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341724, 32.483532, 28.204939>,  <38.995262, 32.305592, 28.113829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341724, 32.483532, 28.204939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053251, 0.371011, -0.927101,
		-0.496930, 0.815143, 0.297664,
		0.866156, 0.444853, 0.227774,
		39.601570, 32.616989, 28.273272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953892, 33.000721, 28.066010>,  <38.995262, 32.305592, 28.113829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953892, 33.000721, 28.066010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342422, 32.921127, 28.013954>,  <39.575539, 32.873371, 27.982721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342422, 32.921127, 28.013954>,  <38.953892, 33.000721, 28.066010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342422, 32.921127, 28.013954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033062, 0.428991, -0.902703,
		0.235452, 0.881119, 0.410111,
		0.971324, -0.198984, -0.130138,
		39.633820, 32.861431, 27.974913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393948, 33.653145, 28.079926>,  <38.953892, 33.000721, 28.066010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393948, 33.653145, 28.079926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565922, 33.377762, 27.846285>,  <39.669106, 33.212532, 27.706100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565922, 33.377762, 27.846285>,  <39.393948, 33.653145, 28.079926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565922, 33.377762, 27.846285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039820, 0.660777, -0.749525,
		0.901979, 0.298991, 0.311509,
		0.429939, -0.688460, -0.584102,
		39.694904, 33.171223, 27.671055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866646, 34.017975, 27.703074>,  <39.393948, 33.653145, 28.079926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866646, 34.017975, 27.703074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866570, 33.669430, 27.506819>,  <39.866524, 33.460304, 27.389065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866570, 33.669430, 27.506819>,  <39.866646, 34.017975, 27.703074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866570, 33.669430, 27.506819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107569, 0.487774, -0.866317,
		0.994198, -0.052942, 0.093639,
		-0.000190, -0.871363, -0.490638,
		39.866512, 33.408020, 27.359627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449223, 34.064201, 27.207705>,  <39.866646, 34.017975, 27.703074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449223, 34.064201, 27.207705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219749, 33.777023, 27.049997>,  <40.082066, 33.604717, 26.955374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219749, 33.777023, 27.049997>,  <40.449223, 34.064201, 27.207705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219749, 33.777023, 27.049997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174979, 0.362820, -0.915284,
		0.800171, -0.594069, -0.082517,
		-0.573680, -0.717945, -0.394268,
		40.047646, 33.561642, 26.931717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834915, 33.846718, 26.711401>,  <40.449223, 34.064201, 27.207705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834915, 33.846718, 26.711401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473694, 33.709362, 26.608183>,  <40.256962, 33.626949, 26.546253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473694, 33.709362, 26.608183>,  <40.834915, 33.846718, 26.711401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473694, 33.709362, 26.608183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192787, 0.212819, -0.957884,
		0.383844, -0.914763, -0.125985,
		-0.903048, -0.343390, -0.258044,
		40.202778, 33.606346, 26.530769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979000, 33.410645, 26.100895>,  <40.834915, 33.846718, 26.711401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979000, 33.410645, 26.100895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.600719, 33.538925, 26.122038>,  <40.373749, 33.615894, 26.134724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.600719, 33.538925, 26.122038>,  <40.979000, 33.410645, 26.100895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600719, 33.538925, 26.122038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061146, 0.335266, -0.940137,
		-0.319222, -0.885861, -0.336672,
		-0.945705, 0.320699, 0.052858,
		40.317009, 33.635136, 26.137896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591484, 33.176514, 25.516445>,  <40.979000, 33.410645, 26.100895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591484, 33.176514, 25.516445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403908, 33.512726, 25.624960>,  <40.291363, 33.714455, 25.690069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403908, 33.512726, 25.624960>,  <40.591484, 33.176514, 25.516445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403908, 33.512726, 25.624960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033600, 0.289956, -0.956450,
		-0.882591, -0.457632, -0.107730,
		-0.468939, 0.840535, 0.271289,
		40.263226, 33.764885, 25.706347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168850, 33.257912, 25.014145>,  <40.591484, 33.176514, 25.516445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168850, 33.257912, 25.014145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129875, 33.620045, 25.179499>,  <40.106491, 33.837322, 25.278711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129875, 33.620045, 25.179499>,  <40.168850, 33.257912, 25.014145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129875, 33.620045, 25.179499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156146, 0.396313, -0.904740,
		-0.982917, -0.152700, 0.102750,
		-0.097433, 0.905328, 0.413386,
		40.100647, 33.891644, 25.303514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608562, 33.466988, 24.688635>,  <40.168850, 33.257912, 25.014145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608562, 33.466988, 24.688635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774818, 33.804790, 24.823717>,  <39.874573, 34.007473, 24.904766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774818, 33.804790, 24.823717>,  <39.608562, 33.466988, 24.688635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774818, 33.804790, 24.823717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067209, 0.398800, -0.914572,
		-0.907041, 0.357439, 0.222518,
		0.415644, 0.844509, 0.337705,
		39.899513, 34.058144, 24.925028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278591, 34.061783, 24.375753>,  <39.608562, 33.466988, 24.688635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278591, 34.061783, 24.375753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635311, 34.215515, 24.471241>,  <39.849342, 34.307755, 24.528534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635311, 34.215515, 24.471241>,  <39.278591, 34.061783, 24.375753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635311, 34.215515, 24.471241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086491, 0.373084, -0.923757,
		-0.444091, 0.844452, 0.299474,
		0.891797, 0.384331, 0.238721,
		39.902851, 34.330814, 24.542858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208252, 34.671394, 24.117081>,  <39.278591, 34.061783, 24.375753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208252, 34.671394, 24.117081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.603653, 34.625057, 24.155958>,  <39.840893, 34.597256, 24.179285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.603653, 34.625057, 24.155958>,  <39.208252, 34.671394, 24.117081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603653, 34.625057, 24.155958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132515, 0.354022, -0.925802,
		0.072835, 0.928036, 0.365301,
		0.988501, -0.115839, 0.097194,
		39.900204, 34.590305, 24.185116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612495, 35.350304, 23.949535>,  <39.208252, 34.671394, 24.117081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612495, 35.350304, 23.949535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859192, 35.041977, 23.885698>,  <40.007210, 34.856979, 23.847395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859192, 35.041977, 23.885698>,  <39.612495, 35.350304, 23.949535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859192, 35.041977, 23.885698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313448, 0.426459, -0.848459,
		0.722071, 0.473252, 0.504625,
		0.616737, -0.770821, -0.159594,
		40.044212, 34.810730, 23.837820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192276, 35.642822, 23.631386>,  <39.612495, 35.350304, 23.949535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192276, 35.642822, 23.631386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267559, 35.254417, 23.572433>,  <40.312729, 35.021374, 23.537062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267559, 35.254417, 23.572433>,  <40.192276, 35.642822, 23.631386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267559, 35.254417, 23.572433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224752, 0.188663, -0.955977,
		0.956066, 0.146802, 0.253745,
		0.188211, -0.971008, -0.147380,
		40.324024, 34.963116, 23.528219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892605, 35.519855, 23.398163>,  <40.192276, 35.642822, 23.631386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892605, 35.519855, 23.398163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646286, 35.236019, 23.261175>,  <40.498497, 35.065720, 23.178984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646286, 35.236019, 23.261175>,  <40.892605, 35.519855, 23.398163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646286, 35.236019, 23.261175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363005, 0.130269, -0.922636,
		0.699304, -0.692471, 0.177365,
		-0.615794, -0.709587, -0.342468,
		40.461548, 35.023144, 23.158436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296616, 35.238792, 22.841650>,  <40.892605, 35.519855, 23.398163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296616, 35.238792, 22.841650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941463, 35.064842, 22.781588>,  <40.728371, 34.960472, 22.745550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941463, 35.064842, 22.781588>,  <41.296616, 35.238792, 22.841650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941463, 35.064842, 22.781588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199998, -0.070917, -0.977226,
		0.414325, -0.897693, 0.149940,
		-0.887883, -0.434877, -0.150154,
		40.675098, 34.934380, 22.736542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422134, 34.561321, 22.517765>,  <41.296616, 35.238792, 22.841650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422134, 34.561321, 22.517765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039711, 34.641209, 22.431923>,  <40.810257, 34.689140, 22.380417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039711, 34.641209, 22.431923>,  <41.422134, 34.561321, 22.517765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039711, 34.641209, 22.431923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151166, -0.291364, -0.944593,
		-0.251179, -0.935532, 0.248373,
		-0.956064, 0.199716, -0.214606,
		40.752892, 34.701122, 22.367540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259449, 34.062092, 22.141373>,  <41.422134, 34.561321, 22.517765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259449, 34.062092, 22.141373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965622, 34.315098, 22.043125>,  <40.789326, 34.466904, 21.984177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965622, 34.315098, 22.043125>,  <41.259449, 34.062092, 22.141373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965622, 34.315098, 22.043125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126610, -0.227854, -0.965429,
		-0.666616, -0.740272, 0.087292,
		-0.734570, 0.632518, -0.245617,
		40.745251, 34.504852, 21.969440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904736, 33.724968, 21.578506>,  <41.259449, 34.062092, 22.141373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904736, 33.724968, 21.578506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807495, 34.112106, 21.552677>,  <40.749149, 34.344391, 21.537180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807495, 34.112106, 21.552677>,  <40.904736, 33.724968, 21.578506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807495, 34.112106, 21.552677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173404, -0.022137, -0.984602,
		-0.954376, -0.250555, -0.162447,
		-0.243101, 0.967850, -0.064574,
		40.734566, 34.402462, 21.533304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586376, 33.764832, 20.938103>,  <40.904736, 33.724968, 21.578506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586376, 33.764832, 20.938103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695286, 34.139439, 21.026464>,  <40.760632, 34.364204, 21.079481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695286, 34.139439, 21.026464>,  <40.586376, 33.764832, 20.938103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695286, 34.139439, 21.026464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131843, 0.191101, -0.972676,
		-0.953144, 0.293962, -0.071441,
		0.272277, 0.936519, 0.220903,
		40.776970, 34.420395, 21.092735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253048, 34.238636, 20.386305>,  <40.586376, 33.764832, 20.938103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253048, 34.238636, 20.386305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569412, 34.435390, 20.531912>,  <40.759232, 34.553444, 20.619276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569412, 34.435390, 20.531912>,  <40.253048, 34.238636, 20.386305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569412, 34.435390, 20.531912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396770, 0.040662, -0.917017,
		-0.465869, 0.869710, -0.163005,
		0.790910, 0.491886, 0.364018,
		40.806686, 34.582954, 20.641117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301643, 34.773663, 19.928787>,  <40.253048, 34.238636, 20.386305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301643, 34.773663, 19.928787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657696, 34.760601, 20.110601>,  <40.871326, 34.752762, 20.219690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657696, 34.760601, 20.110601>,  <40.301643, 34.773663, 19.928787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657696, 34.760601, 20.110601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455199, 0.110767, -0.883473,
		-0.021495, 0.993310, 0.113462,
		0.890130, -0.032658, 0.454535,
		40.924736, 34.750805, 20.246962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667358, 35.397617, 19.603937>,  <40.301643, 34.773663, 19.928787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667358, 35.397617, 19.603937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935829, 35.142776, 19.755531>,  <41.096912, 34.989872, 19.846487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935829, 35.142776, 19.755531>,  <40.667358, 35.397617, 19.603937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935829, 35.142776, 19.755531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506565, 0.020917, -0.861948,
		0.541220, 0.770497, 0.336772,
		0.671172, -0.637101, 0.378986,
		41.137180, 34.951645, 19.869226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334373, 35.722519, 19.568150>,  <40.667358, 35.397617, 19.603937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334373, 35.722519, 19.568150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405415, 35.329868, 19.596079>,  <41.448040, 35.094280, 19.612837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405415, 35.329868, 19.596079>,  <41.334373, 35.722519, 19.568150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405415, 35.329868, 19.596079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587131, 0.048755, -0.808022,
		0.789768, 0.184504, 0.585000,
		0.177605, -0.981622, 0.069823,
		41.458694, 35.035381, 19.617025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.998283, 35.644650, 19.460711>,  <41.334373, 35.722519, 19.568150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.998283, 35.644650, 19.460711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859737, 35.279350, 19.374914>,  <41.776611, 35.060169, 19.323437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859737, 35.279350, 19.374914>,  <41.998283, 35.644650, 19.460711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859737, 35.279350, 19.374914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495440, 0.016078, -0.868493,
		0.796601, -0.407081, 0.446892,
		-0.346362, -0.913251, -0.214492,
		41.755829, 35.005375, 19.310566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.510799, 35.212631, 19.268583>,  <41.998283, 35.644650, 19.460711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.510799, 35.212631, 19.268583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199322, 35.031277, 19.095110>,  <42.012436, 34.922462, 18.991026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199322, 35.031277, 19.095110>,  <42.510799, 35.212631, 19.268583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199322, 35.031277, 19.095110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446334, 0.085485, -0.890774,
		0.440941, -0.887204, 0.135797,
		-0.778690, -0.453389, -0.433683,
		41.965714, 34.895260, 18.965006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.818275, 34.914886, 18.743629>,  <42.510799, 35.212631, 19.268583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.818275, 34.914886, 18.743629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432442, 34.844791, 18.664778>,  <42.200939, 34.802734, 18.617466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432442, 34.844791, 18.664778>,  <42.818275, 34.914886, 18.743629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.432442, 34.844791, 18.664778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185351, 0.081377, -0.979297,
		0.187655, -0.981157, -0.046014,
		-0.964588, -0.175242, -0.197129,
		42.143066, 34.792217, 18.605639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.870216, 34.383385, 18.229496>,  <42.818275, 34.914886, 18.743629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.870216, 34.383385, 18.229496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.542282, 34.610897, 18.203081>,  <42.345524, 34.747406, 18.187233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.542282, 34.610897, 18.203081>,  <42.870216, 34.383385, 18.229496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.542282, 34.610897, 18.203081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271753, 0.284981, -0.919204,
		-0.504008, -0.771539, -0.388205,
		-0.819833, 0.568782, -0.066035,
		42.296333, 34.781532, 18.183271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.518505, 33.820568, 17.876743>,  <42.870216, 34.383385, 18.229496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.518505, 33.820568, 17.876743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763397, 33.504604, 17.862810>,  <42.910332, 33.315025, 17.854450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763397, 33.504604, 17.862810>,  <42.518505, 33.820568, 17.876743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763397, 33.504604, 17.862810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551724, -0.458345, 0.696793,
		-0.566371, -0.407380, -0.716426,
		0.612230, -0.789913, -0.034832,
		42.947067, 33.267632, 17.852360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083286, 33.225468, 18.028986>,  <42.518505, 33.820568, 17.876743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083286, 33.225468, 18.028986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456707, 33.087116, 18.066624>,  <42.680759, 33.004105, 18.089207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456707, 33.087116, 18.066624>,  <42.083286, 33.225468, 18.028986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456707, 33.087116, 18.066624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312010, -0.654878, 0.688320,
		-0.176457, -0.671938, -0.719279,
		0.933549, -0.345881, 0.094094,
		42.736771, 32.983353, 18.094852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.046497, 32.435928, 18.042166>,  <42.083286, 33.225468, 18.028986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.046497, 32.435928, 18.042166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.395901, 32.549023, 18.200684>,  <42.605541, 32.616879, 18.295795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.395901, 32.549023, 18.200684>,  <42.046497, 32.435928, 18.042166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.395901, 32.549023, 18.200684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156257, -0.608148, 0.778293,
		0.461055, -0.741767, -0.487042,
		0.873506, 0.282732, 0.396296,
		42.657951, 32.633842, 18.319572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.316296, 31.876970, 18.406340>,  <42.046497, 32.435928, 18.042166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.316296, 31.876970, 18.406340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506374, 32.162193, 18.612537>,  <42.620422, 32.333328, 18.736256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506374, 32.162193, 18.612537>,  <42.316296, 31.876970, 18.406340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506374, 32.162193, 18.612537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123857, -0.525826, 0.841526,
		0.871117, -0.463741, -0.161556,
		0.475200, 0.713057, 0.515493,
		42.648933, 32.376110, 18.767185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.637241, 31.500198, 18.815632>,  <42.316296, 31.876970, 18.406340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.637241, 31.500198, 18.815632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.628181, 31.869362, 18.969372>,  <42.622746, 32.090858, 19.061615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.628181, 31.869362, 18.969372>,  <42.637241, 31.500198, 18.815632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.628181, 31.869362, 18.969372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226195, -0.379210, 0.897238,
		0.973818, -0.066614, 0.217348,
		-0.022652, 0.922910, 0.384349,
		42.621387, 32.146236, 19.084677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.938271, 31.396088, 19.524515>,  <42.637241, 31.500198, 18.815632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.938271, 31.396088, 19.524515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.823242, 31.777895, 19.556000>,  <42.754227, 32.006981, 19.574890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.823242, 31.777895, 19.556000>,  <42.938271, 31.396088, 19.524515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.823242, 31.777895, 19.556000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014164, -0.077934, 0.996858,
		0.957654, 0.287783, 0.008891,
		-0.287572, 0.954519, 0.078710,
		42.736969, 32.064251, 19.579613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.386314, 31.731501, 20.021179>,  <42.938271, 31.396088, 19.524515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.386314, 31.731501, 20.021179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051201, 31.949240, 20.004168>,  <42.850132, 32.079884, 19.993961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051201, 31.949240, 20.004168>,  <43.386314, 31.731501, 20.021179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051201, 31.949240, 20.004168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065306, -0.022569, 0.997610,
		0.542085, 0.838557, 0.054457,
		-0.837782, 0.544346, -0.042528,
		42.799866, 32.112545, 19.991409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.419304, 32.280354, 20.483992>,  <43.386314, 31.731501, 20.021179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.419304, 32.280354, 20.483992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029877, 32.234783, 20.404810>,  <42.796219, 32.207439, 20.357302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029877, 32.234783, 20.404810>,  <43.419304, 32.280354, 20.483992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.029877, 32.234783, 20.404810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206403, 0.067768, 0.976117,
		-0.097790, 0.991175, -0.089491,
		-0.973568, -0.113926, -0.197954,
		42.737804, 32.200603, 20.345423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129330, 32.846123, 20.843023>,  <43.419304, 32.280354, 20.483992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.129330, 32.846123, 20.843023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.862732, 32.552731, 20.789660>,  <42.702774, 32.376698, 20.757641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.862732, 32.552731, 20.789660>,  <43.129330, 32.846123, 20.843023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.862732, 32.552731, 20.789660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231910, 0.033908, 0.972146,
		-0.708523, 0.678868, -0.192700,
		-0.666493, -0.733477, -0.133411,
		42.662785, 32.332687, 20.749636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498684, 33.127522, 21.030060>,  <43.129330, 32.846123, 20.843023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498684, 33.127522, 21.030060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440262, 32.732906, 21.059496>,  <42.405209, 32.496140, 21.077158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440262, 32.732906, 21.059496>,  <42.498684, 33.127522, 21.030060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440262, 32.732906, 21.059496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378469, 0.124454, 0.917209,
		-0.914018, 0.106112, -0.391550,
		-0.146057, -0.986535, 0.073593,
		42.396446, 32.436947, 21.081573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960415, 33.068905, 21.439775>,  <42.498684, 33.127522, 21.030060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960415, 33.068905, 21.439775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096001, 32.693459, 21.465410>,  <42.177353, 32.468193, 21.480791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096001, 32.693459, 21.465410>,  <41.960415, 33.068905, 21.439775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.096001, 32.693459, 21.465410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206127, -0.007630, 0.978495,
		-0.917939, -0.344888, -0.196060,
		0.338967, -0.938613, 0.064087,
		42.197689, 32.411873, 21.484636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.406300, 32.629978, 21.847485>,  <41.960415, 33.068905, 21.439775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.406300, 32.629978, 21.847485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.742104, 32.414783, 21.877932>,  <41.943584, 32.285667, 21.896200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.742104, 32.414783, 21.877932>,  <41.406300, 32.629978, 21.847485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742104, 32.414783, 21.877932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195088, -0.167706, 0.966341,
		-0.507114, -0.826102, -0.245745,
		0.839510, -0.537987, 0.076117,
		41.993958, 32.253387, 21.900766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255314, 31.890619, 22.157009>,  <41.406300, 32.629978, 21.847485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255314, 31.890619, 22.157009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.626167, 32.025723, 22.221939>,  <41.848679, 32.106785, 22.260897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.626167, 32.025723, 22.221939>,  <41.255314, 31.890619, 22.157009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.626167, 32.025723, 22.221939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070945, -0.267131, 0.961045,
		0.367964, -0.902530, -0.223702,
		0.927130, 0.337759, 0.162324,
		41.904305, 32.127048, 22.270636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550549, 31.339571, 22.555386>,  <41.255314, 31.890619, 22.157009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550549, 31.339571, 22.555386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799923, 31.647964, 22.607391>,  <41.949547, 31.833000, 22.638596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799923, 31.647964, 22.607391>,  <41.550549, 31.339571, 22.555386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799923, 31.647964, 22.607391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036784, -0.195028, 0.980108,
		0.781005, -0.606256, -0.149948,
		0.623441, 0.770985, 0.130017,
		41.986954, 31.879259, 22.646397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168568, 31.162504, 22.980553>,  <41.550549, 31.339571, 22.555386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168568, 31.162504, 22.980553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.117584, 31.557585, 23.016781>,  <42.086994, 31.794634, 23.038517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.117584, 31.557585, 23.016781>,  <42.168568, 31.162504, 22.980553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.117584, 31.557585, 23.016781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065101, -0.082785, 0.994439,
		0.989705, 0.132643, -0.053749,
		-0.127455, 0.987701, 0.090568,
		42.079350, 31.853895, 23.043951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.762493, 31.400763, 23.480112>,  <42.168568, 31.162504, 22.980553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.762493, 31.400763, 23.480112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498840, 31.701544, 23.475880>,  <42.340649, 31.882013, 23.473339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498840, 31.701544, 23.475880>,  <42.762493, 31.400763, 23.480112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498840, 31.701544, 23.475880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165357, 0.158645, 0.973390,
		0.733624, 0.639841, -0.228909,
		-0.659131, 0.751954, -0.010583,
		42.301102, 31.927130, 23.472704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.011009, 31.903360, 23.979164>,  <42.762493, 31.400763, 23.480112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.011009, 31.903360, 23.979164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.627022, 32.011852, 23.951155>,  <42.396629, 32.076946, 23.934349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.627022, 32.011852, 23.951155>,  <43.011009, 31.903360, 23.979164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.627022, 32.011852, 23.951155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050286, 0.079064, 0.995600,
		0.275571, 0.959262, -0.062259,
		-0.959964, 0.271228, -0.070025,
		42.339031, 32.093220, 23.930147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.897942, 32.338287, 24.489145>,  <43.011009, 31.903360, 23.979164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.897942, 32.338287, 24.489145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.518795, 32.244076, 24.403284>,  <42.291306, 32.187550, 24.351767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.518795, 32.244076, 24.403284>,  <42.897942, 32.338287, 24.489145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.518795, 32.244076, 24.403284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193181, -0.111025, 0.974861,
		-0.253438, 0.965505, 0.059738,
		-0.947866, -0.235527, -0.214655,
		42.234436, 32.173416, 24.338888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399422, 32.799454, 24.912647>,  <42.897942, 32.338287, 24.489145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399422, 32.799454, 24.912647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.186695, 32.477711, 24.806686>,  <42.059059, 32.284664, 24.743111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.186695, 32.477711, 24.806686>,  <42.399422, 32.799454, 24.912647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.186695, 32.477711, 24.806686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260359, -0.142357, 0.954959,
		-0.805843, 0.576834, -0.133715,
		-0.531817, -0.804361, -0.264902,
		42.027149, 32.236401, 24.727217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854176, 32.814621, 25.317661>,  <42.399422, 32.799454, 24.912647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854176, 32.814621, 25.317661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.834217, 32.440823, 25.176682>,  <41.822243, 32.216541, 25.092094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.834217, 32.440823, 25.176682>,  <41.854176, 32.814621, 25.317661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834217, 32.440823, 25.176682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307874, -0.321314, 0.895528,
		-0.950118, 0.153194, -0.271675,
		-0.049897, -0.934499, -0.352450,
		41.819248, 32.160473, 25.070946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241070, 32.508797, 25.515865>,  <41.854176, 32.814621, 25.317661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241070, 32.508797, 25.515865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461105, 32.183064, 25.441828>,  <41.593128, 31.987623, 25.397406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461105, 32.183064, 25.441828>,  <41.241070, 32.508797, 25.515865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461105, 32.183064, 25.441828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348345, -0.425188, 0.835387,
		-0.758983, -0.395062, -0.517561,
		0.550091, -0.814335, -0.185093,
		41.626133, 31.938763, 25.386299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819550, 31.959883, 25.709887>,  <41.241070, 32.508797, 25.515865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819550, 31.959883, 25.709887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.196728, 31.827902, 25.692072>,  <41.423035, 31.748713, 25.681383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.196728, 31.827902, 25.692072>,  <40.819550, 31.959883, 25.709887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196728, 31.827902, 25.692072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051510, -0.276729, 0.959566,
		-0.328935, -0.902526, -0.277936,
		0.942947, -0.329952, -0.044536,
		41.479610, 31.728916, 25.678711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811047, 31.411499, 26.140951>,  <40.819550, 31.959883, 25.709887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811047, 31.411499, 26.140951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198685, 31.508921, 26.125290>,  <41.431267, 31.567373, 26.115894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198685, 31.508921, 26.125290>,  <40.811047, 31.411499, 26.140951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198685, 31.508921, 26.125290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098633, -0.237100, 0.966465,
		0.226104, -0.940460, -0.253795,
		0.969097, 0.243555, -0.039151,
		41.489414, 31.581987, 26.113544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214191, 30.880766, 26.540621>,  <40.811047, 31.411499, 26.140951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214191, 30.880766, 26.540621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.469906, 31.187187, 26.513872>,  <41.623333, 31.371040, 26.497822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.469906, 31.187187, 26.513872>,  <41.214191, 30.880766, 26.540621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469906, 31.187187, 26.513872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270138, -0.142307, 0.952247,
		0.719957, -0.626824, -0.297915,
		0.639286, 0.766055, -0.066874,
		41.661694, 31.417004, 26.493811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806973, 30.637152, 26.780270>,  <41.214191, 30.880766, 26.540621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806973, 30.637152, 26.780270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.819233, 31.034491, 26.824669>,  <41.826588, 31.272894, 26.851309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.819233, 31.034491, 26.824669>,  <41.806973, 30.637152, 26.780270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.819233, 31.034491, 26.824669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273450, -0.115146, 0.954970,
		0.961398, 0.001084, -0.275160,
		0.030649, 0.993348, 0.110997,
		41.828426, 31.332495, 26.857967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255810, 30.740282, 27.325397>,  <41.806973, 30.637152, 26.780270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255810, 30.740282, 27.325397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.124496, 31.118036, 27.317726>,  <42.045708, 31.344688, 27.313124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.124496, 31.118036, 27.317726>,  <42.255810, 30.740282, 27.325397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124496, 31.118036, 27.317726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145228, 0.070524, 0.986881,
		0.933349, 0.321189, -0.160303,
		-0.328281, 0.944385, -0.019178,
		42.026012, 31.401352, 27.311974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.759998, 31.184177, 27.624617>,  <42.255810, 30.740282, 27.325397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.759998, 31.184177, 27.624617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.393486, 31.338158, 27.668880>,  <42.173580, 31.430546, 27.695438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.393486, 31.338158, 27.668880>,  <42.759998, 31.184177, 27.624617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.393486, 31.338158, 27.668880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126809, 0.016738, 0.991786,
		0.379935, 0.922786, -0.064151,
		-0.916280, 0.384949, 0.110658,
		42.118603, 31.453642, 27.702078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.836796, 31.719358, 28.074232>,  <42.759998, 31.184177, 27.624617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.836796, 31.719358, 28.074232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.447861, 31.630693, 28.103685>,  <42.214500, 31.577494, 28.121357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.447861, 31.630693, 28.103685>,  <42.836796, 31.719358, 28.074232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.447861, 31.630693, 28.103685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070226, 0.023233, 0.997261,
		-0.222765, 0.974847, -0.007024,
		-0.972339, -0.221662, 0.073635,
		42.156158, 31.564196, 28.125776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576225, 32.152863, 28.547911>,  <42.836796, 31.719358, 28.074232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576225, 32.152863, 28.547911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.335255, 31.834183, 28.567299>,  <42.190674, 31.642975, 28.578932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.335255, 31.834183, 28.567299>,  <42.576225, 32.152863, 28.547911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.335255, 31.834183, 28.567299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097905, -0.013490, 0.995105,
		-0.792146, 0.604224, 0.086127,
		-0.602428, -0.796701, 0.048470,
		42.154526, 31.595173, 28.581841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.295959, 32.205135, 29.210850>,  <42.576225, 32.152863, 28.547911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.295959, 32.205135, 29.210850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183891, 31.834692, 29.109795>,  <42.116650, 31.612425, 29.049162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183891, 31.834692, 29.109795>,  <42.295959, 32.205135, 29.210850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183891, 31.834692, 29.109795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093067, -0.288143, 0.953054,
		-0.955428, 0.243505, 0.166919,
		-0.280170, -0.926110, -0.252638,
		42.099842, 31.556860, 29.034002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738049, 31.940357, 29.641500>,  <42.295959, 32.205135, 29.210850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738049, 31.940357, 29.641500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.957882, 31.630499, 29.516354>,  <42.089783, 31.444584, 29.441265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.957882, 31.630499, 29.516354>,  <41.738049, 31.940357, 29.641500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.957882, 31.630499, 29.516354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050101, -0.343261, 0.937903,
		-0.833937, -0.531129, -0.149839,
		0.549581, -0.774645, -0.312868,
		42.122757, 31.398106, 29.422493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524780, 31.386127, 30.024239>,  <41.738049, 31.940357, 29.641500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524780, 31.386127, 30.024239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867962, 31.233696, 29.886429>,  <42.073872, 31.142237, 29.803743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867962, 31.233696, 29.886429>,  <41.524780, 31.386127, 30.024239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867962, 31.233696, 29.886429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170033, -0.422197, 0.890415,
		-0.484775, -0.822514, -0.297429,
		0.857952, -0.381078, -0.344524,
		42.125347, 31.119373, 29.783072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.545250, 30.600855, 30.214798>,  <41.524780, 31.386127, 30.024239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.545250, 30.600855, 30.214798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.923866, 30.704765, 30.138302>,  <42.151035, 30.767111, 30.092403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.923866, 30.704765, 30.138302>,  <41.545250, 30.600855, 30.214798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.923866, 30.704765, 30.138302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316594, -0.634458, 0.705146,
		0.061844, -0.727997, -0.682785,
		0.946543, 0.259774, -0.191242,
		42.207829, 30.782698, 30.080929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.933655, 30.037949, 30.159609>,  <41.545250, 30.600855, 30.214798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.933655, 30.037949, 30.159609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192699, 30.314661, 30.287380>,  <42.348125, 30.480688, 30.364042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192699, 30.314661, 30.287380>,  <41.933655, 30.037949, 30.159609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192699, 30.314661, 30.287380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234294, -0.579697, 0.780422,
		0.725051, -0.430573, -0.537501,
		0.647616, 0.691779, 0.319429,
		42.386986, 30.522194, 30.383209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581699, 29.716999, 30.206242>,  <41.933655, 30.037949, 30.159609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.581699, 29.716999, 30.206242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586517, 30.035093, 30.448713>,  <42.589409, 30.225950, 30.594196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586517, 30.035093, 30.448713>,  <42.581699, 29.716999, 30.206242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.586517, 30.035093, 30.448713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392053, -0.561443, 0.728750,
		0.919864, 0.228874, -0.318539,
		0.012049, 0.795235, 0.606182,
		42.590134, 30.273664, 30.630568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.108494, 29.533415, 30.649660>,  <42.581699, 29.716999, 30.206242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.108494, 29.533415, 30.649660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.972893, 29.849022, 30.854609>,  <42.891533, 30.038385, 30.977577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.972893, 29.849022, 30.854609>,  <43.108494, 29.533415, 30.649660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.972893, 29.849022, 30.854609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500234, -0.310075, 0.808467,
		0.796769, 0.530381, -0.289576,
		-0.339005, 0.789018, 0.512373,
		42.871193, 30.085728, 31.008320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.631561, 29.624260, 31.062338>,  <43.108494, 29.533415, 30.649660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.631561, 29.624260, 31.062338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315815, 29.812263, 31.220325>,  <43.126369, 29.925066, 31.315117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315815, 29.812263, 31.220325>,  <43.631561, 29.624260, 31.062338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.315815, 29.812263, 31.220325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332924, -0.212821, 0.918623,
		0.515820, 0.856620, 0.011515,
		-0.789361, 0.470010, 0.394967,
		43.079006, 29.953266, 31.338816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.838531, 30.014170, 31.523239>,  <43.631561, 29.624260, 31.062338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.838531, 30.014170, 31.523239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458359, 29.978544, 31.642395>,  <43.230255, 29.957169, 31.713890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458359, 29.978544, 31.642395>,  <43.838531, 30.014170, 31.523239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.458359, 29.978544, 31.642395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303122, -0.052172, 0.951523,
		-0.069206, 0.994658, 0.076584,
		-0.950436, -0.089065, 0.297892,
		43.173229, 29.951824, 31.731762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.825191, 30.354235, 32.170910>,  <43.838531, 30.014170, 31.523239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.825191, 30.354235, 32.170910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.502735, 30.118534, 32.149288>,  <43.309261, 29.977114, 32.136314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.502735, 30.118534, 32.149288>,  <43.825191, 30.354235, 32.170910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.502735, 30.118534, 32.149288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222507, -0.386515, 0.895040,
		-0.548299, 0.709497, 0.442697,
		-0.806138, -0.589253, -0.054057,
		43.260895, 29.941757, 32.133072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.521931, 30.403519, 32.774689>,  <43.825191, 30.354235, 32.170910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.521931, 30.403519, 32.774689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.376198, 30.056908, 32.638226>,  <43.288757, 29.848942, 32.556347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.376198, 30.056908, 32.638226>,  <43.521931, 30.403519, 32.774689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.376198, 30.056908, 32.638226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282585, -0.451935, 0.846109,
		-0.887358, 0.211862, 0.409524,
		-0.364336, -0.866527, -0.341159,
		43.266895, 29.796949, 32.535877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.214867, 30.089106, 33.346855>,  <43.521931, 30.403519, 32.774689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.214867, 30.089106, 33.346855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307720, 29.779638, 33.111042>,  <43.363434, 29.593958, 32.969555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307720, 29.779638, 33.111042>,  <43.214867, 30.089106, 33.346855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.307720, 29.779638, 33.111042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279896, -0.527325, 0.802238,
		-0.931543, -0.351236, 0.094136,
		0.232135, -0.773667, -0.589536,
		43.377361, 29.547539, 32.934181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.768677, 29.509216, 33.428425>,  <43.214867, 30.089106, 33.346855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.768677, 29.509216, 33.428425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.147057, 29.422041, 33.332363>,  <43.374084, 29.369736, 33.274727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.147057, 29.422041, 33.332363>,  <42.768677, 29.509216, 33.428425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.147057, 29.422041, 33.332363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148357, -0.367686, 0.918040,
		-0.288376, -0.904052, -0.315481,
		0.945954, -0.217937, -0.240155,
		43.430843, 29.356659, 33.260315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.010872, 28.788160, 33.598904>,  <42.768677, 29.509216, 33.428425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.010872, 28.788160, 33.598904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.327545, 29.032423, 33.606190>,  <43.517551, 29.178980, 33.610561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.327545, 29.032423, 33.606190>,  <43.010872, 28.788160, 33.598904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.327545, 29.032423, 33.606190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087089, -0.142318, 0.985982,
		0.604688, -0.779003, -0.165853,
		0.791687, 0.610656, 0.018216,
		43.565052, 29.215620, 33.611656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.638176, 28.497566, 34.036812>,  <43.010872, 28.788160, 33.598904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.638176, 28.497566, 34.036812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.635387, 28.897169, 34.019226>,  <43.633717, 29.136930, 34.008675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.635387, 28.897169, 34.019226>,  <43.638176, 28.497566, 34.036812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.635387, 28.897169, 34.019226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082967, 0.043234, 0.995614,
		0.996528, 0.010584, 0.082583,
		-0.006967, 0.999009, -0.043962,
		43.633297, 29.196873, 34.006039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.704285, 28.352640, 34.801361>,  <43.638176, 28.497566, 34.036812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.704285, 28.352640, 34.801361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.408279, 28.593922, 34.920372>,  <43.230675, 28.738691, 34.991779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.408279, 28.593922, 34.920372>,  <43.704285, 28.352640, 34.801361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.408279, 28.593922, 34.920372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623416, -0.781186, 0.033191,
		0.252443, -0.160920, 0.954137,
		-0.740017, 0.603203, 0.297525,
		43.186275, 28.774883, 35.009628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.269135, 28.113989, 35.449577>,  <43.704285, 28.352640, 34.801361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.269135, 28.113989, 35.449577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088295, 28.338015, 35.171890>,  <42.979790, 28.472429, 35.005280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088295, 28.338015, 35.171890>,  <43.269135, 28.113989, 35.449577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.088295, 28.338015, 35.171890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557765, -0.784869, -0.269962,
		-0.696064, 0.265159, 0.667223,
		-0.452099, 0.560064, -0.694215,
		42.952667, 28.506033, 34.963627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.681793, 27.746386, 35.323738>,  <43.269135, 28.113989, 35.449577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.681793, 27.746386, 35.323738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.641743, 27.994627, 35.012653>,  <42.617714, 28.143572, 34.826004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.641743, 27.994627, 35.012653>,  <42.681793, 27.746386, 35.323738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.641743, 27.994627, 35.012653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736668, -0.571637, -0.361320,
		-0.668802, 0.536736, 0.514411,
		-0.100123, 0.620601, -0.777708,
		42.611706, 28.180807, 34.779343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.049290, 28.103024, 35.343189>,  <42.681793, 27.746386, 35.323738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.049290, 28.103024, 35.343189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146736, 28.152496, 34.958408>,  <42.205204, 28.182180, 34.727539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146736, 28.152496, 34.958408>,  <42.049290, 28.103024, 35.343189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.146736, 28.152496, 34.958408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858672, -0.433634, -0.273211,
		-0.450928, 0.892560, 0.000565,
		0.243612, 0.123683, -0.961954,
		42.219818, 28.189602, 34.669823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464195, 27.806156, 35.776859>,  <42.049290, 28.103024, 35.343189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464195, 27.806156, 35.776859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467243, 27.959091, 36.146458>,  <41.469070, 28.050852, 36.368217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467243, 27.959091, 36.146458>,  <41.464195, 27.806156, 35.776859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467243, 27.959091, 36.146458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886101, 0.430813, -0.170957,
		-0.463430, -0.817447, 0.342072,
		0.007621, 0.382337, 0.923991,
		41.469528, 28.073792, 36.423656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971924, 28.014896, 35.296402>,  <41.464195, 27.806156, 35.776859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971924, 28.014896, 35.296402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.655075, 27.789925, 35.201557>,  <40.464966, 27.654942, 35.144650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.655075, 27.789925, 35.201557>,  <40.971924, 28.014896, 35.296402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655075, 27.789925, 35.201557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329734, 0.067404, 0.941665,
		-0.513637, 0.824094, -0.238844,
		-0.792119, -0.562428, -0.237111,
		40.417439, 27.621197, 35.130424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298302, 28.346132, 35.384270>,  <40.971924, 28.014896, 35.296402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298302, 28.346132, 35.384270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255306, 27.953493, 35.447407>,  <40.229507, 27.717911, 35.485291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255306, 27.953493, 35.447407>,  <40.298302, 28.346132, 35.384270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255306, 27.953493, 35.447407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309314, 0.183899, 0.933009,
		-0.944866, 0.051465, -0.323389,
		-0.107489, -0.981597, 0.157841,
		40.223061, 27.659014, 35.494759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525211, 28.100332, 35.487072>,  <40.298302, 28.346132, 35.384270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525211, 28.100332, 35.487072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848759, 27.979519, 35.688869>,  <40.042885, 27.907030, 35.809948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848759, 27.979519, 35.688869>,  <39.525211, 28.100332, 35.487072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848759, 27.979519, 35.688869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452647, 0.227768, 0.862109,
		-0.375295, -0.925687, 0.047518,
		0.808866, -0.302036, 0.504490,
		40.091419, 27.888908, 35.840218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323666, 27.649864, 36.097965>,  <39.525211, 28.100332, 35.487072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323666, 27.649864, 36.097965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661545, 27.850353, 36.173073>,  <39.864273, 27.970646, 36.218136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661545, 27.850353, 36.173073>,  <39.323666, 27.649864, 36.097965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661545, 27.850353, 36.173073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380503, 0.315616, 0.869255,
		0.376428, -0.805706, 0.457318,
		0.844700, 0.501223, 0.187767,
		39.914955, 28.000721, 36.229404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620762, 27.134314, 35.662434>,  <39.323666, 27.649864, 36.097965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620762, 27.134314, 35.662434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271648, 27.316772, 35.592949>,  <39.062180, 27.426249, 35.551258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271648, 27.316772, 35.592949>,  <39.620762, 27.134314, 35.662434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271648, 27.316772, 35.592949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469245, 0.686142, -0.555894,
		-0.134380, -0.566689, -0.812899,
		-0.872784, 0.456150, -0.173712,
		39.009811, 27.453617, 35.540836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532043, 27.214333, 34.909492>,  <39.620762, 27.134314, 35.662434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532043, 27.214333, 34.909492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276947, 27.479855, 35.065773>,  <39.123890, 27.639168, 35.159542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276947, 27.479855, 35.065773>,  <39.532043, 27.214333, 34.909492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276947, 27.479855, 35.065773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126591, 0.590673, -0.796919,
		-0.759775, -0.458770, -0.460730,
		-0.637743, 0.663803, 0.390702,
		39.085625, 27.678995, 35.182983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218761, 27.539455, 34.346413>,  <39.532043, 27.214333, 34.909492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218761, 27.539455, 34.346413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144150, 27.771996, 34.663208>,  <39.099384, 27.911520, 34.853283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144150, 27.771996, 34.663208>,  <39.218761, 27.539455, 34.346413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144150, 27.771996, 34.663208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065055, 0.797054, -0.600394,
		-0.980294, -0.163511, -0.110851,
		-0.186525, 0.581351, 0.791985,
		39.088192, 27.946402, 34.900803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648914, 27.855013, 34.058975>,  <39.218761, 27.539455, 34.346413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648914, 27.855013, 34.058975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826786, 28.056328, 34.355343>,  <38.933510, 28.177116, 34.533161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826786, 28.056328, 34.355343>,  <38.648914, 27.855013, 34.058975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826786, 28.056328, 34.355343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020395, 0.832680, -0.553379,
		-0.895455, 0.230968, 0.380544,
		0.444684, 0.503288, 0.740917,
		38.960190, 28.207314, 34.577618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190548, 28.481703, 34.500164>,  <38.648914, 27.855013, 34.058975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190548, 28.481703, 34.500164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585354, 28.497194, 34.437817>,  <38.822239, 28.506489, 34.400410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585354, 28.497194, 34.437817>,  <38.190548, 28.481703, 34.500164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585354, 28.497194, 34.437817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132078, 0.747888, -0.650553,
		0.091374, 0.662694, 0.743295,
		0.987019, 0.038729, -0.155864,
		38.881458, 28.508814, 34.391056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613113, 29.093973, 34.718700>,  <38.190548, 28.481703, 34.500164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613113, 29.093973, 34.718700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786160, 28.909025, 34.409103>,  <38.889988, 28.798058, 34.223347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786160, 28.909025, 34.409103>,  <38.613113, 29.093973, 34.718700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786160, 28.909025, 34.409103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066684, 0.839723, -0.538906,
		0.899111, 0.284749, 0.332441,
		0.432611, -0.462368, -0.773992,
		38.915943, 28.770315, 34.176907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822258, 29.642056, 34.299114>,  <38.613113, 29.093973, 34.718700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822258, 29.642056, 34.299114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564613, 29.743570, 34.010475>,  <38.410027, 29.804480, 33.837292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564613, 29.743570, 34.010475>,  <38.822258, 29.642056, 34.299114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564613, 29.743570, 34.010475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706671, -0.163674, -0.688351,
		-0.292801, -0.953312, -0.073918,
		-0.644115, 0.253786, -0.721601,
		38.371380, 29.819706, 33.793995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933990, 29.165625, 33.776806>,  <38.822258, 29.642056, 34.299114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933990, 29.165625, 33.776806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797661, 29.504768, 33.614338>,  <38.715862, 29.708254, 33.516857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797661, 29.504768, 33.614338>,  <38.933990, 29.165625, 33.776806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797661, 29.504768, 33.614338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790951, 0.025071, -0.611366,
		-0.508169, -0.529628, -0.679160,
		-0.340824, 0.847859, -0.406169,
		38.695412, 29.759127, 33.492489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407784, 29.273613, 33.325218>,  <38.933990, 29.165625, 33.776806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407784, 29.273613, 33.325218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206848, 29.618883, 33.304886>,  <39.086285, 29.826044, 33.292686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206848, 29.618883, 33.304886>,  <39.407784, 29.273613, 33.325218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206848, 29.618883, 33.304886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687852, 0.363305, -0.628386,
		-0.523940, -0.350628, -0.776239,
		-0.502342, 0.863174, -0.050830,
		39.056145, 29.877836, 33.289639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148525, 29.296829, 32.681477>,  <39.407784, 29.273613, 33.325218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148525, 29.296829, 32.681477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168396, 29.668188, 32.828781>,  <39.180317, 29.891003, 32.917164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168396, 29.668188, 32.828781>,  <39.148525, 29.296829, 32.681477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168396, 29.668188, 32.828781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625355, 0.258581, -0.736252,
		-0.778758, 0.266867, -0.567731,
		0.049677, 0.928395, 0.368258,
		39.183300, 29.946707, 32.939259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192051, 29.768726, 32.164528>,  <39.148525, 29.296829, 32.681477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192051, 29.768726, 32.164528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354996, 29.993296, 32.452656>,  <39.452763, 30.128036, 32.625534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354996, 29.993296, 32.452656>,  <39.192051, 29.768726, 32.164528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354996, 29.993296, 32.452656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651262, 0.374356, -0.660088,
		-0.640243, 0.738014, -0.213132,
		0.407367, 0.561421, 0.720318,
		39.477207, 30.161722, 32.668751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308922, 30.389530, 31.864452>,  <39.192051, 29.768726, 32.164528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308922, 30.389530, 31.864452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.559830, 30.386015, 32.175953>,  <39.710377, 30.383905, 32.362854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.559830, 30.386015, 32.175953>,  <39.308922, 30.389530, 31.864452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559830, 30.386015, 32.175953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716472, 0.398476, -0.572612,
		-0.305283, 0.917137, 0.256248,
		0.627272, -0.008786, 0.778751,
		39.748013, 30.383379, 32.409576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645424, 31.049351, 31.925631>,  <39.308922, 30.389530, 31.864452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645424, 31.049351, 31.925631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875854, 30.761606, 32.080891>,  <40.014111, 30.588959, 32.174046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875854, 30.761606, 32.080891>,  <39.645424, 31.049351, 31.925631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875854, 30.761606, 32.080891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781570, 0.345711, -0.519261,
		0.239349, 0.602498, 0.761386,
		0.576073, -0.719361, 0.388149,
		40.048676, 30.545797, 32.197334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215111, 31.469772, 32.273701>,  <39.645424, 31.049351, 31.925631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215111, 31.469772, 32.273701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277092, 31.109310, 32.111759>,  <40.314281, 30.893032, 32.014595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277092, 31.109310, 32.111759>,  <40.215111, 31.469772, 32.273701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277092, 31.109310, 32.111759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785266, 0.361010, -0.503020,
		0.599456, -0.239973, 0.763587,
		0.154951, -0.901158, -0.404852,
		40.323578, 30.838963, 31.990303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347412, 32.120686, 32.183434>,  <40.215111, 31.469772, 32.273701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347412, 32.120686, 32.183434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496540, 32.119576, 32.554592>,  <40.586018, 32.118912, 32.777287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496540, 32.119576, 32.554592>,  <40.347412, 32.120686, 32.183434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496540, 32.119576, 32.554592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014820, 0.999850, 0.008942,
		-0.927787, -0.017085, 0.372720,
		0.372817, -0.002772, 0.927901,
		40.608387, 32.118744, 32.832962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970131, 32.437363, 32.726940>,  <40.347412, 32.120686, 32.183434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970131, 32.437363, 32.726940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365868, 32.452881, 32.783085>,  <40.603310, 32.462193, 32.816772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365868, 32.452881, 32.783085>,  <39.970131, 32.437363, 32.726940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365868, 32.452881, 32.783085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027470, 0.996272, -0.081775,
		-0.143009, 0.077048, 0.986718,
		0.989340, 0.038800, 0.140360,
		40.662670, 32.464520, 32.825191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029053, 33.035839, 33.157394>,  <39.970131, 32.437363, 32.726940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029053, 33.035839, 33.157394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380974, 32.980553, 32.975471>,  <40.592125, 32.947380, 32.866318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380974, 32.980553, 32.975471>,  <40.029053, 33.035839, 33.157394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380974, 32.980553, 32.975471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082306, 0.986635, -0.140631,
		0.468163, 0.086294, 0.879418,
		0.879800, -0.138220, -0.454804,
		40.644913, 32.939087, 32.839031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634029, 33.386456, 33.510582>,  <40.029053, 33.035839, 33.157394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634029, 33.386456, 33.510582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722000, 33.328270, 33.124737>,  <40.774784, 33.293358, 32.893230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722000, 33.328270, 33.124737>,  <40.634029, 33.386456, 33.510582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722000, 33.328270, 33.124737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313683, 0.946849, -0.071269,
		0.923707, -0.286908, 0.253869,
		0.219928, -0.145466, -0.964609,
		40.787979, 33.284630, 32.835354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173073, 33.862305, 33.366856>,  <40.634029, 33.386456, 33.510582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173073, 33.862305, 33.366856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039326, 33.735554, 33.011826>,  <40.959076, 33.659504, 32.798809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039326, 33.735554, 33.011826>,  <41.173073, 33.862305, 33.366856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039326, 33.735554, 33.011826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270736, 0.869789, -0.412516,
		0.902718, -0.378231, -0.205042,
		-0.334370, -0.316874, -0.887574,
		40.939014, 33.640491, 32.745552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.803722, 33.769035, 32.934002>,  <41.173073, 33.862305, 33.366856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.803722, 33.769035, 32.934002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490227, 33.790966, 32.686535>,  <41.302132, 33.804123, 32.538055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490227, 33.790966, 32.686535>,  <41.803722, 33.769035, 32.934002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490227, 33.790966, 32.686535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340814, 0.870699, -0.354584,
		0.519235, -0.488752, -0.701083,
		-0.783735, 0.054827, -0.618671,
		41.255108, 33.807415, 32.500935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032524, 33.727070, 32.255482>,  <41.803722, 33.769035, 32.934002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032524, 33.727070, 32.255482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689262, 33.931892, 32.240662>,  <41.483307, 34.054787, 32.231770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689262, 33.931892, 32.240662>,  <42.032524, 33.727070, 32.255482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689262, 33.931892, 32.240662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499257, 0.815531, -0.292664,
		-0.119643, -0.269648, -0.955497,
		-0.858154, 0.512054, -0.037051,
		41.431816, 34.085510, 32.229546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961170, 34.044735, 31.587532>,  <42.032524, 33.727070, 32.255482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961170, 34.044735, 31.587532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762733, 34.246761, 31.870037>,  <41.643673, 34.367977, 32.039539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762733, 34.246761, 31.870037>,  <41.961170, 34.044735, 31.587532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.762733, 34.246761, 31.870037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444296, 0.846513, -0.293287,
		-0.745988, 0.168293, -0.644344,
		-0.496087, 0.505067, 0.706261,
		41.613907, 34.398281, 32.081917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.506981, 34.205185, 32.018524>,  <41.961170, 34.044735, 31.587532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.506981, 34.205185, 32.018524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334827, 34.454376, 32.279804>,  <42.231537, 34.603889, 32.436573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334827, 34.454376, 32.279804>,  <42.506981, 34.205185, 32.018524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.334827, 34.454376, 32.279804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882653, 0.138991, 0.449004,
		0.188929, 0.769794, -0.609691,
		-0.430382, 0.622976, 0.653201,
		42.205711, 34.641270, 32.475765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.063957, 34.566612, 32.235435>,  <42.506981, 34.205185, 32.018524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.063957, 34.566612, 32.235435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764835, 34.693348, 32.468811>,  <42.585361, 34.769390, 32.608837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764835, 34.693348, 32.468811>,  <43.063957, 34.566612, 32.235435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.764835, 34.693348, 32.468811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663001, 0.310240, 0.681309,
		0.034862, 0.896305, -0.442065,
		-0.747807, 0.316841, 0.583435,
		42.540493, 34.788399, 32.643841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.169556, 35.264194, 32.420803>,  <43.063957, 34.566612, 32.235435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.169556, 35.264194, 32.420803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.969723, 35.083168, 32.716263>,  <42.849823, 34.974552, 32.893539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.969723, 35.083168, 32.716263>,  <43.169556, 35.264194, 32.420803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.969723, 35.083168, 32.716263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696721, 0.296791, 0.653066,
		-0.514782, 0.840890, 0.167043,
		-0.499580, -0.452569, 0.738648,
		42.819847, 34.947399, 32.937859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.105812, 35.760426, 32.984112>,  <43.169556, 35.264194, 32.420803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.105812, 35.760426, 32.984112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119431, 35.374218, 33.087349>,  <43.127602, 35.142494, 33.149292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119431, 35.374218, 33.087349>,  <43.105812, 35.760426, 32.984112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119431, 35.374218, 33.087349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713190, 0.204385, 0.670512,
		-0.700144, 0.161243, 0.695557,
		0.034046, -0.965519, 0.258096,
		43.129646, 35.084560, 33.164776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.956364, 35.696926, 33.699322>,  <43.105812, 35.760426, 32.984112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.956364, 35.696926, 33.699322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167667, 35.374729, 33.591892>,  <43.294449, 35.181412, 33.527435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167667, 35.374729, 33.591892>,  <42.956364, 35.696926, 33.699322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.167667, 35.374729, 33.591892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470213, 0.014150, 0.882439,
		-0.706996, -0.592441, 0.386227,
		0.528258, -0.805490, -0.268570,
		43.326145, 35.133083, 33.511322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.907246, 35.320068, 34.246647>,  <42.956364, 35.696926, 33.699322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.907246, 35.320068, 34.246647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.228188, 35.178104, 34.054703>,  <43.420753, 35.092926, 33.939537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.228188, 35.178104, 34.054703>,  <42.907246, 35.320068, 34.246647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.228188, 35.178104, 34.054703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528470, 0.048801, 0.847548,
		-0.277389, -0.933625, 0.226717,
		0.802356, -0.354914, -0.479855,
		43.468895, 35.071632, 33.910748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.207813, 34.757950, 34.581615>,  <42.907246, 35.320068, 34.246647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.207813, 34.757950, 34.581615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.503651, 34.970261, 34.416073>,  <43.681152, 35.097649, 34.316746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.503651, 34.970261, 34.416073>,  <43.207813, 34.757950, 34.581615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.503651, 34.970261, 34.416073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442504, 0.079854, 0.893204,
		0.507141, -0.843741, -0.175812,
		0.739593, 0.530778, -0.413856,
		43.725529, 35.129494, 34.291916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.846088, 34.494865, 34.827217>,  <43.207813, 34.757950, 34.581615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.846088, 34.494865, 34.827217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.892502, 34.877262, 34.719425>,  <43.920349, 35.106701, 34.654751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.892502, 34.877262, 34.719425>,  <43.846088, 34.494865, 34.827217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.892502, 34.877262, 34.719425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164742, 0.249032, 0.954381,
		0.979488, -0.155134, -0.128596,
		0.116032, 0.955990, -0.269481,
		43.927311, 35.164059, 34.638580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.393059, 34.726330, 35.229969>,  <43.846088, 34.494865, 34.827217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.393059, 34.726330, 35.229969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.162022, 35.039574, 35.137772>,  <44.023399, 35.227520, 35.082455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.162022, 35.039574, 35.137772>,  <44.393059, 34.726330, 35.229969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.162022, 35.039574, 35.137772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002528, 0.284071, 0.958800,
		0.816319, 0.553217, -0.166058,
		-0.577596, 0.783106, -0.230494,
		43.988743, 35.274506, 35.068623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.699905, 35.206150, 35.634754>,  <44.393059, 34.726330, 35.229969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.699905, 35.206150, 35.634754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.328487, 35.314701, 35.533440>,  <44.105637, 35.379829, 35.472652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.328487, 35.314701, 35.533440>,  <44.699905, 35.206150, 35.634754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.328487, 35.314701, 35.533440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184386, 0.255010, 0.949195,
		0.322178, 0.928076, -0.186751,
		-0.928549, 0.271376, -0.253283,
		44.049923, 35.396114, 35.457455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.470043, 35.666119, 36.184738>,  <44.699905, 35.206150, 35.634754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.470043, 35.666119, 36.184738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123577, 35.541946, 36.028084>,  <43.915695, 35.467442, 35.934090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123577, 35.541946, 36.028084>,  <44.470043, 35.666119, 36.184738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.123577, 35.541946, 36.028084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442716, 0.113076, 0.889504,
		-0.231848, 0.943845, -0.235377,
		-0.866169, -0.310435, -0.391639,
		43.863728, 35.448814, 35.910591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.203411, 35.136951, 36.589252>,  <44.470043, 35.666119, 36.184738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.203411, 35.136951, 36.589252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.834892, 35.151039, 36.744152>,  <43.613781, 35.159492, 36.837093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.834892, 35.151039, 36.744152>,  <44.203411, 35.136951, 36.589252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.834892, 35.151039, 36.744152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323679, 0.482437, -0.813933,
		-0.215490, -0.875223, -0.433070,
		-0.921301, 0.035218, 0.387252,
		43.558502, 35.161606, 36.860329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.736965, 34.799625, 36.167023>,  <44.203411, 35.136951, 36.589252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.736965, 34.799625, 36.167023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572128, 35.101952, 36.370560>,  <43.473228, 35.283348, 36.492683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572128, 35.101952, 36.370560>,  <43.736965, 34.799625, 36.167023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.572128, 35.101952, 36.370560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316488, 0.404955, -0.857815,
		-0.854411, -0.514539, 0.072329,
		-0.412090, 0.755818, 0.508843,
		43.448502, 35.328697, 36.523212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.035904, 34.867580, 35.893280>,  <43.736965, 34.799625, 36.167023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.035904, 34.867580, 35.893280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193279, 35.206310, 36.036438>,  <43.287704, 35.409550, 36.122334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193279, 35.206310, 36.036438>,  <43.035904, 34.867580, 35.893280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.193279, 35.206310, 36.036438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012624, 0.394228, -0.918926,
		-0.919263, 0.357025, 0.165795,
		0.393440, 0.846828, 0.357892,
		43.311310, 35.460358, 36.143806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698574, 35.459595, 35.660892>,  <43.035904, 34.867580, 35.893280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.698574, 35.459595, 35.660892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.086578, 35.530071, 35.727875>,  <43.319382, 35.572357, 35.768066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.086578, 35.530071, 35.727875>,  <42.698574, 35.459595, 35.660892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.086578, 35.530071, 35.727875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142784, 0.144530, -0.979144,
		-0.196720, 0.973688, 0.115038,
		0.970007, 0.176192, 0.167459,
		43.377579, 35.582928, 35.778114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.828094, 35.926388, 35.162785>,  <42.698574, 35.459595, 35.660892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.828094, 35.926388, 35.162785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.181995, 35.771755, 35.266918>,  <43.394337, 35.678974, 35.329399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.181995, 35.771755, 35.266918>,  <42.828094, 35.926388, 35.162785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.181995, 35.771755, 35.266918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283938, 0.004128, -0.958834,
		0.369595, 0.922245, 0.113418,
		0.884748, -0.386583, 0.260335,
		43.447418, 35.655781, 35.345020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320259, 36.281979, 34.708210>,  <42.828094, 35.926388, 35.162785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.320259, 36.281979, 34.708210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.557312, 35.981861, 34.825409>,  <43.699543, 35.801788, 34.895729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.557312, 35.981861, 34.825409>,  <43.320259, 36.281979, 34.708210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.557312, 35.981861, 34.825409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265670, -0.161320, -0.950471,
		0.760402, 0.641116, 0.103729,
		0.592628, -0.750298, 0.292993,
		43.735100, 35.756771, 34.913307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.906681, 36.461182, 34.351627>,  <43.320259, 36.281979, 34.708210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.906681, 36.461182, 34.351627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.891029, 36.071911, 34.442314>,  <43.881638, 35.838348, 34.496727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.891029, 36.071911, 34.442314>,  <43.906681, 36.461182, 34.351627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.891029, 36.071911, 34.442314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307963, -0.227594, -0.923775,
		0.950594, 0.033679, 0.308606,
		-0.039125, -0.973174, 0.226722,
		43.879292, 35.779961, 34.510330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.053055, 37.099777, 33.915295>,  <43.906681, 36.461182, 34.351627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.053055, 37.099777, 33.915295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152290, 36.931034, 33.566471>,  <44.211834, 36.829788, 33.357178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152290, 36.931034, 33.566471>,  <44.053055, 37.099777, 33.915295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.152290, 36.931034, 33.566471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864057, 0.503388, 0.002303,
		0.438013, -0.754081, 0.489395,
		0.248092, -0.421856, -0.872059,
		44.226719, 36.804478, 33.304852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.630756, 36.658150, 33.940701>,  <44.053055, 37.099777, 33.915295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.630756, 36.658150, 33.940701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.597424, 36.852451, 33.592655>,  <44.577423, 36.969032, 33.383827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.597424, 36.852451, 33.592655>,  <44.630756, 36.658150, 33.940701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.597424, 36.852451, 33.592655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770693, 0.584940, 0.252739,
		0.631734, -0.649530, -0.423110,
		-0.083332, 0.485752, -0.870115,
		44.572422, 36.998177, 33.331619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.232391, 36.980434, 34.050133>,  <44.630756, 36.658150, 33.940701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.232391, 36.980434, 34.050133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.101120, 37.153393, 33.714195>,  <45.022358, 37.257168, 33.512634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.101120, 37.153393, 33.714195>,  <45.232391, 36.980434, 34.050133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.101120, 37.153393, 33.714195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658651, 0.742049, 0.124668,
		0.677109, -0.512249, -0.528323,
		-0.328180, 0.432394, -0.839841,
		45.002666, 37.283112, 33.462242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.769371, 37.199337, 33.561230>,  <45.232391, 36.980434, 34.050133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.769371, 37.199337, 33.561230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.471931, 37.466705, 33.567905>,  <45.293468, 37.627125, 33.571911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.471931, 37.466705, 33.567905>,  <45.769371, 37.199337, 33.561230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.471931, 37.466705, 33.567905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650226, 0.717088, 0.250981,
		0.155793, 0.197480, -0.967848,
		-0.743596, 0.668421, 0.016690,
		45.248852, 37.667233, 33.572914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.709030, 36.682526, 32.984180>,  <45.769371, 37.199337, 33.561230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.709030, 36.682526, 32.984180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.020157, 36.437489, 32.927990>,  <46.206833, 36.290466, 32.894276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.020157, 36.437489, 32.927990>,  <45.709030, 36.682526, 32.984180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.020157, 36.437489, 32.927990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595658, -0.789832, 0.146140,
		-0.200475, -0.029996, -0.979240,
		0.777818, -0.612590, -0.140474,
		46.253502, 36.253712, 32.885849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.611958, 36.294472, 32.386288>,  <45.709030, 36.682526, 32.984180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.611958, 36.294472, 32.386288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.833405, 36.087013, 32.646908>,  <45.966274, 35.962540, 32.803280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.833405, 36.087013, 32.646908>,  <45.611958, 36.294472, 32.386288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.833405, 36.087013, 32.646908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682684, -0.730712, -0.001578,
		0.476911, -0.443927, -0.758607,
		0.553622, -0.518642, 0.651547,
		45.999493, 35.931419, 32.842373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.696136, 35.631733, 32.116447>,  <45.611958, 36.294472, 32.386288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.696136, 35.631733, 32.116447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.707584, 35.637444, 32.516243>,  <45.714451, 35.640869, 32.756119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.707584, 35.637444, 32.516243>,  <45.696136, 35.631733, 32.116447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.707584, 35.637444, 32.516243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697591, -0.715860, 0.030200,
		0.715925, -0.698098, -0.010524,
		0.028616, 0.014279, 0.999488,
		45.716167, 35.641727, 32.816090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.722878, 34.916348, 32.347237>,  <45.696136, 35.631733, 32.116447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.722878, 34.916348, 32.347237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.574913, 35.142567, 32.642078>,  <45.486134, 35.278297, 32.818985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.574913, 35.142567, 32.642078>,  <45.722878, 34.916348, 32.347237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.574913, 35.142567, 32.642078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659985, -0.718358, 0.219959,
		0.653902, -0.405112, 0.638981,
		-0.369909, 0.565549, 0.737104,
		45.463940, 35.312233, 32.863209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.724480, 34.447662, 33.017551>,  <45.722878, 34.916348, 32.347237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.724480, 34.447662, 33.017551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.470013, 34.756271, 33.020195>,  <45.317333, 34.941437, 33.021782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.470013, 34.756271, 33.020195>,  <45.724480, 34.447662, 33.017551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.470013, 34.756271, 33.020195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762629, -0.630083, 0.146263,
		0.117012, 0.088004, 0.989224,
		-0.636165, 0.771525, 0.006613,
		45.279163, 34.987728, 33.022179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.251045, 34.425694, 33.589935>,  <45.724480, 34.447662, 33.017551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.251045, 34.425694, 33.589935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.630463, 34.394051, 33.712578>,  <46.858112, 34.375065, 33.786163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.630463, 34.394051, 33.712578>,  <46.251045, 34.425694, 33.589935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.630463, 34.394051, 33.712578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217207, 0.542013, 0.811814,
		-0.230409, -0.836638, 0.496939,
		0.948542, -0.079111, 0.306608,
		46.915024, 34.370319, 33.804562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.171360, 34.463440, 34.244862>,  <46.251045, 34.425694, 33.589935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.171360, 34.463440, 34.244862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.553917, 34.548416, 34.164688>,  <46.783451, 34.599403, 34.116585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.553917, 34.548416, 34.164688>,  <46.171360, 34.463440, 34.244862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.553917, 34.548416, 34.164688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076325, 0.480612, 0.873606,
		0.281921, -0.850812, 0.443441,
		0.956397, 0.212442, -0.200432,
		46.840836, 34.612148, 34.104557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.569553, 34.140659, 34.765053>,  <46.171360, 34.463440, 34.244862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.569553, 34.140659, 34.765053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.701920, 34.481869, 34.603642>,  <46.781338, 34.686596, 34.506794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.701920, 34.481869, 34.603642>,  <46.569553, 34.140659, 34.765053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.701920, 34.481869, 34.603642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146319, 0.376070, 0.914966,
		0.932247, -0.361821, -0.000367,
		0.330916, 0.853028, -0.403532,
		46.801193, 34.737778, 34.482582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.235386, 34.302689, 35.081642>,  <46.569553, 34.140659, 34.765053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.235386, 34.302689, 35.081642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.047310, 34.637890, 34.970886>,  <46.934464, 34.839012, 34.904434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.047310, 34.637890, 34.970886>,  <47.235386, 34.302689, 35.081642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.047310, 34.637890, 34.970886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070055, 0.348181, 0.934806,
		0.879780, 0.420140, -0.222418,
		-0.470191, 0.838005, -0.276890,
		46.906254, 34.889290, 34.887817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.679375, 34.439537, 34.578236>,  <47.235386, 34.302689, 35.081642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.679375, 34.439537, 34.578236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.884365, 34.657467, 34.843727>,  <48.007359, 34.788227, 35.003021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.884365, 34.657467, 34.843727>,  <47.679375, 34.439537, 34.578236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.884365, 34.657467, 34.843727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454791, -0.827842, 0.328393,
		0.728379, 0.133564, -0.672031,
		0.512474, 0.544828, 0.663726,
		48.038109, 34.820915, 35.042847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<42.115486, 29.134914, 23.536837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.718338, 29.112625, 23.494678>,  <41.480049, 29.099253, 23.469383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.718338, 29.112625, 23.494678>,  <42.115486, 29.134914, 23.536837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.718338, 29.112625, 23.494678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104844, -0.012730, 0.994407,
		-0.056751, 0.998365, 0.006797,
		-0.992868, -0.055721, -0.105395,
		41.420479, 29.095909, 23.463060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838684, 29.584896, 24.009094>,  <42.115486, 29.134914, 23.536837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.838684, 29.584896, 24.009094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.549603, 29.324926, 23.915028>,  <41.376156, 29.168945, 23.858587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.549603, 29.324926, 23.915028>,  <41.838684, 29.584896, 24.009094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.549603, 29.324926, 23.915028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223253, -0.102498, 0.969357,
		-0.654111, 0.753057, -0.071022,
		-0.722701, -0.649922, -0.235167,
		41.332790, 29.129950, 23.844477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321774, 29.719101, 24.452126>,  <41.838684, 29.584896, 24.009094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321774, 29.719101, 24.452126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.218021, 29.343346, 24.362438>,  <41.155769, 29.117893, 24.308626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.218021, 29.343346, 24.362438>,  <41.321774, 29.719101, 24.452126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218021, 29.343346, 24.362438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145207, -0.191593, 0.970674,
		-0.954797, 0.284329, -0.086710,
		-0.259378, -0.939388, -0.224219,
		41.140209, 29.061529, 24.295172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731659, 29.609961, 24.817656>,  <41.321774, 29.719101, 24.452126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731659, 29.609961, 24.817656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.854454, 29.241653, 24.721371>,  <40.928131, 29.020668, 24.663599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.854454, 29.241653, 24.721371>,  <40.731659, 29.609961, 24.817656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854454, 29.241653, 24.721371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049097, -0.267910, 0.962192,
		-0.950446, -0.283562, -0.127452,
		0.306987, -0.920770, -0.240712,
		40.946548, 28.965422, 24.649157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247337, 29.127066, 25.232868>,  <40.731659, 29.609961, 24.817656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247337, 29.127066, 25.232868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.540684, 28.880720, 25.117714>,  <40.716694, 28.732912, 25.048622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.540684, 28.880720, 25.117714>,  <40.247337, 29.127066, 25.232868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540684, 28.880720, 25.117714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089096, -0.506883, 0.857398,
		-0.673967, -0.603140, -0.426604,
		0.733369, -0.615867, -0.287885,
		40.760696, 28.695961, 25.031349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945454, 28.410601, 25.203268>,  <40.247337, 29.127066, 25.232868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945454, 28.410601, 25.203268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.341587, 28.423870, 25.257141>,  <40.579266, 28.431831, 25.289465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.341587, 28.423870, 25.257141>,  <39.945454, 28.410601, 25.203268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341587, 28.423870, 25.257141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109334, -0.410843, 0.905126,
		0.085360, -0.911102, -0.403245,
		0.990333, 0.033173, 0.134684,
		40.638687, 28.433823, 25.297546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110714, 27.814329, 25.514551>,  <39.945454, 28.410601, 25.203268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110714, 27.814329, 25.514551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.445156, 28.018005, 25.596189>,  <40.645821, 28.140211, 25.645172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.445156, 28.018005, 25.596189>,  <40.110714, 27.814329, 25.514551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445156, 28.018005, 25.596189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066690, -0.274943, 0.959145,
		0.544502, -0.815556, -0.195922,
		0.836104, 0.509191, 0.204097,
		40.695988, 28.170763, 25.657419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354301, 27.423079, 25.906847>,  <40.110714, 27.814329, 25.514551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354301, 27.423079, 25.906847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.515320, 27.774940, 26.008171>,  <40.611931, 27.986057, 26.068966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.515320, 27.774940, 26.008171>,  <40.354301, 27.423079, 25.906847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515320, 27.774940, 26.008171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121944, -0.222725, 0.967224,
		0.907242, -0.420240, 0.017611,
		0.402544, 0.879654, 0.253311,
		40.636082, 28.038837, 26.084164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799484, 27.302433, 26.519848>,  <40.354301, 27.423079, 25.906847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799484, 27.302433, 26.519848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.741890, 27.698122, 26.530499>,  <40.707333, 27.935535, 26.536890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.741890, 27.698122, 26.530499>,  <40.799484, 27.302433, 26.519848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741890, 27.698122, 26.530499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043283, -0.033178, 0.998512,
		0.988633, 0.142619, 0.047594,
		-0.143986, 0.989221, 0.026628,
		40.698692, 27.994888, 26.538486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257671, 27.558136, 26.954615>,  <40.799484, 27.302433, 26.519848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257671, 27.558136, 26.954615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.986298, 27.851643, 26.940168>,  <40.823471, 28.027746, 26.931499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.986298, 27.851643, 26.940168>,  <41.257671, 27.558136, 26.954615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986298, 27.851643, 26.940168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064991, -0.010976, 0.997825,
		0.731776, 0.679311, 0.055135,
		-0.678439, 0.733768, -0.036117,
		40.782764, 28.071774, 26.929333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434116, 28.055311, 27.456337>,  <41.257671, 27.558136, 26.954615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434116, 28.055311, 27.456337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.040199, 28.106138, 27.408958>,  <40.803848, 28.136635, 27.380531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.040199, 28.106138, 27.408958>,  <41.434116, 28.055311, 27.456337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040199, 28.106138, 27.408958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110636, 0.066864, 0.991609,
		0.133923, 0.989638, -0.051789,
		-0.984797, 0.127069, -0.118444,
		40.744759, 28.144258, 27.373425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332138, 28.580111, 27.867140>,  <41.434116, 28.055311, 27.456337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332138, 28.580111, 27.867140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.991539, 28.374557, 27.825432>,  <40.787178, 28.251226, 27.800407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.991539, 28.374557, 27.825432>,  <41.332138, 28.580111, 27.867140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991539, 28.374557, 27.825432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153305, 0.053816, 0.986712,
		-0.501442, 0.856171, -0.124605,
		-0.851501, -0.513882, -0.104270,
		40.736088, 28.220392, 27.794151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834908, 28.834187, 28.468801>,  <41.332138, 28.580111, 27.867140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834908, 28.834187, 28.468801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.666370, 28.487835, 28.360931>,  <40.565247, 28.280024, 28.296209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.666370, 28.487835, 28.360931>,  <40.834908, 28.834187, 28.468801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666370, 28.487835, 28.360931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242954, -0.178722, 0.953432,
		-0.873752, 0.467241, -0.135066,
		-0.421343, -0.865878, -0.269677,
		40.539967, 28.228071, 28.280027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109375, 28.837540, 28.732708>,  <40.834908, 28.834187, 28.468801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109375, 28.837540, 28.732708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.208447, 28.451942, 28.693989>,  <40.267891, 28.220583, 28.670757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.208447, 28.451942, 28.693989>,  <40.109375, 28.837540, 28.732708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208447, 28.451942, 28.693989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327638, -0.177366, 0.928006,
		-0.911762, -0.198131, -0.359770,
		0.247678, -0.963995, -0.096800,
		40.282749, 28.162745, 28.664949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656460, 28.484335, 29.066635>,  <40.109375, 28.837540, 28.732708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656460, 28.484335, 29.066635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.923229, 28.189430, 29.023434>,  <40.083290, 28.012487, 28.997513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.923229, 28.189430, 29.023434>,  <39.656460, 28.484335, 29.066635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923229, 28.189430, 29.023434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140329, -0.266623, 0.953530,
		-0.731796, -0.620773, -0.281275,
		0.666920, -0.737260, -0.108002,
		40.123306, 27.968252, 28.991034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360023, 27.824232, 29.257248>,  <39.656460, 28.484335, 29.066635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360023, 27.824232, 29.257248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.754097, 27.785864, 29.314106>,  <39.990543, 27.762842, 29.348221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.754097, 27.785864, 29.314106>,  <39.360023, 27.824232, 29.257248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754097, 27.785864, 29.314106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166472, -0.336064, 0.927010,
		-0.041148, -0.936942, -0.347054,
		0.985187, -0.095920, 0.142146,
		40.049652, 27.757088, 29.356750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414394, 27.424749, 29.820177>,  <39.360023, 27.824232, 29.257248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414394, 27.424749, 29.820177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.804409, 27.511599, 29.801552>,  <40.038418, 27.563709, 29.790377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.804409, 27.511599, 29.801552>,  <39.414394, 27.424749, 29.820177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804409, 27.511599, 29.801552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073212, -0.116340, 0.990507,
		0.209648, -0.969186, -0.129331,
		0.975032, 0.217126, -0.046565,
		40.096920, 27.576736, 29.787582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707329, 26.849257, 30.159992>,  <39.414394, 27.424749, 29.820177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707329, 26.849257, 30.159992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.946896, 27.169285, 30.173788>,  <40.090633, 27.361301, 30.182066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.946896, 27.169285, 30.173788>,  <39.707329, 26.849257, 30.159992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946896, 27.169285, 30.173788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094964, -0.113723, 0.988964,
		0.795163, -0.589028, -0.144088,
		0.598914, 0.800071, 0.034492,
		40.126572, 27.409306, 30.184135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323952, 26.631346, 30.369940>,  <39.707329, 26.849257, 30.159992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323952, 26.631346, 30.369940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.325363, 27.021685, 30.457306>,  <40.326210, 27.255888, 30.509726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.325363, 27.021685, 30.457306>,  <40.323952, 26.631346, 30.369940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325363, 27.021685, 30.457306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407126, -0.200899, 0.891004,
		0.913365, 0.085780, -0.398002,
		0.003528, 0.975849, 0.218417,
		40.326420, 27.314440, 30.522831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900604, 26.712700, 30.819586>,  <40.323952, 26.631346, 30.369940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.900604, 26.712700, 30.819586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.708382, 27.058264, 30.879885>,  <40.593048, 27.265602, 30.916063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.708382, 27.058264, 30.879885>,  <40.900604, 26.712700, 30.819586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708382, 27.058264, 30.879885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312722, 0.008217, 0.949809,
		0.819312, 0.503578, -0.274113,
		-0.480555, 0.863911, 0.150747,
		40.564217, 27.317436, 30.925110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425697, 27.236084, 31.049225>,  <40.900604, 26.712700, 30.819586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.425697, 27.236084, 31.049225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.087986, 27.392836, 31.195442>,  <40.885361, 27.486887, 31.283173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.087986, 27.392836, 31.195442>,  <41.425697, 27.236084, 31.049225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087986, 27.392836, 31.195442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453977, 0.160535, 0.876432,
		0.284774, 0.905902, -0.313441,
		-0.844280, 0.391880, 0.365543,
		40.834702, 27.510399, 31.305105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942383, 27.756393, 31.239038>,  <41.425697, 27.236084, 31.049225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.942383, 27.756393, 31.239038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.282341, 27.966108, 31.260206>,  <42.486317, 28.091938, 31.272907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.282341, 27.966108, 31.260206>,  <41.942383, 27.756393, 31.239038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282341, 27.966108, 31.260206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029040, 0.053675, -0.998136,
		-0.526150, 0.849848, 0.030392,
		0.849896, 0.524287, 0.052921,
		42.537312, 28.123394, 31.276083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856873, 28.365656, 30.828632>,  <41.942383, 27.756393, 31.239038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856873, 28.365656, 30.828632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.244102, 28.269386, 30.856634>,  <42.476440, 28.211624, 30.873436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.244102, 28.269386, 30.856634>,  <41.856873, 28.365656, 30.828632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.244102, 28.269386, 30.856634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092979, 0.085456, -0.991994,
		0.232764, 0.966837, 0.105105,
		0.968078, -0.240674, 0.070005,
		42.534527, 28.197184, 30.877636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.220291, 28.805868, 30.434391>,  <41.856873, 28.365656, 30.828632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.220291, 28.805868, 30.434391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.496410, 28.518993, 30.472609>,  <42.662083, 28.346869, 30.495539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.496410, 28.518993, 30.472609>,  <42.220291, 28.805868, 30.434391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.496410, 28.518993, 30.472609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168810, 0.031241, -0.985153,
		0.703552, 0.696182, 0.142634,
		0.690302, -0.717185, 0.095543,
		42.703503, 28.303839, 30.501272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683487, 29.025684, 30.010830>,  <42.220291, 28.805868, 30.434391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683487, 29.025684, 30.010830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.817471, 28.653980, 30.073151>,  <42.897861, 28.430958, 30.110542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.817471, 28.653980, 30.073151>,  <42.683487, 29.025684, 30.010830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.817471, 28.653980, 30.073151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124604, -0.120214, -0.984897,
		0.933957, 0.349313, 0.075523,
		0.334959, -0.929262, 0.155800,
		42.917957, 28.375202, 30.119890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.260311, 28.958172, 29.555506>,  <42.683487, 29.025684, 30.010830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.260311, 28.958172, 29.555506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.164303, 28.578442, 29.636662>,  <43.106697, 28.350603, 29.685356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.164303, 28.578442, 29.636662>,  <43.260311, 28.958172, 29.555506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.164303, 28.578442, 29.636662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156673, -0.244144, -0.956999,
		0.958041, -0.197915, 0.207335,
		-0.240024, -0.949328, 0.202892,
		43.092297, 28.293644, 29.697529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811623, 28.538631, 29.255207>,  <43.260311, 28.958172, 29.555506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811623, 28.538631, 29.255207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.491505, 28.302427, 29.296816>,  <43.299435, 28.160704, 29.321781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.491505, 28.302427, 29.296816>,  <43.811623, 28.538631, 29.255207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.491505, 28.302427, 29.296816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190734, -0.415184, -0.889518,
		0.568460, -0.692038, 0.444902,
		-0.800297, -0.590513, 0.104020,
		43.251415, 28.125273, 29.328022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.026241, 27.824493, 29.071791>,  <43.811623, 28.538631, 29.255207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.026241, 27.824493, 29.071791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.631020, 27.875538, 29.037231>,  <43.393887, 27.906164, 29.016497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.631020, 27.875538, 29.037231>,  <44.026241, 27.824493, 29.071791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.631020, 27.875538, 29.037231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053924, -0.238905, -0.969545,
		-0.144366, -0.962621, 0.229170,
		-0.988054, 0.127611, -0.086398,
		43.334602, 27.913822, 29.011312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.832336, 27.247818, 28.695892>,  <44.026241, 27.824493, 29.071791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.832336, 27.247818, 28.695892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.537888, 27.516273, 28.660786>,  <43.361217, 27.677347, 28.639723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.537888, 27.516273, 28.660786>,  <43.832336, 27.247818, 28.695892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.537888, 27.516273, 28.660786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032182, -0.164225, -0.985898,
		-0.676087, -0.722914, 0.142488,
		-0.736119, 0.671138, -0.087766,
		43.317051, 27.717615, 28.634457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400440, 26.936178, 28.224566>,  <43.832336, 27.247818, 28.695892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.400440, 26.936178, 28.224566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.302422, 27.323977, 28.226683>,  <43.243610, 27.556656, 28.227953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.302422, 27.323977, 28.226683>,  <43.400440, 26.936178, 28.224566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.302422, 27.323977, 28.226683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074733, 0.024333, -0.996907,
		-0.966627, -0.243893, -0.078416,
		-0.245047, 0.969497, 0.005294,
		43.228909, 27.614826, 28.228271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.992268, 26.942852, 27.681248>,  <43.400440, 26.936178, 28.224566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.992268, 26.942852, 27.681248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.097958, 27.319729, 27.763670>,  <43.161369, 27.545855, 27.813124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.097958, 27.319729, 27.763670>,  <42.992268, 26.942852, 27.681248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.097958, 27.319729, 27.763670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156302, 0.168995, -0.973144,
		-0.951712, 0.289334, -0.102615,
		0.264223, 0.942192, 0.206058,
		43.177223, 27.602386, 27.825487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.864880, 27.378464, 27.019575>,  <42.992268, 26.942852, 27.681248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.864880, 27.378464, 27.019575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.106365, 27.612583, 27.236076>,  <43.251255, 27.753054, 27.365978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.106365, 27.612583, 27.236076>,  <42.864880, 27.378464, 27.019575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.106365, 27.612583, 27.236076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292389, 0.469062, -0.833360,
		-0.741645, 0.661369, 0.112045,
		0.603715, 0.585297, 0.541255,
		43.287479, 27.788172, 27.398453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701950, 28.157202, 26.852190>,  <42.864880, 27.378464, 27.019575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701950, 28.157202, 26.852190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.072697, 28.118788, 26.997345>,  <43.295147, 28.095739, 27.084438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.072697, 28.118788, 26.997345>,  <42.701950, 28.157202, 26.852190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.072697, 28.118788, 26.997345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373144, 0.341050, -0.862814,
		-0.040904, 0.935127, 0.351944,
		0.926871, -0.096033, 0.362888,
		43.350758, 28.089977, 27.106211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.056957, 28.687620, 26.616201>,  <42.701950, 28.157202, 26.852190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.056957, 28.687620, 26.616201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.358463, 28.446056, 26.719843>,  <43.539368, 28.301117, 26.782028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.358463, 28.446056, 26.719843>,  <43.056957, 28.687620, 26.616201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.358463, 28.446056, 26.719843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462197, 0.206916, -0.862299,
		0.467139, 0.769725, 0.435091,
		0.753761, -0.603911, 0.259106,
		43.584591, 28.264883, 26.797575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.671997, 29.069933, 26.538311>,  <43.056957, 28.687620, 26.616201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.671997, 29.069933, 26.538311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.786415, 28.687714, 26.509716>,  <43.855064, 28.458382, 26.492559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.786415, 28.687714, 26.509716>,  <43.671997, 29.069933, 26.538311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.786415, 28.687714, 26.509716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267033, 0.151139, -0.951762,
		0.920257, 0.253154, 0.298395,
		0.286041, -0.955547, -0.071486,
		43.872227, 28.401049, 26.488270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.349442, 29.056622, 26.182905>,  <43.671997, 29.069933, 26.538311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.349442, 29.056622, 26.182905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.208584, 28.683994, 26.146732>,  <44.124069, 28.460419, 26.125029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.208584, 28.683994, 26.146732>,  <44.349442, 29.056622, 26.182905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.208584, 28.683994, 26.146732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330007, -0.033167, -0.943396,
		0.875836, -0.362057, 0.319103,
		-0.352146, -0.931566, -0.090432,
		44.102940, 28.404524, 26.119602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.956905, 28.688553, 26.086136>,  <44.349442, 29.056622, 26.182905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.956905, 28.688553, 26.086136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.645725, 28.496067, 25.924532>,  <44.459015, 28.380575, 25.827570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.645725, 28.496067, 25.924532>,  <44.956905, 28.688553, 26.086136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.645725, 28.496067, 25.924532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416546, 0.086396, -0.905000,
		0.470403, -0.872336, 0.133236,
		-0.777952, -0.481213, -0.404009,
		44.412338, 28.351704, 25.803329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.292164, 28.444124, 25.397043>,  <44.956905, 28.688553, 26.086136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.292164, 28.444124, 25.397043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.903030, 28.365995, 25.347338>,  <44.669548, 28.319118, 25.317514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.903030, 28.365995, 25.347338>,  <45.292164, 28.444124, 25.397043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.903030, 28.365995, 25.347338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117674, 0.045021, -0.992031,
		0.199361, -0.979705, -0.020814,
		-0.972835, -0.195323, -0.124261,
		44.611179, 28.307400, 25.310059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.190998, 27.942930, 24.768948>,  <45.292164, 28.444124, 25.397043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.190998, 27.942930, 24.768948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.838154, 28.116190, 24.842983>,  <44.626446, 28.220146, 24.887403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.838154, 28.116190, 24.842983>,  <45.190998, 27.942930, 24.768948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.838154, 28.116190, 24.842983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077478, 0.254161, -0.964054,
		-0.464623, -0.864744, -0.190639,
		-0.882113, 0.433151, 0.185087,
		44.573521, 28.246136, 24.898510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.796665, 27.621056, 24.222023>,  <45.190998, 27.942930, 24.768948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.796665, 27.621056, 24.222023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.587719, 27.937817, 24.348530>,  <44.462349, 28.127872, 24.424435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.587719, 27.937817, 24.348530>,  <44.796665, 27.621056, 24.222023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.587719, 27.937817, 24.348530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275973, 0.193933, -0.941397,
		-0.806828, -0.579037, 0.117239,
		-0.522367, 0.791901, 0.316269,
		44.431007, 28.175386, 24.443411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<43.906269, 27.510584, 23.956051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.999153, 27.885447, 24.060219>,  <44.054882, 28.110363, 24.122719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.999153, 27.885447, 24.060219>,  <43.906269, 27.510584, 23.956051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.999153, 27.885447, 24.060219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489013, 0.343922, -0.801613,
		-0.840800, 0.058794, 0.538144,
		0.232209, 0.937156, 0.260419,
		44.068817, 28.166594, 24.138344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.395409, 27.784504, 23.680586>,  <43.906269, 27.510584, 23.956051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.395409, 27.784504, 23.680586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.644787, 28.086819, 23.760693>,  <43.794415, 28.268208, 23.808758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.644787, 28.086819, 23.760693>,  <43.395409, 27.784504, 23.680586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.644787, 28.086819, 23.760693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282138, 0.456348, -0.843887,
		-0.729190, 0.469611, 0.497742,
		0.623442, 0.755786, 0.200269,
		43.831818, 28.313555, 23.820774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.988983, 28.382315, 23.641155>,  <43.395409, 27.784504, 23.680586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.988983, 28.382315, 23.641155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.375347, 28.465090, 23.578947>,  <43.607166, 28.514755, 23.541622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.375347, 28.465090, 23.578947>,  <42.988983, 28.382315, 23.641155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.375347, 28.465090, 23.578947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234079, 0.441713, -0.866081,
		-0.110530, 0.872964, 0.475097,
		0.965914, 0.206938, -0.155520,
		43.665123, 28.527172, 23.532291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993229, 29.055973, 23.349272>,  <42.988983, 28.382315, 23.641155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.993229, 29.055973, 23.349272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.363155, 28.937799, 23.253414>,  <43.585114, 28.866896, 23.195900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.363155, 28.937799, 23.253414>,  <42.993229, 29.055973, 23.349272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.363155, 28.937799, 23.253414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113610, 0.386717, -0.915174,
		0.363047, 0.873596, 0.324079,
		0.924818, -0.295433, -0.239646,
		43.640602, 28.849169, 23.181520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.434299, 29.666988, 23.175001>,  <42.993229, 29.055973, 23.349272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.434299, 29.666988, 23.175001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.576797, 29.343945, 22.987019>,  <43.662296, 29.150118, 22.874229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.576797, 29.343945, 22.987019>,  <43.434299, 29.666988, 23.175001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.576797, 29.343945, 22.987019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318883, 0.367678, -0.873571,
		0.878295, 0.461067, -0.126549,
		0.356246, -0.807608, -0.469956,
		43.683670, 29.101662, 22.846031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.883041, 29.939875, 22.594339>,  <43.434299, 29.666988, 23.175001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.883041, 29.939875, 22.594339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.770962, 29.565830, 22.507570>,  <43.703712, 29.341404, 22.455509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.770962, 29.565830, 22.507570>,  <43.883041, 29.939875, 22.594339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.770962, 29.565830, 22.507570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230099, 0.284814, -0.930556,
		0.931955, -0.210831, -0.294974,
		-0.280203, -0.935110, -0.216922,
		43.686901, 29.285297, 22.442493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.380749, 29.798365, 22.184813>,  <43.883041, 29.939875, 22.594339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.380749, 29.798365, 22.184813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.059601, 29.566956, 22.127247>,  <43.866913, 29.428110, 22.092707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.059601, 29.566956, 22.127247>,  <44.380749, 29.798365, 22.184813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.059601, 29.566956, 22.127247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075393, 0.140933, -0.987144,
		0.591367, -0.803399, -0.069535,
		-0.802870, -0.578523, -0.143914,
		43.818741, 29.393398, 22.084072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.490555, 29.299122, 21.733849>,  <44.380749, 29.798365, 22.184813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.490555, 29.299122, 21.733849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.096188, 29.260496, 21.679235>,  <43.859566, 29.237320, 21.646467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.096188, 29.260496, 21.679235>,  <44.490555, 29.299122, 21.733849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.096188, 29.260496, 21.679235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128249, 0.087359, -0.987887,
		0.107328, -0.991485, -0.073743,
		-0.985918, -0.096571, -0.136533,
		43.800411, 29.231527, 21.638275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.382858, 28.795828, 21.282942>,  <44.490555, 29.299122, 21.733849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.382858, 28.795828, 21.282942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.053162, 29.021660, 21.265629>,  <43.855343, 29.157160, 21.255241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.053162, 29.021660, 21.265629>,  <44.382858, 28.795828, 21.282942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.053162, 29.021660, 21.265629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022679, -0.043461, -0.998798,
		-0.565782, -0.824234, 0.023019,
		-0.824243, 0.564579, -0.043282,
		43.805889, 29.191034, 21.252644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.906876, 28.378202, 20.827007>,  <44.382858, 28.795828, 21.282942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.906876, 28.378202, 20.827007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.785812, 28.759424, 20.823343>,  <43.713177, 28.988157, 20.821146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.785812, 28.759424, 20.823343>,  <43.906876, 28.378202, 20.827007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.785812, 28.759424, 20.823343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098444, -0.040817, -0.994305,
		-0.948003, -0.300028, 0.106176,
		-0.302653, 0.953057, -0.009159,
		43.695015, 29.045341, 20.820595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.470757, 28.323822, 20.321764>,  <43.906876, 28.378202, 20.827007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.470757, 28.323822, 20.321764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.544090, 28.714525, 20.366175>,  <43.588093, 28.948948, 20.392820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.544090, 28.714525, 20.366175>,  <43.470757, 28.323822, 20.321764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.544090, 28.714525, 20.366175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017174, 0.109741, -0.993812,
		-0.982900, 0.184109, 0.003345,
		0.183337, 0.976760, 0.111026,
		43.599091, 29.007553, 20.399483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.076981, 28.626572, 19.804977>,  <43.470757, 28.323822, 20.321764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.076981, 28.626572, 19.804977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.368874, 28.891472, 19.872988>,  <43.544010, 29.050411, 19.913794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.368874, 28.891472, 19.872988>,  <43.076981, 28.626572, 19.804977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.368874, 28.891472, 19.872988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021870, 0.225938, -0.973896,
		-0.683378, 0.714407, 0.150392,
		0.729737, 0.662250, 0.170026,
		43.587795, 29.090147, 19.923996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.907009, 29.102962, 19.335918>,  <43.076981, 28.626572, 19.804977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.907009, 29.102962, 19.335918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.287189, 29.191019, 19.423712>,  <43.515297, 29.243853, 19.476387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.287189, 29.191019, 19.423712>,  <42.907009, 29.102962, 19.335918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.287189, 29.191019, 19.423712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168054, 0.230111, -0.958544,
		-0.261521, 0.947938, 0.181714,
		0.950455, 0.220142, 0.219483,
		43.572327, 29.257061, 19.489557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.104431, 29.760376, 19.017578>,  <42.907009, 29.102962, 19.335918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.104431, 29.760376, 19.017578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.456032, 29.581587, 19.083998>,  <43.666992, 29.474314, 19.123850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.456032, 29.581587, 19.083998>,  <43.104431, 29.760376, 19.017578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.456032, 29.581587, 19.083998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267013, 0.172895, -0.948057,
		0.395046, 0.877681, 0.271322,
		0.879001, -0.446972, 0.166051,
		43.719730, 29.447495, 19.133814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446217, 30.263336, 18.615875>,  <43.104431, 29.760376, 19.017578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.446217, 30.263336, 18.615875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.693314, 29.957439, 18.689156>,  <43.841572, 29.773901, 18.733124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.693314, 29.957439, 18.689156>,  <43.446217, 30.263336, 18.615875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.693314, 29.957439, 18.689156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394521, 0.099858, -0.913445,
		0.680258, 0.636549, 0.363394,
		0.617740, -0.764744, 0.183203,
		43.878635, 29.728016, 18.744116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.058994, 30.596809, 18.632076>,  <43.446217, 30.263336, 18.615875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.058994, 30.596809, 18.632076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.122078, 30.209084, 18.556652>,  <44.159927, 29.976448, 18.511398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.122078, 30.209084, 18.556652>,  <44.058994, 30.596809, 18.632076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.122078, 30.209084, 18.556652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225664, 0.221273, -0.948743,
		0.961355, 0.107075, 0.253636,
		0.157710, -0.969316, -0.188559,
		44.169392, 29.918289, 18.500084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.660023, 30.620054, 18.160204>,  <44.058994, 30.596809, 18.632076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.660023, 30.620054, 18.160204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.511608, 30.249918, 18.129025>,  <44.422558, 30.027836, 18.110317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.511608, 30.249918, 18.129025>,  <44.660023, 30.620054, 18.160204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.511608, 30.249918, 18.129025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124101, 0.033779, -0.991694,
		0.920289, -0.377628, 0.102302,
		-0.371036, -0.925341, -0.077950,
		44.400299, 29.972315, 18.105639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.074299, 30.224762, 17.708782>,  <44.660023, 30.620054, 18.160204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.074299, 30.224762, 17.708782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.728462, 30.025248, 17.733095>,  <44.520962, 29.905539, 17.747683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.728462, 30.025248, 17.733095>,  <45.074299, 30.224762, 17.708782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.728462, 30.025248, 17.733095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050334, -0.034389, -0.998140,
		0.499950, -0.866042, 0.004627,
		-0.864590, -0.498788, 0.060784,
		44.469086, 29.875610, 17.751329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.122654, 29.727680, 17.250814>,  <45.074299, 30.224762, 17.708782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.122654, 29.727680, 17.250814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.730076, 29.796251, 17.285181>,  <44.494530, 29.837395, 17.305801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.730076, 29.796251, 17.285181>,  <45.122654, 29.727680, 17.250814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.730076, 29.796251, 17.285181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069445, 0.099889, -0.992572,
		-0.178738, -0.980120, -0.086131,
		-0.981443, 0.171429, 0.085918,
		44.435642, 29.847679, 17.310957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.859779, 29.598431, 16.592844>,  <45.122654, 29.727680, 17.250814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.859779, 29.598431, 16.592844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.532249, 29.767035, 16.748720>,  <44.335732, 29.868196, 16.842245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.532249, 29.767035, 16.748720>,  <44.859779, 29.598431, 16.592844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.532249, 29.767035, 16.748720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280253, 0.298918, -0.912199,
		-0.500988, -0.856140, -0.126631,
		-0.818822, 0.421512, 0.389690,
		44.286602, 29.893488, 16.865627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.287498, 29.448135, 16.141607>,  <44.859779, 29.598431, 16.592844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.287498, 29.448135, 16.141607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.163860, 29.769117, 16.345774>,  <44.089676, 29.961706, 16.468273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.163860, 29.769117, 16.345774>,  <44.287498, 29.448135, 16.141607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.163860, 29.769117, 16.345774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469126, 0.338207, -0.815805,
		-0.827273, -0.491612, 0.271914,
		-0.309096, 0.802455, 0.510417,
		44.071133, 30.009853, 16.498899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.491474, 29.515406, 16.044186>,  <44.287498, 29.448135, 16.141607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.491474, 29.515406, 16.044186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.660942, 29.862522, 16.148067>,  <43.762623, 30.070791, 16.210398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.660942, 29.862522, 16.148067>,  <43.491474, 29.515406, 16.044186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.660942, 29.862522, 16.148067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413806, 0.440461, -0.796718,
		-0.805774, 0.230074, 0.545705,
		0.423666, 0.867790, 0.259706,
		43.788040, 30.122860, 16.225979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.955696, 30.025078, 16.123114>,  <43.491474, 29.515406, 16.044186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.955696, 30.025078, 16.123114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.304424, 30.207096, 16.050592>,  <43.513660, 30.316307, 16.007080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.304424, 30.207096, 16.050592>,  <42.955696, 30.025078, 16.123114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.304424, 30.207096, 16.050592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423627, 0.514615, -0.745461,
		-0.245917, 0.726709, 0.641419,
		0.871817, 0.455044, -0.181301,
		43.565968, 30.343609, 15.996202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.521545, 30.134029, 15.455359>,  <42.955696, 30.025078, 16.123114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.521545, 30.134029, 15.455359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.187111, 30.345575, 15.397025>,  <41.986450, 30.472502, 15.362025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.187111, 30.345575, 15.397025>,  <42.521545, 30.134029, 15.455359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.187111, 30.345575, 15.397025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306177, -0.229258, 0.923957,
		0.455214, 0.817156, 0.353605,
		-0.836084, 0.528864, -0.145832,
		41.936287, 30.504234, 15.353275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283157, 30.683264, 15.959711>,  <42.521545, 30.134029, 15.455359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.283157, 30.683264, 15.959711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.950050, 30.542324, 15.788903>,  <41.750187, 30.457760, 15.686419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.950050, 30.542324, 15.788903>,  <42.283157, 30.683264, 15.959711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.950050, 30.542324, 15.788903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450979, -0.015638, 0.892397,
		-0.321114, 0.935738, -0.145880,
		-0.832769, -0.352350, -0.427020,
		41.700218, 30.436619, 15.660797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872616, 30.997030, 16.298342>,  <42.283157, 30.683264, 15.959711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.872616, 30.997030, 16.298342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.634537, 30.725340, 16.126575>,  <41.491692, 30.562326, 16.023516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.634537, 30.725340, 16.126575>,  <41.872616, 30.997030, 16.298342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634537, 30.725340, 16.126575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470723, -0.138395, 0.871359,
		-0.651278, 0.720763, -0.237355,
		-0.595194, -0.679226, -0.429413,
		41.455978, 30.521572, 15.997751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143768, 31.133537, 16.527807>,  <41.872616, 30.997030, 16.298342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143768, 31.133537, 16.527807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.145912, 30.750378, 16.412987>,  <41.147198, 30.520481, 16.344095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.145912, 30.750378, 16.412987>,  <41.143768, 31.133537, 16.527807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145912, 30.750378, 16.412987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433689, -0.260880, 0.862471,
		-0.901047, 0.119865, -0.416830,
		0.005362, -0.957901, -0.287049,
		41.147522, 30.463007, 16.326872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490887, 30.934299, 16.649363>,  <41.143768, 31.133537, 16.527807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490887, 30.934299, 16.649363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.710701, 30.600328, 16.637306>,  <40.842590, 30.399946, 16.630072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.710701, 30.600328, 16.637306>,  <40.490887, 30.934299, 16.649363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710701, 30.600328, 16.637306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383648, -0.284230, 0.878651,
		-0.742176, -0.471286, -0.476512,
		0.549535, -0.834927, -0.030142,
		40.875561, 30.349850, 16.628263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038082, 30.476318, 16.877199>,  <40.490887, 30.934299, 16.649363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038082, 30.476318, 16.877199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.413197, 30.358274, 16.950384>,  <40.638264, 30.287449, 16.994295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.413197, 30.358274, 16.950384>,  <40.038082, 30.476318, 16.877199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413197, 30.358274, 16.950384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252539, -0.218042, 0.942699,
		-0.238306, -0.930251, -0.279003,
		0.937782, -0.295110, 0.182964,
		40.694530, 30.269743, 17.005274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904884, 29.942791, 17.306606>,  <40.038082, 30.476318, 16.877199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904884, 29.942791, 17.306606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.296577, 30.009027, 17.353407>,  <40.531593, 30.048769, 17.381487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.296577, 30.009027, 17.353407>,  <39.904884, 29.942791, 17.306606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296577, 30.009027, 17.353407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100594, -0.104241, 0.989452,
		0.176041, -0.980670, -0.085419,
		0.979229, 0.165592, 0.117000,
		40.590347, 30.058704, 17.388508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167469, 29.356962, 17.749638>,  <39.904884, 29.942791, 17.306606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167469, 29.356962, 17.749638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.412907, 29.668507, 17.801600>,  <40.560169, 29.855433, 17.832777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.412907, 29.668507, 17.801600>,  <40.167469, 29.356962, 17.749638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412907, 29.668507, 17.801600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069810, -0.217380, 0.973588,
		0.786527, -0.588322, -0.187756,
		0.613597, 0.778860, 0.129904,
		40.596985, 29.902164, 17.840570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742699, 29.075190, 18.019102>,  <40.167469, 29.356962, 17.749638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742699, 29.075190, 18.019102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.741817, 29.462242, 18.120047>,  <40.741291, 29.694473, 18.180613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.741817, 29.462242, 18.120047>,  <40.742699, 29.075190, 18.019102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741817, 29.462242, 18.120047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184584, -0.247633, 0.951108,
		0.982814, 0.048673, -0.178065,
		-0.002199, 0.967631, 0.252361,
		40.741158, 29.752531, 18.195755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138737, 28.947407, 18.570883>,  <40.742699, 29.075190, 18.019102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138737, 28.947407, 18.570883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.052544, 29.336382, 18.606510>,  <41.000828, 29.569767, 18.627888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.052544, 29.336382, 18.606510>,  <41.138737, 28.947407, 18.570883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052544, 29.336382, 18.606510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107228, -0.067098, 0.991968,
		0.970602, 0.223306, -0.089814,
		-0.215486, 0.972436, 0.089070,
		40.987896, 29.628113, 18.633230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.659832, 29.218416, 18.941845>,  <41.138737, 28.947407, 18.570883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.659832, 29.218416, 18.941845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.327206, 29.434666, 18.992790>,  <41.127628, 29.564415, 19.023357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.327206, 29.434666, 18.992790>,  <41.659832, 29.218416, 18.941845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327206, 29.434666, 18.992790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088452, -0.097483, 0.991299,
		0.548336, 0.835597, 0.033244,
		-0.831567, 0.540625, 0.127364,
		41.077736, 29.596853, 19.031000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900803, 29.767519, 19.316553>,  <41.659832, 29.218416, 18.941845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900803, 29.767519, 19.316553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.505695, 29.728481, 19.365200>,  <41.268631, 29.705059, 19.394388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.505695, 29.728481, 19.365200>,  <41.900803, 29.767519, 19.316553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505695, 29.728481, 19.365200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115547, 0.065635, 0.991131,
		-0.104713, 0.993059, -0.053555,
		-0.987767, -0.097596, 0.121618,
		41.209366, 29.699202, 19.401686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.805397, 30.178337, 19.908066>,  <41.900803, 29.767519, 19.316553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.805397, 30.178337, 19.908066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.477566, 29.950146, 19.886726>,  <41.280869, 29.813231, 19.873922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.477566, 29.950146, 19.886726>,  <41.805397, 30.178337, 19.908066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.477566, 29.950146, 19.886726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027436, -0.132073, 0.990860,
		-0.572309, 0.810624, 0.123896,
		-0.819579, -0.570478, -0.053347,
		41.231693, 29.779003, 19.870722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354275, 30.408270, 20.441193>,  <41.805397, 30.178337, 19.908066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354275, 30.408270, 20.441193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.229778, 30.037460, 20.357523>,  <41.155079, 29.814974, 20.307322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.229778, 30.037460, 20.357523>,  <41.354275, 30.408270, 20.441193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229778, 30.037460, 20.357523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141334, -0.172505, 0.974816,
		-0.939762, 0.332968, -0.077329,
		-0.311243, -0.927025, -0.209173,
		41.136406, 29.759354, 20.294771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766975, 30.226585, 20.952963>,  <41.354275, 30.408270, 20.441193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766975, 30.226585, 20.952963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.862762, 29.868326, 20.803045>,  <40.920235, 29.653370, 20.713095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.862762, 29.868326, 20.803045>,  <40.766975, 30.226585, 20.952963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.862762, 29.868326, 20.803045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071399, -0.401224, 0.913193,
		-0.968275, -0.191923, -0.160030,
		0.239470, -0.895648, -0.374792,
		40.934605, 29.599632, 20.690607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297096, 29.801687, 21.159746>,  <40.766975, 30.226585, 20.952963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297096, 29.801687, 21.159746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.610268, 29.566751, 21.077711>,  <40.798168, 29.425791, 21.028490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.610268, 29.566751, 21.077711>,  <40.297096, 29.801687, 21.159746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610268, 29.566751, 21.077711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036685, -0.372675, 0.927236,
		-0.621033, -0.718434, -0.313323,
		0.782926, -0.587338, -0.205087,
		40.845146, 29.390551, 21.016186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098717, 29.025595, 21.408607>,  <40.297096, 29.801687, 21.159746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098717, 29.025595, 21.408607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.496758, 29.063932, 21.398951>,  <40.735584, 29.086935, 21.393156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.496758, 29.063932, 21.398951>,  <40.098717, 29.025595, 21.408607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496758, 29.063932, 21.398951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062215, -0.417639, 0.906480,
		0.076798, -0.903544, -0.421557,
		0.995103, 0.095843, -0.024140,
		40.795288, 29.092686, 21.391708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335907, 28.417391, 21.774338>,  <40.098717, 29.025595, 21.408607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335907, 28.417391, 21.774338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.634773, 28.682709, 21.791224>,  <40.814095, 28.841900, 21.801355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.634773, 28.682709, 21.791224>,  <40.335907, 28.417391, 21.774338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634773, 28.682709, 21.791224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189266, -0.273222, 0.943148,
		0.637121, -0.696698, -0.329681,
		0.747165, 0.663297, 0.042214,
		40.858921, 28.881699, 21.803888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817413, 28.084660, 22.239372>,  <40.335907, 28.417391, 21.774338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817413, 28.084660, 22.239372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.939793, 28.465246, 22.226099>,  <41.013222, 28.693598, 22.218134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.939793, 28.465246, 22.226099>,  <40.817413, 28.084660, 22.239372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939793, 28.465246, 22.226099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287207, -0.059009, 0.956049,
		0.907693, -0.302036, -0.291322,
		0.305952, 0.951469, -0.033185,
		41.031578, 28.750687, 22.216143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468456, 28.087019, 22.591438>,  <40.817413, 28.084660, 22.239372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468456, 28.087019, 22.591438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.348866, 28.468166, 22.570824>,  <41.277111, 28.696856, 22.558455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.348866, 28.468166, 22.570824>,  <41.468456, 28.087019, 22.591438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348866, 28.468166, 22.570824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177685, 0.108652, 0.978071,
		0.937573, 0.283259, -0.201795,
		-0.298972, 0.952869, -0.051538,
		41.259174, 28.754026, 22.555363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.886703, 28.386673, 22.983032>,  <41.468456, 28.087019, 22.591438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.886703, 28.386673, 22.983032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.575676, 28.638159, 22.978874>,  <41.389061, 28.789049, 22.976379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.575676, 28.638159, 22.978874>,  <41.886703, 28.386673, 22.983032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575676, 28.638159, 22.978874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113026, 0.156014, 0.981267,
		0.618558, 0.761827, -0.192372,
		-0.777568, 0.628713, -0.010397,
		41.342407, 28.826773, 22.975756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.588589, 27.509619, 27.056898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.265324, 27.729692, 26.972824>,  <44.071365, 27.861736, 26.922380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.265324, 27.729692, 26.972824>,  <44.588589, 27.509619, 27.056898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.265324, 27.729692, 26.972824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171640, 0.121369, 0.977655,
		0.563400, 0.826176, -0.003652,
		-0.808158, 0.550184, -0.210184,
		44.022877, 27.894749, 26.909769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.570869, 28.026604, 27.538105>,  <44.588589, 27.509619, 27.056898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.570869, 28.026604, 27.538105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.190830, 28.028679, 27.413345>,  <43.962807, 28.029924, 27.338490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.190830, 28.028679, 27.413345>,  <44.570869, 28.026604, 27.538105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.190830, 28.028679, 27.413345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310552, 0.078569, 0.947304,
		0.029420, 0.996895, -0.073037,
		-0.950101, 0.005188, -0.311899,
		43.905800, 28.030235, 27.319777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.246452, 28.425442, 28.015310>,  <44.570869, 28.026604, 27.538105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.246452, 28.425442, 28.015310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.946445, 28.236744, 27.829865>,  <43.766441, 28.123526, 27.718597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.946445, 28.236744, 27.829865>,  <44.246452, 28.425442, 28.015310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.946445, 28.236744, 27.829865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530627, 0.010696, 0.847538,
		-0.394863, 0.881671, -0.258342,
		-0.750013, -0.471744, -0.463614,
		43.721443, 28.095221, 27.690781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.653122, 28.825495, 28.109358>,  <44.246452, 28.425442, 28.015310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.653122, 28.825495, 28.109358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.519798, 28.454956, 28.039171>,  <43.439804, 28.232634, 27.997059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.519798, 28.454956, 28.039171>,  <43.653122, 28.825495, 28.109358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.519798, 28.454956, 28.039171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437325, -0.012970, 0.899210,
		-0.835254, 0.376454, -0.400791,
		-0.333313, -0.926344, -0.175466,
		43.419804, 28.177053, 27.986532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.932373, 28.877878, 28.128490>,  <43.653122, 28.825495, 28.109358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.932373, 28.877878, 28.128490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.040009, 28.496384, 28.182127>,  <43.104588, 28.267487, 28.214308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.040009, 28.496384, 28.182127>,  <42.932373, 28.877878, 28.128490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.040009, 28.496384, 28.182127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403789, 0.014682, 0.914734,
		-0.874384, -0.300285, -0.381158,
		0.269085, -0.953737, 0.134090,
		43.120735, 28.210262, 28.222355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.294392, 28.525082, 28.513233>,  <42.932373, 28.877878, 28.128490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.294392, 28.525082, 28.513233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.630062, 28.309805, 28.544552>,  <42.831467, 28.180639, 28.563343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.630062, 28.309805, 28.544552>,  <42.294392, 28.525082, 28.513233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.630062, 28.309805, 28.544552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187276, -0.150798, 0.970664,
		-0.510595, -0.829223, -0.227336,
		0.839178, -0.538191, 0.078297,
		42.881817, 28.148348, 28.568041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041527, 28.070063, 28.994999>,  <42.294392, 28.525082, 28.513233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041527, 28.070063, 28.994999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.436729, 28.010368, 28.979174>,  <42.673851, 27.974552, 28.969679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.436729, 28.010368, 28.979174>,  <42.041527, 28.070063, 28.994999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436729, 28.010368, 28.979174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028580, -0.075028, 0.996772,
		-0.151724, -0.985951, -0.069863,
		0.988009, -0.149237, -0.039562,
		42.733131, 27.965597, 28.967306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153591, 27.442476, 29.366480>,  <42.041527, 28.070063, 28.994999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153591, 27.442476, 29.366480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.501862, 27.639036, 29.357925>,  <42.710823, 27.756971, 29.352793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.501862, 27.639036, 29.357925>,  <42.153591, 27.442476, 29.366480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.501862, 27.639036, 29.357925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018672, 0.076466, 0.996897,
		0.491509, -0.867571, 0.075752,
		0.870672, 0.491399, -0.021385,
		42.763062, 27.786455, 29.351509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618885, 27.090792, 29.896168>,  <42.153591, 27.442476, 29.366480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618885, 27.090792, 29.896168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.767395, 27.456293, 29.830189>,  <42.856499, 27.675594, 29.790602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.767395, 27.456293, 29.830189>,  <42.618885, 27.090792, 29.896168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.767395, 27.456293, 29.830189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139236, 0.120849, 0.982857,
		0.918025, -0.387874, -0.082360,
		0.371272, 0.913755, -0.164949,
		42.878777, 27.730419, 29.780704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.235867, 27.134798, 30.242016>,  <42.618885, 27.090792, 29.896168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.235867, 27.134798, 30.242016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.109203, 27.512341, 30.204357>,  <43.033207, 27.738867, 30.181763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.109203, 27.512341, 30.204357>,  <43.235867, 27.134798, 30.242016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.109203, 27.512341, 30.204357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132004, 0.142137, 0.981005,
		0.939311, 0.298212, -0.169602,
		-0.316654, 0.943857, -0.094146,
		43.014206, 27.795498, 30.176113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.577923, 27.357622, 30.658924>,  <43.235867, 27.134798, 30.242016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.577923, 27.357622, 30.658924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.308399, 27.649069, 30.609770>,  <43.146687, 27.823936, 30.580276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.308399, 27.649069, 30.609770>,  <43.577923, 27.357622, 30.658924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308399, 27.649069, 30.609770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097438, 0.252470, 0.962686,
		0.732456, 0.636690, -0.241111,
		-0.673806, 0.728619, -0.122886,
		43.106258, 27.867655, 30.572905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.796444, 27.839521, 31.109678>,  <43.577923, 27.357622, 30.658924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.796444, 27.839521, 31.109678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.414787, 27.946064, 31.055033>,  <43.185791, 28.009989, 31.022245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.414787, 27.946064, 31.055033>,  <43.796444, 27.839521, 31.109678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.414787, 27.946064, 31.055033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047663, 0.315371, 0.947771,
		0.295527, 0.910822, -0.288214,
		-0.954145, 0.266354, -0.136613,
		43.128544, 28.025970, 31.014050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.709503, 28.578140, 31.438305>,  <43.796444, 27.839521, 31.109678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.709503, 28.578140, 31.438305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.347939, 28.418411, 31.377007>,  <43.131001, 28.322575, 31.340227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.347939, 28.418411, 31.377007>,  <43.709503, 28.578140, 31.438305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347939, 28.418411, 31.377007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259810, 0.227999, 0.938358,
		-0.339766, 0.888009, -0.309838,
		-0.903913, -0.399321, -0.153247,
		43.076763, 28.298615, 31.331032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586182, 28.627762, 32.168961>,  <43.709503, 28.578140, 31.438305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.586182, 28.627762, 32.168961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.439838, 28.914444, 32.406441>,  <43.352032, 29.086452, 32.548931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.439838, 28.914444, 32.406441>,  <43.586182, 28.627762, 32.168961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.439838, 28.914444, 32.406441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333948, 0.494349, -0.802557,
		-0.868692, -0.491889, 0.058479,
		-0.365860, 0.716704, 0.593702,
		43.330082, 29.129456, 32.584553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.835201, 28.807270, 31.906200>,  <43.586182, 28.627762, 32.168961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.835201, 28.807270, 31.906200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.938076, 29.114658, 32.140572>,  <42.999802, 29.299091, 32.281193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.938076, 29.114658, 32.140572>,  <42.835201, 28.807270, 31.906200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.938076, 29.114658, 32.140572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394090, 0.637019, -0.662495,
		-0.882353, -0.060521, 0.466680,
		0.257189, 0.768469, 0.585927,
		43.015232, 29.345200, 32.316349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.241600, 29.121181, 32.135944>,  <42.835201, 28.807270, 31.906200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.241600, 29.121181, 32.135944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.540371, 29.387136, 32.137806>,  <42.719635, 29.546709, 32.138924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.540371, 29.387136, 32.137806>,  <42.241600, 29.121181, 32.135944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540371, 29.387136, 32.137806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444588, 0.504627, -0.740063,
		-0.494409, 0.550704, 0.672522,
		0.746928, 0.664889, 0.004655,
		42.764450, 29.586603, 32.139202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939526, 29.745001, 32.028484>,  <42.241600, 29.121181, 32.135944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939526, 29.745001, 32.028484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.320698, 29.813627, 31.928495>,  <42.549400, 29.854803, 31.868502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.320698, 29.813627, 31.928495>,  <41.939526, 29.745001, 32.028484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.320698, 29.813627, 31.928495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303173, 0.546519, -0.780643,
		0.002683, 0.819684, 0.572810,
		0.952932, 0.171566, -0.249972,
		42.606579, 29.865097, 31.853504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052910, 30.526665, 31.929535>,  <41.939526, 29.745001, 32.028484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052910, 30.526665, 31.929535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.374088, 30.363188, 31.755983>,  <42.566795, 30.265102, 31.651854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.374088, 30.363188, 31.755983>,  <42.052910, 30.526665, 31.929535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374088, 30.363188, 31.755983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153735, 0.561291, -0.813214,
		0.575884, 0.719670, 0.387857,
		0.802946, -0.408690, -0.433877,
		42.614971, 30.240582, 31.625820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.539402, 31.108749, 31.734650>,  <42.052910, 30.526665, 31.929535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.539402, 31.108749, 31.734650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.626328, 30.797487, 31.498940>,  <42.678482, 30.610729, 31.357513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.626328, 30.797487, 31.498940>,  <42.539402, 31.108749, 31.734650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.626328, 30.797487, 31.498940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017297, 0.600538, -0.799409,
		0.975949, 0.183915, 0.117045,
		0.217313, -0.778158, -0.589276,
		42.691521, 30.564039, 31.322157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.864857, 31.422886, 31.262762>,  <42.539402, 31.108749, 31.734650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.864857, 31.422886, 31.262762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.790565, 31.068487, 31.092813>,  <42.745991, 30.855848, 30.990845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.790565, 31.068487, 31.092813>,  <42.864857, 31.422886, 31.262762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.790565, 31.068487, 31.092813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082413, 0.444915, -0.891773,
		0.979139, -0.130612, -0.155651,
		-0.185728, -0.885997, -0.424869,
		42.734848, 30.802689, 30.965353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.248436, 31.387842, 30.707727>,  <42.864857, 31.422886, 31.262762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.248436, 31.387842, 30.707727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.960495, 31.123892, 30.621590>,  <42.787731, 30.965523, 30.569906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.960495, 31.123892, 30.621590>,  <43.248436, 31.387842, 30.707727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.960495, 31.123892, 30.621590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111681, 0.416305, -0.902340,
		0.685081, -0.625504, -0.373375,
		-0.719856, -0.659874, -0.215346,
		42.744537, 30.925930, 30.556986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.469101, 31.151741, 29.983280>,  <43.248436, 31.387842, 30.707727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.469101, 31.151741, 29.983280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.083855, 31.047043, 30.008228>,  <42.852707, 30.984224, 30.023197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.083855, 31.047043, 30.008228>,  <43.469101, 31.151741, 29.983280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.083855, 31.047043, 30.008228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137816, 0.280782, -0.949825,
		0.231098, -0.923391, -0.306499,
		-0.963120, -0.261744, 0.062370,
		42.794918, 30.968519, 30.026939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.332199, 30.749166, 29.325815>,  <43.469101, 31.151741, 29.983280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.332199, 30.749166, 29.325815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.980412, 30.865334, 29.476650>,  <42.769341, 30.935034, 29.567152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.980412, 30.865334, 29.476650>,  <43.332199, 30.749166, 29.325815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.980412, 30.865334, 29.476650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368993, 0.084406, -0.925592,
		-0.300639, -0.953169, 0.032931,
		-0.879466, 0.290420, 0.377089,
		42.716572, 30.952459, 29.589777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.827503, 30.406216, 28.972481>,  <43.332199, 30.749166, 29.325815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.827503, 30.406216, 28.972481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.623871, 30.726515, 29.098745>,  <42.501694, 30.918694, 29.174503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.623871, 30.726515, 29.098745>,  <42.827503, 30.406216, 28.972481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623871, 30.726515, 29.098745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309111, 0.172186, -0.935309,
		-0.803299, -0.573720, 0.159864,
		-0.509079, 0.800748, 0.315660,
		42.471146, 30.966740, 29.193443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039436, 30.336615, 28.659428>,  <42.827503, 30.406216, 28.972481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039436, 30.336615, 28.659428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.030010, 30.713219, 28.793892>,  <42.024353, 30.939180, 28.874571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.030010, 30.713219, 28.793892>,  <42.039436, 30.336615, 28.659428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.030010, 30.713219, 28.793892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387700, 0.301333, -0.871142,
		-0.921485, -0.150859, 0.357922,
		-0.023566, 0.941510, 0.336161,
		42.022942, 30.995672, 28.894741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291531, 30.641882, 28.535635>,  <42.039436, 30.336615, 28.659428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291531, 30.641882, 28.535635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.557632, 30.939857, 28.555626>,  <41.717293, 31.118643, 28.567621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.557632, 30.939857, 28.555626>,  <41.291531, 30.641882, 28.535635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557632, 30.939857, 28.555626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397897, 0.410383, -0.820526,
		-0.631754, 0.525974, 0.569420,
		0.665256, 0.744941, 0.049978,
		41.757210, 31.163340, 28.570620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937729, 31.159485, 28.200024>,  <41.291531, 30.641882, 28.535635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937729, 31.159485, 28.200024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.320435, 31.272791, 28.173573>,  <41.550056, 31.340775, 28.157701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.320435, 31.272791, 28.173573>,  <40.937729, 31.159485, 28.200024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.320435, 31.272791, 28.173573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177550, 0.388633, -0.904124,
		-0.230406, 0.876770, 0.422122,
		0.956760, 0.283263, -0.066127,
		41.607464, 31.357769, 28.153734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933678, 31.904696, 27.894886>,  <40.937729, 31.159485, 28.200024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933678, 31.904696, 27.894886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.298004, 31.755070, 27.825035>,  <41.516598, 31.665295, 27.783125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.298004, 31.755070, 27.825035>,  <40.933678, 31.904696, 27.894886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298004, 31.755070, 27.825035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039156, 0.342827, -0.938582,
		0.410956, 0.861711, 0.297605,
		0.910814, -0.374063, -0.174628,
		41.571247, 31.642851, 27.772646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913837, 32.660583, 27.852732>,  <40.933678, 31.904696, 27.894886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913837, 32.660583, 27.852732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.519390, 32.723587, 27.873728>,  <40.282722, 32.761387, 27.886326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.519390, 32.723587, 27.873728>,  <40.913837, 32.660583, 27.852732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519390, 32.723587, 27.873728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032966, -0.124106, 0.991721,
		0.162717, 0.979688, 0.117191,
		-0.986122, 0.157506, 0.052490,
		40.223553, 32.770840, 27.889475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768318, 33.230907, 28.402357>,  <40.913837, 32.660583, 27.852732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768318, 33.230907, 28.402357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.412193, 33.052307, 28.366602>,  <40.198521, 32.945148, 28.345148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.412193, 33.052307, 28.366602>,  <40.768318, 33.230907, 28.402357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412193, 33.052307, 28.366602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145603, 0.093143, 0.984949,
		-0.431450, 0.889924, -0.147937,
		-0.890309, -0.446496, -0.089389,
		40.145100, 32.918358, 28.339785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327469, 33.574745, 28.949242>,  <40.768318, 33.230907, 28.402357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327469, 33.574745, 28.949242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.128422, 33.242393, 28.849632>,  <40.008995, 33.042980, 28.789865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.128422, 33.242393, 28.849632>,  <40.327469, 33.574745, 28.949242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128422, 33.242393, 28.849632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432917, -0.010877, 0.901368,
		-0.751640, 0.556341, -0.354290,
		-0.497615, -0.830882, -0.249025,
		39.979137, 32.993130, 28.774925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590424, 33.632992, 29.162674>,  <40.327469, 33.574745, 28.949242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590424, 33.632992, 29.162674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.657845, 33.242229, 29.110138>,  <39.698299, 33.007774, 29.078615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.657845, 33.242229, 29.110138>,  <39.590424, 33.632992, 29.162674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657845, 33.242229, 29.110138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398629, -0.189423, 0.897337,
		-0.901490, -0.098895, -0.421350,
		0.168555, -0.976903, -0.131341,
		39.708412, 32.949158, 29.070736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001762, 33.277939, 29.402798>,  <39.590424, 33.632992, 29.162674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001762, 33.277939, 29.402798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.273861, 32.985531, 29.424265>,  <39.437119, 32.810085, 29.437145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.273861, 32.985531, 29.424265>,  <39.001762, 33.277939, 29.402798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273861, 32.985531, 29.424265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413456, -0.322223, 0.851602,
		-0.605243, -0.601487, -0.521435,
		0.680246, -0.731016, 0.053665,
		39.477936, 32.766228, 29.440365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571537, 32.684830, 29.464891>,  <39.001762, 33.277939, 29.402798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571537, 32.684830, 29.464891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.936501, 32.571701, 29.583225>,  <39.155479, 32.503822, 29.654224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.936501, 32.571701, 29.583225>,  <38.571537, 32.684830, 29.464891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936501, 32.571701, 29.583225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407603, -0.562672, 0.719207,
		-0.036950, -0.776796, -0.628668,
		0.912411, -0.282822, 0.295834,
		39.210224, 32.486855, 29.671976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486748, 31.997364, 29.509768>,  <38.571537, 32.684830, 29.464891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486748, 31.997364, 29.509768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.789768, 32.118637, 29.741007>,  <38.971581, 32.191402, 29.879751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.789768, 32.118637, 29.741007>,  <38.486748, 31.997364, 29.509768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789768, 32.118637, 29.741007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435750, -0.424530, 0.793660,
		0.486045, -0.853143, -0.189490,
		0.757550, 0.303184, 0.578098,
		39.017033, 32.209591, 29.914436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554573, 31.472429, 29.963882>,  <38.486748, 31.997364, 29.509768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554573, 31.472429, 29.963882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.728077, 31.787098, 30.139610>,  <38.832180, 31.975899, 30.245047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.728077, 31.787098, 30.139610>,  <38.554573, 31.472429, 29.963882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728077, 31.787098, 30.139610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405900, -0.264700, 0.874745,
		0.804424, -0.557749, 0.204493,
		0.433759, 0.786670, 0.439321,
		38.858204, 32.023098, 30.271406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749535, 31.183752, 30.507023>,  <38.554573, 31.472429, 29.963882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749535, 31.183752, 30.507023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.751354, 31.575375, 30.588440>,  <38.752445, 31.810349, 30.637291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.751354, 31.575375, 30.588440>,  <38.749535, 31.183752, 30.507023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751354, 31.575375, 30.588440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350745, -0.189052, 0.917190,
		0.936460, -0.075569, 0.342538,
		0.004554, 0.979055, 0.203545,
		38.752720, 31.869091, 30.649504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033176, 31.225948, 31.162144>,  <38.749535, 31.183752, 30.507023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033176, 31.225948, 31.162144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.839695, 31.574604, 31.130457>,  <38.723606, 31.783798, 31.111444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.839695, 31.574604, 31.130457>,  <39.033176, 31.225948, 31.162144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839695, 31.574604, 31.130457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343422, -0.105764, 0.933207,
		0.805043, 0.478599, 0.350499,
		-0.483702, 0.871640, -0.079217,
		38.694584, 31.836096, 31.106691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061199, 31.433796, 31.764103>,  <39.033176, 31.225948, 31.162144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061199, 31.433796, 31.764103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.758041, 31.654072, 31.624193>,  <38.576149, 31.786238, 31.540247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.758041, 31.654072, 31.624193>,  <39.061199, 31.433796, 31.764103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758041, 31.654072, 31.624193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490063, -0.126674, 0.862434,
		0.430628, 0.825041, 0.365878,
		-0.757891, 0.550691, -0.349773,
		38.530674, 31.819279, 31.519262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938957, 31.997164, 32.236732>,  <39.061199, 31.433796, 31.764103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938957, 31.997164, 32.236732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.600792, 31.915171, 32.039444>,  <38.397892, 31.865974, 31.921072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.600792, 31.915171, 32.039444>,  <38.938957, 31.997164, 32.236732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600792, 31.915171, 32.039444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474896, -0.134153, 0.869757,
		-0.244450, 0.969529, 0.016069,
		-0.845410, -0.204981, -0.493219,
		38.347168, 31.853676, 31.891478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.911663, 34.928486, 25.065992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607498, 34.737450, 24.889952>,  <40.424999, 34.622829, 24.784328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607498, 34.737450, 24.889952>,  <40.911663, 34.928486, 25.065992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607498, 34.737450, 24.889952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348074, -0.272407, 0.897017,
		-0.548292, 0.835286, 0.040904,
		-0.760408, -0.477589, -0.440100,
		40.379375, 34.594173, 24.757921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304138, 35.209095, 25.299465>,  <40.911663, 34.928486, 25.065992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304138, 35.209095, 25.299465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212379, 34.834087, 25.194822>,  <40.157326, 34.609085, 25.132036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212379, 34.834087, 25.194822>,  <40.304138, 35.209095, 25.299465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212379, 34.834087, 25.194822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284580, -0.192430, 0.939141,
		-0.930802, 0.289882, -0.222656,
		-0.229394, -0.937518, -0.261609,
		40.143562, 34.552834, 25.116339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845146, 35.064346, 25.816010>,  <40.304138, 35.209095, 25.299465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845146, 35.064346, 25.816010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950062, 34.711460, 25.659603>,  <40.013012, 34.499729, 25.565760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950062, 34.711460, 25.659603>,  <39.845146, 35.064346, 25.816010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950062, 34.711460, 25.659603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124703, -0.432792, 0.892827,
		-0.956898, -0.185418, -0.223532,
		0.262289, -0.882219, -0.391016,
		40.028748, 34.446793, 25.542299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434895, 34.643108, 26.134636>,  <39.845146, 35.064346, 25.816010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434895, 34.643108, 26.134636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684948, 34.363876, 25.994989>,  <39.834980, 34.196335, 25.911201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684948, 34.363876, 25.994989>,  <39.434895, 34.643108, 26.134636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684948, 34.363876, 25.994989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293617, -0.624768, 0.723501,
		-0.723182, -0.349780, -0.595534,
		0.625137, -0.698083, -0.349119,
		39.872490, 34.154453, 25.890253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010906, 34.040085, 26.188673>,  <39.434895, 34.643108, 26.134636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010906, 34.040085, 26.188673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387253, 33.907799, 26.159290>,  <39.613060, 33.828426, 26.141661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387253, 33.907799, 26.159290>,  <39.010906, 34.040085, 26.188673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387253, 33.907799, 26.159290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157169, -0.618202, 0.770145,
		-0.300105, -0.713061, -0.633625,
		0.940869, -0.330710, -0.073455,
		39.669514, 33.808586, 26.137255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000896, 33.237480, 26.269344>,  <39.010906, 34.040085, 26.188673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000896, 33.237480, 26.269344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374901, 33.353596, 26.350819>,  <39.599304, 33.423267, 26.399704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374901, 33.353596, 26.350819>,  <39.000896, 33.237480, 26.269344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374901, 33.353596, 26.350819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013684, -0.603482, 0.797259,
		0.354360, -0.742657, -0.568233,
		0.935009, 0.290293, 0.203688,
		39.655403, 33.440685, 26.411924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375511, 32.601173, 26.354969>,  <39.000896, 33.237480, 26.269344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375511, 32.601173, 26.354969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563221, 32.899021, 26.544838>,  <39.675846, 33.077732, 26.658760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563221, 32.899021, 26.544838>,  <39.375511, 32.601173, 26.354969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563221, 32.899021, 26.544838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079047, -0.570803, 0.817273,
		0.879506, -0.346005, -0.326724,
		0.469276, 0.744623, 0.474674,
		39.704002, 33.122410, 26.687241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881096, 32.264294, 26.782850>,  <39.375511, 32.601173, 26.354969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881096, 32.264294, 26.782850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880146, 32.624958, 26.955828>,  <39.879574, 32.841354, 27.059614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880146, 32.624958, 26.955828>,  <39.881096, 32.264294, 26.782850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880146, 32.624958, 26.955828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072228, -0.431162, 0.899379,
		0.997385, 0.033373, -0.064100,
		-0.002378, 0.901657, 0.432445,
		39.879433, 32.895454, 27.085562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588173, 32.369392, 27.064943>,  <39.881096, 32.264294, 26.782850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588173, 32.369392, 27.064943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302891, 32.576851, 27.253557>,  <40.131721, 32.701324, 27.366726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302891, 32.576851, 27.253557>,  <40.588173, 32.369392, 27.064943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302891, 32.576851, 27.253557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215188, -0.478216, 0.851471,
		0.667106, 0.708743, 0.229460,
		-0.713206, 0.518645, 0.471534,
		40.088928, 32.732445, 27.395018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239643, 32.448116, 27.236696>,  <40.588173, 32.369392, 27.064943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.239643, 32.448116, 27.236696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500195, 32.147160, 27.275909>,  <41.656525, 31.966585, 27.299437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500195, 32.147160, 27.275909>,  <41.239643, 32.448116, 27.236696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500195, 32.147160, 27.275909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292159, 0.129471, -0.947565,
		0.700250, 0.645864, 0.304153,
		0.651377, -0.752394, 0.098033,
		41.695606, 31.921442, 27.305319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902481, 32.627659, 26.918459>,  <41.239643, 32.448116, 27.236696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902481, 32.627659, 26.918459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.890575, 32.228035, 26.905851>,  <41.883430, 31.988260, 26.898287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.890575, 32.228035, 26.905851>,  <41.902481, 32.627659, 26.918459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890575, 32.228035, 26.905851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150032, 0.026711, -0.988320,
		0.988233, -0.034148, 0.149095,
		-0.029767, -0.999060, -0.031520,
		41.881645, 31.928316, 26.896395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550049, 32.403805, 26.476562>,  <41.902481, 32.627659, 26.918459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.550049, 32.403805, 26.476562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.259586, 32.129017, 26.487705>,  <42.085308, 31.964144, 26.494390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.259586, 32.129017, 26.487705>,  <42.550049, 32.403805, 26.476562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259586, 32.129017, 26.487705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053222, -0.096560, -0.993903,
		0.685472, -0.720242, 0.106680,
		-0.726152, -0.686970, 0.027857,
		42.041740, 31.922926, 26.496061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.752735, 31.907200, 26.014475>,  <42.550049, 32.403805, 26.476562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.752735, 31.907200, 26.014475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.373878, 31.780945, 26.037426>,  <42.146564, 31.705193, 26.051197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.373878, 31.780945, 26.037426>,  <42.752735, 31.907200, 26.014475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.373878, 31.780945, 26.037426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050364, -0.030334, -0.998270,
		0.316832, -0.948395, 0.012834,
		-0.947143, -0.315638, 0.057376,
		42.089737, 31.686255, 26.054638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.706287, 31.398781, 25.606224>,  <42.752735, 31.907200, 26.014475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.706287, 31.398781, 25.606224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320221, 31.501654, 25.625448>,  <42.088581, 31.563377, 25.636982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320221, 31.501654, 25.625448>,  <42.706287, 31.398781, 25.606224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.320221, 31.501654, 25.625448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062109, -0.046783, -0.996972,
		-0.254155, -0.965230, 0.061127,
		-0.965167, 0.257183, 0.048059,
		42.030670, 31.578808, 25.639866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.424614, 30.922825, 25.113773>,  <42.706287, 31.398781, 25.606224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.424614, 30.922825, 25.113773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.173862, 31.225506, 25.187986>,  <42.023411, 31.407114, 25.232513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.173862, 31.225506, 25.187986>,  <42.424614, 30.922825, 25.113773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173862, 31.225506, 25.187986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134703, 0.129279, -0.982416,
		-0.767381, -0.640852, 0.020887,
		-0.626883, 0.756701, 0.185531,
		41.985798, 31.452517, 25.243647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887959, 30.933247, 24.674248>,  <42.424614, 30.922825, 25.113773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.887959, 30.933247, 24.674248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855179, 31.313557, 24.793787>,  <41.835510, 31.541742, 24.865511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855179, 31.313557, 24.793787>,  <41.887959, 30.933247, 24.674248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855179, 31.313557, 24.793787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067231, 0.304450, -0.950153,
		-0.994367, -0.057771, -0.088871,
		-0.081948, 0.950775, 0.298851,
		41.830593, 31.598789, 24.883442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484318, 31.216974, 24.189802>,  <41.887959, 30.933247, 24.674248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484318, 31.216974, 24.189802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611046, 31.548899, 24.373558>,  <41.687084, 31.748053, 24.483812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611046, 31.548899, 24.373558>,  <41.484318, 31.216974, 24.189802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611046, 31.548899, 24.373558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037002, 0.494785, -0.868227,
		-0.947763, 0.258075, 0.187463,
		0.316821, 0.829810, 0.459390,
		41.706093, 31.797842, 24.511375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019955, 31.831535, 24.159483>,  <41.484318, 31.216974, 24.189802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019955, 31.831535, 24.159483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397633, 31.957598, 24.197807>,  <41.624237, 32.033234, 24.220802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397633, 31.957598, 24.197807>,  <41.019955, 31.831535, 24.159483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397633, 31.957598, 24.197807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031160, 0.375017, -0.926494,
		-0.327922, 0.871802, 0.363907,
		0.944191, 0.315157, 0.095811,
		41.680889, 32.052143, 24.226551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119766, 32.541645, 23.846077>,  <41.019955, 31.831535, 24.159483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.119766, 32.541645, 23.846077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492828, 32.398922, 23.867409>,  <41.716663, 32.313286, 23.880207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492828, 32.398922, 23.867409>,  <41.119766, 32.541645, 23.846077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.492828, 32.398922, 23.867409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141201, 0.224991, -0.964075,
		0.331993, 0.906678, 0.260221,
		0.932654, -0.356810, 0.053329,
		41.772625, 32.291878, 23.883408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560696, 32.950962, 23.434519>,  <41.119766, 32.541645, 23.846077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560696, 32.950962, 23.434519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785801, 32.620571, 23.447573>,  <41.920864, 32.422337, 23.455404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785801, 32.620571, 23.447573>,  <41.560696, 32.950962, 23.434519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785801, 32.620571, 23.447573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120182, 0.042695, -0.991833,
		0.817834, 0.562090, 0.123294,
		0.562764, -0.825973, 0.032635,
		41.954632, 32.372780, 23.457363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.123714, 33.187668, 23.077429>,  <41.560696, 32.950962, 23.434519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.123714, 33.187668, 23.077429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102829, 32.788261, 23.071154>,  <42.090298, 32.548618, 23.067389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102829, 32.788261, 23.071154>,  <42.123714, 33.187668, 23.077429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.102829, 32.788261, 23.071154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242637, 0.002555, -0.970114,
		0.968711, -0.054456, 0.242143,
		-0.052209, -0.998513, -0.015688,
		42.087166, 32.488708, 23.066446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792789, 32.965031, 22.805059>,  <42.123714, 33.187668, 23.077429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792789, 32.965031, 22.805059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573414, 32.634735, 22.752338>,  <42.441788, 32.436558, 22.720707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573414, 32.634735, 22.752338>,  <42.792789, 32.965031, 22.805059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573414, 32.634735, 22.752338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135904, 0.067503, -0.988420,
		0.825071, -0.560002, 0.075199,
		-0.548441, -0.825737, -0.131801,
		42.408882, 32.387012, 22.712797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.220966, 32.352043, 22.524805>,  <42.792789, 32.965031, 22.805059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.220966, 32.352043, 22.524805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.842308, 32.277340, 22.419750>,  <42.615112, 32.232517, 22.356718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.842308, 32.277340, 22.419750>,  <43.220966, 32.352043, 22.524805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.842308, 32.277340, 22.419750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272154, -0.026827, -0.961880,
		0.172592, -0.982040, 0.076222,
		-0.946649, -0.186757, -0.262636,
		42.558311, 32.221313, 22.340960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.777328, 29.132416, 21.191330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.972168, 29.463108, 21.303932>,  <38.089073, 29.661524, 21.371494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.972168, 29.463108, 21.303932>,  <37.777328, 29.132416, 21.191330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972168, 29.463108, 21.303932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120007, -0.382634, 0.916073,
		0.865061, -0.412438, -0.285596,
		0.487102, 0.826732, 0.281506,
		38.118298, 29.711128, 21.388384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389694, 28.923065, 21.623266>,  <37.777328, 29.132416, 21.191330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389694, 28.923065, 21.623266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.340786, 29.308510, 21.718349>,  <38.311440, 29.539776, 21.775400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.340786, 29.308510, 21.718349>,  <38.389694, 28.923065, 21.623266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340786, 29.308510, 21.718349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228786, -0.205690, 0.951498,
		0.965767, 0.170729, -0.195310,
		-0.122275, 0.963609, 0.237709,
		38.304104, 29.597593, 21.789661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987671, 29.058619, 22.131506>,  <38.389694, 28.923065, 21.623266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987671, 29.058619, 22.131506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.710335, 29.343506, 22.175371>,  <38.543934, 29.514439, 22.201691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.710335, 29.343506, 22.175371>,  <38.987671, 29.058619, 22.131506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710335, 29.343506, 22.175371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113469, -0.042378, 0.992637,
		0.711621, 0.700678, -0.051432,
		-0.693340, 0.712218, 0.109663,
		38.502335, 29.557171, 22.208269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331837, 29.467892, 22.582083>,  <38.987671, 29.058619, 22.131506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331837, 29.467892, 22.582083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.939575, 29.545330, 22.593624>,  <38.704216, 29.591793, 22.600550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.939575, 29.545330, 22.593624>,  <39.331837, 29.467892, 22.582083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939575, 29.545330, 22.593624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052175, 0.116462, 0.991824,
		0.188652, 0.974144, -0.124311,
		-0.980657, 0.193595, 0.028855,
		38.645378, 29.603409, 22.602282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184822, 30.053631, 23.062740>,  <39.331837, 29.467892, 22.582083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184822, 30.053631, 23.062740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.845425, 29.844807, 23.028084>,  <38.641785, 29.719511, 23.007290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.845425, 29.844807, 23.028084>,  <39.184822, 30.053631, 23.062740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845425, 29.844807, 23.028084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020125, -0.195436, 0.980510,
		-0.528820, 0.830214, 0.176333,
		-0.848495, -0.522062, -0.086643,
		38.590878, 29.688189, 23.002090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824310, 30.311377, 23.605873>,  <39.184822, 30.053631, 23.062740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824310, 30.311377, 23.605873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.642124, 29.972698, 23.495850>,  <38.532814, 29.769491, 23.429834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.642124, 29.972698, 23.495850>,  <38.824310, 30.311377, 23.605873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642124, 29.972698, 23.495850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172411, -0.219227, 0.960320,
		-0.873401, 0.484812, -0.046131,
		-0.455461, -0.846698, -0.275060,
		38.505486, 29.718689, 23.413332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154762, 30.321684, 23.892450>,  <38.824310, 30.311377, 23.605873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154762, 30.321684, 23.892450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.244339, 29.935654, 23.838068>,  <38.298084, 29.704037, 23.805439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.244339, 29.935654, 23.838068>,  <38.154762, 30.321684, 23.892450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244339, 29.935654, 23.838068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120953, -0.165941, 0.978690,
		-0.967069, -0.202721, -0.153889,
		0.223938, -0.965074, -0.135957,
		38.311520, 29.646132, 23.797281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611145, 29.902565, 24.224787>,  <38.154762, 30.321684, 23.892450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611145, 29.902565, 24.224787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.916241, 29.650749, 24.165588>,  <38.099300, 29.499660, 24.130070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.916241, 29.650749, 24.165588>,  <37.611145, 29.902565, 24.224787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916241, 29.650749, 24.165588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149668, -0.394471, 0.906638,
		-0.629145, -0.669381, -0.395102,
		0.762743, -0.629541, -0.147995,
		38.145065, 29.461887, 24.121189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358829, 29.253906, 24.412325>,  <37.611145, 29.902565, 24.224787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358829, 29.253906, 24.412325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.754936, 29.280191, 24.461414>,  <37.992599, 29.295963, 24.490868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.754936, 29.280191, 24.461414>,  <37.358829, 29.253906, 24.412325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754936, 29.280191, 24.461414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091636, -0.355930, 0.930009,
		0.104794, -0.932199, -0.346443,
		0.990263, 0.065713, 0.122723,
		38.052013, 29.299906, 24.498232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531643, 28.786211, 24.891474>,  <37.358829, 29.253906, 24.412325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531643, 28.786211, 24.891474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.885395, 28.972664, 24.901253>,  <38.097645, 29.084536, 24.907120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.885395, 28.972664, 24.901253>,  <37.531643, 28.786211, 24.891474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885395, 28.972664, 24.901253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207283, -0.439124, 0.874188,
		0.418223, -0.768044, -0.484972,
		0.884377, 0.466132, 0.024449,
		38.150707, 29.112503, 24.908588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035809, 28.345053, 24.980673>,  <37.531643, 28.786211, 24.891474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035809, 28.345053, 24.980673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.213058, 28.676323, 25.117941>,  <38.319408, 28.875086, 25.200302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.213058, 28.676323, 25.117941>,  <38.035809, 28.345053, 24.980673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213058, 28.676323, 25.117941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055755, -0.407524, 0.911491,
		0.894725, -0.384770, -0.226758,
		0.443124, 0.828177, 0.343169,
		38.345997, 28.924776, 25.220892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630371, 28.177547, 25.403305>,  <38.035809, 28.345053, 24.980673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630371, 28.177547, 25.403305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.509701, 28.538731, 25.525719>,  <38.437298, 28.755440, 25.599167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.509701, 28.538731, 25.525719>,  <38.630371, 28.177547, 25.403305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509701, 28.538731, 25.525719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064802, -0.300828, 0.951474,
		0.951204, 0.306873, 0.032240,
		-0.301680, 0.902957, 0.306035,
		38.419197, 28.809618, 25.617529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081699, 28.201826, 25.990812>,  <38.630371, 28.177547, 25.403305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081699, 28.201826, 25.990812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.816032, 28.500530, 26.004816>,  <38.656631, 28.679752, 26.013218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.816032, 28.500530, 26.004816>,  <39.081699, 28.201826, 25.990812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816032, 28.500530, 26.004816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053367, -0.094070, 0.994134,
		0.745674, 0.658407, 0.102330,
		-0.664171, 0.746761, 0.035008,
		38.616779, 28.724558, 26.015318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255096, 28.485851, 26.606598>,  <39.081699, 28.201826, 25.990812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255096, 28.485851, 26.606598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.888142, 28.625359, 26.529913>,  <38.667969, 28.709063, 26.483902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.888142, 28.625359, 26.529913>,  <39.255096, 28.485851, 26.606598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888142, 28.625359, 26.529913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201773, 0.007620, 0.979403,
		0.343046, 0.937178, 0.063382,
		-0.917391, 0.348769, -0.191711,
		38.612923, 28.729990, 26.472401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842110, 28.979855, 26.891706>,  <39.255096, 28.485851, 26.606598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842110, 28.979855, 26.891706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.140408, 28.713741, 26.905960>,  <40.319386, 28.554073, 26.914513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.140408, 28.713741, 26.905960>,  <39.842110, 28.979855, 26.891706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140408, 28.713741, 26.905960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354519, 0.350974, -0.866680,
		0.564081, 0.658951, 0.497591,
		0.745740, -0.665283, 0.035633,
		40.364128, 28.514156, 26.916651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403160, 29.298155, 26.568655>,  <39.842110, 28.979855, 26.891706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403160, 29.298155, 26.568655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.493763, 28.908724, 26.557016>,  <40.548122, 28.675066, 26.550034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.493763, 28.908724, 26.557016>,  <40.403160, 29.298155, 26.568655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493763, 28.908724, 26.557016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281433, 0.094018, -0.954964,
		0.932465, 0.208114, 0.295291,
		0.226504, -0.973575, -0.029098,
		40.561714, 28.616652, 26.548286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130531, 29.204435, 26.231852>,  <40.403160, 29.298155, 26.568655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.130531, 29.204435, 26.231852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.966816, 28.841558, 26.192894>,  <40.868587, 28.623833, 26.169519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.966816, 28.841558, 26.192894>,  <41.130531, 29.204435, 26.231852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966816, 28.841558, 26.192894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383889, -0.074388, -0.920378,
		0.827713, -0.414093, 0.378706,
		-0.409293, -0.907190, -0.097394,
		40.844028, 28.569401, 26.163675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680218, 28.822042, 26.054829>,  <41.130531, 29.204435, 26.231852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680218, 28.822042, 26.054829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.346172, 28.645487, 25.923521>,  <41.145744, 28.539553, 25.844736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.346172, 28.645487, 25.923521>,  <41.680218, 28.822042, 26.054829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346172, 28.645487, 25.923521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398754, -0.074680, -0.914012,
		0.378922, -0.894201, 0.238373,
		-0.835113, -0.441392, -0.328269,
		41.095638, 28.513069, 25.825041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952374, 28.438702, 25.523170>,  <41.680218, 28.822042, 26.054829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952374, 28.438702, 25.523170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.559582, 28.444069, 25.447763>,  <41.323906, 28.447289, 25.402519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.559582, 28.444069, 25.447763>,  <41.952374, 28.438702, 25.523170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559582, 28.444069, 25.447763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188894, 0.102466, -0.976637,
		0.006212, -0.994646, -0.103154,
		-0.981978, 0.013419, -0.188519,
		41.264988, 28.448093, 25.391209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872082, 28.011232, 24.778442>,  <41.952374, 28.438702, 25.523170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.872082, 28.011232, 24.778442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.529018, 28.210136, 24.830830>,  <41.323181, 28.329479, 24.862261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.529018, 28.210136, 24.830830>,  <41.872082, 28.011232, 24.778442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529018, 28.210136, 24.830830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092240, 0.101786, -0.990521,
		-0.505876, -0.861611, -0.041431,
		-0.857660, 0.497259, 0.130966,
		41.271721, 28.359314, 24.870119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.294033, 27.804621, 24.229107>,  <41.872082, 28.011232, 24.778442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.294033, 27.804621, 24.229107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.199409, 28.165863, 24.372461>,  <41.142635, 28.382608, 24.458473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.199409, 28.165863, 24.372461>,  <41.294033, 27.804621, 24.229107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.199409, 28.165863, 24.372461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097666, 0.344886, -0.933550,
		-0.966696, -0.255840, 0.006618,
		-0.236557, 0.903105, 0.358387,
		41.128441, 28.436794, 24.479977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686783, 27.885395, 23.889761>,  <41.294033, 27.804621, 24.229107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686783, 27.885395, 23.889761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.837700, 28.236507, 24.007845>,  <40.928249, 28.447174, 24.078695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.837700, 28.236507, 24.007845>,  <40.686783, 27.885395, 23.889761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837700, 28.236507, 24.007845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243451, 0.401568, -0.882879,
		-0.893521, 0.261237, 0.365207,
		0.377296, 0.877781, 0.295211,
		40.950890, 28.499842, 24.096409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343647, 28.360325, 23.532215>,  <40.686783, 27.885395, 23.889761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343647, 28.360325, 23.532215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.638958, 28.602312, 23.651520>,  <40.816143, 28.747505, 23.723103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.638958, 28.602312, 23.651520>,  <40.343647, 28.360325, 23.532215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638958, 28.602312, 23.651520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062598, 0.501742, -0.862749,
		-0.671587, 0.618277, 0.408294,
		0.738276, 0.604970, 0.298261,
		40.860439, 28.783802, 23.740997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165600, 28.986784, 23.253561>,  <40.343647, 28.360325, 23.532215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165600, 28.986784, 23.253561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.557739, 29.024557, 23.322851>,  <40.793022, 29.047220, 23.364426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.557739, 29.024557, 23.322851>,  <40.165600, 28.986784, 23.253561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557739, 29.024557, 23.322851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106647, 0.485039, -0.867965,
		-0.165987, 0.869378, 0.465435,
		0.980344, 0.094433, 0.173226,
		40.851841, 29.052887, 23.374819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358864, 29.661282, 23.123108>,  <40.165600, 28.986784, 23.253561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358864, 29.661282, 23.123108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.670456, 29.420210, 23.053856>,  <40.857410, 29.275568, 23.012304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.670456, 29.420210, 23.053856>,  <40.358864, 29.661282, 23.123108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670456, 29.420210, 23.053856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051558, 0.336726, -0.940190,
		0.624929, 0.723460, 0.293375,
		0.778977, -0.602678, -0.173130,
		40.904148, 29.239407, 23.001917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866379, 30.015425, 22.650515>,  <40.358864, 29.661282, 23.123108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866379, 30.015425, 22.650515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.984737, 29.635099, 22.613846>,  <41.055752, 29.406904, 22.591845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.984737, 29.635099, 22.613846>,  <40.866379, 30.015425, 22.650515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984737, 29.635099, 22.613846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180683, 0.149948, -0.972044,
		0.937977, 0.271057, 0.216164,
		0.295892, -0.950812, -0.091672,
		41.073505, 29.349855, 22.586344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373062, 29.974035, 22.201410>,  <40.866379, 30.015425, 22.650515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373062, 29.974035, 22.201410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.259254, 29.590607, 22.195944>,  <41.190968, 29.360550, 22.192663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.259254, 29.590607, 22.195944>,  <41.373062, 29.974035, 22.201410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259254, 29.590607, 22.195944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190276, -0.042494, -0.980811,
		0.939597, -0.281663, 0.194484,
		-0.284522, -0.958572, -0.013667,
		41.173897, 29.303036, 22.191843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.808334, 29.736069, 21.656927>,  <41.373062, 29.974035, 22.201410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.808334, 29.736069, 21.656927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.525753, 29.459141, 21.715734>,  <41.356205, 29.292984, 21.751019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.525753, 29.459141, 21.715734>,  <41.808334, 29.736069, 21.656927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525753, 29.459141, 21.715734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017617, -0.190457, -0.981537,
		0.707538, -0.696002, 0.122353,
		-0.706455, -0.692320, 0.147017,
		41.313816, 29.251446, 21.759840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.518723, 29.235775, 21.783785>,  <41.808334, 29.736069, 21.656927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.518723, 29.235775, 21.783785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.913548, 29.219687, 21.721708>,  <43.150444, 29.210033, 21.684462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.913548, 29.219687, 21.721708>,  <42.518723, 29.235775, 21.783785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.913548, 29.219687, 21.721708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141417, -0.237556, 0.961025,
		-0.075520, -0.970541, -0.228796,
		0.987065, -0.040221, -0.155191,
		43.209667, 29.207621, 21.675150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.782307, 28.507727, 21.903368>,  <42.518723, 29.235775, 21.783785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.782307, 28.507727, 21.903368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.069996, 28.779158, 21.963026>,  <43.242611, 28.942017, 21.998821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.069996, 28.779158, 21.963026>,  <42.782307, 28.507727, 21.903368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.069996, 28.779158, 21.963026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168793, -0.378894, 0.909916,
		0.673959, -0.629262, -0.387051,
		0.719227, 0.678578, 0.149144,
		43.285763, 28.982731, 22.007769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333019, 28.059752, 22.204708>,  <42.782307, 28.507727, 21.903368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333019, 28.059752, 22.204708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.495083, 28.421173, 22.260473>,  <43.592319, 28.638027, 22.293932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.495083, 28.421173, 22.260473>,  <43.333019, 28.059752, 22.204708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.495083, 28.421173, 22.260473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369622, -0.301355, 0.878957,
		0.836199, -0.304584, -0.456070,
		0.405155, 0.903556, 0.139412,
		43.616631, 28.692240, 22.302298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.090347, 28.001209, 22.320309>,  <43.333019, 28.059752, 22.204708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.090347, 28.001209, 22.320309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.989799, 28.350651, 22.486984>,  <43.929470, 28.560316, 22.586988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.989799, 28.350651, 22.486984>,  <44.090347, 28.001209, 22.320309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.989799, 28.350651, 22.486984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471592, -0.265404, 0.840929,
		0.845229, 0.407894, -0.345269,
		-0.251374, 0.873604, 0.416687,
		43.914387, 28.612732, 22.611990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.654903, 28.337862, 22.630672>,  <44.090347, 28.001209, 22.320309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.654903, 28.337862, 22.630672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.348145, 28.496973, 22.832125>,  <44.164089, 28.592440, 22.952995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.348145, 28.496973, 22.832125>,  <44.654903, 28.337862, 22.630672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.348145, 28.496973, 22.832125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494349, -0.134288, 0.858828,
		0.409255, 0.907601, -0.093656,
		-0.766896, 0.397778, 0.503630,
		44.118076, 28.616306, 22.983213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.856613, 28.818699, 23.218327>,  <44.654903, 28.337862, 22.630672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.856613, 28.818699, 23.218327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.480427, 28.747158, 23.333935>,  <44.254715, 28.704233, 23.403299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.480427, 28.747158, 23.333935>,  <44.856613, 28.818699, 23.218327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.480427, 28.747158, 23.333935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316622, -0.151840, 0.936320,
		-0.123578, 0.972089, 0.199429,
		-0.940468, -0.178852, 0.289020,
		44.198288, 28.693502, 23.420641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.825233, 29.199081, 23.817101>,  <44.856613, 28.818699, 23.218327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.825233, 29.199081, 23.817101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.523911, 28.936058, 23.812290>,  <44.343117, 28.778244, 23.809404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.523911, 28.936058, 23.812290>,  <44.825233, 29.199081, 23.817101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.523911, 28.936058, 23.812290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027459, -0.049718, 0.998386,
		-0.657097, 0.751760, 0.055509,
		-0.753306, -0.657561, -0.012027,
		44.297920, 28.738791, 23.808681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.330051, 29.460640, 24.317589>,  <44.825233, 29.199081, 23.817101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.330051, 29.460640, 24.317589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.258141, 29.071455, 24.259584>,  <44.214993, 28.837944, 24.224781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.258141, 29.071455, 24.259584>,  <44.330051, 29.460640, 24.317589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.258141, 29.071455, 24.259584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122621, -0.124097, 0.984664,
		-0.976035, 0.194802, -0.096996,
		-0.179778, -0.972960, -0.145010,
		44.204208, 28.779568, 24.216082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.784256, 29.256794, 24.709110>,  <44.330051, 29.460640, 24.317589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.784256, 29.256794, 24.709110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.970818, 28.910316, 24.637365>,  <44.082756, 28.702429, 24.594318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.970818, 28.910316, 24.637365>,  <43.784256, 29.256794, 24.709110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.970818, 28.910316, 24.637365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080792, -0.243632, 0.966497,
		-0.880873, -0.436290, -0.183613,
		0.466407, -0.866195, -0.179361,
		44.110741, 28.650457, 24.583557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.397106, 28.753664, 25.082869>,  <43.784256, 29.256794, 24.709110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.397106, 28.753664, 25.082869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.756329, 28.586096, 25.029211>,  <43.971863, 28.485554, 24.997017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.756329, 28.586096, 25.029211>,  <43.397106, 28.753664, 25.082869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.756329, 28.586096, 25.029211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055000, -0.409507, 0.910648,
		-0.436428, -0.810435, -0.390801,
		0.898057, -0.418926, -0.134146,
		44.025745, 28.460419, 24.988968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.322269, 28.194084, 25.324905>,  <43.397106, 28.753664, 25.082869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.322269, 28.194084, 25.324905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.721104, 28.224615, 25.325010>,  <43.960403, 28.242933, 25.325073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.721104, 28.224615, 25.325010>,  <43.322269, 28.194084, 25.324905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.721104, 28.224615, 25.325010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037915, -0.498249, 0.866205,
		0.066244, -0.863668, -0.499689,
		0.997083, 0.076326, 0.000260,
		44.020229, 28.247513, 25.325089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.598381, 27.519073, 25.296249>,  <43.322269, 28.194084, 25.324905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.598381, 27.519073, 25.296249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.839867, 27.790945, 25.462896>,  <43.984756, 27.954067, 25.562883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.839867, 27.790945, 25.462896>,  <43.598381, 27.519073, 25.296249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.839867, 27.790945, 25.462896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187972, -0.386500, 0.902931,
		0.774724, -0.623423, -0.105575,
		0.603713, 0.679677, 0.416616,
		44.020981, 27.994848, 25.587881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.750336, 27.199959, 25.939135>,  <43.598381, 27.519073, 25.296249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.750336, 27.199959, 25.939135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.861710, 27.579382, 25.999418>,  <43.928535, 27.807035, 26.035589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.861710, 27.579382, 25.999418>,  <43.750336, 27.199959, 25.939135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.861710, 27.579382, 25.999418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064937, -0.175150, 0.982398,
		0.958256, -0.263751, -0.110365,
		0.278439, 0.948556, 0.150711,
		43.945240, 27.863949, 26.044632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.315247, 27.169943, 26.435606>,  <43.750336, 27.199959, 25.939135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.315247, 27.169943, 26.435606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.177055, 27.543884, 26.468338>,  <44.094143, 27.768250, 26.487978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.177055, 27.543884, 26.468338>,  <44.315247, 27.169943, 26.435606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.177055, 27.543884, 26.468338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136738, -0.136416, 0.981169,
		0.928412, 0.327781, 0.174958,
		-0.345476, 0.934853, 0.081831,
		44.073414, 27.824341, 26.492887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.146633, 31.702278, 21.882044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.769047, 31.833899, 21.892214>,  <42.542496, 31.912870, 21.898315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.769047, 31.833899, 21.892214>,  <43.146633, 31.702278, 21.882044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.769047, 31.833899, 21.892214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066093, -0.113004, -0.991394,
		-0.323349, -0.937525, 0.128420,
		-0.943969, 0.329054, 0.025424,
		42.485855, 31.932615, 21.899841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.591866, 31.202400, 21.498592>,  <43.146633, 31.702278, 21.882044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.591866, 31.202400, 21.498592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.457333, 31.579096, 21.500076>,  <42.376614, 31.805113, 21.500967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.457333, 31.579096, 21.500076>,  <42.591866, 31.202400, 21.498592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457333, 31.579096, 21.500076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074784, -0.022783, -0.996940,
		-0.938771, -0.335576, 0.078089,
		-0.336329, 0.941738, 0.003708,
		42.356434, 31.861616, 21.501188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083202, 31.153196, 21.024670>,  <42.591866, 31.202400, 21.498592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083202, 31.153196, 21.024670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.189838, 31.537823, 21.050968>,  <42.253819, 31.768599, 21.066748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.189838, 31.537823, 21.050968>,  <42.083202, 31.153196, 21.024670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.189838, 31.537823, 21.050968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057980, 0.052093, -0.996958,
		-0.962065, 0.269590, -0.041864,
		0.266589, 0.961565, 0.065747,
		42.269814, 31.826292, 21.070692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656345, 31.525543, 20.482115>,  <42.083202, 31.153196, 21.024670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.656345, 31.525543, 20.482115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.973537, 31.754917, 20.564436>,  <42.163853, 31.892542, 20.613829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.973537, 31.754917, 20.564436>,  <41.656345, 31.525543, 20.482115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973537, 31.754917, 20.564436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187894, 0.091152, -0.977951,
		-0.579552, 0.814163, -0.035463,
		0.792979, 0.573437, 0.205804,
		42.211430, 31.926949, 20.626177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501171, 32.038517, 20.028843>,  <41.656345, 31.525543, 20.482115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501171, 32.038517, 20.028843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.871376, 32.111343, 20.161673>,  <42.093498, 32.155041, 20.241371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.871376, 32.111343, 20.161673>,  <41.501171, 32.038517, 20.028843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871376, 32.111343, 20.161673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258763, 0.336224, -0.905536,
		-0.276522, 0.924015, 0.264067,
		0.925515, 0.182070, 0.332074,
		42.149029, 32.165966, 20.261295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.639679, 32.655933, 19.857782>,  <41.501171, 32.038517, 20.028843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.639679, 32.655933, 19.857782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.012360, 32.517349, 19.901423>,  <42.235966, 32.434200, 19.927607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.012360, 32.517349, 19.901423>,  <41.639679, 32.655933, 19.857782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012360, 32.517349, 19.901423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250726, 0.396093, -0.883316,
		0.262818, 0.850339, 0.455905,
		0.931699, -0.346459, 0.109102,
		42.291870, 32.413410, 19.934153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.075684, 33.164909, 19.727848>,  <41.639679, 32.655933, 19.857782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.075684, 33.164909, 19.727848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.302631, 32.838856, 19.681114>,  <42.438801, 32.643223, 19.653074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.302631, 32.838856, 19.681114>,  <42.075684, 33.164909, 19.727848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.302631, 32.838856, 19.681114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264977, 0.315058, -0.911332,
		0.779666, 0.486104, 0.394746,
		0.567370, -0.815133, -0.116833,
		42.472843, 32.594315, 19.646065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747681, 33.391666, 19.473763>,  <42.075684, 33.164909, 19.727848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.747681, 33.391666, 19.473763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.722816, 33.001038, 19.391348>,  <42.707897, 32.766663, 19.341898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.722816, 33.001038, 19.391348>,  <42.747681, 33.391666, 19.473763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722816, 33.001038, 19.391348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374576, 0.168521, -0.911753,
		0.925110, -0.133852, 0.355324,
		-0.062160, -0.976568, -0.206038,
		42.704170, 32.708069, 19.329536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.449757, 33.145771, 19.399235>,  <42.747681, 33.391666, 19.473763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.449757, 33.145771, 19.399235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.197910, 32.932541, 19.173164>,  <43.046803, 32.804604, 19.037521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.197910, 32.932541, 19.173164>,  <43.449757, 33.145771, 19.399235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.197910, 32.932541, 19.173164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513707, 0.260091, -0.817593,
		0.582833, -0.805100, 0.110086,
		-0.629612, -0.533072, -0.565175,
		43.009026, 32.772617, 19.003613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.796825, 32.936581, 18.855644>,  <43.449757, 33.145771, 19.399235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.796825, 32.936581, 18.855644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.434013, 32.866367, 18.702553>,  <43.216324, 32.824242, 18.610699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.434013, 32.866367, 18.702553>,  <43.796825, 32.936581, 18.855644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.434013, 32.866367, 18.702553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358201, 0.156102, -0.920502,
		0.221320, -0.972019, -0.078715,
		-0.907033, -0.175530, -0.382727,
		43.161903, 32.813709, 18.587734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.000935, 32.566319, 18.287964>,  <43.796825, 32.936581, 18.855644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.000935, 32.566319, 18.287964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.622795, 32.686123, 18.236422>,  <43.395912, 32.758007, 18.205496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.622795, 32.686123, 18.236422>,  <44.000935, 32.566319, 18.287964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.622795, 32.686123, 18.236422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246258, 0.396850, -0.884232,
		-0.213705, -0.867640, -0.448921,
		-0.945350, 0.299516, -0.128854,
		43.339191, 32.775978, 18.197765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.854542, 32.451096, 17.676205>,  <44.000935, 32.566319, 18.287964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.854542, 32.451096, 17.676205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.592995, 32.737240, 17.774761>,  <43.436066, 32.908928, 17.833895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.592995, 32.737240, 17.774761>,  <43.854542, 32.451096, 17.676205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.592995, 32.737240, 17.774761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235520, 0.501919, -0.832231,
		-0.719016, -0.486140, -0.496672,
		-0.653870, 0.715364, 0.246392,
		43.396835, 32.951847, 17.848679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.441650, 32.537704, 17.173132>,  <43.854542, 32.451096, 17.676205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.441650, 32.537704, 17.173132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.453014, 32.891369, 17.359657>,  <43.459831, 33.103569, 17.471573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.453014, 32.891369, 17.359657>,  <43.441650, 32.537704, 17.173132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453014, 32.891369, 17.359657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342524, 0.429651, -0.835510,
		-0.939080, 0.183457, -0.290642,
		0.028405, 0.884162, 0.466315,
		43.461536, 33.156616, 17.499552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.711189, 31.835323, 16.769428>,  <43.441650, 32.537704, 17.173132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.711189, 31.835323, 16.769428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.109375, 31.863466, 16.743809>,  <44.348286, 31.880352, 16.728437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.109375, 31.863466, 16.743809>,  <43.711189, 31.835323, 16.769428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.109375, 31.863466, 16.743809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090830, 0.502383, -0.859861,
		-0.028322, 0.861778, 0.506494,
		0.995464, 0.070358, -0.064047,
		44.408012, 31.884573, 16.724594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.152519, 31.301809, 16.676271>,  <43.711189, 31.835323, 16.769428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.152519, 31.301809, 16.676271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.030811, 30.948402, 16.533827>,  <43.957787, 30.736359, 16.448360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.030811, 30.948402, 16.533827>,  <44.152519, 31.301809, 16.676271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.030811, 30.948402, 16.533827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158374, -0.415554, 0.895675,
		-0.939328, 0.216129, 0.266367,
		-0.304271, -0.883518, -0.356112,
		43.939529, 30.683348, 16.426992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.615852, 31.045544, 17.100048>,  <44.152519, 31.301809, 16.676271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.615852, 31.045544, 17.100048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.763359, 30.717659, 16.924740>,  <43.851864, 30.520927, 16.819555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.763359, 30.717659, 16.924740>,  <43.615852, 31.045544, 17.100048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.763359, 30.717659, 16.924740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227237, -0.377692, 0.897614,
		-0.901318, -0.430601, 0.046989,
		0.368766, -0.819714, -0.438269,
		43.873989, 30.471745, 16.793259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.283707, 30.501223, 17.448057>,  <43.615852, 31.045544, 17.100048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.283707, 30.501223, 17.448057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.581959, 30.309299, 17.263094>,  <43.760910, 30.194145, 17.152117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.581959, 30.309299, 17.263094>,  <43.283707, 30.501223, 17.448057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.581959, 30.309299, 17.263094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224384, -0.472621, 0.852221,
		-0.627446, -0.739199, -0.244739,
		0.745630, -0.479807, -0.462409,
		43.805649, 30.165358, 17.124371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.156040, 29.865484, 17.644163>,  <43.283707, 30.501223, 17.448057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.156040, 29.865484, 17.644163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.541050, 29.879456, 17.536585>,  <43.772057, 29.887838, 17.472038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.541050, 29.879456, 17.536585>,  <43.156040, 29.865484, 17.644163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.541050, 29.879456, 17.536585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260989, -0.388903, 0.883538,
		-0.073735, -0.920616, -0.383443,
		0.962522, 0.034927, -0.268947,
		43.829807, 29.889933, 17.455900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.296101, 29.210678, 17.710720>,  <43.156040, 29.865484, 17.644163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.296101, 29.210678, 17.710720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.635429, 29.421974, 17.725195>,  <43.839027, 29.548752, 17.733881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.635429, 29.421974, 17.725195>,  <43.296101, 29.210678, 17.710720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.635429, 29.421974, 17.725195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215003, -0.406130, 0.888162,
		0.483860, -0.745669, -0.458103,
		0.848324, 0.528239, 0.036189,
		43.889927, 29.580446, 17.736052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.781750, 28.825315, 17.950085>,  <43.296101, 29.210678, 17.710720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.781750, 28.825315, 17.950085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.984608, 29.164816, 18.009993>,  <44.106323, 29.368515, 18.045937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.984608, 29.164816, 18.009993>,  <43.781750, 28.825315, 17.950085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.984608, 29.164816, 18.009993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308861, -0.341210, 0.887795,
		0.804619, -0.403980, -0.435187,
		0.507142, 0.848749, 0.149770,
		44.136749, 29.419441, 18.054924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.426952, 28.658808, 18.295101>,  <43.781750, 28.825315, 17.950085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.426952, 28.658808, 18.295101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.335484, 29.042168, 18.363432>,  <44.280602, 29.272182, 18.404430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.335484, 29.042168, 18.363432>,  <44.426952, 28.658808, 18.295101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.335484, 29.042168, 18.363432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132005, -0.143327, 0.980832,
		0.964512, 0.246839, -0.093739,
		-0.228673, 0.958398, 0.170825,
		44.266880, 29.329687, 18.414679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.665325, 28.678198, 18.948456>,  <44.426952, 28.658808, 18.295101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.665325, 28.678198, 18.948456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.437168, 29.002579, 18.896297>,  <44.300274, 29.197208, 18.865002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.437168, 29.002579, 18.896297>,  <44.665325, 28.678198, 18.948456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.437168, 29.002579, 18.896297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172488, 0.036951, 0.984318,
		0.803054, 0.583943, 0.118803,
		-0.570396, 0.810953, -0.130396,
		44.266048, 29.245865, 18.857178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.937977, 29.120195, 19.418108>,  <44.665325, 28.678198, 18.948456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.937977, 29.120195, 19.418108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.558800, 29.215595, 19.333715>,  <44.331291, 29.272835, 19.283079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.558800, 29.215595, 19.333715>,  <44.937977, 29.120195, 19.418108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.558800, 29.215595, 19.333715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130745, 0.312626, 0.940835,
		0.290348, 0.919447, -0.265170,
		-0.947947, 0.238500, -0.210983,
		44.274414, 29.287146, 19.270420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.857834, 29.627367, 19.875740>,  <44.937977, 29.120195, 19.418108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.857834, 29.627367, 19.875740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.486607, 29.534885, 19.758959>,  <44.263870, 29.479397, 19.688890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.486607, 29.534885, 19.758959>,  <44.857834, 29.627367, 19.875740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.486607, 29.534885, 19.758959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297273, -0.012297, 0.954713,
		-0.224322, 0.972828, -0.057317,
		-0.928067, -0.231202, -0.291954,
		44.208187, 29.465525, 19.671373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.405022, 30.028585, 20.244640>,  <44.857834, 29.627367, 19.875740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.405022, 30.028585, 20.244640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.136311, 29.751324, 20.140139>,  <43.975086, 29.584967, 20.077438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.136311, 29.751324, 20.140139>,  <44.405022, 30.028585, 20.244640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.136311, 29.751324, 20.140139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451812, 0.103922, 0.886040,
		-0.587014, 0.713257, -0.382988,
		-0.671775, -0.693156, -0.261254,
		43.934776, 29.543377, 20.061762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.786324, 30.267843, 20.535425>,  <44.405022, 30.028585, 20.244640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.786324, 30.267843, 20.535425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.753273, 29.871552, 20.492289>,  <43.733440, 29.633776, 20.466408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.753273, 29.871552, 20.492289>,  <43.786324, 30.267843, 20.535425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.753273, 29.871552, 20.492289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268327, -0.082097, 0.959823,
		-0.959778, 0.108246, -0.259056,
		-0.082629, -0.990729, -0.107840,
		43.728485, 29.574333, 20.459936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.063255, 30.129320, 20.769495>,  <43.786324, 30.267843, 20.535425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.063255, 30.129320, 20.769495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.265339, 29.784664, 20.788853>,  <43.386589, 29.577869, 20.800467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.265339, 29.784664, 20.788853>,  <43.063255, 30.129320, 20.769495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265339, 29.784664, 20.788853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202394, -0.063784, 0.977225,
		-0.838931, -0.503493, -0.206615,
		0.505205, -0.861641, 0.048393,
		43.416901, 29.526173, 20.803371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.635941, 29.658165, 21.115683>,  <43.063255, 30.129320, 20.769495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.635941, 29.658165, 21.115683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.017178, 29.552891, 21.175476>,  <43.245922, 29.489727, 21.211351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.017178, 29.552891, 21.175476>,  <42.635941, 29.658165, 21.115683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.017178, 29.552891, 21.175476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218215, -0.255241, 0.941931,
		-0.209745, -0.930369, -0.300699,
		0.953095, -0.263182, 0.149485,
		43.303104, 29.473936, 21.220322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053619, 29.210537, 21.194180>,  <42.635941, 29.658165, 21.115683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.053619, 29.210537, 21.194180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.664360, 29.152031, 21.265268>,  <41.430805, 29.116928, 21.307922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.664360, 29.152031, 21.265268>,  <42.053619, 29.210537, 21.194180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664360, 29.152031, 21.265268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166389, -0.086484, -0.982260,
		0.159042, -0.985458, 0.059825,
		-0.973150, -0.146267, 0.177724,
		41.372414, 29.108150, 21.318586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.753380, 28.548279, 20.821341>,  <42.053619, 29.210537, 21.194180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.753380, 28.548279, 20.821341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.477890, 28.832703, 20.877981>,  <41.312595, 29.003357, 20.911966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.477890, 28.832703, 20.877981>,  <41.753380, 28.548279, 20.821341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.477890, 28.832703, 20.877981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235492, -0.034677, -0.971258,
		-0.685710, -0.702278, 0.191331,
		-0.688727, 0.711058, 0.141602,
		41.271271, 29.046021, 20.920462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264919, 28.446905, 20.206554>,  <41.753380, 28.548279, 20.821341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264919, 28.446905, 20.206554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.167534, 28.803648, 20.359035>,  <41.109104, 29.017694, 20.450525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.167534, 28.803648, 20.359035>,  <41.264919, 28.446905, 20.206554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167534, 28.803648, 20.359035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392902, 0.268651, -0.879463,
		-0.886766, -0.363892, 0.285006,
		-0.243463, 0.891857, 0.381204,
		41.094494, 29.071205, 20.473396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582073, 28.584061, 20.146193>,  <41.264919, 28.446905, 20.206554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582073, 28.584061, 20.146193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.751987, 28.945644, 20.165838>,  <40.853935, 29.162594, 20.177626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.751987, 28.945644, 20.165838>,  <40.582073, 28.584061, 20.146193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751987, 28.945644, 20.165838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406072, 0.238747, -0.882103,
		-0.809112, 0.354762, 0.468489,
		0.424787, 0.903960, 0.049114,
		40.879425, 29.216833, 20.180573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084385, 29.124489, 19.879370>,  <40.582073, 28.584061, 20.146193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084385, 29.124489, 19.879370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.435581, 29.315796, 19.871485>,  <40.646297, 29.430580, 19.866755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.435581, 29.315796, 19.871485>,  <40.084385, 29.124489, 19.879370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435581, 29.315796, 19.871485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236592, 0.397793, -0.886445,
		-0.416118, 0.782955, 0.462414,
		0.877992, 0.478269, -0.019712,
		40.698978, 29.459276, 19.865572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928692, 29.769171, 19.658007>,  <40.084385, 29.124489, 19.879370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928692, 29.769171, 19.658007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.320683, 29.737143, 19.585079>,  <40.555878, 29.717926, 19.541323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.320683, 29.737143, 19.585079>,  <39.928692, 29.769171, 19.658007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320683, 29.737143, 19.585079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157284, 0.250262, -0.955317,
		0.122123, 0.964861, 0.232656,
		0.979973, -0.080073, -0.182319,
		40.614674, 29.713121, 19.530384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062233, 30.376478, 19.265614>,  <39.928692, 29.769171, 19.658007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062233, 30.376478, 19.265614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.375961, 30.137989, 19.197083>,  <40.564198, 29.994896, 19.155964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.375961, 30.137989, 19.197083>,  <40.062233, 30.376478, 19.265614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375961, 30.137989, 19.197083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075078, 0.182914, -0.980258,
		0.615792, 0.781702, 0.098701,
		0.784324, -0.596225, -0.171326,
		40.611259, 29.959122, 19.145685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836315, 30.925135, 19.578903>,  <40.062233, 30.376478, 19.265614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836315, 30.925135, 19.578903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.529072, 31.122210, 19.415308>,  <39.344727, 31.240456, 19.317150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.529072, 31.122210, 19.415308>,  <39.836315, 30.925135, 19.578903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529072, 31.122210, 19.415308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609670, -0.367463, 0.702334,
		0.195745, 0.788815, 0.582628,
		-0.768106, 0.492689, -0.408988,
		39.298641, 31.270016, 19.292612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642048, 31.315374, 20.079678>,  <39.836315, 30.925135, 19.578903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642048, 31.315374, 20.079678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.336769, 31.287527, 19.822714>,  <39.153603, 31.270819, 19.668535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.336769, 31.287527, 19.822714>,  <39.642048, 31.315374, 20.079678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336769, 31.287527, 19.822714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546623, -0.460606, 0.699317,
		-0.344581, 0.884870, 0.313478,
		-0.763195, -0.069618, -0.642407,
		39.107811, 31.266642, 19.629992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075943, 31.721035, 20.296892>,  <39.642048, 31.315374, 20.079678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075943, 31.721035, 20.296892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.946003, 31.413527, 20.076540>,  <38.868038, 31.229021, 19.944328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.946003, 31.413527, 20.076540>,  <39.075943, 31.721035, 20.296892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946003, 31.413527, 20.076540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424461, -0.402005, 0.811311,
		-0.845167, 0.497378, -0.195724,
		-0.324846, -0.768770, -0.550879,
		38.848549, 31.182896, 19.911276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519165, 31.561279, 20.631445>,  <39.075943, 31.721035, 20.296892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519165, 31.561279, 20.631445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.563511, 31.228346, 20.414215>,  <38.590118, 31.028585, 20.283876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.563511, 31.228346, 20.414215>,  <38.519165, 31.561279, 20.631445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563511, 31.228346, 20.414215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361166, -0.542823, 0.758223,
		-0.925888, 0.112083, -0.360789,
		0.110861, -0.832334, -0.543074,
		38.596771, 30.978645, 20.251293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840141, 31.220787, 20.731079>,  <38.519165, 31.561279, 20.631445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840141, 31.220787, 20.731079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.090797, 30.941092, 20.593451>,  <38.241192, 30.773273, 20.510874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.090797, 30.941092, 20.593451>,  <37.840141, 31.220787, 20.731079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090797, 30.941092, 20.593451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333861, -0.639816, 0.692223,
		-0.704175, -0.318900, -0.634382,
		0.626638, -0.699241, -0.344074,
		38.278790, 30.731319, 20.490229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468105, 30.525412, 20.592455>,  <37.840141, 31.220787, 20.731079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468105, 30.525412, 20.592455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.848507, 30.426720, 20.666988>,  <38.076748, 30.367504, 20.711708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.848507, 30.426720, 20.666988>,  <37.468105, 30.525412, 20.592455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848507, 30.426720, 20.666988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309151, -0.749693, 0.585138,
		-0.004677, -0.614073, -0.789236,
		0.951002, -0.246729, 0.186335,
		38.133808, 30.352701, 20.722889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376392, 29.771364, 20.856306>,  <37.468105, 30.525412, 20.592455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376392, 29.771364, 20.856306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.738857, 29.899256, 20.967043>,  <37.956337, 29.975990, 21.033485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.738857, 29.899256, 20.967043>,  <37.376392, 29.771364, 20.856306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738857, 29.899256, 20.967043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121835, -0.429491, 0.894815,
		0.404998, -0.844578, -0.350235,
		0.906163, 0.319728, 0.276842,
		38.010708, 29.995174, 21.050097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.149746, 35.426361, 18.088924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.486389, 35.210972, 18.105606>,  <41.688374, 35.081738, 18.115616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.486389, 35.210972, 18.105606>,  <41.149746, 35.426361, 18.088924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.486389, 35.210972, 18.105606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299336, -0.400782, 0.865893,
		-0.449552, -0.741224, -0.498487,
		0.841606, -0.538480, 0.041703,
		41.738873, 35.049427, 18.118118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947678, 34.736500, 18.163321>,  <41.149746, 35.426361, 18.088924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947678, 34.736500, 18.163321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.323475, 34.765533, 18.297241>,  <41.548954, 34.782951, 18.377594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.323475, 34.765533, 18.297241>,  <40.947678, 34.736500, 18.163321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.323475, 34.765533, 18.297241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297595, -0.311203, 0.902546,
		0.169700, -0.947568, -0.270771,
		0.939489, 0.072582, 0.334803,
		41.605320, 34.787308, 18.397682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020340, 34.135986, 18.608709>,  <40.947678, 34.736500, 18.163321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.020340, 34.135986, 18.608709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.311504, 34.388077, 18.716757>,  <41.486202, 34.539330, 18.781586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.311504, 34.388077, 18.716757>,  <41.020340, 34.135986, 18.608709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311504, 34.388077, 18.716757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147928, -0.240330, 0.959353,
		0.669525, -0.738281, -0.081711,
		0.727910, 0.630224, 0.270120,
		41.529877, 34.577145, 18.797792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348137, 33.771130, 19.224915>,  <41.020340, 34.135986, 18.608709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348137, 33.771130, 19.224915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.475910, 34.149815, 19.241392>,  <41.552574, 34.377026, 19.251280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.475910, 34.149815, 19.241392>,  <41.348137, 33.771130, 19.224915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475910, 34.149815, 19.241392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261523, 0.046290, 0.964087,
		0.910807, -0.318733, 0.262374,
		0.319432, 0.946713, 0.041195,
		41.571739, 34.433830, 19.253750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683300, 33.782650, 19.844803>,  <41.348137, 33.771130, 19.224915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683300, 33.782650, 19.844803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.590927, 34.163197, 19.763239>,  <41.535503, 34.391525, 19.714300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.590927, 34.163197, 19.763239>,  <41.683300, 33.782650, 19.844803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.590927, 34.163197, 19.763239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079167, 0.190510, 0.978488,
		0.969744, 0.242105, 0.031322,
		-0.230930, 0.951363, -0.203912,
		41.521648, 34.448605, 19.702065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087234, 34.176647, 20.310602>,  <41.683300, 33.782650, 19.844803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.087234, 34.176647, 20.310602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.774662, 34.390457, 20.181822>,  <41.587120, 34.518742, 20.104553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.774662, 34.390457, 20.181822>,  <42.087234, 34.176647, 20.310602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.774662, 34.390457, 20.181822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238771, 0.220548, 0.945699,
		0.576506, 0.815869, -0.044713,
		-0.781428, 0.534525, -0.321952,
		41.540234, 34.550816, 20.085236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116970, 34.737766, 20.740273>,  <42.087234, 34.176647, 20.310602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.116970, 34.737766, 20.740273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.741722, 34.749840, 20.602272>,  <41.516575, 34.757084, 20.519472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.741722, 34.749840, 20.602272>,  <42.116970, 34.737766, 20.740273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.741722, 34.749840, 20.602272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326152, 0.257969, 0.909438,
		0.116450, 0.965682, -0.232161,
		-0.938118, 0.030184, -0.344999,
		41.460285, 34.758896, 20.498772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816837, 35.317581, 21.004965>,  <42.116970, 34.737766, 20.740273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.816837, 35.317581, 21.004965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.508999, 35.078274, 20.915703>,  <41.324295, 34.934689, 20.862146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.508999, 35.078274, 20.915703>,  <41.816837, 35.317581, 21.004965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.508999, 35.078274, 20.915703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396342, 0.173569, 0.901547,
		-0.500631, 0.782274, -0.370696,
		-0.769598, -0.598265, -0.223155,
		41.278118, 34.898796, 20.848757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220089, 35.634674, 21.305902>,  <41.816837, 35.317581, 21.004965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.220089, 35.634674, 21.305902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.085186, 35.263039, 21.245169>,  <41.004246, 35.040058, 21.208729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.085186, 35.263039, 21.245169>,  <41.220089, 35.634674, 21.305902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085186, 35.263039, 21.245169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476899, 0.029552, 0.878462,
		-0.811682, 0.368673, -0.453048,
		-0.337254, -0.929089, -0.151833,
		40.984009, 34.984310, 21.199619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405956, 35.667027, 21.545437>,  <41.220089, 35.634674, 21.305902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405956, 35.667027, 21.545437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.490376, 35.276070, 21.540216>,  <40.541027, 35.041496, 21.537085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.490376, 35.276070, 21.540216>,  <40.405956, 35.667027, 21.545437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490376, 35.276070, 21.540216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422835, -0.103324, 0.900297,
		-0.881288, -0.184488, -0.435081,
		0.211048, -0.977389, -0.013050,
		40.553688, 34.982853, 21.536301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763203, 35.327805, 21.715179>,  <40.405956, 35.667027, 21.545437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763203, 35.327805, 21.715179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.072544, 35.089252, 21.801210>,  <40.258148, 34.946121, 21.852829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.072544, 35.089252, 21.801210>,  <39.763203, 35.327805, 21.715179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072544, 35.089252, 21.801210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286078, -0.025528, 0.957866,
		-0.565762, -0.802296, -0.190353,
		0.773351, -0.596380, 0.215076,
		40.304550, 34.910339, 21.865734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463833, 34.846462, 22.182020>,  <39.763203, 35.327805, 21.715179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463833, 34.846462, 22.182020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.858482, 34.802624, 22.230303>,  <40.095272, 34.776321, 22.259274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.858482, 34.802624, 22.230303>,  <39.463833, 34.846462, 22.182020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858482, 34.802624, 22.230303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129028, -0.072275, 0.989004,
		-0.099673, -0.991344, -0.085450,
		0.986619, -0.109602, 0.120707,
		40.154469, 34.769745, 22.266516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388580, 34.159199, 21.790100>,  <39.463833, 34.846462, 22.182020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388580, 34.159199, 21.790100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.081150, 33.927982, 21.680435>,  <38.896694, 33.789253, 21.614635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.081150, 33.927982, 21.680435>,  <39.388580, 34.159199, 21.790100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081150, 33.927982, 21.680435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164383, 0.235722, -0.957817,
		0.618284, -0.781219, -0.086149,
		-0.768572, -0.578042, -0.274162,
		38.850578, 33.754570, 21.598186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613594, 33.785713, 21.227924>,  <39.388580, 34.159199, 21.790100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613594, 33.785713, 21.227924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.215454, 33.756912, 21.202299>,  <38.976570, 33.739632, 21.186924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.215454, 33.756912, 21.202299>,  <39.613594, 33.785713, 21.227924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215454, 33.756912, 21.202299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046396, 0.224632, -0.973339,
		0.084468, -0.971780, -0.220246,
		-0.995346, -0.071997, -0.064061,
		38.916851, 33.735313, 21.183081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449501, 33.413025, 20.631239>,  <39.613594, 33.785713, 21.227924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449501, 33.413025, 20.631239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.100342, 33.588123, 20.717428>,  <38.890846, 33.693180, 20.769142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.100342, 33.588123, 20.717428>,  <39.449501, 33.413025, 20.631239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100342, 33.588123, 20.717428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134003, 0.209551, -0.968572,
		-0.469137, -0.874340, -0.124258,
		-0.872900, 0.437742, 0.215472,
		38.838470, 33.719444, 20.782070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892212, 33.088680, 20.169111>,  <39.449501, 33.413025, 20.631239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892212, 33.088680, 20.169111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.750961, 33.443737, 20.287357>,  <38.666210, 33.656773, 20.358305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.750961, 33.443737, 20.287357>,  <38.892212, 33.088680, 20.169111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750961, 33.443737, 20.287357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262594, 0.209237, -0.941947,
		-0.897969, -0.410251, 0.159204,
		-0.353124, 0.887645, 0.295617,
		38.645023, 33.710030, 20.376043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264004, 33.196712, 19.829321>,  <38.892212, 33.088680, 20.169111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264004, 33.196712, 19.829321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.377975, 33.562889, 19.943007>,  <38.446358, 33.782597, 20.011217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.377975, 33.562889, 19.943007>,  <38.264004, 33.196712, 19.829321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377975, 33.562889, 19.943007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012484, 0.300021, -0.953851,
		-0.958468, 0.268229, 0.096912,
		0.284927, 0.915445, 0.284212,
		38.463455, 33.837524, 20.028271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998901, 33.611080, 19.346266>,  <38.264004, 33.196712, 19.829321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998901, 33.611080, 19.346266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.262615, 33.864204, 19.508692>,  <38.420845, 34.016079, 19.606148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.262615, 33.864204, 19.508692>,  <37.998901, 33.611080, 19.346266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262615, 33.864204, 19.508692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056256, 0.497028, -0.865909,
		-0.749785, 0.593725, 0.292084,
		0.659286, 0.632814, 0.406064,
		38.460400, 34.054050, 19.630510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808300, 34.203186, 19.003532>,  <37.998901, 33.611080, 19.346266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808300, 34.203186, 19.003532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.176743, 34.238701, 19.155149>,  <38.397808, 34.260010, 19.246119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.176743, 34.238701, 19.155149>,  <37.808300, 34.203186, 19.003532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176743, 34.238701, 19.155149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331738, 0.330516, -0.883577,
		-0.203727, 0.939615, 0.274989,
		0.921111, 0.088785, 0.379041,
		38.453075, 34.265335, 19.268862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070683, 34.685490, 18.572552>,  <37.808300, 34.203186, 19.003532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070683, 34.685490, 18.572552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.399704, 34.528053, 18.736740>,  <38.597118, 34.433594, 18.835253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.399704, 34.528053, 18.736740>,  <38.070683, 34.685490, 18.572552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399704, 34.528053, 18.736740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493946, 0.136796, -0.858664,
		0.281808, 0.909052, 0.306933,
		0.822558, -0.393587, 0.410472,
		38.646473, 34.409977, 18.859882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663399, 35.199226, 18.476303>,  <38.070683, 34.685490, 18.572552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663399, 35.199226, 18.476303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.813004, 34.830196, 18.514198>,  <38.902767, 34.608780, 18.536936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.813004, 34.830196, 18.514198>,  <38.663399, 35.199226, 18.476303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813004, 34.830196, 18.514198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554821, 0.140721, -0.819982,
		0.743162, 0.359245, 0.564494,
		0.374010, -0.922573, 0.094738,
		38.925205, 34.553425, 18.542620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300476, 35.280350, 18.218260>,  <38.663399, 35.199226, 18.476303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300476, 35.280350, 18.218260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.279678, 34.881828, 18.190914>,  <39.267200, 34.642715, 18.174507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.279678, 34.881828, 18.190914>,  <39.300476, 35.280350, 18.218260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279678, 34.881828, 18.190914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484540, 0.034691, -0.874081,
		0.873223, -0.078572, 0.480946,
		-0.051994, -0.996305, -0.068365,
		39.264080, 34.582935, 18.170404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936703, 35.118786, 17.995348>,  <39.300476, 35.280350, 18.218260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936703, 35.118786, 17.995348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.705368, 34.803024, 17.913012>,  <39.566566, 34.613567, 17.863609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.705368, 34.803024, 17.913012>,  <39.936703, 35.118786, 17.995348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705368, 34.803024, 17.913012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287643, 0.038795, -0.956952,
		0.763409, -0.612645, 0.204631,
		-0.578333, -0.789406, -0.205839,
		39.531868, 34.566204, 17.851259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323902, 34.792454, 17.471113>,  <39.936703, 35.118786, 17.995348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323902, 34.792454, 17.471113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.967384, 34.613644, 17.440760>,  <39.753475, 34.506355, 17.422548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.967384, 34.613644, 17.440760>,  <40.323902, 34.792454, 17.471113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967384, 34.613644, 17.440760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149242, -0.131197, -0.980058,
		0.428159, -0.884846, 0.183651,
		-0.891295, -0.447030, -0.075883,
		39.699997, 34.479534, 17.417995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447655, 34.351994, 16.951662>,  <40.323902, 34.792454, 17.471113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447655, 34.351994, 16.951662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.048733, 34.378849, 16.963493>,  <39.809380, 34.394962, 16.970592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.048733, 34.378849, 16.963493>,  <40.447655, 34.351994, 16.951662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048733, 34.378849, 16.963493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036212, -0.099849, -0.994344,
		-0.063799, -0.992735, 0.102011,
		-0.997306, 0.067132, 0.029578,
		39.749542, 34.398991, 16.972366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077854, 33.741707, 16.612625>,  <40.447655, 34.351994, 16.951662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077854, 33.741707, 16.612625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.846840, 34.068241, 16.615549>,  <39.708233, 34.264160, 16.617304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.846840, 34.068241, 16.615549>,  <40.077854, 33.741707, 16.612625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846840, 34.068241, 16.615549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033613, 0.032725, -0.998899,
		-0.815676, -0.576650, -0.046340,
		-0.577532, 0.816335, 0.007310,
		39.673580, 34.313141, 16.617743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775700, 33.347141, 17.192705>,  <40.077854, 33.741707, 16.612625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775700, 33.347141, 17.192705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.826931, 33.007172, 16.988268>,  <39.857670, 32.803188, 16.865604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.826931, 33.007172, 16.988268>,  <39.775700, 33.347141, 17.192705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826931, 33.007172, 16.988268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405060, -0.515226, 0.755294,
		-0.905275, 0.110288, -0.410260,
		0.128077, -0.849929, -0.511095,
		39.865353, 32.752193, 16.834940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153381, 33.071659, 16.976053>,  <39.775700, 33.347141, 17.192705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153381, 33.071659, 16.976053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.422871, 32.777065, 17.000343>,  <39.584564, 32.600307, 17.014917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.422871, 32.777065, 17.000343>,  <39.153381, 33.071659, 16.976053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422871, 32.777065, 17.000343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529266, -0.423542, 0.735180,
		-0.515732, -0.527444, -0.675147,
		0.673720, -0.736488, 0.060724,
		39.624989, 32.556118, 17.018560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793438, 32.425049, 16.947098>,  <39.153381, 33.071659, 16.976053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793438, 32.425049, 16.947098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.141979, 32.358780, 17.131830>,  <39.351105, 32.319019, 17.242670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.141979, 32.358780, 17.131830>,  <38.793438, 32.425049, 16.947098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141979, 32.358780, 17.131830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486299, -0.416687, 0.768040,
		0.065194, -0.893825, -0.443651,
		0.871357, -0.165676, 0.461832,
		39.403385, 32.309078, 17.270380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754467, 31.682566, 17.255836>,  <38.793438, 32.425049, 16.947098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754467, 31.682566, 17.255836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.064926, 31.835741, 17.456215>,  <39.251202, 31.927647, 17.576443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.064926, 31.835741, 17.456215>,  <38.754467, 31.682566, 17.255836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064926, 31.835741, 17.456215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206454, -0.596339, 0.775730,
		0.595791, -0.705506, -0.383790,
		0.776151, 0.382938, 0.500948,
		39.297771, 31.950623, 17.606499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924389, 31.124643, 17.656803>,  <38.754467, 31.682566, 17.255836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924389, 31.124643, 17.656803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.132042, 31.422718, 17.824230>,  <39.256634, 31.601562, 17.924686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.132042, 31.422718, 17.824230>,  <38.924389, 31.124643, 17.656803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132042, 31.422718, 17.824230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105785, -0.429944, 0.896637,
		0.848121, -0.509752, -0.144369,
		0.519133, 0.745185, 0.418569,
		39.287781, 31.646273, 17.949800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558525, 30.857111, 17.924294>,  <38.924389, 31.124643, 17.656803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558525, 30.857111, 17.924294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.428886, 31.184589, 18.113901>,  <39.351101, 31.381077, 18.227665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.428886, 31.184589, 18.113901>,  <39.558525, 30.857111, 17.924294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428886, 31.184589, 18.113901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013284, -0.497075, 0.867606,
		0.945929, 0.287489, 0.150228,
		-0.324101, 0.818698, 0.474017,
		39.331657, 31.430199, 18.256105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884026, 30.860125, 18.478407>,  <39.558525, 30.857111, 17.924294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884026, 30.860125, 18.478407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.597111, 31.120991, 18.576532>,  <39.424961, 31.277510, 18.635408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.597111, 31.120991, 18.576532>,  <39.884026, 30.860125, 18.478407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597111, 31.120991, 18.576532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002887, -0.354849, 0.934919,
		0.696772, 0.669897, 0.256412,
		-0.717287, 0.652165, 0.245315,
		39.381924, 31.316641, 18.650127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439808, 30.825966, 18.840229>,  <39.884026, 30.860125, 18.478407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439808, 30.825966, 18.840229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.593849, 30.461861, 18.779417>,  <40.686275, 30.243397, 18.742929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.593849, 30.461861, 18.779417>,  <40.439808, 30.825966, 18.840229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593849, 30.461861, 18.779417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150006, 0.224282, -0.962910,
		0.910601, 0.348015, 0.222917,
		0.385103, -0.910266, -0.152028,
		40.709381, 30.188782, 18.733809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855503, 31.029556, 18.393534>,  <40.439808, 30.825966, 18.840229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855503, 31.029556, 18.393534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.824703, 30.634052, 18.342268>,  <40.806225, 30.396749, 18.311508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.824703, 30.634052, 18.342268>,  <40.855503, 31.029556, 18.393534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824703, 30.634052, 18.342268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111888, 0.119165, -0.986550,
		0.990733, -0.090304, 0.101454,
		-0.076999, -0.988759, -0.128164,
		40.801605, 30.337425, 18.303820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421917, 30.873920, 17.995823>,  <40.855503, 31.029556, 18.393534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.421917, 30.873920, 17.995823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.167984, 30.568184, 17.950623>,  <41.015625, 30.384741, 17.923502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.167984, 30.568184, 17.950623>,  <41.421917, 30.873920, 17.995823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167984, 30.568184, 17.950623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183382, -0.006977, -0.983017,
		0.750573, -0.644772, 0.144596,
		-0.634831, -0.764343, -0.113003,
		40.977535, 30.338881, 17.916721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823009, 30.560673, 17.561682>,  <41.421917, 30.873920, 17.995823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823009, 30.560673, 17.561682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.457550, 30.404020, 17.518108>,  <41.238274, 30.310028, 17.491964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.457550, 30.404020, 17.518108>,  <41.823009, 30.560673, 17.561682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457550, 30.404020, 17.518108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167946, -0.119637, -0.978510,
		0.370183, -0.912311, 0.175079,
		-0.913651, -0.391632, -0.108931,
		41.183456, 30.286531, 17.485430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874168, 29.830780, 17.314177>,  <41.823009, 30.560673, 17.561682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874168, 29.830780, 17.314177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.509666, 29.952730, 17.203417>,  <41.290966, 30.025900, 17.136961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.509666, 29.952730, 17.203417>,  <41.874168, 29.830780, 17.314177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.509666, 29.952730, 17.203417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250013, -0.124793, -0.960167,
		-0.327287, -0.944181, 0.037495,
		-0.911250, 0.304876, -0.276901,
		41.236290, 30.044193, 17.120346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744961, 29.413158, 16.746553>,  <41.874168, 29.830780, 17.314177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744961, 29.413158, 16.746553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.456181, 29.683641, 16.687853>,  <41.282913, 29.845932, 16.652632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.456181, 29.683641, 16.687853>,  <41.744961, 29.413158, 16.746553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456181, 29.683641, 16.687853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286639, 0.099229, -0.952886,
		-0.629787, -0.729997, -0.265465,
		-0.721946, 0.676208, -0.146753,
		41.239597, 29.886503, 16.643827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321140, 29.208363, 16.093615>,  <41.744961, 29.413158, 16.746553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321140, 29.208363, 16.093615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.295284, 29.602264, 16.158215>,  <41.279770, 29.838606, 16.196974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.295284, 29.602264, 16.158215>,  <41.321140, 29.208363, 16.093615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295284, 29.602264, 16.158215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174066, 0.170484, -0.969864,
		-0.982610, -0.034580, -0.182432,
		-0.064640, 0.984754, 0.161500,
		41.275890, 29.897690, 16.206665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939228, 29.381603, 15.602819>,  <41.321140, 29.208363, 16.093615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939228, 29.381603, 15.602819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.084129, 29.735519, 15.720063>,  <41.171070, 29.947870, 15.790409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.084129, 29.735519, 15.720063>,  <40.939228, 29.381603, 15.602819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084129, 29.735519, 15.720063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192258, 0.236775, -0.952352,
		-0.912035, 0.401348, -0.084335,
		0.362256, 0.884792, 0.293110,
		41.192806, 30.000957, 15.807996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689186, 29.890373, 15.076892>,  <40.939228, 29.381603, 15.602819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689186, 29.890373, 15.076892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.007687, 30.051235, 15.257674>,  <41.198788, 30.147753, 15.366143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.007687, 30.051235, 15.257674>,  <40.689186, 29.890373, 15.076892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007687, 30.051235, 15.257674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427756, 0.154035, -0.890673,
		-0.427804, 0.902522, -0.049374,
		0.796247, 0.402154, 0.451955,
		41.246559, 30.171881, 15.393261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.528355, 27.287979, 31.854271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.870773, 27.494144, 31.869934>,  <40.076225, 27.617844, 31.879332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.870773, 27.494144, 31.869934>,  <39.528355, 27.287979, 31.854271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870773, 27.494144, 31.869934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057083, -0.018973, -0.998189,
		-0.513738, 0.856731, -0.045664,
		0.856046, 0.515415, 0.039157,
		40.127586, 27.648769, 31.881681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573727, 27.920063, 31.425625>,  <39.528355, 27.287979, 31.854271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573727, 27.920063, 31.425625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.961594, 27.822359, 31.429268>,  <40.194313, 27.763737, 31.431454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.961594, 27.822359, 31.429268>,  <39.573727, 27.920063, 31.425625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961594, 27.822359, 31.429268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033745, 0.096880, -0.994724,
		0.242088, 0.964858, 0.102184,
		0.969667, -0.244259, 0.009106,
		40.252495, 27.749081, 31.431999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903034, 28.453251, 31.151138>,  <39.573727, 27.920063, 31.425625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903034, 28.453251, 31.151138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.093994, 28.109222, 31.079170>,  <40.208569, 27.902805, 31.035990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.093994, 28.109222, 31.079170>,  <39.903034, 28.453251, 31.151138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.093994, 28.109222, 31.079170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073718, 0.164833, -0.983563,
		0.875590, 0.482812, 0.015288,
		0.477396, -0.860071, -0.179918,
		40.237213, 27.851200, 31.025194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416485, 28.634205, 30.677362>,  <39.903034, 28.453251, 31.151138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416485, 28.634205, 30.677362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.408581, 28.236799, 30.632576>,  <40.403839, 27.998356, 30.605705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.408581, 28.236799, 30.632576>,  <40.416485, 28.634205, 30.677362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408581, 28.236799, 30.632576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086931, 0.109855, -0.990139,
		0.996018, -0.029294, 0.084197,
		-0.019756, -0.993516, -0.111964,
		40.402653, 27.938744, 30.598988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948261, 28.445675, 30.200161>,  <40.416485, 28.634205, 30.677362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948261, 28.445675, 30.200161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.703972, 28.129663, 30.221596>,  <40.557400, 27.940058, 30.234457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.703972, 28.129663, 30.221596>,  <40.948261, 28.445675, 30.200161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703972, 28.129663, 30.221596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098205, -0.142723, -0.984879,
		0.785730, -0.596227, 0.164749,
		-0.610725, -0.790028, 0.053589,
		40.520756, 27.892654, 30.237673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182331, 28.157215, 29.591295>,  <40.948261, 28.445675, 30.200161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.182331, 28.157215, 29.591295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.861420, 27.937988, 29.685930>,  <40.668873, 27.806452, 29.742712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.861420, 27.937988, 29.685930>,  <41.182331, 28.157215, 29.591295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861420, 27.937988, 29.685930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029202, -0.359819, -0.932565,
		0.596236, -0.755086, 0.272670,
		-0.802278, -0.548066, 0.236587,
		40.620735, 27.773569, 29.756907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264362, 27.408360, 29.422232>,  <41.182331, 28.157215, 29.591295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264362, 27.408360, 29.422232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.880898, 27.520021, 29.400169>,  <40.650818, 27.587019, 29.386932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.880898, 27.520021, 29.400169>,  <41.264362, 27.408360, 29.422232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880898, 27.520021, 29.400169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025854, -0.107586, -0.993859,
		-0.283373, -0.954200, 0.095922,
		-0.958661, 0.279153, -0.055157,
		40.593300, 27.603767, 29.383623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967701, 26.973661, 28.884333>,  <41.264362, 27.408360, 29.422232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967701, 26.973661, 28.884333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.715481, 27.281313, 28.925985>,  <40.564148, 27.465904, 28.950977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.715481, 27.281313, 28.925985>,  <40.967701, 26.973661, 28.884333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.715481, 27.281313, 28.925985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125569, 0.031305, -0.991591,
		-0.765922, -0.638325, 0.076839,
		-0.630552, 0.769130, 0.104131,
		40.526314, 27.512053, 28.957224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612232, 26.877668, 28.409836>,  <40.967701, 26.973661, 28.884333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612232, 26.877668, 28.409836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.520161, 27.258392, 28.490904>,  <40.464920, 27.486826, 28.539545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.520161, 27.258392, 28.490904>,  <40.612232, 26.877668, 28.409836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520161, 27.258392, 28.490904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003530, 0.209079, -0.977892,
		-0.973143, -0.224371, -0.051484,
		-0.230175, 0.951811, 0.202672,
		40.451107, 27.543936, 28.551706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085854, 27.111345, 27.853617>,  <40.612232, 26.877668, 28.409836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085854, 27.111345, 27.853617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.216812, 27.454161, 28.012764>,  <40.295387, 27.659849, 28.108252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.216812, 27.454161, 28.012764>,  <40.085854, 27.111345, 27.853617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216812, 27.454161, 28.012764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069777, 0.397995, -0.914730,
		-0.942309, 0.327237, 0.070499,
		0.327392, 0.857039, 0.397868,
		40.315029, 27.711273, 28.132124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564293, 27.625433, 27.672728>,  <40.085854, 27.111345, 27.853617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564293, 27.625433, 27.672728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.922958, 27.799654, 27.704439>,  <40.138157, 27.904186, 27.723467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.922958, 27.799654, 27.704439>,  <39.564293, 27.625433, 27.672728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922958, 27.799654, 27.704439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117440, 0.406684, -0.905989,
		-0.426848, 0.803058, 0.415811,
		0.896665, 0.435553, 0.079281,
		40.191959, 27.930321, 27.728224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521484, 28.357178, 27.306261>,  <39.564293, 27.625433, 27.672728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521484, 28.357178, 27.306261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.914188, 28.281124, 27.306534>,  <40.149811, 28.235493, 27.306698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.914188, 28.281124, 27.306534>,  <39.521484, 28.357178, 27.306261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914188, 28.281124, 27.306534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077608, 0.397455, -0.914334,
		0.173574, 0.897708, 0.404960,
		0.981758, -0.190133, 0.000681,
		40.208717, 28.224085, 27.306738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161545, 29.024914, 27.078928>,  <39.521484, 28.357178, 27.306261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161545, 29.024914, 27.078928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.782227, 28.959526, 26.970110>,  <38.554634, 28.920294, 26.904819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.782227, 28.959526, 26.970110>,  <39.161545, 29.024914, 27.078928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782227, 28.959526, 26.970110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255418, -0.115723, 0.959880,
		-0.188391, 0.979738, 0.067987,
		-0.948299, -0.163468, -0.272044,
		38.497738, 28.910486, 26.888496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719955, 29.548317, 27.413080>,  <39.161545, 29.024914, 27.078928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719955, 29.548317, 27.413080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.522675, 29.214972, 27.313274>,  <38.404308, 29.014963, 27.253391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.522675, 29.214972, 27.313274>,  <38.719955, 29.548317, 27.413080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522675, 29.214972, 27.313274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373628, -0.056097, 0.925881,
		-0.785594, 0.549869, -0.283701,
		-0.493198, -0.833365, -0.249516,
		38.374714, 28.964962, 27.238420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941475, 29.607985, 27.820328>,  <38.719955, 29.548317, 27.413080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941475, 29.607985, 27.820328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.033489, 29.228674, 27.732828>,  <38.088699, 29.001087, 27.680328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.033489, 29.228674, 27.732828>,  <37.941475, 29.607985, 27.820328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033489, 29.228674, 27.732828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348491, -0.290141, 0.891276,
		-0.908645, -0.128796, -0.397210,
		0.230039, -0.948278, -0.218751,
		38.102501, 28.944191, 27.667202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346329, 29.287905, 27.934496>,  <37.941475, 29.607985, 27.820328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346329, 29.287905, 27.934496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.639065, 29.015480, 27.944067>,  <37.814705, 28.852026, 27.949810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.639065, 29.015480, 27.944067>,  <37.346329, 29.287905, 27.934496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639065, 29.015480, 27.944067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326049, -0.319095, 0.889871,
		-0.598422, -0.659040, -0.455584,
		0.731835, -0.681062, 0.023926,
		37.858616, 28.811161, 27.951244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024422, 28.751854, 28.246483>,  <37.346329, 29.287905, 27.934496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024422, 28.751854, 28.246483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.400951, 28.623671, 28.288849>,  <37.626869, 28.546761, 28.314268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.400951, 28.623671, 28.288849>,  <37.024422, 28.751854, 28.246483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400951, 28.623671, 28.288849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209677, -0.309339, 0.927548,
		-0.264471, -0.895332, -0.358380,
		0.941324, -0.320453, 0.105919,
		37.683350, 28.527533, 28.320623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913742, 28.144203, 28.530987>,  <37.024422, 28.751854, 28.246483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913742, 28.144203, 28.530987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.292656, 28.254360, 28.596476>,  <37.520004, 28.320456, 28.635769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.292656, 28.254360, 28.596476>,  <36.913742, 28.144203, 28.530987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292656, 28.254360, 28.596476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131239, -0.132628, 0.982439,
		0.292272, -0.952138, -0.089495,
		0.947288, 0.275395, 0.163721,
		37.576843, 28.336979, 28.645592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220898, 27.615759, 28.909178>,  <36.913742, 28.144203, 28.530987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220898, 27.615759, 28.909178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.427509, 27.949617, 28.985662>,  <37.551476, 28.149933, 29.031553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.427509, 27.949617, 28.985662>,  <37.220898, 27.615759, 28.909178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427509, 27.949617, 28.985662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190610, -0.105629, 0.975966,
		0.834785, -0.540561, 0.104532,
		0.516528, 0.834647, 0.191214,
		37.582466, 28.200012, 29.043026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682381, 27.427288, 29.515377>,  <37.220898, 27.615759, 28.909178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682381, 27.427288, 29.515377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.616322, 27.821795, 29.515518>,  <37.576687, 28.058498, 29.515602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.616322, 27.821795, 29.515518>,  <37.682381, 27.427288, 29.515377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616322, 27.821795, 29.515518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287292, -0.048449, 0.956617,
		0.943498, 0.157886, 0.291348,
		-0.165152, 0.986268, 0.000352,
		37.566776, 28.117676, 29.515623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808903, 27.648096, 30.206305>,  <37.682381, 27.427288, 29.515377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808903, 27.648096, 30.206305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.637161, 27.986996, 30.081198>,  <37.534115, 28.190336, 30.006134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.637161, 27.986996, 30.081198>,  <37.808903, 27.648096, 30.206305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637161, 27.986996, 30.081198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149533, 0.274843, 0.949790,
		0.890670, 0.454567, 0.008687,
		-0.429356, 0.847249, -0.312767,
		37.508354, 28.241171, 29.987368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940060, 28.166027, 30.707161>,  <37.808903, 27.648096, 30.206305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940060, 28.166027, 30.707161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.637428, 28.326633, 30.500713>,  <37.455849, 28.422997, 30.376844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.637428, 28.326633, 30.500713>,  <37.940060, 28.166027, 30.707161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637428, 28.326633, 30.500713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346878, 0.422644, 0.837286,
		0.554318, 0.812500, -0.180485,
		-0.756576, 0.401516, -0.516118,
		37.410454, 28.447088, 30.345879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910748, 28.896080, 30.838125>,  <37.940060, 28.166027, 30.707161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910748, 28.896080, 30.838125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.530354, 28.821669, 30.739317>,  <37.302116, 28.777021, 30.680033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.530354, 28.821669, 30.739317>,  <37.910748, 28.896080, 30.838125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530354, 28.821669, 30.739317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304454, 0.423334, 0.853286,
		-0.054162, 0.886669, -0.459221,
		-0.950986, -0.186027, -0.247021,
		37.245056, 28.765860, 30.665211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559658, 29.442015, 31.109859>,  <37.910748, 28.896080, 30.838125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559658, 29.442015, 31.109859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.255322, 29.189144, 31.051249>,  <37.072720, 29.037422, 31.016083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.255322, 29.189144, 31.051249>,  <37.559658, 29.442015, 31.109859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255322, 29.189144, 31.051249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547754, 0.504549, 0.667380,
		-0.347974, 0.588031, -0.730160,
		-0.760842, -0.632179, -0.146527,
		37.027069, 28.999491, 31.007290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954601, 29.866163, 31.199282>,  <37.559658, 29.442015, 31.109859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954601, 29.866163, 31.199282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.816689, 29.491796, 31.228085>,  <36.733940, 29.267176, 31.245367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.816689, 29.491796, 31.228085>,  <36.954601, 29.866163, 31.199282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816689, 29.491796, 31.228085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579567, 0.272594, 0.767981,
		-0.738394, 0.223054, -0.636412,
		-0.344783, -0.935917, 0.072007,
		36.713253, 29.211021, 31.249687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358200, 30.002352, 31.408833>,  <36.954601, 29.866163, 31.199282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358200, 30.002352, 31.408833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.410709, 29.617990, 31.506348>,  <36.442215, 29.387373, 31.564857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.410709, 29.617990, 31.506348>,  <36.358200, 30.002352, 31.408833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410709, 29.617990, 31.506348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613842, 0.114316, 0.781108,
		-0.778439, -0.252182, -0.574837,
		0.131268, -0.960904, 0.243788,
		36.450089, 29.329720, 31.579485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674500, 30.102264, 31.322844>,  <36.358200, 30.002352, 31.408833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674500, 30.102264, 31.322844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.463810, 30.392841, 31.499409>,  <35.337395, 30.567186, 31.605349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.463810, 30.392841, 31.499409>,  <35.674500, 30.102264, 31.322844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463810, 30.392841, 31.499409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222444, 0.618988, -0.753242,
		-0.820416, -0.298559, -0.487627,
		-0.526722, 0.726441, 0.441415,
		35.305794, 30.610773, 31.631834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271336, 30.331827, 30.737600>,  <35.674500, 30.102264, 31.322844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271336, 30.331827, 30.737600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.300846, 30.637884, 30.993448>,  <35.318550, 30.821518, 31.146957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.300846, 30.637884, 30.993448>,  <35.271336, 30.331827, 30.737600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300846, 30.637884, 30.993448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141661, 0.626824, -0.766175,
		-0.987162, 0.147133, -0.062148,
		0.073774, 0.765143, 0.639620,
		35.322979, 30.867428, 31.185335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759350, 30.792929, 30.636486>,  <35.271336, 30.331827, 30.737600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759350, 30.792929, 30.636486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.074093, 30.996906, 30.775515>,  <35.262939, 31.119293, 30.858932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.074093, 30.996906, 30.775515>,  <34.759350, 30.792929, 30.636486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074093, 30.996906, 30.775515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232336, 0.276986, -0.932362,
		-0.571725, 0.814393, 0.099471,
		0.786861, 0.509944, 0.347573,
		35.310150, 31.149889, 30.879786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704548, 31.574947, 30.547344>,  <34.759350, 30.792929, 30.636486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704548, 31.574947, 30.547344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.087463, 31.459745, 30.537178>,  <35.317215, 31.390625, 30.531078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.087463, 31.459745, 30.537178>,  <34.704548, 31.574947, 30.547344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087463, 31.459745, 30.537178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046323, 0.239557, -0.969777,
		0.285388, 0.927182, 0.242667,
		0.957292, -0.288003, -0.025417,
		35.374653, 31.373344, 30.529552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021503, 32.054310, 30.094355>,  <34.704548, 31.574947, 30.547344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021503, 32.054310, 30.094355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.280933, 31.749933, 30.101610>,  <35.436592, 31.567308, 30.105963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.280933, 31.749933, 30.101610>,  <35.021503, 32.054310, 30.094355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280933, 31.749933, 30.101610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324627, 0.254980, -0.910825,
		0.688457, 0.596622, 0.412394,
		0.648571, -0.760938, 0.018137,
		35.475506, 31.521652, 30.107052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627392, 32.349667, 29.959787>,  <35.021503, 32.054310, 30.094355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627392, 32.349667, 29.959787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.676720, 31.961035, 29.878965>,  <35.706318, 31.727856, 29.830473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.676720, 31.961035, 29.878965>,  <35.627392, 32.349667, 29.959787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676720, 31.961035, 29.878965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240573, 0.226803, -0.943761,
		0.962765, 0.067777, 0.261705,
		0.123321, -0.971579, -0.202053,
		35.713715, 31.669561, 29.818350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143318, 32.406368, 29.658049>,  <35.627392, 32.349667, 29.959787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143318, 32.406368, 29.658049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.999252, 32.056343, 29.528711>,  <35.912815, 31.846329, 29.451109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.999252, 32.056343, 29.528711>,  <36.143318, 32.406368, 29.658049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999252, 32.056343, 29.528711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382508, 0.177609, -0.906721,
		0.850865, -0.450246, 0.270751,
		-0.360160, -0.875062, -0.323344,
		35.891205, 31.793825, 29.431707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691509, 32.170479, 29.318014>,  <36.143318, 32.406368, 29.658049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691509, 32.170479, 29.318014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.371696, 31.951942, 29.218208>,  <36.179810, 31.820820, 29.158325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.371696, 31.951942, 29.218208>,  <36.691509, 32.170479, 29.318014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371696, 31.951942, 29.218208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286535, 0.018150, -0.957898,
		0.527869, -0.837365, 0.142035,
		-0.799532, -0.546342, -0.249515,
		36.131836, 31.788040, 29.143354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918182, 31.639088, 28.924835>,  <36.691509, 32.170479, 29.318014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918182, 31.639088, 28.924835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.530064, 31.659016, 28.830137>,  <36.297192, 31.670973, 28.773319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.530064, 31.659016, 28.830137>,  <36.918182, 31.639088, 28.924835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530064, 31.659016, 28.830137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241615, 0.149733, -0.958750,
		-0.012315, -0.987471, -0.157322,
		-0.970294, 0.049819, -0.236744,
		36.238976, 31.673962, 28.759113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742477, 31.119598, 28.445381>,  <36.918182, 31.639088, 28.924835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742477, 31.119598, 28.445381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.466335, 31.405102, 28.398134>,  <36.300648, 31.576405, 28.369787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.466335, 31.405102, 28.398134>,  <36.742477, 31.119598, 28.445381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466335, 31.405102, 28.398134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215031, 0.046553, -0.975497,
		-0.690771, -0.698843, -0.185618,
		-0.690360, 0.713759, -0.118115,
		36.259228, 31.619230, 28.362700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486553, 30.942417, 27.790606>,  <36.742477, 31.119598, 28.445381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486553, 30.942417, 27.790606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.371765, 31.320587, 27.852345>,  <36.302895, 31.547489, 27.889389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.371765, 31.320587, 27.852345>,  <36.486553, 30.942417, 27.790606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371765, 31.320587, 27.852345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194532, 0.215282, -0.956980,
		-0.937980, -0.244596, -0.245694,
		-0.286967, 0.945424, 0.154348,
		36.285675, 31.604214, 27.898649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153538, 31.121483, 27.268166>,  <36.486553, 30.942417, 27.790606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153538, 31.121483, 27.268166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.258915, 31.484285, 27.399582>,  <36.322140, 31.701967, 27.478432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.258915, 31.484285, 27.399582>,  <36.153538, 31.121483, 27.268166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258915, 31.484285, 27.399582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170403, 0.291464, -0.941282,
		-0.949506, 0.303958, -0.077772,
		0.263443, 0.907005, 0.328542,
		36.337948, 31.756388, 27.498144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897820, 31.469429, 26.815771>,  <36.153538, 31.121483, 27.268166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897820, 31.469429, 26.815771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.137493, 31.761835, 26.946367>,  <36.281296, 31.937279, 27.024725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.137493, 31.761835, 26.946367>,  <35.897820, 31.469429, 26.815771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137493, 31.761835, 26.946367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196225, 0.261270, -0.945110,
		-0.776194, 0.630358, 0.013104,
		0.599182, 0.731017, 0.326488,
		36.317249, 31.981140, 27.044313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826889, 31.973974, 26.375124>,  <35.897820, 31.469429, 26.815771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826889, 31.973974, 26.375124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.173714, 32.059433, 26.555147>,  <36.381809, 32.110710, 26.663160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.173714, 32.059433, 26.555147>,  <35.826889, 31.973974, 26.375124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173714, 32.059433, 26.555147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379012, 0.303429, -0.874231,
		-0.323339, 0.928593, 0.182117,
		0.867065, 0.213649, 0.450059,
		36.433834, 32.123528, 26.690165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980083, 32.657059, 26.233831>,  <35.826889, 31.973974, 26.375124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980083, 32.657059, 26.233831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.329491, 32.479404, 26.313543>,  <36.539135, 32.372814, 26.361370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.329491, 32.479404, 26.313543>,  <35.980083, 32.657059, 26.233831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329491, 32.479404, 26.313543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377350, 0.359177, -0.853580,
		0.307526, 0.820816, 0.481341,
		0.873519, -0.444132, 0.199278,
		36.591545, 32.346165, 26.373327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514004, 33.144756, 26.033125>,  <35.980083, 32.657059, 26.233831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514004, 33.144756, 26.033125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.719799, 32.802094, 26.048330>,  <36.843277, 32.596497, 26.057453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.719799, 32.802094, 26.048330>,  <36.514004, 33.144756, 26.033125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719799, 32.802094, 26.048330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456423, 0.236045, -0.857882,
		0.725937, 0.458718, 0.512439,
		0.514485, -0.856656, 0.038016,
		36.874146, 32.545097, 26.059734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073925, 33.274685, 25.575216>,  <36.514004, 33.144756, 26.033125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073925, 33.274685, 25.575216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.101681, 32.879925, 25.633463>,  <37.118336, 32.643066, 25.668411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.101681, 32.879925, 25.633463>,  <37.073925, 33.274685, 25.575216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101681, 32.879925, 25.633463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437472, -0.101082, -0.893533,
		0.896551, 0.125707, 0.424729,
		0.069391, -0.986904, 0.145618,
		37.122498, 32.583855, 25.677149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794979, 33.120060, 25.557058>,  <37.073925, 33.274685, 25.575216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794979, 33.120060, 25.557058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.576092, 32.798847, 25.462664>,  <37.444759, 32.606121, 25.406027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.576092, 32.798847, 25.462664>,  <37.794979, 33.120060, 25.557058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576092, 32.798847, 25.462664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526824, -0.111373, -0.842646,
		0.650388, -0.585439, 0.484002,
		-0.547222, -0.803030, -0.235988,
		37.411926, 32.557938, 25.391867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330685, 32.780235, 25.306355>,  <37.794979, 33.120060, 25.557058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330685, 32.780235, 25.306355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.003101, 32.582233, 25.190229>,  <37.806553, 32.463432, 25.120554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.003101, 32.582233, 25.190229>,  <38.330685, 32.780235, 25.306355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003101, 32.582233, 25.190229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395742, -0.120811, -0.910381,
		0.415568, -0.860452, 0.294832,
		-0.818958, -0.495002, -0.290311,
		37.757416, 32.433731, 25.103136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514313, 32.166458, 24.903761>,  <38.330685, 32.780235, 25.306355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514313, 32.166458, 24.903761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.146481, 32.276150, 24.791216>,  <37.925781, 32.341965, 24.723688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.146481, 32.276150, 24.791216>,  <38.514313, 32.166458, 24.903761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146481, 32.276150, 24.791216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273406, -0.067658, -0.959516,
		-0.282167, -0.959281, -0.012760,
		-0.919582, 0.274232, -0.281364,
		37.870605, 32.358418, 24.706806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380768, 31.745625, 24.271795>,  <38.514313, 32.166458, 24.903761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380768, 31.745625, 24.271795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.093750, 32.023838, 24.286579>,  <37.921539, 32.190765, 24.295448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.093750, 32.023838, 24.286579>,  <38.380768, 31.745625, 24.271795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093750, 32.023838, 24.286579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159472, 0.215707, -0.963348,
		-0.678014, -0.685348, -0.265697,
		-0.717541, 0.695535, 0.036958,
		37.878487, 32.232498, 24.297667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755253, 31.607424, 23.694614>,  <38.380768, 31.745625, 24.271795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755253, 31.607424, 23.694614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.830582, 31.982077, 23.812769>,  <37.875778, 32.206867, 23.883661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.830582, 31.982077, 23.812769>,  <37.755253, 31.607424, 23.694614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830582, 31.982077, 23.812769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198925, 0.258152, -0.945403,
		-0.961750, 0.236802, -0.137703,
		0.188325, 0.936633, 0.295384,
		37.887077, 32.263065, 23.901384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817390, 31.909040, 23.073141>,  <37.755253, 31.607424, 23.694614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817390, 31.909040, 23.073141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.886780, 32.230591, 23.300714>,  <37.928413, 32.423523, 23.437258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.886780, 32.230591, 23.300714>,  <37.817390, 31.909040, 23.073141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886780, 32.230591, 23.300714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228895, 0.528962, -0.817194,
		-0.957869, 0.271991, -0.092241,
		0.173478, 0.803878, 0.568934,
		37.938824, 32.471756, 23.471395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325687, 32.490044, 22.833433>,  <37.817390, 31.909040, 23.073141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325687, 32.490044, 22.833433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.651646, 32.641445, 23.009014>,  <37.847221, 32.732285, 23.114363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.651646, 32.641445, 23.009014>,  <37.325687, 32.490044, 22.833433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651646, 32.641445, 23.009014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250233, 0.453367, -0.855478,
		-0.522804, 0.806968, 0.274735,
		0.814898, 0.378500, 0.438951,
		37.896114, 32.754993, 23.140699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336361, 33.143692, 22.785719>,  <37.325687, 32.490044, 22.833433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336361, 33.143692, 22.785719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.725838, 33.142521, 22.876858>,  <37.959522, 33.141819, 22.931541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.725838, 33.142521, 22.876858>,  <37.336361, 33.143692, 22.785719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725838, 33.142521, 22.876858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200915, 0.482761, -0.852394,
		-0.107496, 0.875747, 0.470650,
		0.973693, -0.002932, 0.227845,
		38.017944, 33.141640, 22.945211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505135, 33.777012, 22.634724>,  <37.336361, 33.143692, 22.785719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505135, 33.777012, 22.634724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.843090, 33.563423, 22.621872>,  <38.045864, 33.435272, 22.614161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.843090, 33.563423, 22.621872>,  <37.505135, 33.777012, 22.634724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843090, 33.563423, 22.621872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267974, 0.474463, -0.838495,
		0.462974, 0.699830, 0.543961,
		0.844893, -0.533969, -0.032128,
		38.096558, 33.403233, 22.612234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155613, 34.172741, 22.606884>,  <37.505135, 33.777012, 22.634724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155613, 34.172741, 22.606884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.271896, 33.822617, 22.452318>,  <38.341667, 33.612541, 22.359579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.271896, 33.822617, 22.452318>,  <38.155613, 34.172741, 22.606884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271896, 33.822617, 22.452318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279876, 0.463985, -0.840469,
		0.914962, 0.136187, 0.379865,
		0.290713, -0.875312, -0.386413,
		38.359112, 33.560024, 22.336393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833775, 34.409046, 22.212090>,  <38.155613, 34.172741, 22.606884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833775, 34.409046, 22.212090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.761349, 34.040565, 22.074337>,  <38.717892, 33.819477, 21.991686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.761349, 34.040565, 22.074337>,  <38.833775, 34.409046, 22.212090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761349, 34.040565, 22.074337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247367, 0.296253, -0.922520,
		0.951854, -0.252223, 0.174235,
		-0.181063, -0.921204, -0.344382,
		38.707031, 33.764206, 21.971022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495304, 34.265366, 22.584932>,  <38.833775, 34.409046, 22.212090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495304, 34.265366, 22.584932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.834316, 34.474426, 22.621845>,  <40.037724, 34.599865, 22.643993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.834316, 34.474426, 22.621845>,  <39.495304, 34.265366, 22.584932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834316, 34.474426, 22.621845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029124, -0.127815, 0.991370,
		0.529942, -0.842908, -0.093105,
		0.847534, 0.522657, 0.092283,
		40.088577, 34.631222, 22.649530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777973, 33.886700, 23.042749>,  <39.495304, 34.265366, 22.584932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777973, 33.886700, 23.042749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.010094, 34.212460, 23.041388>,  <40.149364, 34.407913, 23.040571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.010094, 34.212460, 23.041388>,  <39.777973, 33.886700, 23.042749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010094, 34.212460, 23.041388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140306, -0.095858, 0.985457,
		0.802227, -0.572337, -0.169891,
		0.580299, 0.814397, -0.003403,
		40.184185, 34.456779, 23.040367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397614, 33.656910, 23.222651>,  <39.777973, 33.886700, 23.042749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397614, 33.656910, 23.222651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.392445, 34.050381, 23.294443>,  <40.389343, 34.286465, 23.337519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.392445, 34.050381, 23.294443>,  <40.397614, 33.656910, 23.222651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392445, 34.050381, 23.294443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156818, -0.175284, 0.971948,
		0.987543, 0.040706, -0.151993,
		-0.012922, 0.983676, 0.179484,
		40.388569, 34.345482, 23.348288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913269, 33.857830, 23.684023>,  <40.397614, 33.656910, 23.222651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913269, 33.857830, 23.684023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.636433, 34.142761, 23.730658>,  <40.470329, 34.313721, 23.758638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.636433, 34.142761, 23.730658>,  <40.913269, 33.857830, 23.684023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.636433, 34.142761, 23.730658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030193, -0.132809, 0.990682,
		0.721176, 0.689165, 0.070409,
		-0.692094, 0.712330, 0.116586,
		40.428806, 34.356461, 23.765633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156948, 34.281460, 24.235178>,  <40.913269, 33.857830, 23.684023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156948, 34.281460, 24.235178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.770004, 34.382317, 24.225113>,  <40.537838, 34.442829, 24.219074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.770004, 34.382317, 24.225113>,  <41.156948, 34.281460, 24.235178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770004, 34.382317, 24.225113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048148, -0.085404, 0.995182,
		0.248777, 0.963914, 0.094757,
		-0.967363, 0.252141, -0.025164,
		40.479794, 34.457958, 24.217564>
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
