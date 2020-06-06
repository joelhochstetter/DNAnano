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
	<23.968384, 34.663807, 34.640598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.275030, 34.915958, 34.689457>,  <24.459019, 35.067249, 34.718773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.275030, 34.915958, 34.689457>,  <23.968384, 34.663807, 34.640598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.275030, 34.915958, 34.689457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612224, -0.660240, -0.435045,
		-0.193596, 0.408296, -0.892085,
		0.766617, 0.630379, 0.122149,
		24.505014, 35.105072, 34.726101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.403496, 34.015194, 34.714184>,  <23.968384, 34.663807, 34.640598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.403496, 34.015194, 34.714184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.336628, 33.985806, 34.320908>,  <24.296507, 33.968174, 34.084942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.336628, 33.985806, 34.320908>,  <24.403496, 34.015194, 34.714184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.336628, 33.985806, 34.320908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607261, 0.777940, -0.161381,
		0.776717, -0.624029, -0.085431,
		-0.167166, -0.073469, -0.983187,
		24.286478, 33.963764, 34.025951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.027817, 33.967102, 34.290340>,  <24.403496, 34.015194, 34.714184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.027817, 33.967102, 34.290340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.726309, 34.151489, 34.103004>,  <24.545404, 34.262123, 33.990604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.726309, 34.151489, 34.103004>,  <25.027817, 33.967102, 34.290340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.726309, 34.151489, 34.103004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584079, 0.796561, -0.156017,
		0.301140, -0.391147, -0.869666,
		-0.753767, 0.460971, -0.468338,
		24.500179, 34.289780, 33.962502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.088537, 34.116722, 33.552368>,  <25.027817, 33.967102, 34.290340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.088537, 34.116722, 33.552368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.889069, 34.400417, 33.751690>,  <24.769386, 34.570633, 33.871284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.889069, 34.400417, 33.751690>,  <25.088537, 34.116722, 33.552368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.889069, 34.400417, 33.751690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726383, 0.655622, -0.206222,
		-0.472962, 0.259125, -0.842117,
		-0.498674, 0.709235, 0.498308,
		24.739466, 34.613186, 33.901184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.970604, 33.340031, 33.541607>,  <25.088537, 34.116722, 33.552368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.970604, 33.340031, 33.541607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.028955, 32.969883, 33.401657>,  <25.063967, 32.747795, 33.317688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.028955, 32.969883, 33.401657>,  <24.970604, 33.340031, 33.541607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.028955, 32.969883, 33.401657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962078, -0.215094, 0.167751,
		-0.230489, 0.312141, -0.921652,
		0.145880, -0.925367, -0.349880,
		25.072720, 32.692272, 33.296692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.835926, 33.780663, 32.899895>,  <24.970604, 33.340031, 33.541607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.835926, 33.780663, 32.899895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.826218, 34.112350, 32.676537>,  <24.820393, 34.311363, 32.542522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.826218, 34.112350, 32.676537>,  <24.835926, 33.780663, 32.899895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.826218, 34.112350, 32.676537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324696, -0.521742, -0.788897,
		-0.945507, -0.200457, -0.256580,
		-0.024271, 0.829218, -0.558398,
		24.818935, 34.361115, 32.509018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.398966, 33.905956, 32.176468>,  <24.835926, 33.780663, 32.899895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.398966, 33.905956, 32.176468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.763197, 34.071217, 32.171551>,  <24.981735, 34.170372, 32.168598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.763197, 34.071217, 32.171551>,  <24.398966, 33.905956, 32.176468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.763197, 34.071217, 32.171551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208190, -0.484138, -0.849863,
		-0.357077, 0.771308, -0.526860,
		0.910579, 0.413153, -0.012296,
		25.036371, 34.195164, 32.167862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.592451, 34.063293, 31.552111>,  <24.398966, 33.905956, 32.176468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.592451, 34.063293, 31.552111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.944096, 34.022354, 31.738310>,  <25.155083, 33.997791, 31.850029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.944096, 34.022354, 31.738310>,  <24.592451, 34.063293, 31.552111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.944096, 34.022354, 31.738310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315314, -0.607495, -0.729059,
		0.357408, 0.787702, -0.501782,
		0.879111, -0.102352, 0.465497,
		25.207829, 33.991650, 31.877958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.090403, 34.011730, 31.071518>,  <24.592451, 34.063293, 31.552111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.090403, 34.011730, 31.071518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.272722, 33.857117, 31.392227>,  <25.382114, 33.764347, 31.584652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.272722, 33.857117, 31.392227>,  <25.090403, 34.011730, 31.071518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.272722, 33.857117, 31.392227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401596, -0.714576, -0.572802,
		0.794335, 0.583070, -0.170472,
		0.455799, -0.386535, 0.801772,
		25.409462, 33.741158, 31.632759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.832613, 33.875244, 30.736713>,  <25.090403, 34.011730, 31.071518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.832613, 33.875244, 30.736713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807365, 33.683910, 31.087076>,  <25.792217, 33.569111, 31.297295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807365, 33.683910, 31.087076>,  <25.832613, 33.875244, 30.736713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.807365, 33.683910, 31.087076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576892, -0.733661, -0.359079,
		0.814378, 0.482641, 0.322251,
		-0.063117, -0.478331, 0.875909,
		25.788431, 33.540413, 31.349850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.561052, 33.726395, 30.928917>,  <25.832613, 33.875244, 30.736713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.561052, 33.726395, 30.928917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.310713, 33.474152, 31.112505>,  <26.160509, 33.322807, 31.222658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.310713, 33.474152, 31.112505>,  <26.561052, 33.726395, 30.928917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.310713, 33.474152, 31.112505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451108, -0.772716, -0.446555,
		0.636252, -0.072431, 0.768073,
		-0.625847, -0.630606, 0.458968,
		26.122959, 33.284969, 31.250195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.836302, 33.102421, 31.289288>,  <26.561052, 33.726395, 30.928917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.836302, 33.102421, 31.289288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.467501, 32.997803, 31.175091>,  <26.246220, 32.935032, 31.106573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.467501, 32.997803, 31.175091>,  <26.836302, 33.102421, 31.289288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.467501, 32.997803, 31.175091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385684, -0.555593, -0.736589,
		0.034032, -0.789248, 0.613131,
		-0.922003, -0.261543, -0.285492,
		26.190899, 32.919338, 31.089443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.817793, 32.360077, 31.336441>,  <26.836302, 33.102421, 31.289288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.817793, 32.360077, 31.336441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.587030, 32.540215, 31.063864>,  <26.448572, 32.648296, 30.900318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.587030, 32.540215, 31.063864>,  <26.817793, 32.360077, 31.336441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.587030, 32.540215, 31.063864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565309, -0.382046, -0.731072,
		-0.589580, -0.806987, -0.034181,
		-0.576907, 0.450348, -0.681443,
		26.413958, 32.675320, 30.859430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.453037, 31.948296, 30.853878>,  <26.817793, 32.360077, 31.336441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.453037, 31.948296, 30.853878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.558384, 32.292278, 30.679010>,  <26.621592, 32.498669, 30.574091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.558384, 32.292278, 30.679010>,  <26.453037, 31.948296, 30.853878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.558384, 32.292278, 30.679010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676472, -0.487708, -0.551839,
		-0.687766, -0.150395, -0.710182,
		0.263368, 0.859955, -0.437167,
		26.637394, 32.550266, 30.547861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.941746, 32.418621, 30.609449>,  <26.453037, 31.948296, 30.853878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.941746, 32.418621, 30.609449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.094875, 32.329098, 30.967970>,  <26.186754, 32.275383, 31.183083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.094875, 32.329098, 30.967970>,  <25.941746, 32.418621, 30.609449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.094875, 32.329098, 30.967970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480057, 0.780739, 0.399989,
		-0.789297, -0.583402, 0.191447,
		0.382825, -0.223805, 0.896302,
		26.209723, 32.261955, 31.236860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.342445, 32.284767, 31.130951>,  <25.941746, 32.418621, 30.609449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.342445, 32.284767, 31.130951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673374, 32.459808, 31.271830>,  <25.871931, 32.564835, 31.356358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673374, 32.459808, 31.271830>,  <25.342445, 32.284767, 31.130951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.673374, 32.459808, 31.271830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548657, 0.763990, 0.339550,
		-0.120486, -0.474152, 0.872160,
		0.827320, 0.437605, 0.352197,
		25.921570, 32.591091, 31.377489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.288454, 32.502647, 31.820625>,  <25.342445, 32.284767, 31.130951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.288454, 32.502647, 31.820625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.565983, 32.753616, 31.679228>,  <25.732500, 32.904198, 31.594389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.565983, 32.753616, 31.679228>,  <25.288454, 32.502647, 31.820625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.565983, 32.753616, 31.679228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426365, 0.753472, 0.500493,
		0.580367, -0.196535, 0.790284,
		0.693821, 0.627418, -0.353495,
		25.774130, 32.941841, 31.573179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.575855, 32.788109, 32.421780>,  <25.288454, 32.502647, 31.820625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.575855, 32.788109, 32.421780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667114, 33.035751, 32.121208>,  <25.721869, 33.184338, 31.940865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667114, 33.035751, 32.121208>,  <25.575855, 32.788109, 32.421780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.667114, 33.035751, 32.121208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447383, 0.752145, 0.483865,
		0.864753, 0.225787, 0.448578,
		0.228146, 0.619110, -0.751433,
		25.735558, 33.221485, 31.895779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.105764, 33.285454, 32.646046>,  <25.575855, 32.788109, 32.421780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.105764, 33.285454, 32.646046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.888826, 33.416256, 32.336483>,  <25.758663, 33.494740, 32.150745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.888826, 33.416256, 32.336483>,  <26.105764, 33.285454, 32.646046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.888826, 33.416256, 32.336483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217179, 0.835266, 0.505137,
		0.811599, 0.442035, -0.381984,
		-0.542347, 0.327010, -0.773902,
		25.726122, 33.514359, 32.104313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.259123, 34.003910, 32.666584>,  <26.105764, 33.285454, 32.646046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.259123, 34.003910, 32.666584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.949493, 33.975281, 32.414970>,  <25.763716, 33.958103, 32.264000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.949493, 33.975281, 32.414970>,  <26.259123, 34.003910, 32.666584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.949493, 33.975281, 32.414970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485002, 0.705666, 0.516535,
		0.406920, 0.704920, -0.580951,
		-0.774073, -0.071574, -0.629037,
		25.717272, 33.953808, 32.226261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.102579, 34.652805, 32.163235>,  <26.259123, 34.003910, 32.666584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.102579, 34.652805, 32.163235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813816, 34.431705, 32.329762>,  <25.640558, 34.299046, 32.429676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813816, 34.431705, 32.329762>,  <26.102579, 34.652805, 32.163235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.813816, 34.431705, 32.329762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312404, 0.797155, 0.516669,
		-0.617456, 0.242929, -0.748154,
		-0.721908, -0.552747, 0.416316,
		25.597244, 34.265881, 32.454655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.287258, 35.347279, 31.880428>,  <26.102579, 34.652805, 32.163235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.287258, 35.347279, 31.880428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494194, 35.474323, 32.198292>,  <26.618355, 35.550549, 32.389011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494194, 35.474323, 32.198292>,  <26.287258, 35.347279, 31.880428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.494194, 35.474323, 32.198292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530962, -0.847367, -0.006990,
		0.671149, 0.425551, -0.607014,
		0.517338, 0.317610, 0.794660,
		26.649395, 35.569607, 32.436691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.140120, 35.520565, 31.873953>,  <26.287258, 35.347279, 31.880428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.140120, 35.520565, 31.873953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978161, 35.355286, 32.200222>,  <26.880985, 35.256119, 32.395985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978161, 35.355286, 32.200222>,  <27.140120, 35.520565, 31.873953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.978161, 35.355286, 32.200222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432999, -0.872350, -0.226975,
		0.805338, 0.261283, 0.532129,
		-0.404898, -0.413203, 0.815672,
		26.856691, 35.231323, 32.444923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.686426, 35.022041, 31.999681>,  <27.140120, 35.520565, 31.873953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.686426, 35.022041, 31.999681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.328314, 34.925243, 32.149300>,  <27.113447, 34.867165, 32.239071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.328314, 34.925243, 32.149300>,  <27.686426, 35.022041, 31.999681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.328314, 34.925243, 32.149300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246246, -0.968493, -0.037192,
		0.371262, 0.058811, 0.926664,
		-0.895281, -0.241995, 0.374046,
		27.059731, 34.852646, 32.261513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.000113, 34.873955, 32.586498>,  <27.686426, 35.022041, 31.999681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.000113, 34.873955, 32.586498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.370119, 34.727322, 32.546577>,  <28.592123, 34.639343, 32.522625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.370119, 34.727322, 32.546577>,  <28.000113, 34.873955, 32.586498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.370119, 34.727322, 32.546577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326861, -0.901780, 0.282762,
		-0.193659, -0.228937, -0.953983,
		0.925018, -0.366580, -0.099807,
		28.647625, 34.617348, 32.516636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.005997, 34.363670, 32.148113>,  <28.000113, 34.873955, 32.586498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.005997, 34.363670, 32.148113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324127, 34.295593, 32.380833>,  <28.515005, 34.254749, 32.520466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324127, 34.295593, 32.380833>,  <28.005997, 34.363670, 32.148113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.324127, 34.295593, 32.380833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274892, -0.956677, 0.095934,
		0.540266, -0.236231, -0.807655,
		0.795328, -0.170188, 0.581798,
		28.562725, 34.244537, 32.555374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354645, 33.731857, 31.864594>,  <28.005997, 34.363670, 32.148113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.354645, 33.731857, 31.864594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431242, 33.806931, 32.249947>,  <28.477201, 33.851974, 32.481159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431242, 33.806931, 32.249947>,  <28.354645, 33.731857, 31.864594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.431242, 33.806931, 32.249947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440165, -0.860885, 0.255209,
		0.877260, -0.472918, -0.082243,
		0.191495, 0.187684, 0.963382,
		28.488691, 33.863235, 32.538960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.393101, 33.130501, 32.127914>,  <28.354645, 33.731857, 31.864594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.393101, 33.130501, 32.127914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363342, 33.342621, 32.465729>,  <28.345488, 33.469894, 32.668419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363342, 33.342621, 32.465729>,  <28.393101, 33.130501, 32.127914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.363342, 33.342621, 32.465729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331830, -0.811791, 0.480505,
		0.940401, -0.244497, 0.236362,
		-0.074395, 0.530299, 0.844540,
		28.341024, 33.501709, 32.719090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.672405, 32.767315, 32.718529>,  <28.393101, 33.130501, 32.127914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.672405, 32.767315, 32.718529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.385847, 33.017742, 32.841702>,  <28.213913, 33.167999, 32.915604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.385847, 33.017742, 32.841702>,  <28.672405, 32.767315, 32.718529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.385847, 33.017742, 32.841702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533335, -0.775951, 0.336828,
		0.449816, 0.077071, 0.889790,
		-0.716393, 0.626067, 0.307931,
		28.170929, 33.205563, 32.934082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.600559, 32.608429, 33.424480>,  <28.672405, 32.767315, 32.718529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.600559, 32.608429, 33.424480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265825, 32.792114, 33.305264>,  <28.064985, 32.902325, 33.233734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265825, 32.792114, 33.305264>,  <28.600559, 32.608429, 33.424480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.265825, 32.792114, 33.305264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539859, -0.782596, 0.309994,
		-0.090892, 0.420314, 0.902815,
		-0.836834, 0.459216, -0.298042,
		28.014774, 32.929878, 33.215851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127689, 32.487206, 33.949753>,  <28.600559, 32.608429, 33.424480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127689, 32.487206, 33.949753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.913269, 32.572872, 33.623127>,  <27.784616, 32.624271, 33.427151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.913269, 32.572872, 33.623127>,  <28.127689, 32.487206, 33.949753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.913269, 32.572872, 33.623127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673975, -0.691038, 0.261197,
		-0.508338, 0.690361, 0.514777,
		-0.536050, 0.214170, -0.816567,
		27.752455, 32.637123, 33.378159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.492374, 32.703918, 34.235653>,  <28.127689, 32.487206, 33.949753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.492374, 32.703918, 34.235653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461460, 32.549786, 33.867840>,  <27.442911, 32.457306, 33.647152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461460, 32.549786, 33.867840>,  <27.492374, 32.703918, 34.235653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.461460, 32.549786, 33.867840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644926, -0.684028, 0.340845,
		-0.760327, 0.619377, -0.195642,
		-0.077287, -0.385329, -0.919537,
		27.438274, 32.434185, 33.591980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.821224, 32.675282, 34.038403>,  <27.492374, 32.703918, 34.235653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.821224, 32.675282, 34.038403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.010239, 32.389957, 33.831367>,  <27.123648, 32.218761, 33.707146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.010239, 32.389957, 33.831367>,  <26.821224, 32.675282, 34.038403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.010239, 32.389957, 33.831367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704030, -0.658805, 0.265175,
		-0.530141, 0.239091, -0.813502,
		0.472538, -0.713310, -0.517587,
		27.152000, 32.175964, 33.676090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.242462, 32.364410, 33.733315>,  <26.821224, 32.675282, 34.038403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.242462, 32.364410, 33.733315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.551764, 32.110779, 33.731667>,  <26.737345, 31.958599, 33.730679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.551764, 32.110779, 33.731667>,  <26.242462, 32.364410, 33.733315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.551764, 32.110779, 33.731667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567296, -0.694682, 0.442258,
		-0.283292, -0.339640, -0.896878,
		0.773254, -0.634084, -0.004122,
		26.783739, 31.920553, 33.730431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.982113, 31.639921, 33.753571>,  <26.242462, 32.364410, 33.733315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.982113, 31.639921, 33.753571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.355951, 31.626776, 33.895248>,  <26.580254, 31.618889, 33.980255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.355951, 31.626776, 33.895248>,  <25.982113, 31.639921, 33.753571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.355951, 31.626776, 33.895248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251070, -0.766298, 0.591397,
		0.251982, -0.641644, -0.724429,
		0.934596, -0.032861, 0.354191,
		26.636330, 31.616917, 34.001507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.543056, 31.245726, 34.219818>,  <25.982113, 31.639921, 33.753571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.543056, 31.245726, 34.219818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.738312, 30.903770, 34.149517>,  <25.855465, 30.698597, 34.107334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.738312, 30.903770, 34.149517>,  <25.543056, 31.245726, 34.219818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.738312, 30.903770, 34.149517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846858, 0.512648, -0.141505,
		0.211071, -0.079767, 0.974211,
		0.488139, -0.854886, -0.175757,
		25.884754, 30.647305, 34.096790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.219959, 31.208061, 34.675373>,  <25.543056, 31.245726, 34.219818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.219959, 31.208061, 34.675373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273876, 30.990143, 34.344307>,  <26.306227, 30.859392, 34.145668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273876, 30.990143, 34.344307>,  <26.219959, 31.208061, 34.675373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.273876, 30.990143, 34.344307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812202, 0.539216, -0.222654,
		0.567591, -0.642220, 0.515165,
		0.134793, -0.544794, -0.827666,
		26.314314, 30.826704, 34.096008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.971853, 30.873995, 34.595894>,  <26.219959, 31.208061, 34.675373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.971853, 30.873995, 34.595894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.791721, 30.892818, 34.239246>,  <26.683641, 30.904112, 34.025257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.791721, 30.892818, 34.239246>,  <26.971853, 30.873995, 34.595894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.791721, 30.892818, 34.239246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709182, 0.625561, -0.325170,
		0.542462, -0.778755, -0.315081,
		-0.450330, 0.047057, -0.891622,
		26.656622, 30.906935, 33.971760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.517515, 31.260750, 34.298931>,  <26.971853, 30.873995, 34.595894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.517515, 31.260750, 34.298931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252197, 31.241304, 34.000221>,  <27.093006, 31.229637, 33.820995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252197, 31.241304, 34.000221>,  <27.517515, 31.260750, 34.298931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.252197, 31.241304, 34.000221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485438, 0.731512, -0.478790,
		0.569554, -0.680093, -0.461608,
		-0.663293, -0.048615, -0.746779,
		27.053209, 31.226721, 33.776188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.847036, 31.158518, 33.673347>,  <27.517515, 31.260750, 34.298931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.847036, 31.158518, 33.673347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.511576, 31.375893, 33.658707>,  <27.310299, 31.506317, 33.649921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.511576, 31.375893, 33.658707>,  <27.847036, 31.158518, 33.673347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.511576, 31.375893, 33.658707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523593, 0.785864, -0.329040,
		-0.150045, -0.295117, -0.943606,
		-0.838652, 0.543437, -0.036606,
		27.259979, 31.538923, 33.647724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745668, 31.297625, 32.957870>,  <27.847036, 31.158518, 33.673347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.745668, 31.297625, 32.957870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552416, 31.558327, 33.191727>,  <27.436464, 31.714748, 33.332039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552416, 31.558327, 33.191727>,  <27.745668, 31.297625, 32.957870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.552416, 31.558327, 33.191727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438854, 0.758066, -0.482434,
		-0.757621, 0.023491, -0.652272,
		-0.483133, 0.651754, 0.584636,
		27.407476, 31.753853, 33.367119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569752, 31.783066, 32.475517>,  <27.745668, 31.297625, 32.957870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569752, 31.783066, 32.475517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.551210, 31.950586, 32.838276>,  <27.540087, 32.051098, 33.055931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.551210, 31.950586, 32.838276>,  <27.569752, 31.783066, 32.475517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.551210, 31.950586, 32.838276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542361, 0.772952, -0.329226,
		-0.838866, 0.476604, -0.262969,
		-0.046352, 0.418800, 0.906895,
		27.537304, 32.076225, 33.110344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.297440, 32.410393, 32.605957>,  <27.569752, 31.783066, 32.475517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.297440, 32.410393, 32.605957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.203423, 32.448044, 32.992924>,  <27.147013, 32.470634, 33.225105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.203423, 32.448044, 32.992924>,  <27.297440, 32.410393, 32.605957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.203423, 32.448044, 32.992924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498447, 0.866138, 0.036828,
		-0.834449, 0.490862, -0.250498,
		-0.235043, 0.094129, 0.967416,
		27.132910, 32.476284, 33.283150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.907204, 32.967770, 32.593979>,  <27.297440, 32.410393, 32.605957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.907204, 32.967770, 32.593979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.062672, 32.917622, 32.959103>,  <27.155952, 32.887535, 33.178177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.062672, 32.917622, 32.959103>,  <26.907204, 32.967770, 32.593979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.062672, 32.917622, 32.959103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432496, 0.899597, -0.060602,
		-0.813562, 0.418339, 0.403868,
		0.388671, -0.125368, 0.912808,
		27.179274, 32.880013, 33.232944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.931204, 33.637787, 32.993649>,  <26.907204, 32.967770, 32.593979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.931204, 33.637787, 32.993649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.245020, 33.426987, 33.124352>,  <27.433310, 33.300507, 33.202774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.245020, 33.426987, 33.124352>,  <26.931204, 33.637787, 32.993649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.245020, 33.426987, 33.124352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591705, 0.793840, -0.140366,
		-0.185419, 0.303465, 0.934628,
		0.784541, -0.526997, 0.326755,
		27.480383, 33.268887, 33.222378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304079, 34.008881, 33.463333>,  <26.931204, 33.637787, 32.993649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.304079, 34.008881, 33.463333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.577843, 33.758556, 33.313694>,  <27.742100, 33.608364, 33.223911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.577843, 33.758556, 33.313694>,  <27.304079, 34.008881, 33.463333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.577843, 33.758556, 33.313694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626617, 0.767190, -0.137005,
		0.372743, -0.140649, 0.917213,
		0.684408, -0.625809, -0.374098,
		27.783165, 33.570812, 33.201466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.030798, 34.108971, 33.859501>,  <27.304079, 34.008881, 33.463333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.030798, 34.108971, 33.859501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098883, 33.977844, 33.487789>,  <28.139734, 33.899170, 33.264763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098883, 33.977844, 33.487789>,  <28.030798, 34.108971, 33.859501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.098883, 33.977844, 33.487789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713143, 0.691783, -0.113411,
		0.680039, -0.643407, 0.351531,
		0.170214, -0.327816, -0.929281,
		28.149946, 33.879498, 33.209003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.708828, 34.076187, 33.834122>,  <28.030798, 34.108971, 33.859501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.708828, 34.076187, 33.834122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556189, 34.100555, 33.465195>,  <28.464605, 34.115177, 33.243839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556189, 34.100555, 33.465195>,  <28.708828, 34.076187, 33.834122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556189, 34.100555, 33.465195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755371, 0.595639, -0.273181,
		0.532726, -0.800938, -0.273316,
		-0.381599, 0.060924, -0.922318,
		28.441710, 34.118832, 33.188499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198442, 33.755699, 33.432472>,  <28.708828, 34.076187, 33.834122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198442, 33.755699, 33.432472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.442221, 34.039867, 33.573261>,  <29.588488, 34.210369, 33.657734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.442221, 34.039867, 33.573261>,  <29.198442, 33.755699, 33.432472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.442221, 34.039867, 33.573261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723771, 0.317311, 0.612755,
		0.323646, -0.628166, 0.707574,
		0.609433, 0.710437, 0.351951,
		29.625053, 34.252995, 33.678852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.101505, 33.261665, 33.937862>,  <29.198442, 33.755699, 33.432472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.101505, 33.261665, 33.937862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732367, 33.334320, 34.073723>,  <28.510883, 33.377914, 34.155239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732367, 33.334320, 34.073723>,  <29.101505, 33.261665, 33.937862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.732367, 33.334320, 34.073723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153375, -0.635604, 0.756626,
		0.353319, 0.750343, 0.558705,
		-0.922844, 0.181639, 0.339655,
		28.455513, 33.388813, 34.175621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168835, 33.589748, 34.684467>,  <29.101505, 33.261665, 33.937862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168835, 33.589748, 34.684467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.859045, 33.363499, 34.571148>,  <28.673172, 33.227749, 34.503159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.859045, 33.363499, 34.571148>,  <29.168835, 33.589748, 34.684467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.859045, 33.363499, 34.571148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307406, -0.727893, 0.612922,
		-0.552895, 0.387605, 0.737611,
		-0.774473, -0.565627, -0.283296,
		28.626703, 33.193810, 34.486160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925524, 33.214127, 35.233192>,  <29.168835, 33.589748, 34.684467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925524, 33.214127, 35.233192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803204, 32.993473, 34.922791>,  <28.729811, 32.861080, 34.736549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803204, 32.993473, 34.922791>,  <28.925524, 33.214127, 35.233192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803204, 32.993473, 34.922791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153603, -0.832959, 0.531588,
		-0.939624, 0.043362, 0.339452,
		-0.305800, -0.551633, -0.776007,
		28.711464, 32.827984, 34.689987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319477, 32.721752, 34.750935>,  <28.925524, 33.214127, 35.233192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.319477, 32.721752, 34.750935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.248081, 32.681660, 35.142464>,  <29.205244, 32.657604, 35.377380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.248081, 32.681660, 35.142464>,  <29.319477, 32.721752, 34.750935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248081, 32.681660, 35.142464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762572, 0.614562, 0.201983,
		-0.621792, 0.782476, -0.033262,
		-0.178488, -0.100227, 0.978824,
		29.194534, 32.651592, 35.436111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.098614, 32.735043, 34.731319>,  <29.319477, 32.721752, 34.750935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.098614, 32.735043, 34.731319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476843, 32.623390, 34.798225>,  <30.703781, 32.556400, 34.838367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476843, 32.623390, 34.798225>,  <30.098614, 32.735043, 34.731319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476843, 32.623390, 34.798225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231115, 0.214215, -0.949051,
		0.229077, 0.936055, 0.267067,
		0.945574, -0.279129, 0.167264,
		30.760515, 32.539650, 34.848404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485054, 33.242783, 34.547874>,  <30.098614, 32.735043, 34.731319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485054, 33.242783, 34.547874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711681, 32.917583, 34.494141>,  <30.847658, 32.722466, 34.461903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711681, 32.917583, 34.494141>,  <30.485054, 33.242783, 34.547874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711681, 32.917583, 34.494141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140719, 0.256083, -0.956357,
		0.811912, 0.522938, 0.259492,
		0.566567, -0.812993, -0.134330,
		30.881651, 32.673687, 34.453842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090891, 33.472237, 34.102859>,  <30.485054, 33.242783, 34.547874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090891, 33.472237, 34.102859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018814, 33.078800, 34.099186>,  <30.975569, 32.842739, 34.096981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018814, 33.078800, 34.099186>,  <31.090891, 33.472237, 34.102859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018814, 33.078800, 34.099186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046800, 0.000756, -0.998904,
		0.982518, -0.180422, 0.045896,
		-0.180190, -0.983589, -0.009187,
		30.964758, 32.783722, 34.096432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567209, 33.142872, 33.551960>,  <31.090891, 33.472237, 34.102859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567209, 33.142872, 33.551960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266893, 32.884029, 33.604988>,  <31.086704, 32.728725, 33.636803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266893, 32.884029, 33.604988>,  <31.567209, 33.142872, 33.551960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.266893, 32.884029, 33.604988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121603, -0.061860, -0.990649,
		0.649253, -0.759889, -0.032246,
		-0.750789, -0.647103, 0.132568,
		31.041656, 32.689899, 33.644760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704165, 32.535912, 33.265026>,  <31.567209, 33.142872, 33.551960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704165, 32.535912, 33.265026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306360, 32.577438, 33.270229>,  <31.067678, 32.602356, 33.273350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306360, 32.577438, 33.270229>,  <31.704165, 32.535912, 33.265026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306360, 32.577438, 33.270229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030571, -0.169430, -0.985068,
		-0.100062, -0.980059, 0.171674,
		-0.994511, 0.103816, 0.013008,
		31.008007, 32.608585, 33.274132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388233, 31.959713, 32.829960>,  <31.704165, 32.535912, 33.265026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388233, 31.959713, 32.829960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156231, 32.284851, 32.851406>,  <31.017031, 32.479935, 32.864273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156231, 32.284851, 32.851406>,  <31.388233, 31.959713, 32.829960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156231, 32.284851, 32.851406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174786, -0.059896, -0.982783,
		-0.795641, -0.579389, 0.176814,
		-0.580005, 0.812847, 0.053613,
		30.982229, 32.528706, 32.867489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654596, 31.741802, 32.656796>,  <31.388233, 31.959713, 32.829960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.654596, 31.741802, 32.656796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779696, 32.113281, 32.577084>,  <30.854755, 32.336170, 32.529259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779696, 32.113281, 32.577084>,  <30.654596, 31.741802, 32.656796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.779696, 32.113281, 32.577084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008190, -0.207156, -0.978274,
		-0.949801, 0.307584, -0.057181,
		0.312747, 0.928697, -0.199276,
		30.873520, 32.391891, 32.517300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.632460, 31.901413, 31.956964>,  <30.654596, 31.741802, 32.656796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.632460, 31.901413, 31.956964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.817703, 32.252014, 32.009529>,  <30.928850, 32.462376, 32.041069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.817703, 32.252014, 32.009529>,  <30.632460, 31.901413, 31.956964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.817703, 32.252014, 32.009529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299587, -0.015266, -0.953947,
		-0.834132, 0.481153, -0.269659,
		0.463111, 0.876504, 0.131413,
		30.956636, 32.514965, 32.048954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.424416, 32.291061, 31.374405>,  <30.632460, 31.901413, 31.956964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.424416, 32.291061, 31.374405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768274, 32.436924, 31.517530>,  <30.974590, 32.524441, 31.603405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768274, 32.436924, 31.517530>,  <30.424416, 32.291061, 31.374405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768274, 32.436924, 31.517530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407954, -0.068366, -0.910439,
		-0.307537, 0.928628, -0.207535,
		0.859648, 0.364659, 0.357813,
		31.026169, 32.546322, 31.624874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752251, 32.801437, 30.907789>,  <30.424416, 32.291061, 31.374405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752251, 32.801437, 30.907789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052580, 32.652161, 31.125776>,  <31.232777, 32.562595, 31.256569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052580, 32.652161, 31.125776>,  <30.752251, 32.801437, 30.907789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052580, 32.652161, 31.125776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562778, -0.070445, -0.823601,
		0.345753, 0.925075, 0.157134,
		0.750823, -0.373194, 0.544969,
		31.277826, 32.540203, 31.289267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467655, 33.089001, 30.827871>,  <30.752251, 32.801437, 30.907789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467655, 33.089001, 30.827871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468172, 32.691128, 30.869047>,  <31.468483, 32.452404, 30.893753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468172, 32.691128, 30.869047>,  <31.467655, 33.089001, 30.827871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468172, 32.691128, 30.869047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322160, -0.097038, -0.941699,
		0.946684, 0.034381, 0.320323,
		0.001293, -0.994687, 0.102940,
		31.468559, 32.392723, 30.899929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965815, 32.831673, 30.421341>,  <31.467655, 33.089001, 30.827871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965815, 32.831673, 30.421341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715322, 32.519844, 30.425249>,  <31.565027, 32.332745, 30.427595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715322, 32.519844, 30.425249>,  <31.965815, 32.831673, 30.421341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715322, 32.519844, 30.425249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455799, -0.376253, -0.806648,
		0.632520, -0.500694, 0.590952,
		-0.626231, -0.779576, 0.009771,
		31.527452, 32.285973, 30.428181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271542, 32.133957, 30.461575>,  <31.965815, 32.831673, 30.421341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271542, 32.133957, 30.461575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940744, 32.176929, 30.240833>,  <31.742266, 32.202713, 30.108389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940744, 32.176929, 30.240833>,  <32.271542, 32.133957, 30.461575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940744, 32.176929, 30.240833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494361, -0.328510, -0.804791,
		-0.267751, -0.938371, 0.218564,
		-0.826992, 0.107434, -0.551852,
		31.692646, 32.209160, 30.075277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171806, 31.521732, 30.114347>,  <32.271542, 32.133957, 30.461575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171806, 31.521732, 30.114347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990662, 31.814270, 29.910364>,  <31.881975, 31.989792, 29.787975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990662, 31.814270, 29.910364>,  <32.171806, 31.521732, 30.114347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990662, 31.814270, 29.910364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427742, -0.323632, -0.843978,
		-0.782276, -0.600332, -0.166267,
		-0.452858, 0.731344, -0.509957,
		31.854805, 32.033672, 29.757378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806000, 31.244675, 29.521465>,  <32.171806, 31.521732, 30.114347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806000, 31.244675, 29.521465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947325, 31.615765, 29.473299>,  <32.032120, 31.838419, 29.444399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947325, 31.615765, 29.473299>,  <31.806000, 31.244675, 29.521465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947325, 31.615765, 29.473299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575371, -0.316986, -0.753968,
		-0.737644, 0.197103, -0.645780,
		0.353313, 0.927723, -0.120416,
		32.053318, 31.894081, 29.437174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894163, 31.349930, 28.793571>,  <31.806000, 31.244675, 29.521465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894163, 31.349930, 28.793571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131889, 31.629597, 28.952549>,  <32.274525, 31.797396, 29.047935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131889, 31.629597, 28.952549>,  <31.894163, 31.349930, 28.793571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131889, 31.629597, 28.952549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625869, -0.091734, -0.774515,
		-0.505055, 0.709051, -0.492104,
		0.594313, 0.699165, 0.397442,
		32.310184, 31.839346, 29.071781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003304, 31.782463, 28.216383>,  <31.894163, 31.349930, 28.793571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003304, 31.782463, 28.216383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305096, 31.826189, 28.475245>,  <32.486172, 31.852425, 28.630562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305096, 31.826189, 28.475245>,  <32.003304, 31.782463, 28.216383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305096, 31.826189, 28.475245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653823, -0.039219, -0.755630,
		-0.057221, 0.993233, -0.101062,
		0.754480, 0.109314, 0.647155,
		32.531441, 31.858984, 28.669392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384933, 32.166260, 27.878576>,  <32.003304, 31.782463, 28.216383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384933, 32.166260, 27.878576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647362, 32.024490, 28.145094>,  <32.804821, 31.939428, 28.305004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647362, 32.024490, 28.145094>,  <32.384933, 32.166260, 27.878576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647362, 32.024490, 28.145094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716025, 0.013333, -0.697947,
		0.238486, 0.934989, 0.262525,
		0.656073, -0.354425, 0.666296,
		32.844185, 31.918163, 28.344982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854961, 32.713593, 27.922367>,  <32.384933, 32.166260, 27.878576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854961, 32.713593, 27.922367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986042, 32.348732, 28.020826>,  <33.064690, 32.129814, 28.079903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986042, 32.348732, 28.020826>,  <32.854961, 32.713593, 27.922367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986042, 32.348732, 28.020826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754155, 0.095615, -0.649698,
		0.569089, 0.398541, 0.719238,
		0.327702, -0.912153, 0.246149,
		33.084351, 32.075085, 28.094671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559143, 32.841366, 27.915415>,  <32.854961, 32.713593, 27.922367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559143, 32.841366, 27.915415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553539, 32.441826, 27.897106>,  <33.550179, 32.202103, 27.886122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553539, 32.441826, 27.897106>,  <33.559143, 32.841366, 27.915415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553539, 32.441826, 27.897106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683051, 0.023873, -0.729981,
		0.730237, -0.041487, 0.681934,
		-0.014005, -0.998854, -0.045771,
		33.549339, 32.142170, 27.883375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277214, 32.716583, 27.906330>,  <33.559143, 32.841366, 27.915415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277214, 32.716583, 27.906330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078552, 32.415100, 27.734165>,  <33.959354, 32.234211, 27.630867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078552, 32.415100, 27.734165>,  <34.277214, 32.716583, 27.906330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078552, 32.415100, 27.734165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633936, 0.023706, -0.773022,
		0.592837, -0.656781, 0.466029,
		-0.496659, -0.753708, -0.430411,
		33.929554, 32.188988, 27.605042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747120, 32.155685, 27.657885>,  <34.277214, 32.716583, 27.906330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747120, 32.155685, 27.657885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447491, 32.037811, 27.420547>,  <34.267715, 31.967087, 27.278145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447491, 32.037811, 27.420547>,  <34.747120, 32.155685, 27.657885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447491, 32.037811, 27.420547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585940, 0.123234, -0.800929,
		0.309140, -0.947616, 0.080356,
		-0.749070, -0.294683, -0.593342,
		34.222771, 31.949408, 27.242544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099480, 31.810169, 27.060663>,  <34.747120, 32.155685, 27.657885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099480, 31.810169, 27.060663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732468, 31.893770, 26.925335>,  <34.512260, 31.943932, 26.844137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732468, 31.893770, 26.925335>,  <35.099480, 31.810169, 27.060663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732468, 31.893770, 26.925335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374464, 0.167690, -0.911952,
		-0.133870, -0.963430, -0.232125,
		-0.917527, 0.209005, -0.338321,
		34.457211, 31.956472, 26.823839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134872, 31.476318, 26.388624>,  <35.099480, 31.810169, 27.060663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134872, 31.476318, 26.388624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837723, 31.744043, 26.383688>,  <34.659431, 31.904678, 26.380726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837723, 31.744043, 26.383688>,  <35.134872, 31.476318, 26.388624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837723, 31.744043, 26.383688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150613, 0.149148, -0.977277,
		-0.652264, -0.727856, -0.211606,
		-0.742878, 0.669313, -0.012341,
		34.614861, 31.944838, 26.379986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868328, 31.340345, 25.838959>,  <35.134872, 31.476318, 26.388624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868328, 31.340345, 25.838959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724579, 31.710184, 25.889513>,  <34.638329, 31.932087, 25.919846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724579, 31.710184, 25.889513>,  <34.868328, 31.340345, 25.838959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724579, 31.710184, 25.889513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274599, 0.234211, -0.932599,
		-0.891877, -0.300448, -0.338063,
		-0.359375, 0.924595, 0.126384,
		34.616768, 31.987562, 25.927429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521015, 31.546797, 25.257551>,  <34.868328, 31.340345, 25.838959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521015, 31.546797, 25.257551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589371, 31.911869, 25.406044>,  <34.630383, 32.130913, 25.495140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589371, 31.911869, 25.406044>,  <34.521015, 31.546797, 25.257551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589371, 31.911869, 25.406044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243259, 0.326029, -0.913526,
		-0.954789, 0.246417, -0.166302,
		0.170890, 0.912679, 0.371232,
		34.640636, 32.185673, 25.517414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154892, 32.038044, 24.772051>,  <34.521015, 31.546797, 25.257551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154892, 32.038044, 24.772051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441746, 32.248184, 24.955235>,  <34.613857, 32.374268, 25.065145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441746, 32.248184, 24.955235>,  <34.154892, 32.038044, 24.772051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441746, 32.248184, 24.955235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228423, 0.443633, -0.866610,
		-0.658441, 0.726082, 0.198141,
		0.717132, 0.525352, 0.457960,
		34.656887, 32.405788, 25.092623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102760, 32.824577, 24.508518>,  <34.154892, 32.038044, 24.772051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102760, 32.824577, 24.508518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473160, 32.837967, 24.658936>,  <34.695400, 32.846001, 24.749186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473160, 32.837967, 24.658936>,  <34.102760, 32.824577, 24.508518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473160, 32.837967, 24.658936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348387, 0.307985, -0.885309,
		-0.145453, 0.950802, 0.273531,
		0.925997, 0.033477, 0.376044,
		34.750957, 32.848011, 24.771749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421371, 33.473427, 24.292725>,  <34.102760, 32.824577, 24.508518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421371, 33.473427, 24.292725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738018, 33.252254, 24.396730>,  <34.928005, 33.119549, 24.459135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738018, 33.252254, 24.396730>,  <34.421371, 33.473427, 24.292725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738018, 33.252254, 24.396730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382693, 0.116932, -0.916446,
		0.476329, 0.824980, 0.304169,
		0.791616, -0.552933, 0.260016,
		34.975502, 33.086376, 24.474735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930599, 33.813728, 24.017906>,  <34.421371, 33.473427, 24.292725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930599, 33.813728, 24.017906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082798, 33.447311, 24.068640>,  <35.174118, 33.227463, 24.099081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082798, 33.447311, 24.068640>,  <34.930599, 33.813728, 24.017906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082798, 33.447311, 24.068640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584218, 0.131785, -0.800826,
		0.716875, 0.378812, 0.585313,
		0.380498, -0.916042, 0.126836,
		35.196949, 33.172497, 24.106691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721836, 33.854996, 24.081877>,  <34.930599, 33.813728, 24.017906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721836, 33.854996, 24.081877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635197, 33.491348, 23.939564>,  <35.583214, 33.273159, 23.854176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635197, 33.491348, 23.939564>,  <35.721836, 33.854996, 24.081877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635197, 33.491348, 23.939564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483453, 0.216725, -0.848118,
		0.848149, -0.355709, 0.392574,
		-0.216603, -0.909121, -0.355784,
		35.570217, 33.218613, 23.832829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305176, 33.590939, 23.726948>,  <35.721836, 33.854996, 24.081877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305176, 33.590939, 23.726948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034298, 33.341999, 23.569935>,  <35.871769, 33.192635, 23.475727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034298, 33.341999, 23.569935>,  <36.305176, 33.590939, 23.726948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034298, 33.341999, 23.569935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366718, 0.177026, -0.913334,
		0.637905, -0.762456, 0.108346,
		-0.677197, -0.622353, -0.392532,
		35.831139, 33.155293, 23.452175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625607, 33.164253, 23.314127>,  <36.305176, 33.590939, 23.726948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625607, 33.164253, 23.314127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258865, 33.106861, 23.165104>,  <36.038822, 33.072426, 23.075691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258865, 33.106861, 23.165104>,  <36.625607, 33.164253, 23.314127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258865, 33.106861, 23.165104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376923, -0.003528, -0.926238,
		0.131587, -0.989646, 0.057317,
		-0.916850, -0.143485, -0.372556,
		35.983810, 33.063816, 23.053337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738060, 32.708534, 22.729521>,  <36.625607, 33.164253, 23.314127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738060, 32.708534, 22.729521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376179, 32.869190, 22.672663>,  <36.159050, 32.965584, 22.638548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376179, 32.869190, 22.672663>,  <36.738060, 32.708534, 22.729521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376179, 32.869190, 22.672663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115504, -0.089931, -0.989228,
		-0.410098, -0.911371, 0.034969,
		-0.904698, 0.401641, -0.142148,
		36.104771, 32.989681, 22.630018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404823, 32.234848, 22.342760>,  <36.738060, 32.708534, 22.729521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404823, 32.234848, 22.342760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239544, 32.596504, 22.299303>,  <36.140377, 32.813496, 22.273228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239544, 32.596504, 22.299303>,  <36.404823, 32.234848, 22.342760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239544, 32.596504, 22.299303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167504, -0.041808, -0.984985,
		-0.895103, -0.425192, -0.134171,
		-0.413198, 0.904137, -0.108643,
		36.115585, 32.867744, 22.266710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954235, 32.202690, 21.832525>,  <36.404823, 32.234848, 22.342760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954235, 32.202690, 21.832525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030537, 32.594685, 21.809765>,  <36.076317, 32.829880, 21.796108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030537, 32.594685, 21.809765>,  <35.954235, 32.202690, 21.832525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030537, 32.594685, 21.809765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393792, -0.129495, -0.910033,
		-0.899188, 0.151188, -0.410613,
		0.190758, 0.979986, -0.056903,
		36.087765, 32.888680, 21.792694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777664, 32.366817, 21.127838>,  <35.954235, 32.202690, 21.832525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777664, 32.366817, 21.127838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974167, 32.697056, 21.238878>,  <36.092068, 32.895199, 21.305502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974167, 32.697056, 21.238878>,  <35.777664, 32.366817, 21.127838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974167, 32.697056, 21.238878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261012, 0.164529, -0.951211,
		-0.830989, 0.539743, -0.134665,
		0.491253, 0.825596, 0.277601,
		36.121544, 32.944733, 21.322159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380726, 32.976185, 20.943960>,  <35.777664, 32.366817, 21.127838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380726, 32.976185, 20.943960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767872, 33.076553, 20.937395>,  <36.000160, 33.136776, 20.933456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767872, 33.076553, 20.937395>,  <35.380726, 32.976185, 20.943960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767872, 33.076553, 20.937395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089967, 0.284598, -0.954416,
		-0.234811, 0.925226, 0.298028,
		0.967868, 0.250920, -0.016413,
		36.058231, 33.151829, 20.932470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333611, 33.558067, 20.429020>,  <35.380726, 32.976185, 20.943960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333611, 33.558067, 20.429020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720203, 33.509705, 20.519606>,  <35.952160, 33.480686, 20.573957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720203, 33.509705, 20.519606>,  <35.333611, 33.558067, 20.429020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720203, 33.509705, 20.519606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254778, 0.343546, -0.903916,
		0.031486, 0.931321, 0.362836,
		0.966487, -0.120904, 0.226463,
		36.010151, 33.473434, 20.587545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630764, 34.222301, 20.226477>,  <35.333611, 33.558067, 20.429020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630764, 34.222301, 20.226477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921669, 33.948078, 20.239769>,  <36.096210, 33.783546, 20.247746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921669, 33.948078, 20.239769>,  <35.630764, 34.222301, 20.226477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921669, 33.948078, 20.239769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394499, 0.377896, -0.837595,
		0.561660, 0.622260, 0.545280,
		0.727261, -0.685556, 0.033232,
		36.139847, 33.742413, 20.249739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109066, 34.608326, 19.875097>,  <35.630764, 34.222301, 20.226477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109066, 34.608326, 19.875097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275623, 34.244942, 19.889608>,  <36.375557, 34.026913, 19.898315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275623, 34.244942, 19.889608>,  <36.109066, 34.608326, 19.875097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275623, 34.244942, 19.889608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659697, 0.274432, -0.699633,
		0.625634, 0.315254, 0.713581,
		0.416391, -0.908461, 0.036278,
		36.400539, 33.972404, 19.900492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776283, 34.714905, 20.100218>,  <36.109066, 34.608326, 19.875097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776283, 34.714905, 20.100218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788349, 34.360844, 19.914486>,  <36.795589, 34.148407, 19.803047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788349, 34.360844, 19.914486>,  <36.776283, 34.714905, 20.100218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788349, 34.360844, 19.914486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573649, 0.395752, -0.717151,
		0.818545, -0.244726, 0.519705,
		0.030169, -0.885149, -0.464328,
		36.797401, 34.095299, 19.775188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501144, 34.483959, 19.992619>,  <36.776283, 34.714905, 20.100218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501144, 34.483959, 19.992619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267151, 34.301945, 19.724070>,  <37.126755, 34.192738, 19.562941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267151, 34.301945, 19.724070>,  <37.501144, 34.483959, 19.992619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267151, 34.301945, 19.724070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544655, 0.392955, -0.740903,
		0.600957, -0.799080, 0.017967,
		-0.584981, -0.455036, -0.671372,
		37.091656, 34.165436, 19.522657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983952, 34.236542, 19.506510>,  <37.501144, 34.483959, 19.992619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983952, 34.236542, 19.506510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638390, 34.219639, 19.305761>,  <37.431053, 34.209496, 19.185312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638390, 34.219639, 19.305761>,  <37.983952, 34.236542, 19.506510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638390, 34.219639, 19.305761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487083, 0.183352, -0.853892,
		0.128102, -0.982139, -0.137816,
		-0.863910, -0.042257, -0.501871,
		37.379215, 34.206963, 19.155199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094440, 33.920082, 18.947266>,  <37.983952, 34.236542, 19.506510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094440, 33.920082, 18.947266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767776, 34.140396, 18.878321>,  <37.571777, 34.272583, 18.836954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767776, 34.140396, 18.878321>,  <38.094440, 33.920082, 18.947266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767776, 34.140396, 18.878321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387209, 0.301458, -0.871317,
		-0.427946, -0.778307, -0.459456,
		-0.816659, 0.550782, -0.172360,
		37.522778, 34.305630, 18.826612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910885, 33.773659, 18.214451>,  <38.094440, 33.920082, 18.947266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910885, 33.773659, 18.214451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802967, 34.128078, 18.365250>,  <37.738216, 34.340729, 18.455729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802967, 34.128078, 18.365250>,  <37.910885, 33.773659, 18.214451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802967, 34.128078, 18.365250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493254, 0.463418, -0.736169,
		-0.826989, -0.012660, -0.562076,
		-0.269796, 0.886050, 0.376997,
		37.722027, 34.393894, 18.478348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778812, 34.222275, 17.639246>,  <37.910885, 33.773659, 18.214451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778812, 34.222275, 17.639246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822269, 34.479507, 17.942467>,  <37.848343, 34.633846, 18.124399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822269, 34.479507, 17.942467>,  <37.778812, 34.222275, 17.639246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822269, 34.479507, 17.942467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469487, 0.638967, -0.609346,
		-0.876230, 0.422098, -0.232498,
		0.108645, 0.643082, 0.758051,
		37.854862, 34.672432, 18.169882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484707, 34.843670, 17.420794>,  <37.778812, 34.222275, 17.639246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484707, 34.843670, 17.420794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735649, 34.939026, 17.717333>,  <37.886215, 34.996239, 17.895256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735649, 34.939026, 17.717333>,  <37.484707, 34.843670, 17.420794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735649, 34.939026, 17.717333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272996, 0.824253, -0.496065,
		-0.729314, 0.513594, 0.452020,
		0.627355, 0.238388, 0.741348,
		37.923855, 35.010544, 17.939737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652149, 35.541355, 17.353710>,  <37.484707, 34.843670, 17.420794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652149, 35.541355, 17.353710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939354, 35.468353, 17.622381>,  <38.111675, 35.424553, 17.783585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939354, 35.468353, 17.622381>,  <37.652149, 35.541355, 17.353710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939354, 35.468353, 17.622381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582182, 0.686368, -0.435848,
		-0.381476, 0.703983, 0.599069,
		0.718012, -0.182501, 0.671679,
		38.154758, 35.413601, 17.823885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880207, 36.256069, 17.589272>,  <37.652149, 35.541355, 17.353710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880207, 36.256069, 17.589272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.173306, 35.995476, 17.667913>,  <38.349163, 35.839119, 17.715099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.173306, 35.995476, 17.667913>,  <37.880207, 36.256069, 17.589272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173306, 35.995476, 17.667913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669960, 0.639962, -0.376299,
		0.119333, 0.407449, 0.905398,
		0.732743, -0.651486, 0.196606,
		38.393127, 35.800030, 17.726894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374516, 36.666149, 17.951145>,  <37.880207, 36.256069, 17.589272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374516, 36.666149, 17.951145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518444, 36.342430, 17.765430>,  <38.604801, 36.148197, 17.654001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518444, 36.342430, 17.765430>,  <38.374516, 36.666149, 17.951145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518444, 36.342430, 17.765430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656778, 0.573142, -0.490052,
		0.662701, -0.128603, 0.737759,
		0.359818, -0.809302, -0.464286,
		38.626389, 36.099640, 17.626144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089241, 36.673805, 17.994246>,  <38.374516, 36.666149, 17.951145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089241, 36.673805, 17.994246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.009377, 36.434689, 17.683689>,  <38.961456, 36.291218, 17.497355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.009377, 36.434689, 17.683689>,  <39.089241, 36.673805, 17.994246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009377, 36.434689, 17.683689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577643, 0.568216, -0.586054,
		0.791495, -0.565489, 0.231859,
		-0.199661, -0.597790, -0.776391,
		38.949478, 36.255352, 17.450771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701466, 36.498417, 17.732447>,  <39.089241, 36.673805, 17.994246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701466, 36.498417, 17.732447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460976, 36.392067, 17.431025>,  <39.316681, 36.328259, 17.250172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460976, 36.392067, 17.431025>,  <39.701466, 36.498417, 17.732447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460976, 36.392067, 17.431025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613847, 0.450074, -0.648556,
		0.511592, -0.852492, -0.107385,
		-0.601220, -0.265878, -0.753554,
		39.280609, 36.312305, 17.204958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112480, 36.501572, 17.148399>,  <39.701466, 36.498417, 17.732447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112480, 36.501572, 17.148399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742737, 36.539722, 17.000633>,  <39.520893, 36.562614, 16.911974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742737, 36.539722, 17.000633>,  <40.112480, 36.501572, 17.148399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742737, 36.539722, 17.000633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341400, 0.639034, -0.689261,
		0.170327, -0.763242, -0.623258,
		-0.924356, 0.095381, -0.369415,
		39.465431, 36.568336, 16.889809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337852, 36.389709, 16.568563>,  <40.112480, 36.501572, 17.148399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337852, 36.389709, 16.568563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987370, 36.580891, 16.543831>,  <39.777081, 36.695599, 16.528992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987370, 36.580891, 16.543831>,  <40.337852, 36.389709, 16.568563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987370, 36.580891, 16.543831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410524, 0.672989, -0.615269,
		-0.252462, -0.564484, -0.785889,
		-0.876204, 0.477958, -0.061830,
		39.724510, 36.724277, 16.525282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300312, 36.457752, 15.954149>,  <40.337852, 36.389709, 16.568563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300312, 36.457752, 15.954149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044270, 36.736626, 16.083267>,  <39.890644, 36.903950, 16.160738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044270, 36.736626, 16.083267>,  <40.300312, 36.457752, 15.954149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044270, 36.736626, 16.083267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361885, 0.644229, -0.673802,
		-0.677718, -0.314491, -0.664676,
		-0.640108, 0.697184, 0.322795,
		39.852238, 36.945782, 16.180105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958614, 36.768391, 15.360878>,  <40.300312, 36.457752, 15.954149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958614, 36.768391, 15.360878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893593, 37.053444, 15.633856>,  <39.854580, 37.224476, 15.797643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893593, 37.053444, 15.633856>,  <39.958614, 36.768391, 15.360878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893593, 37.053444, 15.633856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149063, 0.701442, -0.696964,
		-0.975375, -0.011564, -0.220247,
		-0.162551, 0.712633, 0.682446,
		39.844826, 37.267235, 15.838590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488602, 37.264416, 15.044002>,  <39.958614, 36.768391, 15.360878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488602, 37.264416, 15.044002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737514, 37.409164, 15.321653>,  <39.886860, 37.496014, 15.488244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737514, 37.409164, 15.321653>,  <39.488602, 37.264416, 15.044002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737514, 37.409164, 15.321653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197346, 0.785568, -0.586463,
		-0.757511, 0.501928, 0.417429,
		0.622280, 0.361874, 0.694129,
		39.924198, 37.517727, 15.529892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465641, 38.085693, 15.248476>,  <39.488602, 37.264416, 15.044002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465641, 38.085693, 15.248476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820148, 37.902943, 15.278925>,  <40.032852, 37.793293, 15.297194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820148, 37.902943, 15.278925>,  <39.465641, 38.085693, 15.248476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820148, 37.902943, 15.278925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429490, 0.749111, -0.504351,
		0.173402, 0.479684, 0.860137,
		0.886267, -0.456876, 0.076122,
		40.086029, 37.765881, 15.301762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712517, 38.020081, 15.705384>,  <39.465641, 38.085693, 15.248476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712517, 38.020081, 15.705384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516880, 38.365135, 15.756991>,  <38.399498, 38.572166, 15.787956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516880, 38.365135, 15.756991>,  <38.712517, 38.020081, 15.705384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516880, 38.365135, 15.756991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305000, -0.030565, -0.951862,
		-0.817166, -0.504902, 0.278053,
		-0.489096, 0.862635, 0.129018,
		38.370152, 38.623924, 15.795697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156662, 38.038635, 15.167523>,  <38.712517, 38.020081, 15.705384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156662, 38.038635, 15.167523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184406, 38.426849, 15.259831>,  <38.201054, 38.659779, 15.315216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184406, 38.426849, 15.259831>,  <38.156662, 38.038635, 15.167523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184406, 38.426849, 15.259831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123663, 0.221179, -0.967361,
		-0.989897, 0.095639, -0.104677,
		0.069365, 0.970532, 0.230771,
		38.205215, 38.718010, 15.329062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886517, 38.602676, 14.738155>,  <38.156662, 38.038635, 15.167523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886517, 38.602676, 14.738155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217602, 38.778461, 14.877733>,  <38.416252, 38.883934, 14.961480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217602, 38.778461, 14.877733>,  <37.886517, 38.602676, 14.738155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217602, 38.778461, 14.877733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259121, 0.252244, -0.932324,
		-0.497746, 0.862114, 0.094910,
		0.827711, 0.439467, 0.348946,
		38.465916, 38.910301, 14.982417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010410, 39.369816, 14.435828>,  <37.886517, 38.602676, 14.738155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010410, 39.369816, 14.435828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308407, 39.118378, 14.525139>,  <38.487206, 38.967514, 14.578725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308407, 39.118378, 14.525139>,  <38.010410, 39.369816, 14.435828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308407, 39.118378, 14.525139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428733, 0.194771, -0.882186,
		0.511051, 0.752949, 0.414602,
		0.744994, -0.628595, 0.223276,
		38.531906, 38.929798, 14.592122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565254, 39.777142, 14.489291>,  <38.010410, 39.369816, 14.435828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565254, 39.777142, 14.489291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652050, 39.408974, 14.359222>,  <38.704128, 39.188072, 14.281181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652050, 39.408974, 14.359222>,  <38.565254, 39.777142, 14.489291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652050, 39.408974, 14.359222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188334, 0.366324, -0.911228,
		0.957833, 0.136490, 0.252837,
		0.216993, -0.920422, -0.325171,
		38.717148, 39.132847, 14.261671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006157, 39.734287, 15.240435>,  <38.565254, 39.777142, 14.489291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006157, 39.734287, 15.240435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668407, 39.525616, 15.191619>,  <38.465759, 39.400414, 15.162330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668407, 39.525616, 15.191619>,  <39.006157, 39.734287, 15.240435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668407, 39.525616, 15.191619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051957, -0.306445, 0.950469,
		-0.533237, 0.796206, 0.285858,
		-0.844369, -0.521677, -0.122040,
		38.415096, 39.369114, 15.155007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486523, 39.908863, 15.671836>,  <39.006157, 39.734287, 15.240435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486523, 39.908863, 15.671836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387451, 39.535320, 15.568629>,  <38.328007, 39.311195, 15.506705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387451, 39.535320, 15.568629>,  <38.486523, 39.908863, 15.671836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387451, 39.535320, 15.568629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170052, -0.220277, 0.960500,
		-0.953801, 0.281776, -0.104244,
		-0.247683, -0.933852, -0.258017,
		38.313145, 39.255165, 15.491224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742104, 39.780598, 15.900741>,  <38.486523, 39.908863, 15.671836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742104, 39.780598, 15.900741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939079, 39.434013, 15.867880>,  <38.057266, 39.226063, 15.848164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939079, 39.434013, 15.867880>,  <37.742104, 39.780598, 15.900741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939079, 39.434013, 15.867880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200441, -0.204756, 0.958070,
		-0.846952, -0.455325, -0.274504,
		0.492440, -0.866461, -0.082153,
		38.086811, 39.174076, 15.843234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259140, 39.248199, 16.167919>,  <37.742104, 39.780598, 15.900741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259140, 39.248199, 16.167919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624580, 39.101986, 16.239145>,  <37.843845, 39.014256, 16.281881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624580, 39.101986, 16.239145>,  <37.259140, 39.248199, 16.167919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624580, 39.101986, 16.239145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273618, -0.228766, 0.934237,
		-0.300765, -0.902245, -0.309020,
		0.913604, -0.365540, 0.178066,
		37.898663, 38.992325, 16.292566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122524, 38.676083, 16.429985>,  <37.259140, 39.248199, 16.167919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122524, 38.676083, 16.429985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484543, 38.777039, 16.566917>,  <37.701756, 38.837612, 16.649076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484543, 38.777039, 16.566917>,  <37.122524, 38.676083, 16.429985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484543, 38.777039, 16.566917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285948, -0.234744, 0.929047,
		0.314844, -0.938719, -0.140283,
		0.905045, 0.252391, 0.342332,
		37.756058, 38.852757, 16.669617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283638, 38.109726, 16.880241>,  <37.122524, 38.676083, 16.429985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283638, 38.109726, 16.880241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573418, 38.373325, 16.961134>,  <37.747284, 38.531487, 17.009668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573418, 38.373325, 16.961134>,  <37.283638, 38.109726, 16.880241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573418, 38.373325, 16.961134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017905, -0.311262, 0.950155,
		0.689096, -0.684718, -0.237293,
		0.724448, 0.658997, 0.202230,
		37.790752, 38.571026, 17.021803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801537, 37.719444, 17.265076>,  <37.283638, 38.109726, 16.880241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801537, 37.719444, 17.265076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917477, 38.089508, 17.363104>,  <37.987041, 38.311546, 17.421921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917477, 38.089508, 17.363104>,  <37.801537, 37.719444, 17.265076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917477, 38.089508, 17.363104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055520, -0.271884, 0.960727,
		0.955460, -0.264861, -0.130171,
		0.289850, 0.925164, 0.245069,
		38.004433, 38.367058, 17.436625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515728, 37.708546, 17.627504>,  <37.801537, 37.719444, 17.265076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515728, 37.708546, 17.627504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303894, 38.032085, 17.729717>,  <38.176792, 38.226212, 17.791046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303894, 38.032085, 17.729717>,  <38.515728, 37.708546, 17.627504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303894, 38.032085, 17.729717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046926, -0.272848, 0.960912,
		0.846957, 0.520878, 0.106540,
		-0.529587, 0.808851, 0.255533,
		38.145020, 38.274742, 17.806377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852604, 37.963837, 18.222643>,  <38.515728, 37.708546, 17.627504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852604, 37.963837, 18.222643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479748, 38.108604, 18.227039>,  <38.256035, 38.195465, 18.229677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479748, 38.108604, 18.227039>,  <38.852604, 37.963837, 18.222643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479748, 38.108604, 18.227039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082257, -0.241219, 0.966978,
		0.352619, 0.900460, 0.254622,
		-0.932145, 0.361919, 0.010989,
		38.200104, 38.217182, 18.230335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833958, 38.307968, 18.865955>,  <38.852604, 37.963837, 18.222643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833958, 38.307968, 18.865955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460041, 38.227066, 18.749163>,  <38.235691, 38.178524, 18.679087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460041, 38.227066, 18.749163>,  <38.833958, 38.307968, 18.865955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460041, 38.227066, 18.749163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238135, -0.253047, 0.937688,
		-0.263539, 0.946076, 0.188383,
		-0.934794, -0.202256, -0.291982,
		38.179604, 38.166389, 18.661568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425510, 38.720055, 19.233816>,  <38.833958, 38.307968, 18.865955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425510, 38.720055, 19.233816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199642, 38.415432, 19.106577>,  <38.064121, 38.232658, 19.030233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199642, 38.415432, 19.106577>,  <38.425510, 38.720055, 19.233816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199642, 38.415432, 19.106577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285985, -0.180995, 0.940985,
		-0.774183, 0.622317, -0.115590,
		-0.564670, -0.761552, -0.318097,
		38.030243, 38.186966, 19.011148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026085, 38.665539, 19.771502>,  <38.425510, 38.720055, 19.233816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026085, 38.665539, 19.771502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911808, 38.353756, 19.548494>,  <37.843243, 38.166687, 19.414690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911808, 38.353756, 19.548494>,  <38.026085, 38.665539, 19.771502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911808, 38.353756, 19.548494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479990, -0.387146, 0.787228,
		-0.829451, 0.492509, -0.263526,
		-0.285694, -0.779457, -0.557518,
		37.826099, 38.119919, 19.381239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239704, 38.606728, 19.760969>,  <38.026085, 38.665539, 19.771502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239704, 38.606728, 19.760969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395164, 38.245327, 19.688719>,  <37.488441, 38.028484, 19.645369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395164, 38.245327, 19.688719>,  <37.239704, 38.606728, 19.760969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395164, 38.245327, 19.688719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536285, -0.381234, 0.753034,
		-0.749231, -0.195802, -0.632704,
		0.388654, -0.903506, -0.180626,
		37.511761, 37.974274, 19.634531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705364, 38.295277, 19.774418>,  <37.239704, 38.606728, 19.760969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705364, 38.295277, 19.774418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993690, 38.021721, 19.819546>,  <37.166687, 37.857590, 19.846622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993690, 38.021721, 19.819546>,  <36.705364, 38.295277, 19.774418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993690, 38.021721, 19.819546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566113, -0.486956, 0.665124,
		-0.399929, -0.543300, -0.738161,
		0.720814, -0.683885, 0.112821,
		37.209934, 37.816555, 19.853392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348431, 37.635830, 19.644939>,  <36.705364, 38.295277, 19.774418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348431, 37.635830, 19.644939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680550, 37.562756, 19.855553>,  <36.879822, 37.518909, 19.981920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680550, 37.562756, 19.855553>,  <36.348431, 37.635830, 19.644939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680550, 37.562756, 19.855553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539203, -0.502268, 0.676008,
		0.140961, -0.845193, -0.515537,
		0.830295, -0.182688, 0.526531,
		36.929638, 37.507950, 20.013512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302410, 36.891151, 19.875198>,  <36.348431, 37.635830, 19.644939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302410, 36.891151, 19.875198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586937, 37.054779, 20.103827>,  <36.757652, 37.152954, 20.241003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586937, 37.054779, 20.103827>,  <36.302410, 36.891151, 19.875198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586937, 37.054779, 20.103827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414404, -0.412743, 0.811118,
		0.567714, -0.813822, -0.124071,
		0.711315, 0.409068, 0.571572,
		36.800331, 37.177498, 20.275297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430889, 36.351303, 20.237762>,  <36.302410, 36.891151, 19.875198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430889, 36.351303, 20.237762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541317, 36.676270, 20.443197>,  <36.607574, 36.871250, 20.566458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541317, 36.676270, 20.443197>,  <36.430889, 36.351303, 20.237762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541317, 36.676270, 20.443197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400047, -0.388745, 0.829964,
		0.873928, -0.434584, 0.217684,
		0.276065, 0.812413, 0.513589,
		36.624138, 36.919994, 20.597275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730286, 36.108356, 20.866291>,  <36.430889, 36.351303, 20.237762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730286, 36.108356, 20.866291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586346, 36.480282, 20.897160>,  <36.499981, 36.703438, 20.915680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586346, 36.480282, 20.897160>,  <36.730286, 36.108356, 20.866291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586346, 36.480282, 20.897160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493841, -0.259994, 0.829774,
		0.791597, 0.260487, 0.552739,
		-0.359855, 0.929812, 0.077171,
		36.478390, 36.759224, 20.920311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745323, 36.202583, 21.582285>,  <36.730286, 36.108356, 20.866291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745323, 36.202583, 21.582285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505833, 36.492100, 21.445086>,  <36.362137, 36.665810, 21.362766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505833, 36.492100, 21.445086>,  <36.745323, 36.202583, 21.582285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505833, 36.492100, 21.445086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622779, -0.151404, 0.767609,
		0.503658, 0.673202, 0.541413,
		-0.598727, 0.723793, -0.343000,
		36.326214, 36.709236, 21.342186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590515, 36.639118, 22.184565>,  <36.745323, 36.202583, 21.582285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590515, 36.639118, 22.184565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298260, 36.705585, 21.919672>,  <36.122906, 36.745464, 21.760736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298260, 36.705585, 21.919672>,  <36.590515, 36.639118, 22.184565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298260, 36.705585, 21.919672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682717, -0.166916, 0.711363,
		0.007669, 0.971868, 0.235402,
		-0.730643, 0.166169, -0.662231,
		36.079067, 36.755436, 21.721003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147381, 37.003361, 22.555422>,  <36.590515, 36.639118, 22.184565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147381, 37.003361, 22.555422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932888, 36.878395, 22.241772>,  <35.804192, 36.803417, 22.053581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932888, 36.878395, 22.241772>,  <36.147381, 37.003361, 22.555422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932888, 36.878395, 22.241772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774905, -0.186089, 0.604064,
		-0.334637, 0.931540, -0.142305,
		-0.536228, -0.312415, -0.784128,
		35.772018, 36.784672, 22.006533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470356, 37.385368, 22.541107>,  <36.147381, 37.003361, 22.555422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470356, 37.385368, 22.541107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418690, 37.047070, 22.334023>,  <35.387688, 36.844090, 22.209772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418690, 37.047070, 22.334023>,  <35.470356, 37.385368, 22.541107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418690, 37.047070, 22.334023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797136, -0.221979, 0.561515,
		-0.589822, 0.485218, -0.645503,
		-0.129169, -0.845747, -0.517713,
		35.379940, 36.793346, 22.178709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717747, 37.274330, 22.722406>,  <35.470356, 37.385368, 22.541107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717747, 37.274330, 22.722406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803093, 36.926315, 22.544638>,  <34.854301, 36.717506, 22.437977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803093, 36.926315, 22.544638>,  <34.717747, 37.274330, 22.722406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803093, 36.926315, 22.544638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590975, -0.477172, 0.650427,
		-0.777962, 0.123865, -0.615981,
		0.213364, -0.870037, -0.444423,
		34.867104, 36.665302, 22.411310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065605, 36.964626, 22.595551>,  <34.717747, 37.274330, 22.722406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065605, 36.964626, 22.595551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341927, 36.675461, 22.590151>,  <34.507721, 36.501961, 22.586910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341927, 36.675461, 22.590151>,  <34.065605, 36.964626, 22.595551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341927, 36.675461, 22.590151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642727, -0.622522, 0.446508,
		-0.331190, -0.299774, -0.894678,
		0.690808, -0.722912, -0.013501,
		34.549168, 36.458588, 22.586100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841961, 36.295303, 22.197458>,  <34.065605, 36.964626, 22.595551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841961, 36.295303, 22.197458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122978, 36.199486, 22.465502>,  <34.291588, 36.141994, 22.626328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122978, 36.199486, 22.465502>,  <33.841961, 36.295303, 22.197458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122978, 36.199486, 22.465502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645181, -0.611743, 0.457725,
		0.300289, -0.753914, -0.584328,
		0.702544, -0.239548, 0.670111,
		34.333740, 36.127621, 22.666534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650208, 35.751015, 22.456415>,  <33.841961, 36.295303, 22.197458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650208, 35.751015, 22.456415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924801, 35.817215, 22.739639>,  <34.089558, 35.856934, 22.909575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924801, 35.817215, 22.739639>,  <33.650208, 35.751015, 22.456415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924801, 35.817215, 22.739639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583152, -0.456375, 0.672054,
		0.434367, -0.874260, -0.216781,
		0.686483, 0.165502, 0.708061,
		34.130745, 35.866867, 22.952057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761288, 35.103836, 22.710369>,  <33.650208, 35.751015, 22.456415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761288, 35.103836, 22.710369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875175, 35.374893, 22.981586>,  <33.943508, 35.537525, 23.144316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875175, 35.374893, 22.981586>,  <33.761288, 35.103836, 22.710369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875175, 35.374893, 22.981586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441257, -0.535283, 0.720253,
		0.851017, -0.504258, 0.146611,
		0.284715, 0.677641, 0.678042,
		33.960590, 35.578186, 23.184999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836792, 34.648178, 23.350639>,  <33.761288, 35.103836, 22.710369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836792, 34.648178, 23.350639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819176, 35.026268, 23.480019>,  <33.808605, 35.253120, 23.557646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819176, 35.026268, 23.480019>,  <33.836792, 34.648178, 23.350639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819176, 35.026268, 23.480019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396400, -0.313718, 0.862814,
		0.917021, -0.090216, 0.388501,
		-0.044040, 0.945221, 0.323447,
		33.805965, 35.309834, 23.577053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040569, 34.623814, 23.997288>,  <33.836792, 34.648178, 23.350639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040569, 34.623814, 23.997288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832775, 34.965141, 23.979485>,  <33.708099, 35.169937, 23.968801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832775, 34.965141, 23.979485>,  <34.040569, 34.623814, 23.997288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832775, 34.965141, 23.979485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500050, -0.261356, 0.825616,
		0.692882, 0.451152, 0.562473,
		-0.519484, 0.853320, -0.044509,
		33.676929, 35.221138, 23.966131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035892, 34.808826, 24.711073>,  <34.040569, 34.623814, 23.997288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035892, 34.808826, 24.711073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736889, 35.026283, 24.558401>,  <33.557487, 35.156757, 24.466797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736889, 35.026283, 24.558401>,  <34.035892, 34.808826, 24.711073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736889, 35.026283, 24.558401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468048, -0.023353, 0.883395,
		0.471335, 0.838994, 0.271906,
		-0.747513, 0.543640, -0.381682,
		33.512634, 35.189377, 24.443897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738571, 35.262192, 25.344807>,  <34.035892, 34.808826, 24.711073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738571, 35.262192, 25.344807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456409, 35.238140, 25.062307>,  <33.287113, 35.223709, 24.892807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456409, 35.238140, 25.062307>,  <33.738571, 35.262192, 25.344807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456409, 35.238140, 25.062307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681308, -0.217308, 0.698997,
		-0.195503, 0.974249, 0.112324,
		-0.705406, -0.060129, -0.706248,
		33.244789, 35.220100, 24.850433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306023, 35.820488, 25.522579>,  <33.738571, 35.262192, 25.344807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306023, 35.820488, 25.522579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119751, 35.549160, 25.295238>,  <33.007988, 35.386364, 25.158834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119751, 35.549160, 25.295238>,  <33.306023, 35.820488, 25.522579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119751, 35.549160, 25.295238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668533, -0.151154, 0.728159,
		-0.579836, 0.719048, -0.383093,
		-0.465676, -0.678323, -0.568352,
		32.980049, 35.345665, 25.124733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685154, 36.068947, 25.471935>,  <33.306023, 35.820488, 25.522579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685154, 36.068947, 25.471935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634319, 35.681145, 25.388124>,  <32.603821, 35.448463, 25.337837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634319, 35.681145, 25.388124>,  <32.685154, 36.068947, 25.471935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634319, 35.681145, 25.388124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424591, -0.137737, 0.894847,
		-0.896422, 0.202684, -0.394141,
		-0.127084, -0.969509, -0.209529,
		32.596195, 35.390293, 25.325266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973034, 35.882904, 25.772274>,  <32.685154, 36.068947, 25.471935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973034, 35.882904, 25.772274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180962, 35.545914, 25.715670>,  <32.305717, 35.343719, 25.681707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180962, 35.545914, 25.715670>,  <31.973034, 35.882904, 25.772274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180962, 35.545914, 25.715670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290959, -0.330343, 0.897896,
		-0.803201, -0.425570, -0.416844,
		0.519819, -0.842475, -0.141509,
		32.336906, 35.293171, 25.673218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515921, 35.375462, 26.091496>,  <31.973034, 35.882904, 25.772274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515921, 35.375462, 26.091496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860966, 35.175179, 26.062685>,  <32.067993, 35.055008, 26.045399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860966, 35.175179, 26.062685>,  <31.515921, 35.375462, 26.091496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860966, 35.175179, 26.062685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187178, -0.448208, 0.874113,
		-0.469971, -0.740534, -0.480351,
		0.862608, -0.500719, -0.072033,
		32.119751, 35.024967, 26.041077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437134, 34.641636, 26.183741>,  <31.515921, 35.375462, 26.091496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437134, 34.641636, 26.183741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823606, 34.685455, 26.277119>,  <32.055489, 34.711746, 26.333145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823606, 34.685455, 26.277119>,  <31.437134, 34.641636, 26.183741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823606, 34.685455, 26.277119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144396, -0.520224, 0.841735,
		0.213651, -0.846976, -0.486812,
		0.966180, 0.109544, 0.233446,
		32.113461, 34.718319, 26.347153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687298, 34.050606, 26.466135>,  <31.437134, 34.641636, 26.183741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687298, 34.050606, 26.466135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965565, 34.308872, 26.592100>,  <32.132523, 34.463833, 26.667679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965565, 34.308872, 26.592100>,  <31.687298, 34.050606, 26.466135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965565, 34.308872, 26.592100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004862, -0.434130, 0.900837,
		0.718350, -0.628212, -0.298870,
		0.695665, 0.645663, 0.314912,
		32.174263, 34.502571, 26.686573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168217, 33.671406, 26.778891>,  <31.687298, 34.050606, 26.466135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168217, 33.671406, 26.778891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227757, 34.032078, 26.941278>,  <32.263481, 34.248482, 27.038712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227757, 34.032078, 26.941278>,  <32.168217, 33.671406, 26.778891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227757, 34.032078, 26.941278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166355, -0.427526, 0.888565,
		0.974766, -0.064726, -0.213637,
		0.148849, 0.901683, 0.405971,
		32.272411, 34.302582, 27.063070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665680, 33.573761, 27.202005>,  <32.168217, 33.671406, 26.778891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665680, 33.573761, 27.202005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495125, 33.909367, 27.337208>,  <32.392792, 34.110729, 27.418329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495125, 33.909367, 27.337208>,  <32.665680, 33.573761, 27.202005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495125, 33.909367, 27.337208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238685, -0.256070, 0.936727,
		0.872483, 0.480082, -0.091076,
		-0.426384, 0.839017, 0.338005,
		32.367210, 34.161072, 27.438610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096733, 33.824638, 27.706306>,  <32.665680, 33.573761, 27.202005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096733, 33.824638, 27.706306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741283, 33.992073, 27.781271>,  <32.528011, 34.092533, 27.826250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741283, 33.992073, 27.781271>,  <33.096733, 33.824638, 27.706306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741283, 33.992073, 27.781271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106219, -0.209685, 0.971982,
		0.446161, 0.883637, 0.141870,
		-0.888627, 0.418591, 0.187413,
		32.474697, 34.117649, 27.837494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166836, 34.150627, 28.338509>,  <33.096733, 33.824638, 27.706306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166836, 34.150627, 28.338509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767319, 34.142479, 28.320637>,  <32.527607, 34.137592, 28.309914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767319, 34.142479, 28.320637>,  <33.166836, 34.150627, 28.338509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767319, 34.142479, 28.320637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040188, -0.183783, 0.982145,
		-0.028215, 0.982756, 0.182743,
		-0.998794, -0.020368, -0.044681,
		32.467682, 34.136368, 28.307232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819290, 34.599918, 28.852156>,  <33.166836, 34.150627, 28.338509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819290, 34.599918, 28.852156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563908, 34.305061, 28.763613>,  <32.410679, 34.128147, 28.710487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563908, 34.305061, 28.763613>,  <32.819290, 34.599918, 28.852156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563908, 34.305061, 28.763613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056472, -0.241966, 0.968640,
		-0.767584, 0.630934, 0.112857,
		-0.638456, -0.737140, -0.221359,
		32.372372, 34.083920, 28.697205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573418, 34.961353, 29.485056>,  <32.819290, 34.599918, 28.852156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573418, 34.961353, 29.485056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760075, 35.096733, 29.811907>,  <32.872066, 35.177963, 30.008017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760075, 35.096733, 29.811907>,  <32.573418, 34.961353, 29.485056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760075, 35.096733, 29.811907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537968, 0.624712, -0.565973,
		-0.702024, 0.703694, 0.109440,
		0.466641, 0.338451, 0.817127,
		32.900066, 35.198269, 30.057045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514999, 35.666466, 29.538610>,  <32.573418, 34.961353, 29.485056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514999, 35.666466, 29.538610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.858734, 35.536976, 29.696974>,  <33.064976, 35.459282, 29.791992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.858734, 35.536976, 29.696974>,  <32.514999, 35.666466, 29.538610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858734, 35.536976, 29.696974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507470, 0.635710, -0.581676,
		-0.063376, 0.700765, 0.710571,
		0.859335, -0.323729, 0.395907,
		33.116535, 35.439857, 29.815746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822880, 36.289764, 29.659756>,  <32.514999, 35.666466, 29.538610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822880, 36.289764, 29.659756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100586, 36.001926, 29.654402>,  <33.267208, 35.829224, 29.651190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100586, 36.001926, 29.654402>,  <32.822880, 36.289764, 29.659756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100586, 36.001926, 29.654402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605476, 0.594011, -0.529669,
		0.389098, 0.359627, 0.848099,
		0.694263, -0.719597, -0.013383,
		33.308865, 35.786049, 29.650387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451714, 36.644119, 29.666189>,  <32.822880, 36.289764, 29.659756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451714, 36.644119, 29.666189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561066, 36.288769, 29.518650>,  <33.626678, 36.075558, 29.430126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561066, 36.288769, 29.518650>,  <33.451714, 36.644119, 29.666189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561066, 36.288769, 29.518650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664144, 0.451714, -0.595708,
		0.695827, -0.082111, 0.713501,
		0.273384, -0.888376, -0.368848,
		33.643082, 36.022255, 29.407995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099022, 36.670876, 29.635450>,  <33.451714, 36.644119, 29.666189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099022, 36.670876, 29.635450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048107, 36.372150, 29.374353>,  <34.017559, 36.192917, 29.217695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048107, 36.372150, 29.374353>,  <34.099022, 36.670876, 29.635450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048107, 36.372150, 29.374353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608902, 0.460661, -0.645779,
		0.782967, -0.479654, 0.396099,
		-0.127283, -0.746809, -0.652744,
		34.009922, 36.148109, 29.178530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791199, 36.371086, 29.362165>,  <34.099022, 36.670876, 29.635450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791199, 36.371086, 29.362165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536118, 36.272385, 29.070290>,  <34.383068, 36.213165, 28.895164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536118, 36.272385, 29.070290>,  <34.791199, 36.371086, 29.362165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536118, 36.272385, 29.070290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563729, 0.496053, -0.660409,
		0.524924, -0.832492, -0.177231,
		-0.637702, -0.246755, -0.729691,
		34.344807, 36.198357, 28.851383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233521, 36.319378, 28.814445>,  <34.791199, 36.371086, 29.362165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233521, 36.319378, 28.814445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884293, 36.339764, 28.620478>,  <34.674755, 36.351997, 28.504097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884293, 36.339764, 28.620478>,  <35.233521, 36.319378, 28.814445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884293, 36.339764, 28.620478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441033, 0.506646, -0.740810,
		0.207924, -0.860646, -0.464817,
		-0.873073, 0.050967, -0.484918,
		34.622372, 36.355053, 28.475002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295345, 36.031521, 28.216949>,  <35.233521, 36.319378, 28.814445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295345, 36.031521, 28.216949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991055, 36.285076, 28.161125>,  <34.808479, 36.437210, 28.127630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991055, 36.285076, 28.161125>,  <35.295345, 36.031521, 28.216949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991055, 36.285076, 28.161125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504330, 0.441913, -0.741865,
		-0.408584, -0.634745, -0.655864,
		-0.760730, 0.633887, -0.139562,
		34.762836, 36.475243, 28.119257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144138, 36.096973, 27.429884>,  <35.295345, 36.031521, 28.216949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144138, 36.096973, 27.429884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974316, 36.421776, 27.590086>,  <34.872421, 36.616657, 27.686207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974316, 36.421776, 27.590086>,  <35.144138, 36.096973, 27.429884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974316, 36.421776, 27.590086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286506, 0.540107, -0.791328,
		-0.858877, -0.221213, -0.461948,
		-0.424553, 0.812004, 0.400506,
		34.846951, 36.665379, 27.710238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818920, 36.338020, 26.961248>,  <35.144138, 36.096973, 27.429884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818920, 36.338020, 26.961248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831810, 36.660175, 27.198000>,  <34.839542, 36.853466, 27.340050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831810, 36.660175, 27.198000>,  <34.818920, 36.338020, 26.961248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831810, 36.660175, 27.198000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153010, 0.581230, -0.799224,
		-0.987699, 0.116318, -0.104502,
		0.032225, 0.805383, 0.591878,
		34.841476, 36.901791, 27.375563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425777, 36.831024, 26.675522>,  <34.818920, 36.338020, 26.961248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425777, 36.831024, 26.675522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715031, 37.004200, 26.890793>,  <34.888584, 37.108105, 27.019955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715031, 37.004200, 26.890793>,  <34.425777, 36.831024, 26.675522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715031, 37.004200, 26.890793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178890, 0.635188, -0.751355,
		-0.667136, 0.639608, 0.381880,
		0.723138, 0.432941, 0.538176,
		34.931973, 37.134083, 27.052246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306427, 37.596039, 26.563782>,  <34.425777, 36.831024, 26.675522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306427, 37.596039, 26.563782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666454, 37.593456, 26.738064>,  <34.882469, 37.591908, 26.842632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666454, 37.593456, 26.738064>,  <34.306427, 37.596039, 26.563782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666454, 37.593456, 26.738064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334797, 0.650240, -0.681982,
		-0.278912, 0.759702, 0.587419,
		0.900066, -0.006453, 0.435706,
		34.936474, 37.591522, 26.868776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546352, 38.354645, 26.680943>,  <34.306427, 37.596039, 26.563782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546352, 38.354645, 26.680943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868973, 38.118374, 26.690451>,  <35.062546, 37.976612, 26.696156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868973, 38.118374, 26.690451>,  <34.546352, 38.354645, 26.680943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868973, 38.118374, 26.690451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415183, 0.537375, -0.734065,
		0.420825, 0.601933, 0.678663,
		0.806554, -0.590682, 0.023772,
		35.110939, 37.941170, 26.697582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028801, 38.787861, 26.348330>,  <34.546352, 38.354645, 26.680943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028801, 38.787861, 26.348330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220726, 38.438965, 26.386229>,  <35.335880, 38.229626, 26.408968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220726, 38.438965, 26.386229>,  <35.028801, 38.787861, 26.348330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220726, 38.438965, 26.386229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635787, 0.271245, -0.722635,
		0.604613, 0.406966, 0.684706,
		0.479810, -0.872242, 0.094746,
		35.364670, 38.177292, 26.414652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702641, 38.948662, 26.351080>,  <35.028801, 38.787861, 26.348330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702641, 38.948662, 26.351080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663532, 38.573940, 26.216719>,  <35.640068, 38.349106, 26.136103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663532, 38.573940, 26.216719>,  <35.702641, 38.948662, 26.351080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663532, 38.573940, 26.216719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652789, 0.194397, -0.732172,
		0.751203, -0.290860, 0.592532,
		-0.097773, -0.936808, -0.335902,
		35.634201, 38.292896, 26.115948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374496, 38.652168, 26.270205>,  <35.702641, 38.948662, 26.351080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374496, 38.652168, 26.270205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130764, 38.468304, 26.011768>,  <35.984524, 38.357986, 25.856707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130764, 38.468304, 26.011768>,  <36.374496, 38.652168, 26.270205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130764, 38.468304, 26.011768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679363, 0.117539, -0.724327,
		0.408884, -0.880284, 0.240654,
		-0.609328, -0.459657, -0.646092,
		35.947968, 38.330406, 25.817940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740414, 38.120052, 25.914448>,  <36.374496, 38.652168, 26.270205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740414, 38.120052, 25.914448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434238, 38.138435, 25.657700>,  <36.250534, 38.149464, 25.503651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434238, 38.138435, 25.657700>,  <36.740414, 38.120052, 25.914448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434238, 38.138435, 25.657700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643160, 0.021586, -0.765427,
		-0.021320, -0.998710, -0.046080,
		-0.765435, 0.045956, -0.641871,
		36.204609, 38.152222, 25.465137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872688, 37.645012, 25.410221>,  <36.740414, 38.120052, 25.914448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872688, 37.645012, 25.410221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629318, 37.914021, 25.241684>,  <36.483295, 38.075428, 25.140562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629318, 37.914021, 25.241684>,  <36.872688, 37.645012, 25.410221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629318, 37.914021, 25.241684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420317, -0.177271, -0.889892,
		-0.673167, -0.718529, -0.174818,
		-0.608423, 0.672525, -0.421343,
		36.446793, 38.115780, 25.115280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898430, 37.470318, 24.758453>,  <36.872688, 37.645012, 25.410221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898430, 37.470318, 24.758453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687923, 37.804813, 24.696823>,  <36.561619, 38.005512, 24.659845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687923, 37.804813, 24.696823>,  <36.898430, 37.470318, 24.758453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687923, 37.804813, 24.696823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345568, 0.044775, -0.937325,
		-0.776932, -0.546530, -0.312542,
		-0.526270, 0.836242, -0.154077,
		36.530041, 38.055687, 24.650600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262169, 37.454651, 24.177031>,  <36.898430, 37.470318, 24.758453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262169, 37.454651, 24.177031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421589, 37.820557, 24.203457>,  <36.517242, 38.040100, 24.219313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421589, 37.820557, 24.203457>,  <36.262169, 37.454651, 24.177031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421589, 37.820557, 24.203457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303001, -0.063340, -0.950883,
		-0.865648, 0.398994, -0.302419,
		0.398552, 0.914763, 0.066065,
		36.541153, 38.094986, 24.223276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261532, 37.782631, 23.568415>,  <36.262169, 37.454651, 24.177031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261532, 37.782631, 23.568415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478390, 38.075672, 23.733038>,  <36.608505, 38.251495, 23.831812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478390, 38.075672, 23.733038>,  <36.261532, 37.782631, 23.568415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478390, 38.075672, 23.733038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473133, 0.138624, -0.870016,
		-0.694426, 0.666393, -0.271464,
		0.542141, 0.732601, 0.411557,
		36.641033, 38.295452, 23.856504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378426, 38.189259, 23.041958>,  <36.261532, 37.782631, 23.568415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378426, 38.189259, 23.041958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645367, 38.300213, 23.318419>,  <36.805531, 38.366787, 23.484295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645367, 38.300213, 23.318419>,  <36.378426, 38.189259, 23.041958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645367, 38.300213, 23.318419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613109, 0.322197, -0.721309,
		-0.422771, 0.905121, 0.044949,
		0.667354, 0.277390, 0.691154,
		36.845573, 38.383430, 23.525764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542206, 38.901928, 22.808477>,  <36.378426, 38.189259, 23.041958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542206, 38.901928, 22.808477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834488, 38.783642, 23.054607>,  <37.009857, 38.712669, 23.202286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834488, 38.783642, 23.054607>,  <36.542206, 38.901928, 22.808477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834488, 38.783642, 23.054607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668549, 0.127417, -0.732671,
		0.138260, 0.946740, 0.290805,
		0.730703, -0.295717, 0.615326,
		37.053699, 38.694927, 23.239204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119762, 39.349297, 22.587936>,  <36.542206, 38.901928, 22.808477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119762, 39.349297, 22.587936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250690, 39.011242, 22.756979>,  <37.329247, 38.808407, 22.858404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250690, 39.011242, 22.756979>,  <37.119762, 39.349297, 22.587936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250690, 39.011242, 22.756979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743269, -0.045871, -0.667418,
		0.583447, 0.532572, 0.613153,
		0.327322, -0.845141, 0.422608,
		37.348888, 38.757698, 22.883760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805817, 39.463100, 22.734278>,  <37.119762, 39.349297, 22.587936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805817, 39.463100, 22.734278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.784889, 39.063679, 22.739302>,  <37.772331, 38.824028, 22.742317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.784889, 39.063679, 22.739302>,  <37.805817, 39.463100, 22.734278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784889, 39.063679, 22.739302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792298, -0.049163, -0.608150,
		0.607887, -0.021865, 0.793723,
		-0.052319, -0.998551, 0.012562,
		37.769192, 38.764114, 22.743071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480434, 39.159698, 22.973301>,  <37.805817, 39.463100, 22.734278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480434, 39.159698, 22.973301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.302879, 38.899975, 22.726284>,  <38.196346, 38.744141, 22.578074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.302879, 38.899975, 22.726284>,  <38.480434, 39.159698, 22.973301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302879, 38.899975, 22.726284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780653, 0.058134, -0.622256,
		0.439939, -0.758297, 0.481083,
		-0.443887, -0.649313, -0.617542,
		38.169712, 38.705181, 22.541021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884800, 38.472237, 22.820686>,  <38.480434, 39.159698, 22.973301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884800, 38.472237, 22.820686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645790, 38.531906, 22.505545>,  <38.502384, 38.567707, 22.316460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645790, 38.531906, 22.505545>,  <38.884800, 38.472237, 22.820686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645790, 38.531906, 22.505545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754794, -0.226999, -0.615433,
		-0.270652, -0.962402, 0.023037,
		-0.597523, 0.149179, -0.787853,
		38.466534, 38.576660, 22.269188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058048, 37.993408, 22.402195>,  <38.884800, 38.472237, 22.820686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058048, 37.993408, 22.402195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825050, 38.178268, 22.134727>,  <38.685253, 38.289185, 21.974247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825050, 38.178268, 22.134727>,  <39.058048, 37.993408, 22.402195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825050, 38.178268, 22.134727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607302, -0.299337, -0.735923,
		-0.540267, -0.834752, -0.106306,
		-0.582492, 0.462154, -0.668668,
		38.650303, 38.316914, 21.934128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013870, 37.450741, 21.865719>,  <39.058048, 37.993408, 22.402195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013870, 37.450741, 21.865719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927265, 37.805813, 21.703167>,  <38.875301, 38.018856, 21.605635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927265, 37.805813, 21.703167>,  <39.013870, 37.450741, 21.865719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927265, 37.805813, 21.703167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548393, -0.233797, -0.802873,
		-0.807705, -0.396691, -0.436176,
		-0.216515, 0.887680, -0.406381,
		38.862312, 38.072117, 21.581253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925968, 37.299675, 21.115133>,  <39.013870, 37.450741, 21.865719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925968, 37.299675, 21.115133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020798, 37.680775, 21.191107>,  <39.077694, 37.909435, 21.236691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020798, 37.680775, 21.191107>,  <38.925968, 37.299675, 21.115133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020798, 37.680775, 21.191107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663489, -0.015974, -0.748016,
		-0.709634, 0.303352, -0.635922,
		0.237070, 0.952745, 0.189935,
		39.091919, 37.966599, 21.248087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843739, 37.689346, 20.414322>,  <38.925968, 37.299675, 21.115133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843739, 37.689346, 20.414322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096962, 37.889202, 20.650829>,  <39.248894, 38.009117, 20.792734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096962, 37.889202, 20.650829>,  <38.843739, 37.689346, 20.414322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096962, 37.889202, 20.650829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595984, 0.172855, -0.784171,
		-0.494007, 0.848812, -0.188350,
		0.633057, 0.499640, 0.591269,
		39.286880, 38.039093, 20.828211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963654, 38.141041, 19.981092>,  <38.843739, 37.689346, 20.414322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963654, 38.141041, 19.981092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236107, 38.212399, 20.265129>,  <39.399578, 38.255211, 20.435551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236107, 38.212399, 20.265129>,  <38.963654, 38.141041, 19.981092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236107, 38.212399, 20.265129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698706, 0.131435, -0.703232,
		-0.218783, 0.975141, -0.035119,
		0.681135, 0.178393, 0.710093,
		39.440449, 38.265915, 20.478157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192757, 38.757755, 19.775347>,  <38.963654, 38.141041, 19.981092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192757, 38.757755, 19.775347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486790, 38.614887, 20.005854>,  <39.663208, 38.529167, 20.144157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486790, 38.614887, 20.005854>,  <39.192757, 38.757755, 19.775347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486790, 38.614887, 20.005854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670826, 0.260034, -0.694532,
		0.098218, 0.897113, 0.430746,
		0.735082, -0.357171, 0.576266,
		39.707314, 38.507736, 20.178734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723606, 39.264545, 19.787579>,  <39.192757, 38.757755, 19.775347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723606, 39.264545, 19.787579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907608, 38.925541, 19.893501>,  <40.018009, 38.722137, 19.957056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907608, 38.925541, 19.893501>,  <39.723606, 39.264545, 19.787579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907608, 38.925541, 19.893501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685749, 0.149650, -0.712287,
		0.564041, 0.509249, 0.650018,
		0.460007, -0.847508, 0.264808,
		40.045609, 38.671288, 19.972944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443863, 39.464672, 19.878067>,  <39.723606, 39.264545, 19.787579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443863, 39.464672, 19.878067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456161, 39.065975, 19.848244>,  <40.463539, 38.826756, 19.830351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456161, 39.065975, 19.848244>,  <40.443863, 39.464672, 19.878067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456161, 39.065975, 19.848244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834967, 0.066614, -0.546254,
		0.549441, -0.045458, 0.834295,
		0.030744, -0.996743, -0.074556,
		40.465385, 38.766953, 19.825876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064377, 39.304619, 20.074547>,  <40.443863, 39.464672, 19.878067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064377, 39.304619, 20.074547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.943481, 38.993866, 19.853600>,  <40.870945, 38.807415, 19.721031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.943481, 38.993866, 19.853600>,  <41.064377, 39.304619, 20.074547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943481, 38.993866, 19.853600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847690, 0.045980, -0.528496,
		0.435977, -0.627966, 0.644657,
		-0.302237, -0.776881, -0.552366,
		40.852810, 38.760803, 19.687889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640079, 38.699718, 19.993996>,  <41.064377, 39.304619, 20.074547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640079, 38.699718, 19.993996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387917, 38.674763, 19.684496>,  <41.236618, 38.659790, 19.498796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387917, 38.674763, 19.684496>,  <41.640079, 38.699718, 19.993996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387917, 38.674763, 19.684496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775954, -0.078742, -0.625856,
		-0.021881, -0.994941, 0.098049,
		-0.630410, -0.062388, -0.773751,
		41.198795, 38.656048, 19.452370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870457, 38.079575, 19.623684>,  <41.640079, 38.699718, 19.993996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870457, 38.079575, 19.623684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.680740, 38.312790, 19.359831>,  <41.566910, 38.452721, 19.201519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.680740, 38.312790, 19.359831>,  <41.870457, 38.079575, 19.623684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680740, 38.312790, 19.359831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642406, -0.283120, -0.712150,
		-0.601965, -0.761519, -0.240265,
		-0.474292, 0.583037, -0.659632,
		41.538452, 38.487701, 19.161942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.513180, 38.484558, 19.598619>,  <41.870457, 38.079575, 19.623684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.513180, 38.484558, 19.598619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857433, 38.666512, 19.690176>,  <43.063984, 38.775684, 19.745110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857433, 38.666512, 19.690176>,  <42.513180, 38.484558, 19.598619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857433, 38.666512, 19.690176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029277, -0.404546, 0.914049,
		0.508387, -0.793360, -0.334847,
		0.860631, 0.454887, 0.228893,
		43.115623, 38.802979, 19.758844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.966221, 37.909191, 19.881573>,  <42.513180, 38.484558, 19.598619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.966221, 37.909191, 19.881573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.087196, 38.261810, 20.026573>,  <43.159782, 38.473381, 20.113573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.087196, 38.261810, 20.026573>,  <42.966221, 37.909191, 19.881573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.087196, 38.261810, 20.026573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157200, -0.328971, 0.931164,
		0.940118, -0.338601, 0.039087,
		0.302435, 0.881548, 0.362500,
		43.177925, 38.526276, 20.135323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.395805, 37.762760, 20.388441>,  <42.966221, 37.909191, 19.881573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.395805, 37.762760, 20.388441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.251972, 38.121258, 20.492329>,  <43.165672, 38.336357, 20.554661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.251972, 38.121258, 20.492329>,  <43.395805, 37.762760, 20.388441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.251972, 38.121258, 20.492329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281232, -0.369486, 0.885657,
		0.889724, 0.245426, 0.384912,
		-0.359583, 0.896240, 0.259719,
		43.144096, 38.390129, 20.570244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.688801, 37.924526, 21.092867>,  <43.395805, 37.762760, 20.388441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.688801, 37.924526, 21.092867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.360138, 38.143921, 21.030834>,  <43.162941, 38.275558, 20.993614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.360138, 38.143921, 21.030834>,  <43.688801, 37.924526, 21.092867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.360138, 38.143921, 21.030834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286453, -0.162130, 0.944277,
		0.492780, 0.820291, 0.290330,
		-0.821653, 0.548486, -0.155080,
		43.113644, 38.308468, 20.984310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.542263, 38.190075, 21.730167>,  <43.688801, 37.924526, 21.092867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.542263, 38.190075, 21.730167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.194492, 38.260235, 21.545420>,  <42.985828, 38.302330, 21.434570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.194492, 38.260235, 21.545420>,  <43.542263, 38.190075, 21.730167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.194492, 38.260235, 21.545420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481232, -0.089046, 0.872059,
		0.111833, 0.980461, 0.161829,
		-0.869430, 0.175403, -0.461871,
		42.933662, 38.312855, 21.406858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.092823, 38.589531, 22.207426>,  <43.542263, 38.190075, 21.730167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.092823, 38.589531, 22.207426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836666, 38.426044, 21.947317>,  <42.682972, 38.327953, 21.791252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836666, 38.426044, 21.947317>,  <43.092823, 38.589531, 22.207426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.836666, 38.426044, 21.947317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652204, -0.157757, 0.741446,
		-0.405624, 0.898925, -0.165539,
		-0.640390, -0.408714, -0.650272,
		42.644550, 38.303429, 21.752235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452438, 38.933586, 22.313030>,  <43.092823, 38.589531, 22.207426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452438, 38.933586, 22.313030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348412, 38.586063, 22.144487>,  <42.285995, 38.377548, 22.043362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348412, 38.586063, 22.144487>,  <42.452438, 38.933586, 22.313030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.348412, 38.586063, 22.144487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765383, -0.080558, 0.638513,
		-0.588687, 0.488557, -0.644019,
		-0.260069, -0.868805, -0.421357,
		42.270390, 38.325420, 22.018080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768646, 38.983837, 22.320036>,  <42.452438, 38.933586, 22.313030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768646, 38.983837, 22.320036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.822430, 38.591724, 22.262114>,  <41.854702, 38.356457, 22.227360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.822430, 38.591724, 22.262114>,  <41.768646, 38.983837, 22.320036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822430, 38.591724, 22.262114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764745, -0.195586, 0.613932,
		-0.630148, 0.028189, -0.775964,
		0.134462, -0.980281, -0.144805,
		41.862770, 38.297642, 22.218672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104221, 38.729084, 22.271971>,  <41.768646, 38.983837, 22.320036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104221, 38.729084, 22.271971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.320526, 38.406956, 22.369158>,  <41.450310, 38.213680, 22.427471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.320526, 38.406956, 22.369158>,  <41.104221, 38.729084, 22.271971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.320526, 38.406956, 22.369158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726989, -0.302135, 0.616605,
		-0.423154, -0.510074, -0.748842,
		0.540765, -0.805319, 0.242969,
		41.482758, 38.165359, 22.442049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573181, 38.193676, 22.346624>,  <41.104221, 38.729084, 22.271971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573181, 38.193676, 22.346624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.893837, 38.079357, 22.556652>,  <41.086231, 38.010765, 22.682669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.893837, 38.079357, 22.556652>,  <40.573181, 38.193676, 22.346624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893837, 38.079357, 22.556652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597809, -0.383127, 0.704158,
		-0.000078, -0.878370, -0.477981,
		0.801638, -0.285796, 0.525068,
		41.134327, 37.993618, 22.714172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410419, 37.609806, 22.615715>,  <40.573181, 38.193676, 22.346624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410419, 37.609806, 22.615715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.724934, 37.690239, 22.849407>,  <40.913643, 37.738499, 22.989622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.724934, 37.690239, 22.849407>,  <40.410419, 37.609806, 22.615715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724934, 37.690239, 22.849407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496837, -0.356334, 0.791315,
		0.367303, -0.912464, -0.180273,
		0.786283, 0.201086, 0.584229,
		40.960819, 37.750565, 23.024675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565639, 36.969513, 23.067335>,  <40.410419, 37.609806, 22.615715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565639, 36.969513, 23.067335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712646, 37.302570, 23.233049>,  <40.800850, 37.502407, 23.332478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712646, 37.302570, 23.233049>,  <40.565639, 36.969513, 23.067335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712646, 37.302570, 23.233049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384149, -0.269772, 0.882979,
		0.846973, -0.483654, 0.220716,
		0.367514, 0.832647, 0.414285,
		40.822899, 37.552364, 23.357334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997749, 36.746754, 23.633007>,  <40.565639, 36.969513, 23.067335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997749, 36.746754, 23.633007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864967, 37.121017, 23.680933>,  <40.785297, 37.345573, 23.709688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864967, 37.121017, 23.680933>,  <40.997749, 36.746754, 23.633007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864967, 37.121017, 23.680933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540672, -0.292808, 0.788630,
		0.772968, 0.197009, 0.603082,
		-0.331954, 0.935655, 0.119814,
		40.765381, 37.401714, 23.716877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859707, 36.771229, 24.346437>,  <40.997749, 36.746754, 23.633007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859707, 36.771229, 24.346437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690315, 37.117725, 24.240381>,  <40.588680, 37.325623, 24.176748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690315, 37.117725, 24.240381>,  <40.859707, 36.771229, 24.346437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690315, 37.117725, 24.240381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693404, -0.121601, 0.710214,
		0.582974, 0.484608, 0.652148,
		-0.423477, 0.866238, -0.265139,
		40.563271, 37.377598, 24.160839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829536, 37.153725, 24.923983>,  <40.859707, 36.771229, 24.346437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829536, 37.153725, 24.923983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551533, 37.322166, 24.690870>,  <40.384731, 37.423229, 24.551003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551533, 37.322166, 24.690870>,  <40.829536, 37.153725, 24.923983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551533, 37.322166, 24.690870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695174, -0.186637, 0.694189,
		0.183554, 0.887604, 0.422453,
		-0.695011, 0.421100, -0.582782,
		40.343029, 37.448498, 24.516035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446941, 37.689774, 25.312832>,  <40.829536, 37.153725, 24.923983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446941, 37.689774, 25.312832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210930, 37.567219, 25.014036>,  <40.069324, 37.493687, 24.834759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210930, 37.567219, 25.014036>,  <40.446941, 37.689774, 25.312832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210930, 37.567219, 25.014036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679994, -0.310225, 0.664355,
		-0.435286, 0.899937, -0.025302,
		-0.590029, -0.306390, -0.746988,
		40.033920, 37.475304, 24.789940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930294, 38.078854, 25.437002>,  <40.446941, 37.689774, 25.312832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930294, 38.078854, 25.437002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783955, 37.809654, 25.179869>,  <39.696152, 37.648136, 25.025589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783955, 37.809654, 25.179869>,  <39.930294, 38.078854, 25.437002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783955, 37.809654, 25.179869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819150, -0.095009, 0.565657,
		-0.441759, 0.733519, -0.516525,
		-0.365845, -0.672996, -0.642833,
		39.674202, 37.607754, 24.987019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286194, 38.298443, 25.355677>,  <39.930294, 38.078854, 25.437002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286194, 38.298443, 25.355677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285439, 37.908871, 25.264935>,  <39.284985, 37.675129, 25.210489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285439, 37.908871, 25.264935>,  <39.286194, 38.298443, 25.355677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285439, 37.908871, 25.264935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854326, -0.116332, 0.506551,
		-0.519734, 0.194768, -0.831830,
		-0.001891, -0.973926, -0.226857,
		39.284870, 37.616692, 25.196877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576405, 38.248329, 25.073870>,  <39.286194, 38.298443, 25.355677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576405, 38.248329, 25.073870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731777, 37.897781, 25.187784>,  <38.825001, 37.687454, 25.256132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731777, 37.897781, 25.187784>,  <38.576405, 38.248329, 25.073870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731777, 37.897781, 25.187784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713129, -0.090162, 0.695210,
		-0.583583, -0.473130, -0.659985,
		0.388430, -0.876367, 0.284786,
		38.848305, 37.634872, 25.273220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021019, 37.709625, 25.208895>,  <38.576405, 38.248329, 25.073870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021019, 37.709625, 25.208895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317245, 37.537125, 25.415037>,  <38.494980, 37.433624, 25.538723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317245, 37.537125, 25.415037>,  <38.021019, 37.709625, 25.208895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317245, 37.537125, 25.415037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607951, -0.103235, 0.787235,
		-0.286294, -0.896306, -0.338631,
		0.740562, -0.431252, 0.515355,
		38.539413, 37.407749, 25.569643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712337, 37.563499, 25.792915>,  <38.021019, 37.709625, 25.208895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712337, 37.563499, 25.792915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073105, 37.422943, 25.893368>,  <38.289566, 37.338612, 25.953638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073105, 37.422943, 25.893368>,  <37.712337, 37.563499, 25.792915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073105, 37.422943, 25.893368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283105, -0.041869, 0.958175,
		-0.326176, -0.935293, -0.137242,
		0.901920, -0.351388, 0.251129,
		38.343681, 37.317528, 25.968706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637943, 36.905823, 26.183359>,  <37.712337, 37.563499, 25.792915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637943, 36.905823, 26.183359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979343, 37.093830, 26.273350>,  <38.184185, 37.206635, 26.327345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979343, 37.093830, 26.273350>,  <37.637943, 36.905823, 26.183359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979343, 37.093830, 26.273350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324002, 0.140539, 0.935560,
		0.408117, -0.871394, 0.272238,
		0.853501, 0.470023, 0.224977,
		38.235394, 37.234837, 26.340843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940269, 36.559288, 26.746239>,  <37.637943, 36.905823, 26.183359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940269, 36.559288, 26.746239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106236, 36.923103, 26.736576>,  <38.205814, 37.141392, 26.730778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106236, 36.923103, 26.736576>,  <37.940269, 36.559288, 26.746239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106236, 36.923103, 26.736576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240140, 0.135079, 0.961294,
		0.877599, -0.393052, 0.274463,
		0.414913, 0.909541, -0.024158,
		38.230709, 37.195965, 26.729328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417095, 36.485126, 27.269487>,  <37.940269, 36.559288, 26.746239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417095, 36.485126, 27.269487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279198, 36.856846, 27.216478>,  <38.196461, 37.079876, 27.184673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279198, 36.856846, 27.216478>,  <38.417095, 36.485126, 27.269487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279198, 36.856846, 27.216478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344302, 0.006157, 0.938838,
		0.873275, 0.369285, 0.317836,
		-0.344742, 0.929296, -0.132523,
		38.175774, 37.135635, 27.176722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336967, 36.774448, 28.034210>,  <38.417095, 36.485126, 27.269487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336967, 36.774448, 28.034210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184525, 37.085743, 27.834568>,  <38.093060, 37.272518, 27.714783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184525, 37.085743, 27.834568>,  <38.336967, 36.774448, 28.034210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184525, 37.085743, 27.834568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453910, 0.312801, 0.834339,
		0.805433, 0.544521, 0.234038,
		-0.381108, 0.778237, -0.499103,
		38.070190, 37.319214, 27.684837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362427, 37.366680, 28.434696>,  <38.336967, 36.774448, 28.034210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362427, 37.366680, 28.434696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079765, 37.474812, 28.173145>,  <37.910168, 37.539688, 28.016214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079765, 37.474812, 28.173145>,  <38.362427, 37.366680, 28.434696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079765, 37.474812, 28.173145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603339, 0.252539, 0.756443,
		0.369617, 0.929057, -0.015360,
		-0.706658, 0.270327, -0.653879,
		37.867767, 37.555908, 27.976982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228329, 38.051571, 28.508615>,  <38.362427, 37.366680, 28.434696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228329, 38.051571, 28.508615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895840, 37.883945, 28.362486>,  <37.696346, 37.783371, 28.274807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895840, 37.883945, 28.362486>,  <38.228329, 38.051571, 28.508615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895840, 37.883945, 28.362486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467640, 0.171676, 0.867087,
		-0.300644, 0.891581, -0.338669,
		-0.831220, -0.419060, -0.365325,
		37.646473, 37.758228, 28.252888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729935, 38.473694, 28.756048>,  <38.228329, 38.051571, 28.508615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729935, 38.473694, 28.756048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553337, 38.123672, 28.676678>,  <37.447380, 37.913662, 28.629055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553337, 38.123672, 28.676678>,  <37.729935, 38.473694, 28.756048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553337, 38.123672, 28.676678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483991, 0.046031, 0.873862,
		-0.755538, 0.481841, -0.443838,
		-0.441492, -0.875049, -0.198428,
		37.420891, 37.861156, 28.617149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062630, 38.569633, 28.860415>,  <37.729935, 38.473694, 28.756048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062630, 38.569633, 28.860415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119385, 38.174072, 28.878050>,  <37.153439, 37.936737, 28.888630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119385, 38.174072, 28.878050>,  <37.062630, 38.569633, 28.860415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119385, 38.174072, 28.878050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382175, -0.013642, 0.923989,
		-0.913132, -0.147951, -0.379869,
		0.141887, -0.988900, 0.044086,
		37.161949, 37.877403, 28.891275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444935, 38.270370, 29.178055>,  <37.062630, 38.569633, 28.860415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444935, 38.270370, 29.178055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718540, 37.984875, 29.238323>,  <36.882706, 37.813580, 29.274485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718540, 37.984875, 29.238323>,  <36.444935, 38.270370, 29.178055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718540, 37.984875, 29.238323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207993, 0.007151, 0.978104,
		-0.699187, -0.700377, -0.143561,
		0.684015, -0.713737, 0.150673,
		36.923744, 37.770752, 29.283525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165928, 37.888569, 29.656569>,  <36.444935, 38.270370, 29.178055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165928, 37.888569, 29.656569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556694, 37.806225, 29.679409>,  <36.791153, 37.756817, 29.693113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556694, 37.806225, 29.679409>,  <36.165928, 37.888569, 29.656569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556694, 37.806225, 29.679409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082190, -0.115452, 0.989907,
		-0.197195, -0.971746, -0.129707,
		0.976913, -0.205866, 0.057102,
		36.849770, 37.744465, 29.696539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282742, 37.245495, 30.176802>,  <36.165928, 37.888569, 29.656569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282742, 37.245495, 30.176802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639160, 37.422920, 30.138248>,  <36.853012, 37.529373, 30.115116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639160, 37.422920, 30.138248>,  <36.282742, 37.245495, 30.176802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639160, 37.422920, 30.138248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133847, -0.053863, 0.989537,
		0.433728, -0.894625, -0.107363,
		0.891047, 0.443560, -0.096381,
		36.906475, 37.555988, 30.109335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757866, 36.752232, 30.529642>,  <36.282742, 37.245495, 30.176802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757866, 36.752232, 30.529642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956017, 37.099113, 30.509426>,  <37.074905, 37.307243, 30.497295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956017, 37.099113, 30.509426>,  <36.757866, 36.752232, 30.529642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956017, 37.099113, 30.509426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376971, -0.162189, 0.911914,
		0.782623, -0.470790, -0.407257,
		0.495373, 0.867209, -0.050541,
		37.104630, 37.359276, 30.494265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407730, 36.642040, 30.738577>,  <36.757866, 36.752232, 30.529642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407730, 36.642040, 30.738577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.358486, 37.036324, 30.784559>,  <37.328941, 37.272896, 30.812149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.358486, 37.036324, 30.784559>,  <37.407730, 36.642040, 30.738577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358486, 37.036324, 30.784559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437885, -0.049995, 0.897640,
		0.890562, 0.160843, -0.425474,
		-0.123108, 0.985713, 0.114955,
		37.321552, 37.332039, 30.819046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133274, 36.766918, 30.892971>,  <37.407730, 36.642040, 30.738577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133274, 36.766918, 30.892971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886833, 37.061573, 31.004532>,  <37.738968, 37.238365, 31.071468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886833, 37.061573, 31.004532>,  <38.133274, 36.766918, 30.892971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886833, 37.061573, 31.004532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390440, -0.021914, 0.920368,
		0.684091, 0.675931, -0.274112,
		-0.616098, 0.736639, 0.278901,
		37.702003, 37.282566, 31.088202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540009, 37.267990, 31.201538>,  <38.133274, 36.766918, 30.892971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540009, 37.267990, 31.201538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.162342, 37.329834, 31.317909>,  <37.935741, 37.366940, 31.387732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.162342, 37.329834, 31.317909>,  <38.540009, 37.267990, 31.201538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162342, 37.329834, 31.317909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286812, -0.048800, 0.956743,
		0.162116, 0.986770, 0.001732,
		-0.944170, 0.154606, 0.290929,
		37.879089, 37.376217, 31.405188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571918, 37.860813, 31.589706>,  <38.540009, 37.267990, 31.201538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571918, 37.860813, 31.589706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231056, 37.685097, 31.703445>,  <38.026539, 37.579666, 31.771688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231056, 37.685097, 31.703445>,  <38.571918, 37.860813, 31.589706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231056, 37.685097, 31.703445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276206, 0.083935, 0.957426,
		-0.444455, 0.894415, 0.049809,
		-0.852156, -0.439291, 0.284348,
		37.975410, 37.553310, 31.788750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258778, 38.291954, 32.172791>,  <38.571918, 37.860813, 31.589706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258778, 38.291954, 32.172791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087738, 37.932568, 32.212631>,  <37.985115, 37.716934, 32.236534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087738, 37.932568, 32.212631>,  <38.258778, 38.291954, 32.172791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087738, 37.932568, 32.212631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334412, -0.054858, 0.940829,
		-0.839839, 0.435604, 0.323914,
		-0.427598, -0.898465, 0.099600,
		37.959457, 37.663029, 32.242512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827381, 38.384392, 32.774837>,  <38.258778, 38.291954, 32.172791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827381, 38.384392, 32.774837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883354, 37.991383, 32.725731>,  <37.916939, 37.755577, 32.696266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883354, 37.991383, 32.725731>,  <37.827381, 38.384392, 32.774837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883354, 37.991383, 32.725731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329985, -0.070625, 0.941341,
		-0.933556, -0.172240, 0.314334,
		0.139937, -0.982520, -0.122769,
		37.925335, 37.696625, 32.688900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482883, 38.029747, 33.297863>,  <37.827381, 38.384392, 32.774837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482883, 38.029747, 33.297863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742367, 37.757622, 33.161419>,  <37.898056, 37.594349, 33.079552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742367, 37.757622, 33.161419>,  <37.482883, 38.029747, 33.297863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742367, 37.757622, 33.161419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347390, -0.134091, 0.928084,
		-0.677126, -0.720553, 0.149348,
		0.648707, -0.680311, -0.341109,
		37.936977, 37.553528, 33.059086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391518, 37.523643, 33.770939>,  <37.482883, 38.029747, 33.297863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391518, 37.523643, 33.770939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753456, 37.456947, 33.614246>,  <37.970619, 37.416931, 33.520229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753456, 37.456947, 33.614246>,  <37.391518, 37.523643, 33.770939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753456, 37.456947, 33.614246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333916, -0.292862, 0.895953,
		-0.264111, -0.941505, -0.209320,
		0.904846, -0.166735, -0.391732,
		38.024910, 37.406925, 33.496727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610680, 36.904770, 34.145054>,  <37.391518, 37.523643, 33.770939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610680, 36.904770, 34.145054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934650, 37.084732, 33.994534>,  <38.129032, 37.192711, 33.904221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934650, 37.084732, 33.994534>,  <37.610680, 36.904770, 34.145054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934650, 37.084732, 33.994534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436537, -0.033902, 0.899047,
		0.391731, -0.892431, -0.223860,
		0.809927, 0.449908, -0.376299,
		38.177628, 37.219704, 33.881645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234364, 36.433784, 34.240349>,  <37.610680, 36.904770, 34.145054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234364, 36.433784, 34.240349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377750, 36.805820, 34.208263>,  <38.463783, 37.029041, 34.189011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377750, 36.805820, 34.208263>,  <38.234364, 36.433784, 34.240349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377750, 36.805820, 34.208263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574578, -0.152092, 0.804194,
		0.735771, -0.334370, -0.588929,
		0.358470, 0.930089, -0.080216,
		38.485291, 37.084846, 34.184200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872894, 36.348888, 34.479042>,  <38.234364, 36.433784, 34.240349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872894, 36.348888, 34.479042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872612, 36.748051, 34.453175>,  <38.872440, 36.987549, 34.437653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872612, 36.748051, 34.453175>,  <38.872894, 36.348888, 34.479042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872612, 36.748051, 34.453175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627681, 0.050789, 0.776811,
		0.778470, -0.040044, -0.626403,
		-0.000708, 0.997906, -0.064673,
		38.872398, 37.047424, 34.433773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576958, 36.612309, 34.470139>,  <38.872894, 36.348888, 34.479042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576958, 36.612309, 34.470139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350170, 36.914165, 34.602238>,  <39.214100, 37.095280, 34.681499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350170, 36.914165, 34.602238>,  <39.576958, 36.612309, 34.470139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350170, 36.914165, 34.602238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703827, 0.235489, 0.670203,
		0.427994, 0.612420, -0.664652,
		-0.566964, 0.754643, 0.330250,
		39.180080, 37.140560, 34.701313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046982, 37.141171, 34.595230>,  <39.576958, 36.612309, 34.470139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046982, 37.141171, 34.595230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709530, 37.261108, 34.773392>,  <39.507057, 37.333073, 34.880287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709530, 37.261108, 34.773392>,  <40.046982, 37.141171, 34.595230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709530, 37.261108, 34.773392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530802, 0.340814, 0.775948,
		0.080864, 0.891033, -0.446679,
		-0.843629, 0.299844, 0.445402,
		39.456440, 37.351063, 34.907013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189842, 37.753704, 35.009438>,  <40.046982, 37.141171, 34.595230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189842, 37.753704, 35.009438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847626, 37.640945, 35.183140>,  <39.642296, 37.573288, 35.287361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847626, 37.640945, 35.183140>,  <40.189842, 37.753704, 35.009438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847626, 37.640945, 35.183140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328224, 0.353343, 0.876024,
		-0.400392, 0.892009, -0.209774,
		-0.855544, -0.281901, 0.434255,
		39.590961, 37.556374, 35.313416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978664, 38.348293, 35.367825>,  <40.189842, 37.753704, 35.009438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978664, 38.348293, 35.367825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789661, 38.041847, 35.542091>,  <39.676262, 37.857979, 35.646652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789661, 38.041847, 35.542091>,  <39.978664, 38.348293, 35.367825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789661, 38.041847, 35.542091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144482, 0.420311, 0.895803,
		-0.869404, 0.486219, -0.087910,
		-0.472506, -0.766114, 0.435670,
		39.647911, 37.812012, 35.672791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525146, 38.646107, 35.898586>,  <39.978664, 38.348293, 35.367825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525146, 38.646107, 35.898586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596516, 38.265358, 35.998264>,  <39.639339, 38.036907, 36.058071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596516, 38.265358, 35.998264>,  <39.525146, 38.646107, 35.898586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596516, 38.265358, 35.998264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163984, 0.278484, 0.946338,
		-0.970192, -0.127988, 0.205781,
		0.178427, -0.951875, 0.249195,
		39.650043, 37.979797, 36.073021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309696, 38.605358, 36.529911>,  <39.525146, 38.646107, 35.898586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309696, 38.605358, 36.529911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551846, 38.287148, 36.519615>,  <39.697136, 38.096222, 36.513439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551846, 38.287148, 36.519615>,  <39.309696, 38.605358, 36.529911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551846, 38.287148, 36.519615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436864, 0.305059, 0.846220,
		-0.665340, -0.523521, 0.532212,
		0.605370, -0.795528, -0.025739,
		39.733456, 38.048489, 36.511894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294025, 38.108696, 37.033001>,  <39.309696, 38.605358, 36.529911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294025, 38.108696, 37.033001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675350, 38.112778, 36.912270>,  <39.904144, 38.115227, 36.839832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675350, 38.112778, 36.912270>,  <39.294025, 38.108696, 37.033001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675350, 38.112778, 36.912270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255596, 0.505064, 0.824367,
		0.160850, -0.863022, 0.478874,
		0.953309, 0.010201, -0.301825,
		39.961342, 38.115837, 36.821724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286282, 37.636650, 37.553673>,  <39.294025, 38.108696, 37.033001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286282, 37.636650, 37.553673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557446, 37.470230, 37.311237>,  <39.720142, 37.370380, 37.165775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557446, 37.470230, 37.311237>,  <39.286282, 37.636650, 37.553673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557446, 37.470230, 37.311237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703503, 0.127852, 0.699098,
		-0.213368, -0.900310, 0.379362,
		0.677907, -0.416048, -0.606091,
		39.760818, 37.345417, 37.129410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647141, 36.959072, 37.865181>,  <39.286282, 37.636650, 37.553673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647141, 36.959072, 37.865181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867008, 37.198544, 37.632130>,  <39.998928, 37.342224, 37.492298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867008, 37.198544, 37.632130>,  <39.647141, 36.959072, 37.865181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867008, 37.198544, 37.632130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732633, -0.010362, 0.680545,
		0.401388, -0.800925, -0.444305,
		0.549670, 0.598675, -0.582625,
		40.031910, 37.378147, 37.457340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294483, 36.631859, 37.801422>,  <39.647141, 36.959072, 37.865181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294483, 36.631859, 37.801422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368259, 37.019711, 37.737167>,  <40.412525, 37.252422, 37.698612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368259, 37.019711, 37.737167>,  <40.294483, 36.631859, 37.801422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368259, 37.019711, 37.737167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912297, -0.108094, 0.395005,
		0.365643, -0.219407, -0.904525,
		0.184441, 0.969627, -0.160640,
		40.423592, 37.310600, 37.688976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985798, 36.614353, 37.495312>,  <40.294483, 36.631859, 37.801422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985798, 36.614353, 37.495312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915524, 36.970520, 37.663265>,  <40.873360, 37.184219, 37.764038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915524, 36.970520, 37.663265>,  <40.985798, 36.614353, 37.495312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915524, 36.970520, 37.663265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938203, 0.022255, 0.345371,
		0.298178, 0.454609, -0.839298,
		-0.175687, 0.890413, 0.419879,
		40.862816, 37.237644, 37.789230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504486, 36.969536, 37.194431>,  <40.985798, 36.614353, 37.495312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504486, 36.969536, 37.194431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400490, 37.123535, 37.548649>,  <41.338093, 37.215935, 37.761177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400490, 37.123535, 37.548649>,  <41.504486, 36.969536, 37.194431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400490, 37.123535, 37.548649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872295, -0.299674, 0.386389,
		0.414131, 0.872912, -0.257916,
		-0.259993, 0.384994, 0.885541,
		41.322491, 37.239033, 37.814312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038330, 37.458687, 37.482937>,  <41.504486, 36.969536, 37.194431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038330, 37.458687, 37.482937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843441, 37.291836, 37.789822>,  <41.726505, 37.191727, 37.973953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843441, 37.291836, 37.789822>,  <42.038330, 37.458687, 37.482937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843441, 37.291836, 37.789822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872457, -0.270556, 0.406962,
		0.037820, 0.867643, 0.495747,
		-0.487225, -0.417127, 0.767214,
		41.697273, 37.166698, 38.019985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461231, 37.546356, 38.066902>,  <42.038330, 37.458687, 37.482937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461231, 37.546356, 38.066902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224003, 37.243713, 38.177044>,  <42.081665, 37.062130, 38.243130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224003, 37.243713, 38.177044>,  <42.461231, 37.546356, 38.066902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224003, 37.243713, 38.177044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773829, -0.441175, 0.454481,
		-0.222383, 0.482615, 0.847129,
		-0.593072, -0.756602, 0.275352,
		42.046082, 37.016731, 38.259651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498180, 37.523479, 38.753967>,  <42.461231, 37.546356, 38.066902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498180, 37.523479, 38.753967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357872, 37.154392, 38.690025>,  <42.273685, 36.932941, 38.651661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357872, 37.154392, 38.690025>,  <42.498180, 37.523479, 38.753967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357872, 37.154392, 38.690025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684077, -0.369049, 0.629160,
		-0.639530, 0.111339, 0.760661,
		-0.350771, -0.922717, -0.159854,
		42.252640, 36.877579, 38.642071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.343750, 37.193321, 39.404125>,  <42.498180, 37.523479, 38.753967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.343750, 37.193321, 39.404125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.422165, 36.897861, 39.146145>,  <42.469215, 36.720585, 38.991356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.422165, 36.897861, 39.146145>,  <42.343750, 37.193321, 39.404125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422165, 36.897861, 39.146145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514097, -0.482656, 0.709047,
		-0.835028, -0.470569, 0.285118,
		0.196041, -0.738653, -0.644949,
		42.480976, 36.676266, 38.952660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277431, 36.716045, 39.788738>,  <42.343750, 37.193321, 39.404125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277431, 36.716045, 39.788738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520191, 36.583359, 39.499840>,  <42.665848, 36.503746, 39.326500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520191, 36.583359, 39.499840>,  <42.277431, 36.716045, 39.788738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520191, 36.583359, 39.499840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494218, -0.554164, 0.669814,
		-0.622428, -0.763457, -0.172384,
		0.606904, -0.331715, -0.722242,
		42.702263, 36.483845, 39.283169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.941635, 36.475853, 40.161869>,  <42.277431, 36.716045, 39.788738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.941635, 36.475853, 40.161869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.250446, 36.357269, 39.936985>,  <43.435734, 36.286118, 39.802055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.250446, 36.357269, 39.936985>,  <42.941635, 36.475853, 40.161869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.250446, 36.357269, 39.936985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608668, -0.599541, -0.519687,
		-0.183001, 0.743413, -0.643309,
		0.772032, -0.296459, -0.562208,
		43.482056, 36.268333, 39.768322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.038639, 36.883858, 39.504181>,  <42.941635, 36.475853, 40.161869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.038639, 36.883858, 39.504181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.170559, 36.506306, 39.497063>,  <43.249710, 36.279774, 39.492790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.170559, 36.506306, 39.497063>,  <43.038639, 36.883858, 39.504181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.170559, 36.506306, 39.497063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720076, -0.239318, -0.651320,
		0.610510, 0.227621, -0.758595,
		0.329799, -0.943883, -0.017798,
		43.269497, 36.223141, 39.491722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.361309, 36.607491, 38.855541>,  <43.038639, 36.883858, 39.504181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.361309, 36.607491, 38.855541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.143967, 36.350487, 39.071671>,  <43.013561, 36.196285, 39.201347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.143967, 36.350487, 39.071671>,  <43.361309, 36.607491, 38.855541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.143967, 36.350487, 39.071671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651200, -0.083613, -0.754286,
		0.529811, -0.761705, -0.372968,
		-0.543359, -0.642506, 0.540322,
		42.980961, 36.157734, 39.233768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.193153, 36.011272, 38.409115>,  <43.361309, 36.607491, 38.855541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.193153, 36.011272, 38.409115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.939621, 36.102257, 38.704823>,  <42.787502, 36.156849, 38.882248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.939621, 36.102257, 38.704823>,  <43.193153, 36.011272, 38.409115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.939621, 36.102257, 38.704823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750022, 0.052800, -0.659302,
		-0.189000, -0.972354, 0.137136,
		-0.633834, 0.227463, 0.739266,
		42.749470, 36.170498, 38.926601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.526764, 35.602474, 38.291386>,  <43.193153, 36.011272, 38.409115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.526764, 35.602474, 38.291386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472450, 35.932304, 38.511070>,  <42.439861, 36.130203, 38.642879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472450, 35.932304, 38.511070>,  <42.526764, 35.602474, 38.291386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.472450, 35.932304, 38.511070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821369, 0.216287, -0.527801,
		-0.554000, -0.522774, 0.647913,
		-0.135786, 0.824577, 0.549213,
		42.431713, 36.179676, 38.675835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859478, 35.718895, 38.331741>,  <42.526764, 35.602474, 38.291386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859478, 35.718895, 38.331741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.951572, 36.085350, 38.463001>,  <42.006828, 36.305222, 38.541759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.951572, 36.085350, 38.463001>,  <41.859478, 35.718895, 38.331741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.951572, 36.085350, 38.463001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827247, 0.361848, -0.429800,
		-0.512498, -0.172508, 0.841182,
		0.230236, 0.916137, 0.328153,
		42.020645, 36.360191, 38.561447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270512, 36.074577, 38.675011>,  <41.859478, 35.718895, 38.331741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270512, 36.074577, 38.675011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511719, 36.366604, 38.546406>,  <41.656445, 36.541821, 38.469242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511719, 36.366604, 38.546406>,  <41.270512, 36.074577, 38.675011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511719, 36.366604, 38.546406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796132, 0.525289, -0.300409,
		-0.050435, 0.437115, 0.897990,
		0.603018, 0.730070, -0.321509,
		41.692623, 36.585625, 38.449955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012295, 36.600109, 38.955013>,  <41.270512, 36.074577, 38.675011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012295, 36.600109, 38.955013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207905, 36.734680, 38.633102>,  <41.325272, 36.815422, 38.439957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207905, 36.734680, 38.633102>,  <41.012295, 36.600109, 38.955013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207905, 36.734680, 38.633102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841432, 0.425108, -0.333581,
		0.229893, 0.840297, 0.490968,
		0.489022, 0.336429, -0.804782,
		41.354610, 36.835609, 38.391666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061367, 37.367039, 38.889103>,  <41.012295, 36.600109, 38.955013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061367, 37.367039, 38.889103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069691, 37.192364, 38.529354>,  <41.074684, 37.087559, 38.313503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069691, 37.192364, 38.529354>,  <41.061367, 37.367039, 38.889103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069691, 37.192364, 38.529354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679547, 0.653651, -0.333103,
		0.733337, 0.618096, -0.283149,
		0.020809, -0.436690, -0.899371,
		41.075932, 37.061356, 38.259544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724632, 37.962475, 38.843388>,  <41.061367, 37.367039, 38.889103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724632, 37.962475, 38.843388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929253, 37.782978, 38.550282>,  <41.052025, 37.675282, 38.374416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929253, 37.782978, 38.550282>,  <40.724632, 37.962475, 38.843388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929253, 37.782978, 38.550282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797997, 0.068109, -0.598800,
		0.318613, 0.891064, -0.323251,
		0.511553, -0.448739, -0.732767,
		41.082718, 37.648357, 38.330452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684063, 38.428299, 38.212414>,  <40.724632, 37.962475, 38.843388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.684063, 38.428299, 38.212414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753922, 38.056602, 38.082180>,  <40.795837, 37.833584, 38.004040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753922, 38.056602, 38.082180>,  <40.684063, 38.428299, 38.212414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753922, 38.056602, 38.082180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700370, 0.115184, -0.704425,
		0.692084, 0.351059, -0.630696,
		0.174649, -0.929242, -0.325588,
		40.806316, 37.777828, 37.984505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610909, 38.558174, 37.551533>,  <40.684063, 38.428299, 38.212414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610909, 38.558174, 37.551533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582264, 38.160255, 37.580536>,  <40.565079, 37.921505, 37.597939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582264, 38.160255, 37.580536>,  <40.610909, 38.558174, 37.551533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582264, 38.160255, 37.580536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672977, -0.005464, -0.739644,
		0.736189, -0.101758, -0.669082,
		-0.071609, -0.994794, 0.072504,
		40.560780, 37.861816, 37.602287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733559, 38.286991, 36.852188>,  <40.610909, 38.558174, 37.551533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733559, 38.286991, 36.852188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.522030, 38.003345, 37.038738>,  <40.395111, 37.833157, 37.150669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.522030, 38.003345, 37.038738>,  <40.733559, 38.286991, 36.852188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.522030, 38.003345, 37.038738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494053, -0.189605, -0.848505,
		0.690116, -0.679120, -0.250074,
		-0.528821, -0.709117, 0.466371,
		40.363384, 37.790611, 37.178650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837669, 37.624115, 36.427162>,  <40.733559, 38.286991, 36.852188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837669, 37.624115, 36.427162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494064, 37.635155, 36.631645>,  <40.287903, 37.641781, 36.754333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494064, 37.635155, 36.631645>,  <40.837669, 37.624115, 36.427162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494064, 37.635155, 36.631645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476879, -0.406379, -0.779386,
		0.186230, -0.913288, 0.362248,
		-0.859014, 0.027604, 0.511207,
		40.236359, 37.643436, 36.785007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460606, 36.961678, 36.554829>,  <40.837669, 37.624115, 36.427162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460606, 36.961678, 36.554829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.238037, 37.293255, 36.532005>,  <40.104496, 37.492203, 36.518311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.238037, 37.293255, 36.532005>,  <40.460606, 36.961678, 36.554829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.238037, 37.293255, 36.532005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435402, -0.349367, -0.829679,
		-0.707690, -0.436804, 0.555317,
		-0.556417, 0.828942, -0.057058,
		40.071114, 37.541939, 36.514889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863960, 36.726974, 36.374512>,  <40.460606, 36.961678, 36.554829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863960, 36.726974, 36.374512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807156, 37.110451, 36.275932>,  <39.773071, 37.340538, 36.216785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807156, 37.110451, 36.275932>,  <39.863960, 36.726974, 36.374512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807156, 37.110451, 36.275932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470679, -0.284430, -0.835201,
		-0.870800, -0.002612, 0.491630,
		-0.142016, 0.958693, -0.246453,
		39.764549, 37.398060, 36.201996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485626, 36.053951, 36.231705>,  <39.863960, 36.726974, 36.374512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485626, 36.053951, 36.231705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290981, 36.182796, 35.906876>,  <39.174194, 36.260105, 35.711979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290981, 36.182796, 35.906876>,  <39.485626, 36.053951, 36.231705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290981, 36.182796, 35.906876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275150, 0.825729, 0.492406,
		0.829159, 0.463050, -0.313177,
		-0.486608, 0.322112, -0.812069,
		39.145000, 36.279430, 35.663254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082386, 36.804821, 36.185108>,  <39.485626, 36.053951, 36.231705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082386, 36.804821, 36.185108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295471, 37.105049, 36.028721>,  <39.423321, 37.285187, 35.934887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295471, 37.105049, 36.028721>,  <39.082386, 36.804821, 36.185108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295471, 37.105049, 36.028721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591332, -0.000375, -0.806428,
		-0.605429, 0.660789, 0.443637,
		0.532713, 0.750571, -0.390973,
		39.455284, 37.330219, 35.911430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511185, 37.123917, 35.921616>,  <39.082386, 36.804821, 36.185108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511185, 37.123917, 35.921616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837391, 37.257030, 35.732220>,  <39.033115, 37.336899, 35.618580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837391, 37.257030, 35.732220>,  <38.511185, 37.123917, 35.921616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837391, 37.257030, 35.732220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499452, -0.008646, -0.866298,
		-0.292382, 0.942964, 0.159158,
		0.815512, 0.332781, -0.473493,
		39.082047, 37.356865, 35.590172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333717, 37.696095, 35.402905>,  <38.511185, 37.123917, 35.921616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333717, 37.696095, 35.402905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697075, 37.585403, 35.277527>,  <38.915089, 37.518990, 35.202301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697075, 37.585403, 35.277527>,  <38.333717, 37.696095, 35.402905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697075, 37.585403, 35.277527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282403, 0.146766, -0.948002,
		0.308340, 0.949675, 0.055172,
		0.908391, -0.276726, -0.313444,
		38.969593, 37.502384, 35.183495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685314, 38.257683, 35.089664>,  <38.333717, 37.696095, 35.402905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685314, 38.257683, 35.089664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826584, 37.907074, 34.958828>,  <38.911346, 37.696709, 34.880325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826584, 37.907074, 34.958828>,  <38.685314, 38.257683, 35.089664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826584, 37.907074, 34.958828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295394, 0.227259, -0.927952,
		0.887700, 0.424347, -0.178657,
		0.353173, -0.876518, -0.327087,
		38.932537, 37.644119, 34.860703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068024, 38.388027, 34.497433>,  <38.685314, 38.257683, 35.089664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068024, 38.388027, 34.497433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928566, 38.013885, 34.473583>,  <38.844891, 37.789398, 34.459274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928566, 38.013885, 34.473583>,  <39.068024, 38.388027, 34.497433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928566, 38.013885, 34.473583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299307, 0.171396, -0.938637,
		0.888181, -0.309401, -0.339715,
		-0.348641, -0.935358, -0.059625,
		38.823975, 37.733276, 34.455696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939342, 38.306427, 33.842121>,  <39.068024, 38.388027, 34.497433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939342, 38.306427, 33.842121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804142, 37.949257, 33.961075>,  <38.723022, 37.734955, 34.032448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804142, 37.949257, 33.961075>,  <38.939342, 38.306427, 33.842121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804142, 37.949257, 33.961075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336304, -0.180531, -0.924288,
		0.879006, -0.412427, -0.239273,
		-0.338006, -0.892924, 0.297389,
		38.702740, 37.681381, 34.050293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273567, 37.795647, 33.429405>,  <38.939342, 38.306427, 33.842121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273567, 37.795647, 33.429405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934925, 37.635044, 33.569149>,  <38.731739, 37.538685, 33.652996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934925, 37.635044, 33.569149>,  <39.273567, 37.795647, 33.429405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934925, 37.635044, 33.569149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276251, -0.229567, -0.933266,
		0.454912, -0.886619, 0.083437,
		-0.846606, -0.401505, 0.349362,
		38.680943, 37.514591, 33.673958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247162, 37.100399, 33.089241>,  <39.273567, 37.795647, 33.429405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247162, 37.100399, 33.089241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878437, 37.200787, 33.207409>,  <38.657200, 37.261017, 33.278309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878437, 37.200787, 33.207409>,  <39.247162, 37.100399, 33.089241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878437, 37.200787, 33.207409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355246, -0.241983, -0.902909,
		-0.155112, -0.937262, 0.312218,
		-0.921814, 0.250967, 0.295424,
		38.601894, 37.276077, 33.296036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840118, 37.121227, 32.476559>,  <39.247162, 37.100399, 33.089241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840118, 37.121227, 32.476559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136860, 37.128574, 32.744682>,  <40.314903, 37.132984, 32.905556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136860, 37.128574, 32.744682>,  <39.840118, 37.121227, 32.476559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136860, 37.128574, 32.744682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275271, -0.919859, -0.279437,
		0.611459, 0.391818, -0.687456,
		0.741852, 0.018372, 0.670312,
		40.359417, 37.134087, 32.945778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540138, 37.151295, 32.139580>,  <39.840118, 37.121227, 32.476559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540138, 37.151295, 32.139580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.517578, 36.957458, 32.488747>,  <40.504040, 36.841156, 32.698246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.517578, 36.957458, 32.488747>,  <40.540138, 37.151295, 32.139580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517578, 36.957458, 32.488747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140263, -0.869486, -0.473625,
		0.988506, 0.095724, 0.117013,
		-0.056404, -0.484593, 0.872919,
		40.500656, 36.812080, 32.750622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249092, 36.860504, 32.413670>,  <40.540138, 37.151295, 32.139580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249092, 36.860504, 32.413670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900249, 36.680626, 32.490833>,  <40.690945, 36.572701, 32.537132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900249, 36.680626, 32.490833>,  <41.249092, 36.860504, 32.413670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900249, 36.680626, 32.490833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310719, -0.813488, -0.491620,
		0.378009, -0.368802, 0.849173,
		-0.872103, -0.449691, 0.192912,
		40.638618, 36.545719, 32.548706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347702, 36.196510, 32.760601>,  <41.249092, 36.860504, 32.413670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347702, 36.196510, 32.760601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032318, 36.205063, 32.514717>,  <40.843086, 36.210194, 32.367188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032318, 36.205063, 32.514717>,  <41.347702, 36.196510, 32.760601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032318, 36.205063, 32.514717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417802, -0.714837, -0.560758,
		-0.451404, -0.698964, 0.554692,
		-0.788464, 0.021377, -0.614709,
		40.795780, 36.211475, 32.330303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039017, 36.362450, 33.019012>,  <41.347702, 36.196510, 32.760601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039017, 36.362450, 33.019012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035564, 36.756836, 33.085701>,  <42.033493, 36.993469, 33.125713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035564, 36.756836, 33.085701>,  <42.039017, 36.362450, 33.019012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035564, 36.756836, 33.085701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622857, -0.135735, 0.770470,
		0.782288, -0.097191, 0.615288,
		-0.008633, 0.985967, 0.166720,
		42.032974, 37.052628, 33.135715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961300, 36.425137, 33.713543>,  <42.039017, 36.362450, 33.019012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961300, 36.425137, 33.713543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.895412, 36.804470, 33.605072>,  <41.855881, 37.032070, 33.539989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.895412, 36.804470, 33.605072>,  <41.961300, 36.425137, 33.713543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.895412, 36.804470, 33.605072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681335, 0.089402, 0.726491,
		0.713198, 0.304429, 0.631405,
		-0.164716, 0.948330, -0.271180,
		41.845997, 37.088970, 33.523720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739746, 36.834221, 34.300888>,  <41.961300, 36.425137, 33.713543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.739746, 36.834221, 34.300888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620144, 37.060741, 33.993668>,  <41.548382, 37.196651, 33.809338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620144, 37.060741, 33.993668>,  <41.739746, 36.834221, 34.300888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620144, 37.060741, 33.993668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802220, 0.286688, 0.523691,
		0.516757, 0.772732, 0.368575,
		-0.299007, 0.566299, -0.768049,
		41.530441, 37.230633, 33.763252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581146, 37.127831, 34.986210>,  <41.739746, 36.834221, 34.300888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581146, 37.127831, 34.986210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943142, 37.008553, 35.107586>,  <42.160339, 36.936985, 35.180412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943142, 37.008553, 35.107586>,  <41.581146, 37.127831, 34.986210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.943142, 37.008553, 35.107586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384598, -0.268507, 0.883170,
		-0.181875, -0.915963, -0.357679,
		0.904989, -0.298189, 0.303442,
		42.214638, 36.919094, 35.198620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526096, 36.429447, 35.422550>,  <41.581146, 37.127831, 34.986210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526096, 36.429447, 35.422550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851143, 36.630909, 35.539845>,  <42.046169, 36.751785, 35.610222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851143, 36.630909, 35.539845>,  <41.526096, 36.429447, 35.422550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851143, 36.630909, 35.539845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303313, -0.064151, 0.950729,
		0.497650, -0.861520, 0.100634,
		0.812617, 0.503654, 0.293235,
		42.094929, 36.782005, 35.627815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001369, 36.091961, 36.037174>,  <41.526096, 36.429447, 35.422550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001369, 36.091961, 36.037174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979233, 36.491333, 36.040794>,  <41.965950, 36.730957, 36.042969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979233, 36.491333, 36.040794>,  <42.001369, 36.091961, 36.037174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979233, 36.491333, 36.040794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378672, -0.029376, 0.925065,
		0.923875, 0.047763, 0.379702,
		-0.055338, 0.998427, 0.009053,
		41.962631, 36.790859, 36.043510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.690659, 36.228153, 36.268898>,  <42.001369, 36.091961, 36.037174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.690659, 36.228153, 36.268898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577724, 35.848030, 36.216431>,  <42.509964, 35.619957, 36.184952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577724, 35.848030, 36.216431>,  <42.690659, 36.228153, 36.268898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.577724, 35.848030, 36.216431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958829, -0.283897, -0.007061,
		-0.030527, -0.127758, 0.991336,
		-0.282339, -0.950306, -0.131164,
		42.493023, 35.562939, 36.177082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.298050, 36.285339, 36.765015>,  <42.690659, 36.228153, 36.268898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.298050, 36.285339, 36.765015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559052, 36.098083, 36.526657>,  <43.715652, 35.985729, 36.383644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559052, 36.098083, 36.526657>,  <43.298050, 36.285339, 36.765015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.559052, 36.098083, 36.526657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581284, 0.813696, -0.002744,
		0.486160, -0.344592, 0.803060,
		0.652501, -0.468140, -0.595892,
		43.754803, 35.957642, 36.347889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.980747, 36.372482, 37.074642>,  <43.298050, 36.285339, 36.765015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.980747, 36.372482, 37.074642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.013882, 36.322758, 36.679131>,  <44.033764, 36.292923, 36.441822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.013882, 36.322758, 36.679131>,  <43.980747, 36.372482, 37.074642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.013882, 36.322758, 36.679131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463546, 0.883127, -0.072195,
		0.882192, -0.452364, 0.130780,
		0.082837, -0.124312, -0.988779,
		44.038734, 36.285465, 36.382496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.733154, 36.476185, 36.826618>,  <43.980747, 36.372482, 37.074642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.733154, 36.476185, 36.826618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478458, 36.537506, 36.524342>,  <44.325642, 36.574299, 36.342976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478458, 36.537506, 36.524342>,  <44.733154, 36.476185, 36.826618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.478458, 36.537506, 36.524342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266666, 0.963345, -0.029266,
		0.723501, -0.220151, -0.654278,
		-0.636738, 0.153300, -0.755688,
		44.287437, 36.583496, 36.297634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.192936, 36.042618, 36.414658>,  <44.733154, 36.476185, 36.826618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.192936, 36.042618, 36.414658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.491554, 35.802761, 36.529972>,  <45.670723, 35.658848, 36.599159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.491554, 35.802761, 36.529972>,  <45.192936, 36.042618, 36.414658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.491554, 35.802761, 36.529972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295488, -0.089399, -0.951154,
		0.596120, 0.795263, 0.110445,
		0.746544, -0.599637, 0.288283,
		45.715519, 35.622871, 36.616455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.892426, 36.225986, 36.098595>,  <45.192936, 36.042618, 36.414658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.892426, 36.225986, 36.098595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.982189, 35.849426, 36.199314>,  <46.036049, 35.623489, 36.259747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.982189, 35.849426, 36.199314>,  <45.892426, 36.225986, 36.098595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.982189, 35.849426, 36.199314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289921, -0.182191, -0.939549,
		0.930368, 0.283848, 0.232046,
		0.224412, -0.941401, 0.251798,
		46.049511, 35.567005, 36.274853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.345901, 35.715347, 35.851910>,  <45.892426, 36.225986, 36.098595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.345901, 35.715347, 35.851910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.383755, 35.868473, 35.484325>,  <46.406467, 35.960350, 35.263775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.383755, 35.868473, 35.484325>,  <46.345901, 35.715347, 35.851910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.383755, 35.868473, 35.484325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882494, -0.459456, -0.100517,
		-0.460703, -0.801468, -0.381314,
		0.094636, 0.382817, -0.918964,
		46.412144, 35.983318, 35.208637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.313679, 35.308716, 35.191521>,  <46.345901, 35.715347, 35.851910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.313679, 35.308716, 35.191521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.577759, 35.608799, 35.176945>,  <46.736206, 35.788849, 35.168201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.577759, 35.608799, 35.176945>,  <46.313679, 35.308716, 35.191521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.577759, 35.608799, 35.176945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739734, -0.657854, -0.141498,
		-0.130122, 0.066463, -0.989268,
		0.660198, 0.750207, -0.036437,
		46.775818, 35.833862, 35.166012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.733959, 35.349560, 34.554337>,  <46.313679, 35.308716, 35.191521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.733959, 35.349560, 34.554337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.925365, 35.472279, 34.883430>,  <47.040211, 35.545910, 35.080887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.925365, 35.472279, 34.883430>,  <46.733959, 35.349560, 34.554337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.925365, 35.472279, 34.883430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579726, -0.814119, -0.033596,
		0.659497, 0.493037, -0.567431,
		0.478520, 0.306798, 0.822735,
		47.068920, 35.564320, 35.130253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.556229, 35.238564, 34.465744>,  <46.733959, 35.349560, 34.554337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.556229, 35.238564, 34.465744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.417782, 35.207600, 34.839741>,  <47.334713, 35.189022, 35.064140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.417782, 35.207600, 34.839741>,  <47.556229, 35.238564, 34.465744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.417782, 35.207600, 34.839741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499877, -0.858566, 0.113964,
		0.793929, 0.506826, 0.335864,
		-0.346121, -0.077411, 0.934991,
		47.313946, 35.184376, 35.120239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.197563, 35.185127, 34.907238>,  <47.556229, 35.238564, 34.465744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.197563, 35.185127, 34.907238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.864429, 35.012764, 35.046207>,  <47.664551, 34.909344, 35.129589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.864429, 35.012764, 35.046207>,  <48.197563, 35.185127, 34.907238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.864429, 35.012764, 35.046207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454664, -0.890543, -0.014636,
		0.315706, 0.145773, 0.937592,
		-0.832833, -0.430910, 0.347428,
		47.614578, 34.883492, 35.150436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.912575, 32.990845, 22.967800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.536480, 32.970505, 22.833115>,  <39.310825, 32.958302, 22.752302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.536480, 32.970505, 22.833115>,  <39.912575, 32.990845, 22.967800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536480, 32.970505, 22.833115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332817, -0.072075, 0.940233,
		-0.072075, 0.996103, 0.050845,
		-0.940233, -0.050845, -0.336715,
		39.254410, 32.955250, 22.732100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541763, 33.377872, 23.387403>,  <39.912575, 32.990845, 22.967800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541763, 33.377872, 23.387403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.279472, 33.121273, 23.228149>,  <39.122097, 32.967316, 23.132597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.279472, 33.121273, 23.228149>,  <39.541763, 33.377872, 23.387403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279472, 33.121273, 23.228149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353070, -0.205572, 0.912733,
		-0.667359, 0.739070, -0.091694,
		-0.655724, -0.641495, -0.398134,
		39.082756, 32.928825, 23.108709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866230, 33.517673, 23.740662>,  <39.541763, 33.377872, 23.387403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866230, 33.517673, 23.740662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.754951, 33.167580, 23.582388>,  <38.688183, 32.957523, 23.487423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.754951, 33.167580, 23.582388>,  <38.866230, 33.517673, 23.740662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754951, 33.167580, 23.582388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649619, -0.132001, 0.748713,
		-0.707532, 0.465334, -0.531848,
		-0.278198, -0.875237, -0.395685,
		38.671494, 32.905010, 23.463682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068790, 33.439598, 23.789631>,  <38.866230, 33.517673, 23.740662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068790, 33.439598, 23.789631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.230728, 33.076027, 23.749714>,  <38.327892, 32.857883, 23.725763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.230728, 33.076027, 23.749714>,  <38.068790, 33.439598, 23.789631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230728, 33.076027, 23.749714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526765, -0.321037, 0.787054,
		-0.747409, -0.266068, -0.608760,
		0.404844, -0.908924, -0.099791,
		38.352180, 32.803349, 23.719776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445045, 32.990181, 23.810345>,  <38.068790, 33.439598, 23.789631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445045, 32.990181, 23.810345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.765972, 32.765339, 23.890661>,  <37.958530, 32.630432, 23.938850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.765972, 32.765339, 23.890661>,  <37.445045, 32.990181, 23.810345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765972, 32.765339, 23.890661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468552, -0.384701, 0.795276,
		-0.369771, -0.732157, -0.572027,
		0.802326, -0.562095, 0.200802,
		38.006668, 32.596706, 23.950899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153839, 32.350067, 23.897985>,  <37.445045, 32.990181, 23.810345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153839, 32.350067, 23.897985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.510876, 32.333046, 24.077528>,  <37.725098, 32.322834, 24.185253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.510876, 32.333046, 24.077528>,  <37.153839, 32.350067, 23.897985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510876, 32.333046, 24.077528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429933, -0.380160, 0.818924,
		0.135792, -0.923942, -0.357620,
		0.892591, -0.042549, 0.448856,
		37.778652, 32.320282, 24.212185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149712, 31.694271, 24.178877>,  <37.153839, 32.350067, 23.897985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149712, 31.694271, 24.178877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.408428, 31.928267, 24.374609>,  <37.563660, 32.068665, 24.492048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.408428, 31.928267, 24.374609>,  <37.149712, 31.694271, 24.178877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408428, 31.928267, 24.374609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395432, -0.291401, 0.871045,
		0.652144, -0.756883, 0.042848,
		0.646793, 0.584990, 0.489331,
		37.602467, 32.103764, 24.521408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204868, 31.363115, 24.859138>,  <37.149712, 31.694271, 24.178877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204868, 31.363115, 24.859138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.382263, 31.716494, 24.919601>,  <37.488701, 31.928520, 24.955879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.382263, 31.716494, 24.919601>,  <37.204868, 31.363115, 24.859138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382263, 31.716494, 24.919601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375039, 0.029740, 0.926532,
		0.814043, -0.467592, 0.344515,
		0.443485, 0.883444, 0.151156,
		37.515308, 31.981527, 24.964949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674095, 31.248301, 25.439125>,  <37.204868, 31.363115, 24.859138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674095, 31.248301, 25.439125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.558113, 31.629972, 25.409554>,  <37.488522, 31.858976, 25.391811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.558113, 31.629972, 25.409554>,  <37.674095, 31.248301, 25.439125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558113, 31.629972, 25.409554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224169, 0.007384, 0.974522,
		0.930415, 0.299144, 0.211757,
		-0.289959, 0.954179, -0.073929,
		37.471127, 31.916225, 25.387375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877941, 31.523392, 26.044865>,  <37.674095, 31.248301, 25.439125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877941, 31.523392, 26.044865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.606445, 31.783026, 25.907459>,  <37.443546, 31.938807, 25.825016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.606445, 31.783026, 25.907459>,  <37.877941, 31.523392, 26.044865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606445, 31.783026, 25.907459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394615, 0.072134, 0.916011,
		0.619348, 0.757287, 0.207179,
		-0.678739, 0.649086, -0.343513,
		37.402824, 31.977751, 25.804405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982647, 32.086407, 26.463276>,  <37.877941, 31.523392, 26.044865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982647, 32.086407, 26.463276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.619312, 32.165844, 26.316038>,  <37.401314, 32.213509, 26.227695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.619312, 32.165844, 26.316038>,  <37.982647, 32.086407, 26.463276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619312, 32.165844, 26.316038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291511, 0.330488, 0.897663,
		0.299922, 0.922679, -0.242300,
		-0.908332, 0.198596, -0.368092,
		37.346813, 32.225422, 26.205610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818050, 32.775826, 26.559771>,  <37.982647, 32.086407, 26.463276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818050, 32.775826, 26.559771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.453156, 32.614704, 26.529921>,  <37.234219, 32.518032, 26.512011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.453156, 32.614704, 26.529921>,  <37.818050, 32.775826, 26.559771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453156, 32.614704, 26.529921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303190, 0.541350, 0.784229,
		-0.275495, 0.738029, -0.615967,
		-0.912238, -0.402806, -0.074623,
		37.179485, 32.493862, 26.507534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321804, 33.299217, 26.577269>,  <37.818050, 32.775826, 26.559771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321804, 33.299217, 26.577269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.108681, 32.981407, 26.693787>,  <36.980808, 32.790722, 26.763697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.108681, 32.981407, 26.693787>,  <37.321804, 33.299217, 26.577269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108681, 32.981407, 26.693787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289860, 0.494749, 0.819270,
		-0.795046, 0.352078, -0.493906,
		-0.532806, -0.794521, 0.291295,
		36.948837, 32.743050, 26.781176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698383, 33.588345, 26.833645>,  <37.321804, 33.299217, 26.577269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698383, 33.588345, 26.833645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.718601, 33.219944, 26.988155>,  <36.730732, 32.998905, 27.080862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.718601, 33.219944, 26.988155>,  <36.698383, 33.588345, 26.833645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718601, 33.219944, 26.988155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226592, 0.366111, 0.902563,
		-0.972678, -0.133147, -0.190185,
		0.050544, -0.920997, 0.386277,
		36.733765, 32.943645, 27.104038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075272, 33.545704, 27.238119>,  <36.698383, 33.588345, 26.833645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075272, 33.545704, 27.238119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.305164, 33.239548, 27.353952>,  <36.443100, 33.055855, 27.423452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.305164, 33.239548, 27.353952>,  <36.075272, 33.545704, 27.238119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305164, 33.239548, 27.353952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169054, 0.235189, 0.957135,
		-0.800689, -0.599053, 0.005779,
		0.574733, -0.765390, 0.289585,
		36.477585, 33.009930, 27.440828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650013, 33.193707, 27.685156>,  <36.075272, 33.545704, 27.238119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650013, 33.193707, 27.685156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.030109, 33.101513, 27.768982>,  <36.258167, 33.046196, 27.819277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.030109, 33.101513, 27.768982>,  <35.650013, 33.193707, 27.685156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030109, 33.101513, 27.768982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109565, 0.382466, 0.917451,
		-0.291605, -0.894762, 0.338183,
		0.950243, -0.230480, 0.209563,
		36.315182, 33.032368, 27.831850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669636, 32.845383, 28.332413>,  <35.650013, 33.193707, 27.685156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669636, 32.845383, 28.332413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.028774, 33.008320, 28.265553>,  <36.244259, 33.106083, 28.225437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.028774, 33.008320, 28.265553>,  <35.669636, 32.845383, 28.332413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028774, 33.008320, 28.265553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017486, 0.346338, 0.937947,
		0.439957, -0.845057, 0.303836,
		0.897849, 0.407343, -0.167151,
		36.298130, 33.130524, 28.215408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912186, 32.809288, 28.981688>,  <35.669636, 32.845383, 28.332413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912186, 32.809288, 28.981688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.167130, 33.057369, 28.798765>,  <36.320095, 33.206219, 28.689013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.167130, 33.057369, 28.798765>,  <35.912186, 32.809288, 28.981688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167130, 33.057369, 28.798765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074352, 0.541196, 0.837603,
		0.766974, -0.567852, 0.298821,
		0.637356, 0.620202, -0.457304,
		36.358337, 33.243431, 28.661573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473061, 32.812645, 29.402636>,  <35.912186, 32.809288, 28.981688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473061, 32.812645, 29.402636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.490383, 33.145557, 29.181570>,  <36.500778, 33.345303, 29.048931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.490383, 33.145557, 29.181570>,  <36.473061, 32.812645, 29.402636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490383, 33.145557, 29.181570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188397, 0.536457, 0.822630,
		0.981138, -0.139749, -0.133565,
		0.043310, 0.832277, -0.552666,
		36.503376, 33.395241, 29.015770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040440, 33.167912, 29.659229>,  <36.473061, 32.812645, 29.402636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040440, 33.167912, 29.659229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.830166, 33.451763, 29.471579>,  <36.704002, 33.622074, 29.358988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.830166, 33.451763, 29.471579>,  <37.040440, 33.167912, 29.659229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830166, 33.451763, 29.471579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115913, 0.606081, 0.786912,
		0.842748, 0.359286, -0.400860,
		-0.525680, 0.709633, -0.469128,
		36.672462, 33.664654, 29.330841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390949, 33.795269, 29.691240>,  <37.040440, 33.167912, 29.659229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390949, 33.795269, 29.691240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.015335, 33.919312, 29.631851>,  <36.789967, 33.993736, 29.596218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.015335, 33.919312, 29.631851>,  <37.390949, 33.795269, 29.691240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015335, 33.919312, 29.631851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047565, 0.544856, 0.837179,
		0.340511, 0.779080, -0.526390,
		-0.939037, 0.310106, -0.148473,
		36.733624, 34.012344, 29.587309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512917, 34.403660, 29.623079>,  <37.390949, 33.795269, 29.691240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512917, 34.403660, 29.623079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.127281, 34.378365, 29.726261>,  <36.895901, 34.363190, 29.788170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.127281, 34.378365, 29.726261>,  <37.512917, 34.403660, 29.623079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127281, 34.378365, 29.726261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182496, 0.547915, 0.816385,
		-0.192960, 0.834140, -0.516697,
		-0.964086, -0.063235, 0.257953,
		36.838055, 34.359394, 29.803648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340828, 34.805000, 30.240730>,  <37.512917, 34.403660, 29.623079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340828, 34.805000, 30.240730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.529476, 34.986931, 30.542910>,  <37.642666, 35.096088, 30.724216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.529476, 34.986931, 30.542910>,  <37.340828, 34.805000, 30.240730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529476, 34.986931, 30.542910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829672, 0.061308, -0.554874,
		-0.298687, 0.888467, -0.348443,
		0.471625, 0.454828, 0.755448,
		37.670963, 35.123379, 30.769545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444775, 35.491989, 30.012272>,  <37.340828, 34.805000, 30.240730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444775, 35.491989, 30.012272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.728451, 35.377899, 30.270170>,  <37.898655, 35.309444, 30.424908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.728451, 35.377899, 30.270170>,  <37.444775, 35.491989, 30.012272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728451, 35.377899, 30.270170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669245, -0.015245, -0.742886,
		0.221719, 0.958339, 0.180074,
		0.709191, -0.285226, 0.644743,
		37.941208, 35.292332, 30.463593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001198, 35.922791, 29.979614>,  <37.444775, 35.491989, 30.012272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001198, 35.922791, 29.979614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.174534, 35.611366, 30.161188>,  <38.278534, 35.424511, 30.270132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.174534, 35.611366, 30.161188>,  <38.001198, 35.922791, 29.979614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174534, 35.611366, 30.161188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752812, 0.035794, -0.657262,
		0.495472, 0.626543, 0.601624,
		0.433338, -0.778564, 0.453934,
		38.304535, 35.377796, 30.297369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678131, 36.047340, 29.935963>,  <38.001198, 35.922791, 29.979614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678131, 36.047340, 29.935963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.669529, 35.650379, 29.984425>,  <38.664368, 35.412205, 30.013502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.669529, 35.650379, 29.984425>,  <38.678131, 36.047340, 29.935963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669529, 35.650379, 29.984425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734374, -0.097908, -0.671646,
		0.678404, 0.074530, 0.730899,
		-0.021503, -0.992401, 0.121154,
		38.663078, 35.352657, 30.020771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350407, 35.779976, 29.642920>,  <38.678131, 36.047340, 29.935963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350407, 35.779976, 29.642920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.182198, 35.425972, 29.722834>,  <39.081272, 35.213570, 29.770782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.182198, 35.425972, 29.722834>,  <39.350407, 35.779976, 29.642920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182198, 35.425972, 29.722834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504646, -0.411158, -0.759132,
		0.753985, -0.218411, 0.619519,
		-0.420523, -0.885012, 0.199786,
		39.056042, 35.160469, 29.782770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856220, 35.203960, 29.724377>,  <39.350407, 35.779976, 29.642920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856220, 35.203960, 29.724377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.518875, 34.999729, 29.657385>,  <39.316467, 34.877190, 29.617189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.518875, 34.999729, 29.657385>,  <39.856220, 35.203960, 29.724377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518875, 34.999729, 29.657385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437167, -0.470728, -0.766355,
		0.312444, -0.719533, 0.620202,
		-0.843364, -0.510575, -0.167480,
		39.265865, 34.846558, 29.607141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101460, 34.597710, 29.515875>,  <39.856220, 35.203960, 29.724377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101460, 34.597710, 29.515875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.726490, 34.619453, 29.378311>,  <39.501507, 34.632500, 29.295773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.726490, 34.619453, 29.378311>,  <40.101460, 34.597710, 29.515875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726490, 34.619453, 29.378311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304818, -0.349241, -0.886068,
		-0.168273, -0.935455, 0.310818,
		-0.937427, 0.054359, -0.343911,
		39.445263, 34.635761, 29.275137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129181, 33.978668, 29.130419>,  <40.101460, 34.597710, 29.515875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129181, 33.978668, 29.130419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.818256, 34.178051, 28.976887>,  <39.631702, 34.297680, 28.884768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.818256, 34.178051, 28.976887>,  <40.129181, 33.978668, 29.130419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818256, 34.178051, 28.976887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244467, -0.322839, -0.914336,
		-0.579670, -0.804561, 0.129092,
		-0.777315, 0.498454, -0.383829,
		39.585060, 34.327587, 28.861738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742603, 33.557480, 28.559835>,  <40.129181, 33.978668, 29.130419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742603, 33.557480, 28.559835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.653835, 33.938522, 28.476601>,  <39.600574, 34.167149, 28.426661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.653835, 33.938522, 28.476601>,  <39.742603, 33.557480, 28.559835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653835, 33.938522, 28.476601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221951, -0.158456, -0.962096,
		-0.949469, -0.259689, -0.176267,
		-0.221916, 0.952603, -0.208087,
		39.587261, 34.224304, 28.414175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647423, 33.564613, 27.896935>,  <39.742603, 33.557480, 28.559835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647423, 33.564613, 27.896935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.685898, 33.959648, 27.946604>,  <39.708984, 34.196671, 27.976406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.685898, 33.959648, 27.946604>,  <39.647423, 33.564613, 27.896935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685898, 33.959648, 27.946604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319966, 0.087451, -0.943385,
		-0.942534, 0.130474, -0.307582,
		0.096188, 0.987588, 0.124173,
		39.714756, 34.255924, 27.983856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148239, 33.867004, 27.296776>,  <39.647423, 33.564613, 27.896935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148239, 33.867004, 27.296776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.411716, 34.135265, 27.433216>,  <39.569801, 34.296223, 27.515081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.411716, 34.135265, 27.433216>,  <39.148239, 33.867004, 27.296776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411716, 34.135265, 27.433216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244310, 0.238143, -0.940000,
		-0.711643, 0.702507, -0.006984,
		0.658693, 0.670651, 0.341102,
		39.609325, 34.336460, 27.535547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981106, 34.413246, 26.873405>,  <39.148239, 33.867004, 27.296776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981106, 34.413246, 26.873405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.355362, 34.450317, 27.009630>,  <39.579918, 34.472561, 27.091366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.355362, 34.450317, 27.009630>,  <38.981106, 34.413246, 26.873405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355362, 34.450317, 27.009630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327456, 0.132112, -0.935585,
		-0.131702, 0.986893, 0.093261,
		0.935643, 0.092680, 0.340563,
		39.636055, 34.478123, 27.111799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208336, 34.895676, 26.426472>,  <38.981106, 34.413246, 26.873405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208336, 34.895676, 26.426472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.518036, 34.712864, 26.601589>,  <39.703857, 34.603176, 26.706659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.518036, 34.712864, 26.601589>,  <39.208336, 34.895676, 26.426472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518036, 34.712864, 26.601589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560303, 0.173350, -0.809945,
		0.294274, 0.872398, 0.390289,
		0.774250, -0.457025, 0.437795,
		39.750313, 34.575756, 26.732927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760468, 35.275646, 26.273924>,  <39.208336, 34.895676, 26.426472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760468, 35.275646, 26.273924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.915756, 34.919479, 26.368952>,  <40.008930, 34.705780, 26.425968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.915756, 34.919479, 26.368952>,  <39.760468, 35.275646, 26.273924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915756, 34.919479, 26.368952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620463, 0.061933, -0.781786,
		0.681404, 0.450909, 0.576515,
		0.388220, -0.890419, 0.237571,
		40.032223, 34.652355, 26.440224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558975, 35.271301, 26.205471>,  <39.760468, 35.275646, 26.273924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558975, 35.271301, 26.205471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.450104, 34.887825, 26.172388>,  <40.384781, 34.657742, 26.152538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.450104, 34.887825, 26.172388>,  <40.558975, 35.271301, 26.205471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450104, 34.887825, 26.172388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708059, -0.141331, -0.691866,
		0.651593, -0.246871, 0.717273,
		-0.272175, -0.958687, -0.082709,
		40.368450, 34.600220, 26.147575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194004, 34.879978, 26.211819>,  <40.558975, 35.271301, 26.205471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194004, 34.879978, 26.211819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.895733, 34.668289, 26.049887>,  <40.716770, 34.541275, 25.952726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.895733, 34.668289, 26.049887>,  <41.194004, 34.879978, 26.211819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895733, 34.668289, 26.049887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519541, -0.081397, -0.850559,
		0.417182, -0.844571, 0.335648,
		-0.745678, -0.529221, -0.404832,
		40.672028, 34.509521, 25.928436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475780, 34.264523, 25.883326>,  <41.194004, 34.879978, 26.211819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475780, 34.264523, 25.883326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.122536, 34.356045, 25.719488>,  <40.910591, 34.410957, 25.621185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.122536, 34.356045, 25.719488>,  <41.475780, 34.264523, 25.883326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122536, 34.356045, 25.719488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333780, -0.307132, -0.891213,
		-0.329721, -0.923751, 0.194856,
		-0.883105, 0.228813, -0.409597,
		40.857605, 34.424686, 25.596609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389610, 33.770779, 25.375761>,  <41.475780, 34.264523, 25.883326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.389610, 33.770779, 25.375761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.102108, 34.024242, 25.261314>,  <40.929607, 34.176323, 25.192646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.102108, 34.024242, 25.261314>,  <41.389610, 33.770779, 25.375761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102108, 34.024242, 25.261314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131465, -0.280230, -0.950888,
		-0.682719, -0.721072, 0.118113,
		-0.718757, 0.633662, -0.286115,
		40.886482, 34.214340, 25.175480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.841850, 33.404911, 24.981485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.827782, 33.786713, 24.863043>,  <40.819340, 34.015793, 24.791977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.827782, 33.786713, 24.863043>,  <40.841850, 33.404911, 24.981485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.827782, 33.786713, 24.863043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129914, -0.289407, -0.948349,
		-0.990901, -0.071820, -0.113826,
		-0.035168, 0.954508, -0.296104,
		40.817230, 34.073067, 24.774212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740540, 33.318909, 24.248241>,  <40.841850, 33.404911, 24.981485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.740540, 33.318909, 24.248241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.802418, 33.712566, 24.282940>,  <40.839546, 33.948761, 24.303759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.802418, 33.712566, 24.282940>,  <40.740540, 33.318909, 24.248241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802418, 33.712566, 24.282940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236215, 0.048410, -0.970494,
		-0.959307, 0.170624, -0.224981,
		0.154699, 0.984146, 0.086744,
		40.848827, 34.007809, 24.308964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310455, 33.625813, 23.707060>,  <40.740540, 33.318909, 24.248241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310455, 33.625813, 23.707060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.582935, 33.901493, 23.805828>,  <40.746422, 34.066902, 23.865089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.582935, 33.901493, 23.805828>,  <40.310455, 33.625813, 23.707060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582935, 33.901493, 23.805828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239324, 0.109111, -0.964790,
		-0.691876, 0.716307, -0.090617,
		0.681198, 0.689202, 0.246921,
		40.787296, 34.108253, 23.879904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190903, 34.155586, 23.264528>,  <40.310455, 33.625813, 23.707060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190903, 34.155586, 23.264528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.555473, 34.238773, 23.406540>,  <40.774216, 34.288685, 23.491747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.555473, 34.238773, 23.406540>,  <40.190903, 34.155586, 23.264528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555473, 34.238773, 23.406540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288663, 0.291684, -0.911918,
		-0.293210, 0.933631, 0.205815,
		0.911428, 0.207972, 0.355030,
		40.828903, 34.301167, 23.513048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307930, 34.818623, 23.038399>,  <40.190903, 34.155586, 23.264528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307930, 34.818623, 23.038399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.647564, 34.621475, 23.114443>,  <40.851345, 34.503189, 23.160070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.647564, 34.621475, 23.114443>,  <40.307930, 34.818623, 23.038399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647564, 34.621475, 23.114443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317375, 0.188252, -0.929427,
		0.422293, 0.849497, 0.316264,
		0.849083, -0.492865, 0.190112,
		40.902290, 34.473618, 23.171476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875488, 35.275608, 22.824913>,  <40.307930, 34.818623, 23.038399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875488, 35.275608, 22.824913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.046741, 34.914162, 22.819527>,  <41.149494, 34.697292, 22.816294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.046741, 34.914162, 22.819527>,  <40.875488, 35.275608, 22.824913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046741, 34.914162, 22.819527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446044, 0.224249, -0.866463,
		0.785970, 0.364952, 0.499060,
		0.428131, -0.903616, -0.013468,
		41.175182, 34.643078, 22.815487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474941, 35.385807, 22.609404>,  <40.875488, 35.275608, 22.824913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474941, 35.385807, 22.609404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.419872, 34.999557, 22.521208>,  <41.386829, 34.767807, 22.468290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.419872, 34.999557, 22.521208>,  <41.474941, 35.385807, 22.609404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419872, 34.999557, 22.521208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221125, 0.187026, -0.957144,
		0.965479, -0.180528, 0.187775,
		-0.137672, -0.965625, -0.220489,
		41.378571, 34.709869, 22.455061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.027615, 35.208321, 22.213234>,  <41.474941, 35.385807, 22.609404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.027615, 35.208321, 22.213234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.777290, 34.909756, 22.122696>,  <41.627094, 34.730618, 22.068373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.777290, 34.909756, 22.122696>,  <42.027615, 35.208321, 22.213234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.777290, 34.909756, 22.122696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274118, 0.061207, -0.959746,
		0.730219, -0.662664, 0.166301,
		-0.625811, -0.746411, -0.226343,
		41.589546, 34.685833, 22.054792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444180, 34.702675, 21.881210>,  <42.027615, 35.208321, 22.213234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444180, 34.702675, 21.881210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.066349, 34.638626, 21.766575>,  <41.839649, 34.600197, 21.697794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.066349, 34.638626, 21.766575>,  <42.444180, 34.702675, 21.881210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.066349, 34.638626, 21.766575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299844, -0.065358, -0.951747,
		0.133665, -0.984931, 0.109748,
		-0.944578, -0.160123, -0.286589,
		41.782974, 34.590591, 21.680597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.604221, 34.283588, 21.413521>,  <42.444180, 34.702675, 21.881210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.604221, 34.283588, 21.413521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.233753, 34.420231, 21.349632>,  <42.011471, 34.502216, 21.311298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.233753, 34.420231, 21.349632>,  <42.604221, 34.283588, 21.413521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233753, 34.420231, 21.349632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242711, 0.215827, -0.945785,
		-0.288613, -0.914726, -0.282804,
		-0.926172, 0.341606, -0.159723,
		41.955902, 34.522713, 21.301716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.464130, 34.162331, 20.716042>,  <42.604221, 34.283588, 21.413521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.464130, 34.162331, 20.716042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.190899, 34.430824, 20.831175>,  <42.026962, 34.591919, 20.900255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.190899, 34.430824, 20.831175>,  <42.464130, 34.162331, 20.716042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.190899, 34.430824, 20.831175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137815, 0.505491, -0.851755,
		-0.717226, -0.542146, -0.437795,
		-0.683077, 0.671236, 0.287835,
		41.985977, 34.632195, 20.917526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039173, 34.272129, 20.123465>,  <42.464130, 34.162331, 20.716042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039173, 34.272129, 20.123465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.997318, 34.591015, 20.361288>,  <41.972206, 34.782345, 20.503983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.997318, 34.591015, 20.361288>,  <42.039173, 34.272129, 20.123465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997318, 34.591015, 20.361288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330616, 0.591724, -0.735225,
		-0.937947, 0.119639, -0.325488,
		-0.104637, 0.797214, 0.594560,
		41.965927, 34.830177, 20.539656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524254, 34.880047, 19.879124>,  <42.039173, 34.272129, 20.123465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524254, 34.880047, 19.879124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.785988, 35.027332, 20.143324>,  <41.943027, 35.115704, 20.301844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.785988, 35.027332, 20.143324>,  <41.524254, 34.880047, 19.879124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785988, 35.027332, 20.143324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410509, 0.560577, -0.719191,
		-0.635076, 0.741736, 0.215653,
		0.654340, 0.368213, 0.660499,
		41.982288, 35.137794, 20.341473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443779, 35.616825, 19.732538>,  <41.524254, 34.880047, 19.879124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443779, 35.616825, 19.732538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.779610, 35.579868, 19.946671>,  <41.981106, 35.557693, 20.075150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.779610, 35.579868, 19.946671>,  <41.443779, 35.616825, 19.732538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.779610, 35.579868, 19.946671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429237, 0.716828, -0.549466,
		-0.332973, 0.691101, 0.641489,
		0.839574, -0.092393, 0.535331,
		42.031483, 35.552151, 20.107269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708015, 36.274803, 20.053587>,  <41.443779, 35.616825, 19.732538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708015, 36.274803, 20.053587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.021946, 36.027180, 20.042107>,  <42.210304, 35.878605, 20.035217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.021946, 36.027180, 20.042107>,  <41.708015, 36.274803, 20.053587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.021946, 36.027180, 20.042107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557003, 0.724942, -0.405224,
		0.271663, 0.302042, 0.913767,
		0.784823, -0.619055, -0.028702,
		42.257393, 35.841465, 20.033495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.341125, 36.734287, 20.301287>,  <41.708015, 36.274803, 20.053587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.341125, 36.734287, 20.301287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.485786, 36.405678, 20.124969>,  <42.572582, 36.208511, 20.019178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.485786, 36.405678, 20.124969>,  <42.341125, 36.734287, 20.301287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.485786, 36.405678, 20.124969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614193, 0.565642, -0.550287,
		0.701407, -0.071718, 0.709144,
		0.361656, -0.821526, -0.440794,
		42.594284, 36.159222, 19.992731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.078804, 36.710850, 20.400713>,  <42.341125, 36.734287, 20.301287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.078804, 36.710850, 20.400713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.982647, 36.509098, 20.068975>,  <42.924953, 36.388046, 19.869932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.982647, 36.509098, 20.068975>,  <43.078804, 36.710850, 20.400713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.982647, 36.509098, 20.068975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553087, 0.630960, -0.544044,
		0.797687, -0.589486, 0.127284,
		-0.240396, -0.504376, -0.829346,
		42.910530, 36.357784, 19.820171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.677921, 36.750824, 19.972204>,  <43.078804, 36.710850, 20.400713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.677921, 36.750824, 19.972204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.399574, 36.649757, 19.703302>,  <43.232567, 36.589115, 19.541962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.399574, 36.649757, 19.703302>,  <43.677921, 36.750824, 19.972204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.399574, 36.649757, 19.703302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401769, 0.638919, -0.656021,
		0.595274, -0.726595, -0.343087,
		-0.695866, -0.252670, -0.672256,
		43.190815, 36.573956, 19.501625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.041580, 36.582176, 19.420500>,  <43.677921, 36.750824, 19.972204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.041580, 36.582176, 19.420500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.681957, 36.639187, 19.254904>,  <43.466183, 36.673393, 19.155546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.681957, 36.639187, 19.254904>,  <44.041580, 36.582176, 19.420500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.681957, 36.639187, 19.254904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436691, 0.360339, -0.824292,
		0.031690, -0.921868, -0.386206,
		-0.899053, 0.142531, -0.413990,
		43.412243, 36.681946, 19.130707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.170998, 36.569687, 18.711102>,  <44.041580, 36.582176, 19.420500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.170998, 36.569687, 18.711102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.794682, 36.702557, 18.738161>,  <43.568893, 36.782280, 18.754396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.794682, 36.702557, 18.738161>,  <44.170998, 36.569687, 18.711102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.794682, 36.702557, 18.738161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156929, 0.603639, -0.781660,
		-0.300482, -0.724762, -0.620025,
		-0.940789, 0.332175, 0.067647,
		43.512444, 36.802208, 18.758455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.722286, 36.406609, 18.039263>,  <44.170998, 36.569687, 18.711102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.722286, 36.406609, 18.039263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.607613, 36.726692, 18.249966>,  <43.538811, 36.918743, 18.376387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.607613, 36.726692, 18.249966>,  <43.722286, 36.406609, 18.039263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.607613, 36.726692, 18.249966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170658, 0.583698, -0.793834,
		-0.942703, -0.137681, -0.303898,
		-0.286681, 0.800213, 0.526757,
		43.521610, 36.966755, 18.407993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.339813, 36.804092, 17.500811>,  <43.722286, 36.406609, 18.039263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.339813, 36.804092, 17.500811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.404449, 37.063686, 17.798187>,  <43.443230, 37.219444, 17.976614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.404449, 37.063686, 17.798187>,  <43.339813, 36.804092, 17.500811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.404449, 37.063686, 17.798187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361205, 0.662172, -0.656551,
		-0.918379, 0.374627, -0.127416,
		0.161591, 0.648986, 0.743442,
		43.452927, 37.258381, 18.021219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.162514, 36.104233, 17.206909>,  <43.339813, 36.804092, 17.500811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.162514, 36.104233, 17.206909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.476284, 35.865318, 17.140060>,  <43.664547, 35.721970, 17.099951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.476284, 35.865318, 17.140060>,  <43.162514, 36.104233, 17.206909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.476284, 35.865318, 17.140060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549615, 0.544548, 0.633554,
		-0.287408, -0.588826, 0.755434,
		0.784423, -0.597286, -0.167120,
		43.711613, 35.686131, 17.089924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.060295, 36.193756, 16.456320>,  <43.162514, 36.104233, 17.206909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.060295, 36.193756, 16.456320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.451332, 36.227085, 16.533653>,  <43.685955, 36.247082, 16.580053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.451332, 36.227085, 16.533653>,  <43.060295, 36.193756, 16.456320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451332, 36.227085, 16.533653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035705, 0.970661, -0.237788,
		-0.207474, 0.225556, 0.951882,
		0.977589, 0.083322, 0.193334,
		43.744610, 36.252083, 16.591654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.297634, 36.152435, 16.416426>,  <43.060295, 36.193756, 16.456320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.297634, 36.152435, 16.416426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.999115, 36.046585, 16.172127>,  <41.820004, 35.983074, 16.025547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.999115, 36.046585, 16.172127>,  <42.297634, 36.152435, 16.416426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999115, 36.046585, 16.172127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508359, -0.365705, 0.779635,
		-0.429664, 0.892319, 0.138401,
		-0.746298, -0.264623, -0.610749,
		41.775227, 35.967197, 15.988902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725754, 36.314201, 16.733088>,  <42.297634, 36.152435, 16.416426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725754, 36.314201, 16.733088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.619286, 36.033218, 16.469055>,  <41.555405, 35.864628, 16.310637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.619286, 36.033218, 16.469055>,  <41.725754, 36.314201, 16.733088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.619286, 36.033218, 16.469055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571293, -0.436593, 0.694990,
		-0.776387, 0.562086, -0.285101,
		-0.266171, -0.702457, -0.660081,
		41.539433, 35.822483, 16.271030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042156, 36.132774, 16.931900>,  <41.725754, 36.314201, 16.733088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.042156, 36.132774, 16.931900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.157021, 35.814777, 16.718161>,  <41.225941, 35.623978, 16.589918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.157021, 35.814777, 16.718161>,  <41.042156, 36.132774, 16.931900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157021, 35.814777, 16.718161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573266, -0.589543, 0.569039,
		-0.767402, 0.142918, -0.625035,
		0.287159, -0.794993, -0.534347,
		41.243168, 35.576279, 16.557858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448128, 35.715816, 16.811354>,  <41.042156, 36.132774, 16.931900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448128, 35.715816, 16.811354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.744366, 35.455521, 16.744352>,  <40.922108, 35.299343, 16.704151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.744366, 35.455521, 16.744352>,  <40.448128, 35.715816, 16.811354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744366, 35.455521, 16.744352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497804, -0.698776, 0.513714,
		-0.451341, -0.297071, -0.841451,
		0.740596, -0.650738, -0.167503,
		40.966545, 35.260300, 16.694101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155937, 35.136005, 16.759727>,  <40.448128, 35.715816, 16.811354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155937, 35.136005, 16.759727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.525192, 35.000916, 16.833221>,  <40.746746, 34.919861, 16.877317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.525192, 35.000916, 16.833221>,  <40.155937, 35.136005, 16.759727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525192, 35.000916, 16.833221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375574, -0.689933, 0.618819,
		-0.082225, -0.640262, -0.763743,
		0.923138, -0.337724, 0.183736,
		40.802135, 34.899597, 16.888342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102367, 34.462650, 16.812733>,  <40.155937, 35.136005, 16.759727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102367, 34.462650, 16.812733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.440754, 34.513653, 17.019836>,  <40.643787, 34.544254, 17.144098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.440754, 34.513653, 17.019836>,  <40.102367, 34.462650, 16.812733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440754, 34.513653, 17.019836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391196, -0.511423, 0.765123,
		0.362355, -0.849817, -0.382767,
		0.845970, 0.127509, 0.517761,
		40.694546, 34.551907, 17.175165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228878, 33.934132, 17.165302>,  <40.102367, 34.462650, 16.812733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228878, 33.934132, 17.165302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.469097, 34.170673, 17.380575>,  <40.613228, 34.312599, 17.509739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.469097, 34.170673, 17.380575>,  <40.228878, 33.934132, 17.165302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469097, 34.170673, 17.380575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444232, -0.312877, 0.839503,
		0.664828, -0.743242, 0.074800,
		0.600551, 0.591354, 0.538182,
		40.649261, 34.348080, 17.542030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629646, 33.470398, 17.631546>,  <40.228878, 33.934132, 17.165302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629646, 33.470398, 17.631546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.609177, 33.845287, 17.769529>,  <40.596897, 34.070221, 17.852320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.609177, 33.845287, 17.769529>,  <40.629646, 33.470398, 17.631546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609177, 33.845287, 17.769529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357138, -0.339744, 0.870073,
		0.932649, -0.078676, 0.352102,
		-0.051170, 0.937222, 0.344960,
		40.593826, 34.126453, 17.873018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013969, 33.440880, 18.186781>,  <40.629646, 33.470398, 17.631546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013969, 33.440880, 18.186781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.779858, 33.761501, 18.235703>,  <40.639393, 33.953876, 18.265055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.779858, 33.761501, 18.235703>,  <41.013969, 33.440880, 18.186781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779858, 33.761501, 18.235703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273905, -0.337418, 0.900625,
		0.763169, 0.493615, 0.417034,
		-0.585276, 0.801557, 0.122303,
		40.604275, 34.001968, 18.272394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176525, 33.709335, 18.774242>,  <41.013969, 33.440880, 18.186781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.176525, 33.709335, 18.774242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.818501, 33.872540, 18.702250>,  <40.603687, 33.970463, 18.659054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.818501, 33.872540, 18.702250>,  <41.176525, 33.709335, 18.774242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818501, 33.872540, 18.702250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287099, -0.218397, 0.932672,
		0.341235, 0.886470, 0.312618,
		-0.895060, 0.408013, -0.179980,
		40.549984, 33.994942, 18.648256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086002, 34.146137, 19.369850>,  <41.176525, 33.709335, 18.774242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086002, 34.146137, 19.369850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.726528, 34.065636, 19.213968>,  <40.510845, 34.017334, 19.120440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.726528, 34.065636, 19.213968>,  <41.086002, 34.146137, 19.369850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726528, 34.065636, 19.213968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365742, -0.146547, 0.919107,
		-0.242083, 0.968515, 0.058092,
		-0.898682, -0.201253, -0.389703,
		40.456924, 34.005260, 19.097057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647099, 34.618664, 19.679731>,  <41.086002, 34.146137, 19.369850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647099, 34.618664, 19.679731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.421894, 34.322178, 19.533514>,  <40.286770, 34.144287, 19.445784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.421894, 34.322178, 19.533514>,  <40.647099, 34.618664, 19.679731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421894, 34.322178, 19.533514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329456, -0.204349, 0.921792,
		-0.757942, 0.639410, -0.129145,
		-0.563012, -0.741212, -0.365542,
		40.252991, 34.099815, 19.423851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047569, 34.759285, 20.032404>,  <40.647099, 34.618664, 19.679731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047569, 34.759285, 20.032404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.977493, 34.384789, 19.910576>,  <39.935448, 34.160091, 19.837479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.977493, 34.384789, 19.910576>,  <40.047569, 34.759285, 20.032404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977493, 34.384789, 19.910576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484844, -0.187198, 0.854332,
		-0.856875, 0.297340, -0.421135,
		-0.175192, -0.936240, -0.304569,
		39.924934, 34.103916, 19.819204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323429, 34.652683, 20.209852>,  <40.047569, 34.759285, 20.032404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323429, 34.652683, 20.209852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.521938, 34.309395, 20.157452>,  <39.641045, 34.103420, 20.126011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.521938, 34.309395, 20.157452>,  <39.323429, 34.652683, 20.209852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521938, 34.309395, 20.157452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357912, -0.339730, 0.869760,
		-0.790954, -0.384753, -0.475769,
		0.496276, -0.858224, -0.131003,
		39.670822, 34.051929, 20.118151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780014, 34.025505, 20.286394>,  <39.323429, 34.652683, 20.209852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780014, 34.025505, 20.286394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.153309, 33.888870, 20.330908>,  <39.377285, 33.806889, 20.357616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.153309, 33.888870, 20.330908>,  <38.780014, 34.025505, 20.286394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153309, 33.888870, 20.330908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292651, -0.543140, 0.786991,
		-0.208386, -0.767017, -0.606845,
		0.933237, -0.341591, 0.111286,
		39.433281, 33.786392, 20.364294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668705, 33.301991, 20.358007>,  <38.780014, 34.025505, 20.286394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668705, 33.301991, 20.358007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.027618, 33.374279, 20.519114>,  <39.242966, 33.417652, 20.615778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.027618, 33.374279, 20.519114>,  <38.668705, 33.301991, 20.358007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027618, 33.374279, 20.519114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311319, -0.387810, 0.867573,
		0.312987, -0.903849, -0.291713,
		0.897284, 0.180724, 0.402765,
		39.296803, 33.428497, 20.639942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917374, 32.662022, 20.548222>,  <38.668705, 33.301991, 20.358007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917374, 32.662022, 20.548222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.109550, 32.928310, 20.776606>,  <39.224857, 33.088085, 20.913635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.109550, 32.928310, 20.776606>,  <38.917374, 32.662022, 20.548222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109550, 32.928310, 20.776606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321982, -0.471670, 0.820887,
		0.815786, -0.578223, -0.012258,
		0.480438, 0.665722, 0.570959,
		39.253681, 33.128025, 20.947893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209869, 32.282822, 21.076550>,  <38.917374, 32.662022, 20.548222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209869, 32.282822, 21.076550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.230137, 32.657108, 21.216188>,  <39.242298, 32.881680, 21.299971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.230137, 32.657108, 21.216188>,  <39.209869, 32.282822, 21.076550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230137, 32.657108, 21.216188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201190, -0.332816, 0.921279,
		0.978241, -0.116912, 0.171395,
		0.050666, 0.935716, 0.349096,
		39.245338, 32.937824, 21.320917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638474, 32.217915, 21.650387>,  <39.209869, 32.282822, 21.076550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638474, 32.217915, 21.650387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.460331, 32.569794, 21.717054>,  <39.353443, 32.780922, 21.757055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.460331, 32.569794, 21.717054>,  <39.638474, 32.217915, 21.650387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460331, 32.569794, 21.717054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099197, -0.233485, 0.967287,
		0.889839, 0.414258, 0.191249,
		-0.445360, 0.879702, 0.166671,
		39.326721, 32.833706, 21.767056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913040, 32.488686, 22.305735>,  <39.638474, 32.217915, 21.650387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913040, 32.488686, 22.305735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.574310, 32.694748, 22.252815>,  <39.371075, 32.818386, 22.221064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.574310, 32.694748, 22.252815>,  <39.913040, 32.488686, 22.305735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574310, 32.694748, 22.252815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223260, -0.118525, 0.967526,
		0.482749, 0.848860, 0.215384,
		-0.846823, 0.515159, -0.132298,
		39.320263, 32.849297, 22.213125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.863144, 34.695152, 27.487408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.493561, 34.594955, 27.371777>,  <40.271812, 34.534840, 27.302399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.493561, 34.594955, 27.371777>,  <40.863144, 34.695152, 27.487408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493561, 34.594955, 27.371777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330560, 0.142639, 0.932944,
		-0.192459, 0.957554, -0.214594,
		-0.923953, -0.250490, -0.289077,
		40.216373, 34.519810, 27.285053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518463, 35.183701, 27.802511>,  <40.863144, 34.695152, 27.487408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518463, 35.183701, 27.802511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.243225, 34.905174, 27.720852>,  <40.078083, 34.738060, 27.671856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.243225, 34.905174, 27.720852>,  <40.518463, 35.183701, 27.802511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243225, 34.905174, 27.720852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427996, 0.162274, 0.889093,
		-0.585960, 0.699152, -0.409679,
		-0.688092, -0.696314, -0.204148,
		40.036797, 34.696281, 27.659607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953968, 35.503822, 28.135530>,  <40.518463, 35.183701, 27.802511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953968, 35.503822, 28.135530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.880016, 35.117352, 28.063616>,  <39.835648, 34.885468, 28.020466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.880016, 35.117352, 28.063616>,  <39.953968, 35.503822, 28.135530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880016, 35.117352, 28.063616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577345, -0.041268, 0.815457,
		-0.795295, 0.254557, -0.550188,
		-0.184875, -0.966177, -0.179788,
		39.824554, 34.827499, 28.009680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206917, 35.450237, 28.205288>,  <39.953968, 35.503822, 28.135530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206917, 35.450237, 28.205288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.321724, 35.073608, 28.275784>,  <39.390610, 34.847630, 28.318081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.321724, 35.073608, 28.275784>,  <39.206917, 35.450237, 28.205288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321724, 35.073608, 28.275784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602576, -0.034447, 0.797317,
		-0.744662, -0.335043, -0.577256,
		0.287020, -0.941572, 0.176238,
		39.407829, 34.791138, 28.328655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581631, 35.002136, 28.311430>,  <39.206917, 35.450237, 28.205288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581631, 35.002136, 28.311430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.891991, 34.830162, 28.496098>,  <39.078205, 34.726978, 28.606897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.891991, 34.830162, 28.496098>,  <38.581631, 35.002136, 28.311430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891991, 34.830162, 28.496098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560018, -0.132472, 0.817821,
		-0.290457, -0.893086, -0.343559,
		0.775896, -0.429941, 0.461667,
		39.124760, 34.701180, 28.634598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235214, 34.575596, 28.806454>,  <38.581631, 35.002136, 28.311430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235214, 34.575596, 28.806454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.609688, 34.605804, 28.943777>,  <38.834370, 34.623928, 29.026171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.609688, 34.605804, 28.943777>,  <38.235214, 34.575596, 28.806454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609688, 34.605804, 28.943777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345342, 0.015310, 0.938352,
		0.065613, -0.997026, 0.040414,
		0.936180, 0.075525, 0.343310,
		38.890541, 34.628460, 29.046770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159927, 34.208893, 29.349659>,  <38.235214, 34.575596, 28.806454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159927, 34.208893, 29.349659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.496826, 34.416355, 29.408464>,  <38.698967, 34.540833, 29.443748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.496826, 34.416355, 29.408464>,  <38.159927, 34.208893, 29.349659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496826, 34.416355, 29.408464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312557, 0.247623, 0.917056,
		0.439233, -0.818339, 0.370670,
		0.842248, 0.518656, 0.147013,
		38.749500, 34.571953, 29.452568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495792, 33.965466, 29.956327>,  <38.159927, 34.208893, 29.349659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495792, 33.965466, 29.956327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.646099, 34.332123, 29.901817>,  <38.736282, 34.552116, 29.869110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.646099, 34.332123, 29.901817>,  <38.495792, 33.965466, 29.956327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646099, 34.332123, 29.901817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186012, 0.218665, 0.957906,
		0.907856, -0.334597, 0.252673,
		0.375763, 0.916641, -0.136277,
		38.758827, 34.607117, 29.860933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919491, 34.162056, 30.477634>,  <38.495792, 33.965466, 29.956327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919491, 34.162056, 30.477634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.824791, 34.519104, 30.324177>,  <38.767971, 34.733334, 30.232103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.824791, 34.519104, 30.324177>,  <38.919491, 34.162056, 30.477634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824791, 34.519104, 30.324177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343302, 0.292539, 0.892505,
		0.908896, 0.343007, 0.237178,
		-0.236752, 0.892618, -0.383643,
		38.753765, 34.786888, 30.209084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931133, 34.498692, 31.050051>,  <38.919491, 34.162056, 30.477634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931133, 34.498692, 31.050051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.728233, 34.757618, 30.822481>,  <38.606495, 34.912975, 30.685940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.728233, 34.757618, 30.822481>,  <38.931133, 34.498692, 31.050051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728233, 34.757618, 30.822481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543373, 0.272174, 0.794146,
		0.668911, 0.711970, 0.213675,
		-0.507252, 0.647318, -0.568925,
		38.576057, 34.951813, 30.651804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811058, 35.143791, 31.461016>,  <38.931133, 34.498692, 31.050051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811058, 35.143791, 31.461016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.541641, 35.164165, 31.166059>,  <38.379990, 35.176392, 30.989086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.541641, 35.164165, 31.166059>,  <38.811058, 35.143791, 31.461016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541641, 35.164165, 31.166059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693464, 0.301731, 0.654268,
		0.255822, 0.952031, -0.167905,
		-0.673545, 0.050940, -0.737388,
		38.339577, 35.179447, 30.944843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321079, 35.706020, 31.671667>,  <38.811058, 35.143791, 31.461016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321079, 35.706020, 31.671667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.124226, 35.501217, 31.390055>,  <38.006115, 35.378334, 31.221088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.124226, 35.501217, 31.390055>,  <38.321079, 35.706020, 31.671667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124226, 35.501217, 31.390055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839993, 0.067008, 0.538443,
		-0.228509, 0.856365, -0.463057,
		-0.492133, -0.512004, -0.704029,
		37.976585, 35.347614, 31.178846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920605, 36.147938, 32.027958>,  <38.321079, 35.706020, 31.671667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920605, 36.147938, 32.027958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.894745, 36.266857, 31.646919>,  <38.879227, 36.338207, 31.418297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.894745, 36.266857, 31.646919>,  <38.920605, 36.147938, 32.027958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894745, 36.266857, 31.646919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899540, 0.395911, 0.184614,
		0.432027, 0.868832, 0.241833,
		-0.064654, 0.297297, -0.952593,
		38.875347, 36.356045, 31.361141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341187, 36.396740, 32.705215>,  <38.920605, 36.147938, 32.027958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341187, 36.396740, 32.705215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.540600, 36.056877, 32.636459>,  <39.660248, 35.852959, 32.595207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.540600, 36.056877, 32.636459>,  <39.341187, 36.396740, 32.705215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540600, 36.056877, 32.636459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761976, -0.524055, 0.380472,
		-0.413350, -0.058702, -0.908678,
		0.498532, -0.849659, -0.171888,
		39.690159, 35.801979, 32.584892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675987, 36.567894, 32.733120>,  <39.341187, 36.396740, 32.705215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675987, 36.567894, 32.733120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.464397, 36.891136, 32.836769>,  <38.337444, 37.085083, 32.898960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.464397, 36.891136, 32.836769>,  <38.675987, 36.567894, 32.733120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464397, 36.891136, 32.836769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561583, -0.104408, -0.820807,
		-0.636246, -0.579706, 0.509049,
		-0.528976, 0.808109, 0.259124,
		38.305706, 37.133568, 32.914505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026619, 36.359303, 32.494503>,  <38.675987, 36.567894, 32.733120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026619, 36.359303, 32.494503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.025043, 36.755554, 32.549107>,  <38.024097, 36.993305, 32.581867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.025043, 36.755554, 32.549107>,  <38.026619, 36.359303, 32.494503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025043, 36.755554, 32.549107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529895, 0.113704, -0.840406,
		-0.848054, -0.075643, 0.524483,
		-0.003935, 0.990631, 0.136510,
		38.023865, 37.052742, 32.590061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368492, 36.522243, 32.354717>,  <38.026619, 36.359303, 32.494503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368492, 36.522243, 32.354717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.564285, 36.868900, 32.316074>,  <37.681763, 37.076893, 32.292889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.564285, 36.868900, 32.316074>,  <37.368492, 36.522243, 32.354717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564285, 36.868900, 32.316074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482867, 0.177125, -0.857593,
		-0.726115, 0.466429, 0.505173,
		0.489485, 0.866643, -0.096610,
		37.711132, 37.128895, 32.287090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852394, 36.938549, 32.106823>,  <37.368492, 36.522243, 32.354717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852394, 36.938549, 32.106823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.208096, 37.097168, 32.015633>,  <37.421516, 37.192337, 31.960918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.208096, 37.097168, 32.015633>,  <36.852394, 36.938549, 32.106823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208096, 37.097168, 32.015633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324443, 0.195501, -0.925482,
		-0.322426, 0.896956, 0.302507,
		0.889257, 0.396546, -0.227976,
		37.474873, 37.216133, 31.947239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594406, 37.625771, 31.835590>,  <36.852394, 36.938549, 32.106823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594406, 37.625771, 31.835590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.971413, 37.569443, 31.714380>,  <37.197617, 37.535645, 31.641653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.971413, 37.569443, 31.714380>,  <36.594406, 37.625771, 31.835590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971413, 37.569443, 31.714380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225260, 0.402048, -0.887477,
		0.246808, 0.904725, 0.347217,
		0.942520, -0.140822, -0.303027,
		37.254169, 37.527195, 31.623472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726334, 38.224655, 31.447733>,  <36.594406, 37.625771, 31.835590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726334, 38.224655, 31.447733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.038506, 37.990353, 31.360266>,  <37.225807, 37.849770, 31.307785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.038506, 37.990353, 31.360266>,  <36.726334, 38.224655, 31.447733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038506, 37.990353, 31.360266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036086, 0.306955, -0.951040,
		0.624200, 0.750111, 0.218419,
		0.780431, -0.585757, -0.218670,
		37.272636, 37.814625, 31.294664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028240, 38.576317, 30.862061>,  <36.726334, 38.224655, 31.447733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028240, 38.576317, 30.862061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.150848, 38.195721, 30.851461>,  <37.224415, 37.967361, 30.845102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.150848, 38.195721, 30.851461>,  <37.028240, 38.576317, 30.862061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150848, 38.195721, 30.851461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048924, 0.012051, -0.998730,
		0.950606, 0.307428, -0.042857,
		0.306521, -0.951495, -0.026496,
		37.242805, 37.910271, 30.843513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637505, 38.607288, 30.408377>,  <37.028240, 38.576317, 30.862061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637505, 38.607288, 30.408377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.489326, 38.237171, 30.440887>,  <37.400421, 38.015102, 30.460394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.489326, 38.237171, 30.440887>,  <37.637505, 38.607288, 30.408377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489326, 38.237171, 30.440887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078621, -0.055953, -0.995333,
		0.925522, -0.375103, -0.052020,
		-0.370442, -0.925293, 0.081277,
		37.378193, 37.959583, 30.465271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095222, 38.119812, 29.988894>,  <37.637505, 38.607288, 30.408377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095222, 38.119812, 29.988894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.730064, 37.960167, 30.023163>,  <37.510971, 37.864380, 30.043724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.730064, 37.960167, 30.023163>,  <38.095222, 38.119812, 29.988894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730064, 37.960167, 30.023163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026724, -0.150995, -0.988173,
		0.407324, -0.904385, 0.127177,
		-0.912892, -0.399108, 0.085673,
		37.456196, 37.840435, 30.048864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152359, 37.453476, 29.790316>,  <38.095222, 38.119812, 29.988894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152359, 37.453476, 29.790316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.770050, 37.558800, 29.737890>,  <37.540665, 37.621994, 29.706434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.770050, 37.558800, 29.737890>,  <38.152359, 37.453476, 29.790316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770050, 37.558800, 29.737890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030129, -0.355617, -0.934146,
		-0.292569, -0.896777, 0.331955,
		-0.955770, 0.263301, -0.131061,
		37.483318, 37.637791, 29.698572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870430, 36.931614, 29.403885>,  <38.152359, 37.453476, 29.790316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870430, 36.931614, 29.403885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.597450, 37.217632, 29.343267>,  <37.433662, 37.389244, 29.306896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.597450, 37.217632, 29.343267>,  <37.870430, 36.931614, 29.403885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597450, 37.217632, 29.343267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038497, -0.242208, -0.969460,
		-0.729915, -0.655777, 0.192823,
		-0.682453, 0.715046, -0.151546,
		37.392715, 37.432148, 29.297804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360992, 36.608208, 28.897501>,  <37.870430, 36.931614, 29.403885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360992, 36.608208, 28.897501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.272289, 36.998226, 28.901686>,  <37.219067, 37.232239, 28.904196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.272289, 36.998226, 28.901686>,  <37.360992, 36.608208, 28.897501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272289, 36.998226, 28.901686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009159, 0.008644, -0.999921,
		-0.975058, -0.221839, 0.007014,
		-0.221761, 0.975045, 0.010460,
		37.205761, 37.290741, 28.904823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829323, 36.707893, 28.322563>,  <37.360992, 36.608208, 28.897501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829323, 36.707893, 28.322563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.997471, 37.060402, 28.408960>,  <37.098362, 37.271908, 28.460798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.997471, 37.060402, 28.408960>,  <36.829323, 36.707893, 28.322563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997471, 37.060402, 28.408960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095886, 0.193570, -0.976390,
		-0.902270, 0.431160, -0.003129,
		0.420374, 0.881267, 0.215994,
		37.123585, 37.324783, 28.473759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556435, 37.242649, 27.745537>,  <36.829323, 36.707893, 28.322563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556435, 37.242649, 27.745537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.884201, 37.410313, 27.901930>,  <37.080860, 37.510910, 27.995766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.884201, 37.410313, 27.901930>,  <36.556435, 37.242649, 27.745537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884201, 37.410313, 27.901930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415745, 0.034976, -0.908809,
		-0.394607, 0.907241, -0.145602,
		0.819415, 0.419155, 0.390982,
		37.130024, 37.536060, 28.019224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105087, 37.818405, 27.490088>,  <36.556435, 37.242649, 27.745537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105087, 37.818405, 27.490088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.770782, 37.738163, 27.285637>,  <35.570198, 37.690018, 27.162966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.770782, 37.738163, 27.285637>,  <36.105087, 37.818405, 27.490088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770782, 37.738163, 27.285637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421641, -0.361818, 0.831448,
		-0.351731, 0.910409, 0.217811,
		-0.835766, -0.200608, -0.511128,
		35.520054, 37.677982, 27.132298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696850, 37.691208, 28.012789>,  <36.105087, 37.818405, 27.490088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696850, 37.691208, 28.012789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.467693, 37.569515, 27.708359>,  <35.330200, 37.496498, 27.525702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.467693, 37.569515, 27.708359>,  <35.696850, 37.691208, 28.012789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467693, 37.569515, 27.708359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633535, -0.424770, 0.646687,
		-0.520026, 0.852650, 0.050605,
		-0.572893, -0.304234, -0.761075,
		35.295826, 37.478245, 27.480036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939606, 37.884209, 28.150398>,  <35.696850, 37.691208, 28.012789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939606, 37.884209, 28.150398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.929752, 37.565811, 27.908478>,  <34.923840, 37.374771, 27.763325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.929752, 37.565811, 27.908478>,  <34.939606, 37.884209, 28.150398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929752, 37.565811, 27.908478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542936, -0.497334, 0.676668,
		-0.839413, 0.345036, -0.419924,
		-0.024633, -0.795996, -0.604801,
		34.922363, 37.327011, 27.727037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333927, 37.681892, 28.322620>,  <34.939606, 37.884209, 28.150398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333927, 37.681892, 28.322620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.485134, 37.363811, 28.132986>,  <34.575859, 37.172962, 28.019205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.485134, 37.363811, 28.132986>,  <34.333927, 37.681892, 28.322620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485134, 37.363811, 28.132986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618511, -0.597954, 0.509799,
		-0.688876, 0.100518, -0.717876,
		0.378013, -0.795202, -0.474088,
		34.598537, 37.125252, 27.990759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700893, 37.342281, 28.261005>,  <34.333927, 37.681892, 28.322620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700893, 37.342281, 28.261005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.982430, 37.067547, 28.188499>,  <34.151352, 36.902706, 28.144997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.982430, 37.067547, 28.188499>,  <33.700893, 37.342281, 28.261005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982430, 37.067547, 28.188499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555869, -0.691416, 0.461468,
		-0.442283, -0.224042, -0.868442,
		0.703843, -0.686840, -0.181264,
		34.193581, 36.861496, 28.134121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353004, 36.679691, 28.105844>,  <33.700893, 37.342281, 28.261005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353004, 36.679691, 28.105844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.727180, 36.580631, 28.206734>,  <33.951687, 36.521194, 28.267267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.727180, 36.580631, 28.206734>,  <33.353004, 36.679691, 28.105844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727180, 36.580631, 28.206734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350071, -0.747942, 0.563945,
		0.048987, -0.615834, -0.786352,
		0.935441, -0.247653, 0.252225,
		34.007812, 36.506336, 28.282402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422535, 35.889996, 28.034388>,  <33.353004, 36.679691, 28.105844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422535, 35.889996, 28.034388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.721977, 35.959606, 28.290293>,  <33.901642, 36.001373, 28.443836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.721977, 35.959606, 28.290293>,  <33.422535, 35.889996, 28.034388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721977, 35.959606, 28.290293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398237, -0.653456, 0.643741,
		0.530085, -0.736689, -0.419880,
		0.748610, 0.174025, 0.639764,
		33.946560, 36.011814, 28.482222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627655, 35.216480, 28.354000>,  <33.422535, 35.889996, 28.034388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627655, 35.216480, 28.354000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.755043, 35.501240, 28.604366>,  <33.831478, 35.672096, 28.754587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.755043, 35.501240, 28.604366>,  <33.627655, 35.216480, 28.354000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755043, 35.501240, 28.604366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269963, -0.564840, 0.779792,
		0.908678, -0.417317, 0.012301,
		0.318472, 0.711901, 0.625917,
		33.850586, 35.714809, 28.792141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928020, 34.888748, 28.907013>,  <33.627655, 35.216480, 28.354000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928020, 34.888748, 28.907013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.844101, 35.240494, 29.077986>,  <33.793751, 35.451542, 29.180571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.844101, 35.240494, 29.077986>,  <33.928020, 34.888748, 28.907013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844101, 35.240494, 29.077986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278361, -0.472790, 0.836053,
		0.937284, 0.056419, 0.343970,
		-0.209795, 0.879367, 0.427434,
		33.781162, 35.504303, 29.206217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258228, 34.925510, 29.576160>,  <33.928020, 34.888748, 28.907013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258228, 34.925510, 29.576160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.945290, 35.172756, 29.606798>,  <33.757526, 35.321102, 29.625181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.945290, 35.172756, 29.606798>,  <34.258228, 34.925510, 29.576160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945290, 35.172756, 29.606798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290090, -0.470436, 0.833390,
		0.551163, 0.629781, 0.547353,
		-0.782347, 0.618115, 0.076594,
		33.710587, 35.358192, 29.629776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289074, 35.008278, 30.184214>,  <34.258228, 34.925510, 29.576160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289074, 35.008278, 30.184214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.920910, 35.130219, 30.086298>,  <33.700012, 35.203381, 30.027550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.920910, 35.130219, 30.086298>,  <34.289074, 35.008278, 30.184214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920910, 35.130219, 30.086298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390902, -0.706457, 0.590012,
		0.006932, 0.638738, 0.769393,
		-0.920406, 0.304847, -0.244787,
		33.644787, 35.221672, 30.012861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810577, 35.089481, 30.858395>,  <34.289074, 35.008278, 30.184214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810577, 35.089481, 30.858395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.569283, 35.014729, 30.548252>,  <33.424503, 34.969879, 30.362167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.569283, 35.014729, 30.548252>,  <33.810577, 35.089481, 30.858395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569283, 35.014729, 30.548252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565740, -0.584984, 0.581148,
		-0.562175, 0.789222, 0.247161,
		-0.603240, -0.186878, -0.775357,
		33.388309, 34.958664, 30.315645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.294048, 39.206703, 24.477779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107491, 38.904678, 24.293451>,  <36.995556, 38.723461, 24.182854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107491, 38.904678, 24.293451>,  <37.294048, 39.206703, 24.477779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107491, 38.904678, 24.293451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664144, -0.045202, 0.746237,
		-0.584289, 0.654088, -0.480391,
		-0.466390, -0.755066, -0.460820,
		36.967575, 38.678158, 24.155205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713615, 39.358383, 24.645700>,  <37.294048, 39.206703, 24.477779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713615, 39.358383, 24.645700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678810, 38.980228, 24.520048>,  <36.657928, 38.753338, 24.444656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678810, 38.980228, 24.520048>,  <36.713615, 39.358383, 24.645700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678810, 38.980228, 24.520048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704744, -0.164453, 0.690138,
		-0.704106, 0.281432, -0.651944,
		-0.087013, -0.945384, -0.314130,
		36.652706, 38.696613, 24.425810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029644, 39.258865, 24.493673>,  <36.713615, 39.358383, 24.645700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029644, 39.258865, 24.493673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163723, 38.884998, 24.541071>,  <36.244171, 38.660679, 24.569510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163723, 38.884998, 24.541071>,  <36.029644, 39.258865, 24.493673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163723, 38.884998, 24.541071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713156, -0.169524, 0.680198,
		-0.615672, -0.312504, -0.723388,
		0.335196, -0.934668, 0.118493,
		36.264282, 38.604599, 24.576618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492287, 38.846619, 24.732187>,  <36.029644, 39.258865, 24.493673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492287, 38.846619, 24.732187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767525, 38.564270, 24.799450>,  <35.932667, 38.394863, 24.839808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767525, 38.564270, 24.799450>,  <35.492287, 38.846619, 24.732187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767525, 38.564270, 24.799450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522043, -0.320612, 0.790367,
		-0.503983, -0.631630, -0.589105,
		0.688093, -0.705870, 0.168155,
		35.973953, 38.352509, 24.849895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113331, 38.207748, 24.786341>,  <35.492287, 38.846619, 24.732187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113331, 38.207748, 24.786341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455734, 38.166485, 24.988968>,  <35.661175, 38.141727, 25.110544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455734, 38.166485, 24.988968>,  <35.113331, 38.207748, 24.786341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455734, 38.166485, 24.988968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514876, -0.258104, 0.817487,
		0.046420, -0.960594, -0.274051,
		0.856007, -0.103154, 0.506568,
		35.712536, 38.135536, 25.140938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173817, 37.541317, 25.114918>,  <35.113331, 38.207748, 24.786341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173817, 37.541317, 25.114918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431072, 37.759861, 25.329533>,  <35.585426, 37.890987, 25.458302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431072, 37.759861, 25.329533>,  <35.173817, 37.541317, 25.114918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431072, 37.759861, 25.329533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404935, -0.352031, 0.843862,
		0.649927, -0.759979, -0.005165,
		0.643135, 0.546357, 0.536536,
		35.624012, 37.923767, 25.490494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466534, 37.087982, 25.640337>,  <35.173817, 37.541317, 25.114918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466534, 37.087982, 25.640337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536137, 37.457516, 25.776720>,  <35.577900, 37.679237, 25.858549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536137, 37.457516, 25.776720>,  <35.466534, 37.087982, 25.640337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536137, 37.457516, 25.776720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420617, -0.243336, 0.873996,
		0.890394, -0.295498, 0.346237,
		0.174012, 0.923834, 0.340956,
		35.588341, 37.734665, 25.879007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912701, 37.057972, 26.219587>,  <35.466534, 37.087982, 25.640337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912701, 37.057972, 26.219587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723183, 37.403625, 26.287464>,  <35.609474, 37.611019, 26.328190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723183, 37.403625, 26.287464>,  <35.912701, 37.057972, 26.219587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723183, 37.403625, 26.287464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224905, -0.305038, 0.925402,
		0.851433, 0.400284, 0.338873,
		-0.473792, 0.864132, 0.169694,
		35.581043, 37.662865, 26.338373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280045, 37.251034, 26.740030>,  <35.912701, 37.057972, 26.219587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280045, 37.251034, 26.740030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924770, 37.434677, 26.732512>,  <35.711605, 37.544865, 26.728001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924770, 37.434677, 26.732512>,  <36.280045, 37.251034, 26.740030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924770, 37.434677, 26.732512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213960, -0.377031, 0.901149,
		0.406638, 0.804405, 0.433102,
		-0.888182, 0.459108, -0.018796,
		35.658318, 37.572411, 26.726873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872162, 37.533108, 27.136337>,  <36.280045, 37.251034, 26.740030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872162, 37.533108, 27.136337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185646, 37.525597, 27.384672>,  <37.373737, 37.521088, 27.533674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185646, 37.525597, 27.384672>,  <36.872162, 37.533108, 27.136337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185646, 37.525597, 27.384672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619879, 0.086886, -0.779872,
		-0.039295, 0.996041, 0.079736,
		0.783713, -0.018782, 0.620839,
		37.420761, 37.519962, 27.570925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316463, 38.015648, 26.891317>,  <36.872162, 37.533108, 27.136337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316463, 38.015648, 26.891317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547806, 37.817806, 27.150814>,  <37.686611, 37.699100, 27.306513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547806, 37.817806, 27.150814>,  <37.316463, 38.015648, 26.891317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547806, 37.817806, 27.150814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698201, -0.111181, -0.707216,
		0.421922, 0.861976, 0.281034,
		0.578357, -0.494608, 0.648742,
		37.721313, 37.669422, 27.345436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930553, 38.398823, 26.940300>,  <37.316463, 38.015648, 26.891317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930553, 38.398823, 26.940300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985180, 38.008209, 27.006916>,  <38.017956, 37.773842, 27.046885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985180, 38.008209, 27.006916>,  <37.930553, 38.398823, 26.940300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985180, 38.008209, 27.006916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622000, -0.046317, -0.781647,
		0.771016, 0.210332, 0.601077,
		0.136565, -0.976532, 0.166538,
		38.026150, 37.715248, 27.056877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622070, 38.406273, 26.880074>,  <37.930553, 38.398823, 26.940300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622070, 38.406273, 26.880074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513828, 38.028809, 26.803883>,  <38.448883, 37.802330, 26.758167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513828, 38.028809, 26.803883>,  <38.622070, 38.406273, 26.880074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513828, 38.028809, 26.803883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702643, -0.058350, -0.709146,
		0.658077, -0.325738, 0.678844,
		-0.270607, -0.943658, -0.190479,
		38.432648, 37.745712, 26.746738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206806, 38.059803, 26.685671>,  <38.622070, 38.406273, 26.880074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206806, 38.059803, 26.685671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932903, 37.790470, 26.574150>,  <38.768562, 37.628872, 26.507236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932903, 37.790470, 26.574150>,  <39.206806, 38.059803, 26.685671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932903, 37.790470, 26.574150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607249, -0.315646, -0.729120,
		0.402938, -0.668573, 0.625021,
		-0.684755, -0.673334, -0.278804,
		38.727478, 37.588470, 26.490509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566238, 37.451557, 26.448837>,  <39.206806, 38.059803, 26.685671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566238, 37.451557, 26.448837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194405, 37.369713, 26.326200>,  <38.971302, 37.320606, 26.252619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194405, 37.369713, 26.326200>,  <39.566238, 37.451557, 26.448837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194405, 37.369713, 26.326200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353871, -0.262641, -0.897661,
		0.103151, -0.942949, 0.316555,
		-0.929589, -0.204615, -0.306591,
		38.915527, 37.308327, 26.234222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598896, 36.905376, 26.057011>,  <39.566238, 37.451557, 26.448837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598896, 36.905376, 26.057011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254200, 37.044506, 25.909273>,  <39.047382, 37.127983, 25.820631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254200, 37.044506, 25.909273>,  <39.598896, 36.905376, 26.057011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254200, 37.044506, 25.909273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275620, -0.290236, -0.916404,
		-0.425949, -0.891503, 0.154240,
		-0.861743, 0.347830, -0.369342,
		38.995678, 37.148853, 25.798471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361118, 36.379002, 25.557953>,  <39.598896, 36.905376, 26.057011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361118, 36.379002, 25.557953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232407, 36.751610, 25.490149>,  <39.155182, 36.975174, 25.449467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232407, 36.751610, 25.490149>,  <39.361118, 36.379002, 25.557953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232407, 36.751610, 25.490149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393603, -0.031224, -0.918750,
		-0.861125, -0.362353, -0.356601,
		-0.321777, 0.931518, -0.169511,
		39.135872, 37.031067, 25.439295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159855, 36.386742, 24.901178>,  <39.361118, 36.379002, 25.557953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159855, 36.386742, 24.901178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191692, 36.778896, 24.973299>,  <39.210796, 37.014191, 25.016571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191692, 36.778896, 24.973299>,  <39.159855, 36.386742, 24.901178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191692, 36.778896, 24.973299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586608, 0.100171, -0.803652,
		-0.805950, 0.169733, -0.567129,
		0.079596, 0.980386, 0.180300,
		39.215572, 37.073013, 25.027390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183277, 36.692387, 24.197947>,  <39.159855, 36.386742, 24.901178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183277, 36.692387, 24.197947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333752, 36.992912, 24.414837>,  <39.424038, 37.173229, 24.544971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333752, 36.992912, 24.414837>,  <39.183277, 36.692387, 24.197947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333752, 36.992912, 24.414837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600514, 0.247955, -0.760198,
		-0.705596, 0.611591, -0.357898,
		0.376188, 0.751315, 0.542225,
		39.446609, 37.218307, 24.577505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287315, 37.243252, 23.798315>,  <39.183277, 36.692387, 24.197947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287315, 37.243252, 23.798315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533165, 37.298443, 24.108978>,  <39.680676, 37.331558, 24.295376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533165, 37.298443, 24.108978>,  <39.287315, 37.243252, 23.798315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533165, 37.298443, 24.108978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658645, 0.452034, -0.601542,
		-0.434076, 0.881264, 0.186952,
		0.614626, 0.137980, 0.776657,
		39.717552, 37.339836, 24.341976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459240, 37.916107, 23.718592>,  <39.287315, 37.243252, 23.798315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459240, 37.916107, 23.718592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729980, 37.751240, 23.962553>,  <39.892426, 37.652317, 24.108931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729980, 37.751240, 23.962553>,  <39.459240, 37.916107, 23.718592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729980, 37.751240, 23.962553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735826, 0.402139, -0.544834,
		-0.020701, 0.817557, 0.575475,
		0.676854, -0.412171, 0.609905,
		39.933037, 37.627590, 24.145525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962532, 38.478745, 23.809013>,  <39.459240, 37.916107, 23.718592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962532, 38.478745, 23.809013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142838, 38.135242, 23.906460>,  <40.251019, 37.929142, 23.964928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142838, 38.135242, 23.906460>,  <39.962532, 38.478745, 23.809013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142838, 38.135242, 23.906460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726912, 0.194738, -0.658541,
		0.518086, 0.473932, 0.712022,
		0.450761, -0.858758, 0.243615,
		40.278065, 37.877617, 23.979544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636051, 38.740589, 23.890587>,  <39.962532, 38.478745, 23.809013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636051, 38.740589, 23.890587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630550, 38.342682, 23.850098>,  <40.627251, 38.103939, 23.825804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630550, 38.342682, 23.850098>,  <40.636051, 38.740589, 23.890587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630550, 38.342682, 23.850098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786192, 0.051796, -0.615807,
		0.617829, -0.088047, 0.781368,
		-0.013748, -0.994769, -0.101223,
		40.626427, 38.044250, 23.819731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.563171, 33.026619, 19.087736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.652763, 33.358837, 19.291708>,  <36.706516, 33.558167, 19.414091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.652763, 33.358837, 19.291708>,  <36.563171, 33.026619, 19.087736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652763, 33.358837, 19.291708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313495, -0.434018, 0.844600,
		0.922797, -0.349032, 0.163161,
		0.223978, 0.830545, 0.509931,
		36.719955, 33.608002, 19.444687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644878, 32.702457, 19.680811>,  <36.563171, 33.026619, 19.087736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644878, 32.702457, 19.680811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.604164, 33.090805, 19.767569>,  <36.579735, 33.323814, 19.819624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.604164, 33.090805, 19.767569>,  <36.644878, 32.702457, 19.680811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604164, 33.090805, 19.767569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308348, -0.238081, 0.920999,
		0.945812, 0.026868, 0.323600,
		-0.101788, 0.970874, 0.216895,
		36.573627, 33.382069, 19.832638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013332, 32.822693, 20.258133>,  <36.644878, 32.702457, 19.680811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013332, 32.822693, 20.258133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.768806, 33.139015, 20.270277>,  <36.622089, 33.328808, 20.277563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.768806, 33.139015, 20.270277>,  <37.013332, 32.822693, 20.258133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768806, 33.139015, 20.270277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284065, -0.255073, 0.924254,
		0.738648, 0.556386, 0.380570,
		-0.611315, 0.790805, 0.030360,
		36.585411, 33.376255, 20.279385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250599, 33.241447, 20.767799>,  <37.013332, 32.822693, 20.258133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250599, 33.241447, 20.767799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.865032, 33.332943, 20.713333>,  <36.633694, 33.387840, 20.680653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.865032, 33.332943, 20.713333>,  <37.250599, 33.241447, 20.767799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865032, 33.332943, 20.713333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164502, -0.109671, 0.980261,
		0.209294, 0.967289, 0.143342,
		-0.963916, 0.228743, -0.136168,
		36.575859, 33.401566, 20.672483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249336, 33.600571, 21.223579>,  <37.250599, 33.241447, 20.767799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249336, 33.600571, 21.223579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.875374, 33.493114, 21.130814>,  <36.650997, 33.428638, 21.075153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.875374, 33.493114, 21.130814>,  <37.249336, 33.600571, 21.223579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875374, 33.493114, 21.130814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226242, -0.052346, 0.972664,
		-0.273438, 0.961816, -0.011840,
		-0.934904, -0.268642, -0.231916,
		36.594902, 33.412521, 21.061239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737362, 34.081001, 21.530870>,  <37.249336, 33.600571, 21.223579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737362, 34.081001, 21.530870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.544933, 33.735039, 21.473600>,  <36.429474, 33.527462, 21.439238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.544933, 33.735039, 21.473600>,  <36.737362, 34.081001, 21.530870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544933, 33.735039, 21.473600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282560, -0.001630, 0.959248,
		-0.829896, 0.501925, -0.243605,
		-0.481074, -0.864909, -0.143177,
		36.400612, 33.475567, 21.430647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139870, 34.188477, 21.795385>,  <36.737362, 34.081001, 21.530870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139870, 34.188477, 21.795385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.142513, 33.788486, 21.796089>,  <36.144100, 33.548492, 21.796511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.142513, 33.788486, 21.796089>,  <36.139870, 34.188477, 21.795385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142513, 33.788486, 21.796089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423886, -0.001206, 0.905715,
		-0.905691, -0.006727, -0.423884,
		0.006605, -0.999977, 0.001759,
		36.144493, 33.488495, 21.796618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471352, 34.033298, 22.176071>,  <36.139870, 34.188477, 21.795385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471352, 34.033298, 22.176071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.639896, 33.670727, 22.187693>,  <35.741024, 33.453186, 22.194666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.639896, 33.670727, 22.187693>,  <35.471352, 34.033298, 22.176071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639896, 33.670727, 22.187693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394758, -0.154475, 0.905706,
		-0.816468, -0.393100, -0.422909,
		0.421362, -0.906427, 0.029055,
		35.766304, 33.398800, 22.196409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983341, 33.501972, 22.318441>,  <35.471352, 34.033298, 22.176071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983341, 33.501972, 22.318441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.330799, 33.332008, 22.420347>,  <35.539272, 33.230030, 22.481491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.330799, 33.332008, 22.420347>,  <34.983341, 33.501972, 22.318441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330799, 33.332008, 22.420347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389358, -0.267512, 0.881384,
		-0.306367, -0.864801, -0.397818,
		0.868642, -0.424920, 0.254761,
		35.591393, 33.204536, 22.496777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742592, 32.914093, 22.687513>,  <34.983341, 33.501972, 22.318441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742592, 32.914093, 22.687513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.127831, 32.963673, 22.783089>,  <35.358974, 32.993420, 22.840433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.127831, 32.963673, 22.783089>,  <34.742592, 32.914093, 22.687513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127831, 32.963673, 22.783089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187809, -0.326464, 0.926364,
		0.192826, -0.937048, -0.291136,
		0.963092, 0.123949, 0.238936,
		35.416759, 33.000858, 22.854769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881001, 32.342621, 23.106842>,  <34.742592, 32.914093, 22.687513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881001, 32.342621, 23.106842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.167023, 32.599545, 23.217213>,  <35.338638, 32.753696, 23.283436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.167023, 32.599545, 23.217213>,  <34.881001, 32.342621, 23.106842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167023, 32.599545, 23.217213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160276, -0.233563, 0.959041,
		0.680444, -0.729994, -0.064065,
		0.715057, 0.642306, 0.275927,
		35.381538, 32.792236, 23.299992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244156, 31.992933, 23.619877>,  <34.881001, 32.342621, 23.106842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244156, 31.992933, 23.619877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.354500, 32.373699, 23.673180>,  <35.420708, 32.602158, 23.705162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.354500, 32.373699, 23.673180>,  <35.244156, 31.992933, 23.619877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354500, 32.373699, 23.673180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171191, -0.087763, 0.981321,
		0.945831, -0.293519, 0.138750,
		0.275859, 0.951916, 0.133257,
		35.437256, 32.659275, 23.713158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770477, 32.046444, 24.100309>,  <35.244156, 31.992933, 23.619877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770477, 32.046444, 24.100309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.568310, 32.391579, 24.103659>,  <35.447010, 32.598660, 24.105667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.568310, 32.391579, 24.103659>,  <35.770477, 32.046444, 24.100309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568310, 32.391579, 24.103659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228931, -0.143441, 0.962816,
		0.831952, 0.484707, 0.270028,
		-0.505417, 0.862834, 0.008372,
		35.416683, 32.650429, 24.106171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072598, 32.425407, 24.763161>,  <35.770477, 32.046444, 24.100309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072598, 32.425407, 24.763161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.724991, 32.600895, 24.671644>,  <35.516426, 32.706188, 24.616734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.724991, 32.600895, 24.671644>,  <36.072598, 32.425407, 24.763161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724991, 32.600895, 24.671644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244970, 0.020262, 0.969319,
		0.429892, 0.898397, 0.089865,
		-0.869012, 0.438717, -0.228791,
		35.464287, 32.732510, 24.603006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560955, 32.824223, 25.276283>,  <36.072598, 32.425407, 24.763161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560955, 32.824223, 25.276283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.823967, 32.584152, 25.458466>,  <36.981773, 32.440109, 25.567776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.823967, 32.584152, 25.458466>,  <36.560955, 32.824223, 25.276283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823967, 32.584152, 25.458466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581124, 0.019249, -0.813587,
		0.479531, 0.799634, 0.361435,
		0.657529, -0.600179, 0.455456,
		37.021225, 32.404099, 25.595102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243786, 33.233437, 25.300648>,  <36.560955, 32.824223, 25.276283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243786, 33.233437, 25.300648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.333015, 32.844482, 25.328091>,  <37.386555, 32.611111, 25.344557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.333015, 32.844482, 25.328091>,  <37.243786, 33.233437, 25.300648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333015, 32.844482, 25.328091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698038, 0.110216, -0.707528,
		0.680427, 0.205722, 0.703348,
		0.223074, -0.972384, 0.068608,
		37.399937, 32.552769, 25.348673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920139, 33.154884, 25.138885>,  <37.243786, 33.233437, 25.300648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920139, 33.154884, 25.138885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.787418, 32.783913, 25.069859>,  <37.707787, 32.561329, 25.028442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.787418, 32.783913, 25.069859>,  <37.920139, 33.154884, 25.138885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787418, 32.783913, 25.069859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453138, 0.003754, -0.891433,
		0.827391, -0.373973, 0.419009,
		-0.331799, -0.927432, -0.172568,
		37.687878, 32.505684, 25.018087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503700, 32.845711, 25.030903>,  <37.920139, 33.154884, 25.138885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503700, 32.845711, 25.030903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.239601, 32.580593, 24.889608>,  <38.081142, 32.421520, 24.804831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.239601, 32.580593, 24.889608>,  <38.503700, 32.845711, 25.030903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239601, 32.580593, 24.889608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572656, -0.139955, -0.807761,
		0.485944, -0.735604, 0.471959,
		-0.660245, -0.662797, -0.353238,
		38.041527, 32.381756, 24.783638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878670, 32.206451, 24.886585>,  <38.503700, 32.845711, 25.030903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878670, 32.206451, 24.886585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.549770, 32.256084, 24.664412>,  <38.352428, 32.285862, 24.531107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.549770, 32.256084, 24.664412>,  <38.878670, 32.206451, 24.886585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549770, 32.256084, 24.664412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549385, -0.081747, -0.831561,
		-0.148587, -0.988899, -0.000953,
		-0.822252, 0.124083, -0.555433,
		38.303093, 32.293308, 24.497782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095490, 31.836130, 24.287575>,  <38.878670, 32.206451, 24.886585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095490, 31.836130, 24.287575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.777283, 32.058941, 24.192179>,  <38.586361, 32.192627, 24.134941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.777283, 32.058941, 24.192179>,  <39.095490, 31.836130, 24.287575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777283, 32.058941, 24.192179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393550, 0.175706, -0.902356,
		-0.460734, -0.811694, -0.358995,
		-0.795514, 0.557028, -0.238488,
		38.538628, 32.226048, 24.120632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829815, 31.588593, 23.713274>,  <39.095490, 31.836130, 24.287575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829815, 31.588593, 23.713274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.683449, 31.960642, 23.700794>,  <38.595627, 32.183872, 23.693306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.683449, 31.960642, 23.700794>,  <38.829815, 31.588593, 23.713274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683449, 31.960642, 23.700794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330763, 0.098645, -0.938544,
		-0.869885, -0.353749, -0.343747,
		-0.365918, 0.930124, -0.031198,
		38.573673, 32.239677, 23.691435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345646, 31.749784, 23.095926>,  <38.829815, 31.588593, 23.713274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345646, 31.749784, 23.095926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.466965, 32.116806, 23.198767>,  <38.539757, 32.337021, 23.260471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.466965, 32.116806, 23.198767>,  <38.345646, 31.749784, 23.095926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466965, 32.116806, 23.198767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153026, 0.219408, -0.963557,
		-0.940528, 0.331588, -0.073864,
		0.303298, 0.917556, 0.257102,
		38.557953, 32.392075, 23.275898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221733, 32.128719, 22.517691>,  <38.345646, 31.749784, 23.095926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221733, 32.128719, 22.517691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.457325, 32.392525, 22.704517>,  <38.598679, 32.550808, 22.816612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.457325, 32.392525, 22.704517>,  <38.221733, 32.128719, 22.517691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457325, 32.392525, 22.704517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219204, 0.425905, -0.877812,
		-0.777854, 0.619393, 0.106280,
		0.588976, 0.659513, 0.467066,
		38.634018, 32.590378, 22.844637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038742, 32.767883, 22.323423>,  <38.221733, 32.128719, 22.517691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038742, 32.767883, 22.323423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.415348, 32.850750, 22.429724>,  <38.641312, 32.900471, 22.493504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.415348, 32.850750, 22.429724>,  <38.038742, 32.767883, 22.323423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415348, 32.850750, 22.429724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173718, 0.377355, -0.909629,
		-0.288729, 0.902599, 0.319298,
		0.941519, 0.207169, 0.265751,
		38.697803, 32.912899, 22.509449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165752, 33.422901, 22.104887>,  <38.038742, 32.767883, 22.323423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165752, 33.422901, 22.104887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.533146, 33.274220, 22.158892>,  <38.753582, 33.185009, 22.191294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.533146, 33.274220, 22.158892>,  <38.165752, 33.422901, 22.104887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533146, 33.274220, 22.158892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273582, 0.350707, -0.895633,
		0.285562, 0.859558, 0.423809,
		0.918481, -0.371705, 0.135011,
		38.808689, 33.162708, 22.199394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609756, 33.942139, 21.829700>,  <38.165752, 33.422901, 22.104887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609756, 33.942139, 21.829700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.842186, 33.617168, 21.848953>,  <38.981644, 33.422188, 21.860504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.842186, 33.617168, 21.848953>,  <38.609756, 33.942139, 21.829700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842186, 33.617168, 21.848953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553906, 0.351461, -0.754761,
		0.596269, 0.465235, 0.654232,
		0.581078, -0.812423, 0.048132,
		39.016510, 33.373440, 21.863392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304585, 34.139164, 21.794600>,  <38.609756, 33.942139, 21.829700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304585, 34.139164, 21.794600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.260258, 33.774796, 21.635632>,  <39.233662, 33.556175, 21.540251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.260258, 33.774796, 21.635632>,  <39.304585, 34.139164, 21.794600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260258, 33.774796, 21.635632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558929, 0.273529, -0.782803,
		0.821778, -0.308874, 0.478830,
		-0.110814, -0.910922, -0.397419,
		39.227013, 33.501518, 21.516405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998219, 33.928307, 21.628143>,  <39.304585, 34.139164, 21.794600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998219, 33.928307, 21.628143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.761631, 33.690434, 21.410330>,  <39.619678, 33.547710, 21.279642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.761631, 33.690434, 21.410330>,  <39.998219, 33.928307, 21.628143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761631, 33.690434, 21.410330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599797, 0.126854, -0.790033,
		0.538893, -0.793892, 0.281656,
		-0.591471, -0.594679, -0.544535,
		39.584190, 33.512032, 21.246969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635704, 33.805569, 21.860678>,  <39.998219, 33.928307, 21.628143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635704, 33.805569, 21.860678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.953743, 34.039471, 21.925026>,  <41.144566, 34.179813, 21.963634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.953743, 34.039471, 21.925026>,  <40.635704, 33.805569, 21.860678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953743, 34.039471, 21.925026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064198, -0.344913, 0.936437,
		0.603075, -0.734230, -0.311780,
		0.795096, 0.584757, 0.160873,
		41.192272, 34.214897, 21.973288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142250, 33.438515, 22.243799>,  <40.635704, 33.805569, 21.860678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.142250, 33.438515, 22.243799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.237476, 33.821877, 22.306787>,  <41.294613, 34.051891, 22.344580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.237476, 33.821877, 22.306787>,  <41.142250, 33.438515, 22.243799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237476, 33.821877, 22.306787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050553, -0.149683, 0.987441,
		0.969934, -0.243032, 0.012816,
		0.238061, 0.958400, 0.157469,
		41.308895, 34.109398, 22.354029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.731915, 33.456745, 22.831940>,  <41.142250, 33.438515, 22.243799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.731915, 33.456745, 22.831940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.576214, 33.825188, 22.829527>,  <41.482792, 34.046253, 22.828079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.576214, 33.825188, 22.829527>,  <41.731915, 33.456745, 22.831940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576214, 33.825188, 22.829527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167065, -0.064157, 0.983857,
		0.905853, 0.383979, 0.178858,
		-0.389255, 0.921110, -0.006032,
		41.459438, 34.101521, 22.827717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052605, 33.841343, 23.285299>,  <41.731915, 33.456745, 22.831940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052605, 33.841343, 23.285299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.721317, 34.062778, 23.250439>,  <41.522545, 34.195641, 23.229523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.721317, 34.062778, 23.250439>,  <42.052605, 33.841343, 23.285299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721317, 34.062778, 23.250439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095917, 0.013194, 0.995302,
		0.552137, 0.832686, 0.042171,
		-0.828218, 0.553588, -0.087153,
		41.472851, 34.228855, 23.224293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.050644, 34.274956, 23.838148>,  <42.052605, 33.841343, 23.285299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.050644, 34.274956, 23.838148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.666126, 34.289474, 23.728903>,  <41.435413, 34.298187, 23.663355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.666126, 34.289474, 23.728903>,  <42.050644, 34.274956, 23.838148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.666126, 34.289474, 23.728903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265888, 0.137543, 0.954141,
		0.072201, 0.989830, -0.122568,
		-0.961296, 0.036301, -0.273114,
		41.377739, 34.300365, 23.646969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829754, 34.827991, 24.195101>,  <42.050644, 34.274956, 23.838148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.829754, 34.827991, 24.195101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.499149, 34.629147, 24.089457>,  <41.300785, 34.509838, 24.026070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.499149, 34.629147, 24.089457>,  <41.829754, 34.827991, 24.195101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.499149, 34.629147, 24.089457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355444, 0.097061, 0.929644,
		-0.436506, 0.862239, -0.256918,
		-0.826512, -0.497115, -0.264110,
		41.251194, 34.480011, 24.010223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.236126, 35.229614, 24.451941>,  <41.829754, 34.827991, 24.195101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.236126, 35.229614, 24.451941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.088772, 34.859871, 24.412224>,  <41.000359, 34.638023, 24.388393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.088772, 34.859871, 24.412224>,  <41.236126, 35.229614, 24.451941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088772, 34.859871, 24.412224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352846, 0.040202, 0.934817,
		-0.860113, 0.379404, -0.340966,
		-0.368381, -0.924357, -0.099292,
		40.978256, 34.582565, 24.382437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713299, 35.352703, 24.850039>,  <41.236126, 35.229614, 24.451941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713299, 35.352703, 24.850039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.735355, 34.957134, 24.794910>,  <40.748589, 34.719791, 24.761833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.735355, 34.957134, 24.794910>,  <40.713299, 35.352703, 24.850039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735355, 34.957134, 24.794910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501951, -0.146773, 0.852351,
		-0.863137, 0.022182, -0.504483,
		0.055138, -0.988921, -0.137819,
		40.751896, 34.660458, 24.753565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006817, 35.030766, 24.760061>,  <40.713299, 35.352703, 24.850039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006817, 35.030766, 24.760061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.283390, 34.777443, 24.899109>,  <40.449333, 34.625450, 24.982536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.283390, 34.777443, 24.899109>,  <40.006817, 35.030766, 24.760061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283390, 34.777443, 24.899109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474844, -0.035765, 0.879343,
		-0.544461, -0.773074, -0.325451,
		0.691437, -0.633307, 0.347617,
		40.490822, 34.587452, 25.003393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668930, 34.493801, 25.120510>,  <40.006817, 35.030766, 24.760061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668930, 34.493801, 25.120510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.038334, 34.480755, 25.273384>,  <40.259975, 34.472927, 25.365108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.038334, 34.480755, 25.273384>,  <39.668930, 34.493801, 25.120510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038334, 34.480755, 25.273384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383327, -0.114281, 0.916515,
		0.013785, -0.992913, -0.118041,
		0.923510, -0.032614, 0.382186,
		40.315388, 34.470970, 25.388041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707851, 33.823597, 25.510530>,  <39.668930, 34.493801, 25.120510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707851, 33.823597, 25.510530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.007160, 34.050472, 25.648157>,  <40.186745, 34.186600, 25.730732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.007160, 34.050472, 25.648157>,  <39.707851, 33.823597, 25.510530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007160, 34.050472, 25.648157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334809, -0.124862, 0.933977,
		0.572705, -0.814065, 0.096471,
		0.748272, 0.567193, 0.344066,
		40.231644, 34.220631, 25.751377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993298, 33.381004, 26.035963>,  <39.707851, 33.823597, 25.510530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993298, 33.381004, 26.035963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.110126, 33.760452, 26.084656>,  <40.180225, 33.988121, 26.113871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.110126, 33.760452, 26.084656>,  <39.993298, 33.381004, 26.035963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110126, 33.760452, 26.084656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294451, -0.031908, 0.955134,
		0.909940, -0.314814, 0.270002,
		0.292074, 0.948617, 0.121732,
		40.197750, 34.045036, 26.121176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507565, 33.454300, 26.706654>,  <39.993298, 33.381004, 26.035963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507565, 33.454300, 26.706654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.371822, 33.821617, 26.625088>,  <40.290375, 34.042007, 26.576149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.371822, 33.821617, 26.625088>,  <40.507565, 33.454300, 26.706654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371822, 33.821617, 26.625088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314960, 0.093341, 0.944504,
		0.886361, 0.384749, 0.257549,
		-0.339357, 0.918289, -0.203915,
		40.270016, 34.097103, 26.563913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918209, 34.030346, 27.142250>,  <40.507565, 33.454300, 26.706654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918209, 34.030346, 27.142250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.559505, 34.155178, 27.016754>,  <40.344284, 34.230076, 26.941456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.559505, 34.155178, 27.016754>,  <40.918209, 34.030346, 27.142250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559505, 34.155178, 27.016754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250702, 0.225952, 0.941326,
		0.364659, 0.922796, -0.124386,
		-0.896757, 0.312079, -0.313742,
		40.290478, 34.248802, 26.922632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.384888, 38.593563, 23.993612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.227455, 38.275372, 23.809309>,  <41.132996, 38.084457, 23.698727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.227455, 38.275372, 23.809309>,  <41.384888, 38.593563, 23.993612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227455, 38.275372, 23.809309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761757, -0.001640, -0.647861,
		0.514607, -0.605973, 0.606611,
		-0.393581, -0.795483, -0.460760,
		41.109383, 38.036728, 23.671082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891003, 38.272942, 23.760420>,  <41.384888, 38.593563, 23.993612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.891003, 38.272942, 23.760420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.609684, 38.097675, 23.536495>,  <41.440891, 37.992516, 23.402140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.609684, 38.097675, 23.536495>,  <41.891003, 38.272942, 23.760420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609684, 38.097675, 23.536495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632330, -0.025717, -0.774272,
		0.324861, -0.898528, 0.295150,
		-0.703296, -0.438163, -0.559811,
		41.398697, 37.966225, 23.368551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089756, 37.574444, 23.423506>,  <41.891003, 38.272942, 23.760420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089756, 37.574444, 23.423506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.807064, 37.736816, 23.191730>,  <41.637447, 37.834240, 23.052666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.807064, 37.736816, 23.191730>,  <42.089756, 37.574444, 23.423506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.807064, 37.736816, 23.191730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646764, 0.038741, -0.761706,
		-0.286752, -0.913082, -0.289921,
		-0.706732, 0.405931, -0.579439,
		41.595043, 37.858597, 23.017899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.105446, 37.165226, 22.922504>,  <42.089756, 37.574444, 23.423506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.105446, 37.165226, 22.922504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.916302, 37.482895, 22.769821>,  <41.802814, 37.673496, 22.678211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.916302, 37.482895, 22.769821>,  <42.105446, 37.165226, 22.922504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916302, 37.482895, 22.769821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643176, 0.014989, -0.765572,
		-0.602271, -0.607513, -0.517878,
		-0.472857, 0.794168, -0.381710,
		41.774445, 37.721146, 22.655308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048828, 37.029121, 22.128756>,  <42.105446, 37.165226, 22.922504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048828, 37.029121, 22.128756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.982964, 37.423595, 22.136028>,  <41.943443, 37.660278, 22.140392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.982964, 37.423595, 22.136028>,  <42.048828, 37.029121, 22.128756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982964, 37.423595, 22.136028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664748, 0.124574, -0.736608,
		-0.728695, -0.109204, -0.676075,
		-0.164662, 0.986182, 0.018183,
		41.933563, 37.719452, 22.141483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874435, 37.277294, 21.383915>,  <42.048828, 37.029121, 22.128756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874435, 37.277294, 21.383915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.985077, 37.601807, 21.589949>,  <42.051460, 37.796513, 21.713570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.985077, 37.601807, 21.589949>,  <41.874435, 37.277294, 21.383915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.985077, 37.601807, 21.589949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523384, 0.322347, -0.788772,
		-0.805953, 0.487763, -0.335450,
		0.276603, 0.811282, 0.515084,
		42.068058, 37.845192, 21.744474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657322, 37.871120, 21.003159>,  <41.874435, 37.277294, 21.383915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.657322, 37.871120, 21.003159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.967350, 37.970856, 21.235401>,  <42.153366, 38.030697, 21.374746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.967350, 37.970856, 21.235401>,  <41.657322, 37.871120, 21.003159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.967350, 37.970856, 21.235401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450541, 0.426184, -0.784462,
		-0.443037, 0.869598, 0.217987,
		0.775069, 0.249334, 0.580604,
		42.199871, 38.045654, 21.409582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854908, 38.536900, 20.765327>,  <41.657322, 37.871120, 21.003159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854908, 38.536900, 20.765327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.198780, 38.457504, 20.953602>,  <42.405106, 38.409866, 21.066566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.198780, 38.457504, 20.953602>,  <41.854908, 38.536900, 20.765327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.198780, 38.457504, 20.953602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510811, 0.341271, -0.789054,
		-0.004010, 0.918768, 0.394777,
		0.859684, -0.198492, 0.470686,
		42.456684, 38.397957, 21.094807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.187313, 39.219551, 20.897743>,  <41.854908, 38.536900, 20.765327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.187313, 39.219551, 20.897743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.459488, 38.926449, 20.901346>,  <42.622791, 38.750587, 20.903507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.459488, 38.926449, 20.901346>,  <42.187313, 39.219551, 20.897743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.459488, 38.926449, 20.901346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408982, 0.369528, -0.834376,
		0.608062, 0.571423, 0.551123,
		0.680436, -0.732752, 0.009006,
		42.663620, 38.706623, 20.904047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.728733, 39.605190, 20.743952>,  <42.187313, 39.219551, 20.897743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.728733, 39.605190, 20.743952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.836533, 39.223415, 20.692698>,  <42.901211, 38.994350, 20.661945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.836533, 39.223415, 20.692698>,  <42.728733, 39.605190, 20.743952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.836533, 39.223415, 20.692698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562312, 0.263984, -0.783657,
		0.781777, 0.139142, 0.607835,
		0.269498, -0.954438, -0.128135,
		42.917381, 38.937084, 20.654257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.431744, 39.693340, 20.624086>,  <42.728733, 39.605190, 20.743952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.431744, 39.693340, 20.624086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.331589, 39.340252, 20.465038>,  <43.271496, 39.128399, 20.369610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.331589, 39.340252, 20.465038>,  <43.431744, 39.693340, 20.624086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.331589, 39.340252, 20.465038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531679, 0.217852, -0.818449,
		0.809087, -0.416338, 0.414778,
		-0.250391, -0.882725, -0.397619,
		43.256470, 39.075436, 20.345753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.052601, 39.544651, 20.182459>,  <43.431744, 39.693340, 20.624086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.052601, 39.544651, 20.182459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.747009, 39.323753, 20.048967>,  <43.563656, 39.191216, 19.968872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.747009, 39.323753, 20.048967>,  <44.052601, 39.544651, 20.182459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.747009, 39.323753, 20.048967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264446, 0.203802, -0.942620,
		0.588568, -0.808390, -0.009661,
		-0.763974, -0.552241, -0.333727,
		43.517818, 39.158081, 19.948849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.387074, 39.170570, 19.726173>,  <44.052601, 39.544651, 20.182459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.387074, 39.170570, 19.726173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.993984, 39.174900, 19.652260>,  <43.758133, 39.177498, 19.607912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.993984, 39.174900, 19.652260>,  <44.387074, 39.170570, 19.726173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.993984, 39.174900, 19.652260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185088, 0.046512, -0.981621,
		-0.002032, -0.998859, -0.047712,
		-0.982720, 0.010825, -0.184783,
		43.699169, 39.178146, 19.596825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.019745, 38.570965, 19.451622>,  <44.387074, 39.170570, 19.726173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.019745, 38.570965, 19.451622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.915092, 38.943161, 19.349058>,  <43.852303, 39.166477, 19.287519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.915092, 38.943161, 19.349058>,  <44.019745, 38.570965, 19.451622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.915092, 38.943161, 19.349058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134670, -0.227870, -0.964334,
		-0.955727, -0.286828, -0.065692,
		-0.261629, 0.930487, -0.256408,
		43.836605, 39.222305, 19.272135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.823933, 38.026409, 19.001467>,  <44.019745, 38.570965, 19.451622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.823933, 38.026409, 19.001467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.705212, 37.807453, 18.688477>,  <43.633980, 37.676079, 18.500683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.705212, 37.807453, 18.688477>,  <43.823933, 38.026409, 19.001467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.705212, 37.807453, 18.688477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522736, -0.592599, 0.612841,
		-0.799158, 0.590923, -0.110255,
		-0.296805, -0.547392, -0.782477,
		43.616169, 37.643234, 18.453733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.022667, 37.959991, 19.009743>,  <43.823933, 38.026409, 19.001467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.022667, 37.959991, 19.009743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.180969, 37.659447, 18.798521>,  <43.275951, 37.479122, 18.671789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.180969, 37.659447, 18.798521>,  <43.022667, 37.959991, 19.009743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.180969, 37.659447, 18.798521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603309, -0.646224, 0.467347,
		-0.692386, 0.133626, -0.709045,
		0.395753, -0.751358, -0.528055,
		43.299694, 37.434040, 18.640106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461727, 37.541607, 18.848238>,  <43.022667, 37.959991, 19.009743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461727, 37.541607, 18.848238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.779228, 37.300594, 18.815004>,  <42.969730, 37.155987, 18.795063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.779228, 37.300594, 18.815004>,  <42.461727, 37.541607, 18.848238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.779228, 37.300594, 18.815004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526077, -0.748662, 0.403420,
		-0.305277, -0.276508, -0.911235,
		0.793756, -0.602535, -0.083085,
		43.017357, 37.119835, 18.790079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247562, 36.854069, 18.596773>,  <42.461727, 37.541607, 18.848238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247562, 36.854069, 18.596773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.598419, 36.808445, 18.783367>,  <42.808933, 36.781071, 18.895323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.598419, 36.808445, 18.783367>,  <42.247562, 36.854069, 18.596773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.598419, 36.808445, 18.783367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398078, -0.716025, 0.573448,
		0.268611, -0.688695, -0.673460,
		0.877145, -0.114055, 0.466486,
		42.861561, 36.774227, 18.923313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.239895, 36.164467, 18.641323>,  <42.247562, 36.854069, 18.596773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.239895, 36.164467, 18.641323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.542915, 36.254318, 18.886484>,  <42.724728, 36.308231, 19.033581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.542915, 36.254318, 18.886484>,  <42.239895, 36.164467, 18.641323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.542915, 36.254318, 18.886484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287719, -0.727897, 0.622402,
		0.585942, -0.647848, -0.486791,
		0.757555, 0.224632, 0.612903,
		42.770184, 36.321709, 19.070354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.739666, 35.547428, 18.808876>,  <42.239895, 36.164467, 18.641323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.739666, 35.547428, 18.808876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.775932, 35.809925, 19.108507>,  <42.797691, 35.967422, 19.288286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.775932, 35.809925, 19.108507>,  <42.739666, 35.547428, 18.808876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.775932, 35.809925, 19.108507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195093, -0.725899, 0.659553,
		0.976585, -0.205942, 0.062212,
		0.090670, 0.656246, 0.749079,
		42.803135, 36.006798, 19.333231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.124744, 35.122227, 19.395597>,  <42.739666, 35.547428, 18.808876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.124744, 35.122227, 19.395597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.908062, 35.415897, 19.559322>,  <42.778053, 35.592098, 19.657557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.908062, 35.415897, 19.559322>,  <43.124744, 35.122227, 19.395597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.908062, 35.415897, 19.559322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319819, -0.630346, 0.707375,
		0.777346, 0.252286, 0.576268,
		-0.541709, 0.734177, 0.409311,
		42.745548, 35.636150, 19.682116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.222057, 35.024956, 20.168312>,  <43.124744, 35.122227, 19.395597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.222057, 35.024956, 20.168312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.924213, 35.287415, 20.119267>,  <42.745506, 35.444889, 20.089840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.924213, 35.287415, 20.119267>,  <43.222057, 35.024956, 20.168312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924213, 35.287415, 20.119267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464114, -0.376894, 0.801592,
		0.479749, 0.653776, 0.585164,
		-0.744607, 0.656146, -0.122612,
		42.700832, 35.484257, 20.082483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.139359, 35.297855, 20.837574>,  <43.222057, 35.024956, 20.168312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.139359, 35.297855, 20.837574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.814735, 35.378235, 20.618122>,  <42.619961, 35.426464, 20.486450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.814735, 35.378235, 20.618122>,  <43.139359, 35.297855, 20.837574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.814735, 35.378235, 20.618122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578435, -0.408742, 0.705934,
		-0.082392, 0.890253, 0.447953,
		-0.811557, 0.200949, -0.548630,
		42.571270, 35.438519, 20.453533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725574, 35.671200, 21.233231>,  <43.139359, 35.297855, 20.837574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725574, 35.671200, 21.233231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.486866, 35.507034, 20.957426>,  <42.343639, 35.408535, 20.791945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.486866, 35.507034, 20.957426>,  <42.725574, 35.671200, 21.233231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.486866, 35.507034, 20.957426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474729, -0.512190, 0.715747,
		-0.646913, 0.754468, 0.110825,
		-0.596772, -0.410414, -0.689510,
		42.307835, 35.383911, 20.750572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897259, 35.778091, 21.474674>,  <42.725574, 35.671200, 21.233231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.897259, 35.778091, 21.474674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.911533, 35.519085, 21.170189>,  <41.920097, 35.363682, 20.987497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.911533, 35.519085, 21.170189>,  <41.897259, 35.778091, 21.474674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911533, 35.519085, 21.170189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586900, -0.630089, 0.508465,
		-0.808872, 0.428609, -0.402516,
		0.035688, -0.647520, -0.761212,
		41.922241, 35.324829, 20.941826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.228630, 35.525734, 21.479881>,  <41.897259, 35.778091, 21.474674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.228630, 35.525734, 21.479881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.462715, 35.259808, 21.294172>,  <41.603165, 35.100250, 21.182747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.462715, 35.259808, 21.294172>,  <41.228630, 35.525734, 21.479881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462715, 35.259808, 21.294172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469028, -0.744577, 0.474993,
		-0.661468, -0.060216, -0.747552,
		0.585212, -0.664815, -0.464271,
		41.638279, 35.060364, 21.154890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788593, 34.998554, 21.252039>,  <41.228630, 35.525734, 21.479881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788593, 34.998554, 21.252039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.148426, 34.824051, 21.243734>,  <41.364326, 34.719349, 21.238752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.148426, 34.824051, 21.243734>,  <40.788593, 34.998554, 21.252039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148426, 34.824051, 21.243734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286502, -0.625317, 0.725876,
		-0.329652, -0.647036, -0.687513,
		0.899581, -0.436260, -0.020760,
		41.418301, 34.693172, 21.237507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614426, 34.257595, 21.300020>,  <40.788593, 34.998554, 21.252039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614426, 34.257595, 21.300020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.976925, 34.355553, 21.437851>,  <41.194424, 34.414326, 21.520550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.976925, 34.355553, 21.437851>,  <40.614426, 34.257595, 21.300020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976925, 34.355553, 21.437851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278753, -0.266606, 0.922614,
		0.317810, -0.932174, -0.173348,
		0.906253, 0.244894, 0.344577,
		41.248802, 34.429020, 21.541224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516354, 33.482639, 21.099081>,  <40.614426, 34.257595, 21.300020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516354, 33.482639, 21.099081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.139942, 33.476955, 20.963871>,  <39.914097, 33.473545, 20.882746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.139942, 33.476955, 20.963871>,  <40.516354, 33.482639, 21.099081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139942, 33.476955, 20.963871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324336, 0.246433, -0.913278,
		0.096278, -0.969056, -0.227292,
		-0.941030, -0.014210, -0.338025,
		39.857632, 33.472691, 20.862463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637878, 33.281754, 20.474434>,  <40.516354, 33.482639, 21.099081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637878, 33.281754, 20.474434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.269707, 33.437157, 20.457088>,  <40.048805, 33.530399, 20.446680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.269707, 33.437157, 20.457088>,  <40.637878, 33.281754, 20.474434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269707, 33.437157, 20.457088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120860, 0.177313, -0.976705,
		-0.371766, -0.904225, -0.210158,
		-0.920425, 0.388506, -0.043366,
		39.993580, 33.553707, 20.444078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326427, 32.961666, 19.881287>,  <40.637878, 33.281754, 20.474434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326427, 32.961666, 19.881287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.112198, 33.294228, 19.940535>,  <39.983662, 33.493763, 19.976084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.112198, 33.294228, 19.940535>,  <40.326427, 32.961666, 19.881287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112198, 33.294228, 19.940535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105471, 0.239875, -0.965057,
		-0.837879, -0.501233, -0.216158,
		-0.535570, 0.831400, 0.148121,
		39.951527, 33.543648, 19.984970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970692, 32.890617, 19.354094>,  <40.326427, 32.961666, 19.881287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970692, 32.890617, 19.354094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.948967, 33.266273, 19.489782>,  <39.935932, 33.491665, 19.571196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.948967, 33.266273, 19.489782>,  <39.970692, 32.890617, 19.354094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948967, 33.266273, 19.489782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235564, 0.342186, -0.909625,
		-0.970340, 0.030501, -0.239813,
		-0.054316, 0.939137, 0.339222,
		39.932671, 33.548016, 19.591549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421467, 33.219276, 19.003387>,  <39.970692, 32.890617, 19.354094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421467, 33.219276, 19.003387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.679714, 33.493996, 19.136948>,  <39.834663, 33.658829, 19.217085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.679714, 33.493996, 19.136948>,  <39.421467, 33.219276, 19.003387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679714, 33.493996, 19.136948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150683, 0.314073, -0.937365,
		-0.748649, 0.655490, 0.099282,
		0.645615, 0.686797, 0.333902,
		39.873398, 33.700035, 19.237118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239922, 33.802433, 18.560783>,  <39.421467, 33.219276, 19.003387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239922, 33.802433, 18.560783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.608784, 33.833244, 18.712412>,  <39.830101, 33.851730, 18.803389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.608784, 33.833244, 18.712412>,  <39.239922, 33.802433, 18.560783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608784, 33.833244, 18.712412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336564, 0.323259, -0.884437,
		-0.190660, 0.943171, 0.272172,
		0.922157, 0.077024, 0.379070,
		39.885429, 33.856350, 18.826134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435581, 34.495205, 18.334082>,  <39.239922, 33.802433, 18.560783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435581, 34.495205, 18.334082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.773647, 34.316578, 18.451572>,  <39.976486, 34.209404, 18.522066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.773647, 34.316578, 18.451572>,  <39.435581, 34.495205, 18.334082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773647, 34.316578, 18.451572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457747, 0.320977, -0.829121,
		0.275977, 0.835197, 0.475692,
		0.845165, -0.446565, 0.293726,
		40.027199, 34.182610, 18.539690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112579, 35.148598, 18.599722>,  <39.435581, 34.495205, 18.334082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112579, 35.148598, 18.599722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.826294, 35.231659, 18.333000>,  <38.654522, 35.281494, 18.172966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.826294, 35.231659, 18.333000>,  <39.112579, 35.148598, 18.599722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826294, 35.231659, 18.333000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683351, -0.405290, 0.607265,
		-0.144150, 0.890293, 0.431971,
		-0.715718, 0.207650, -0.666806,
		38.611580, 35.293953, 18.132959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536633, 35.532730, 18.964426>,  <39.112579, 35.148598, 18.599722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536633, 35.532730, 18.964426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.357960, 35.354797, 18.653915>,  <38.250755, 35.248039, 18.467609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.357960, 35.354797, 18.653915>,  <38.536633, 35.532730, 18.964426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357960, 35.354797, 18.653915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651738, -0.432645, 0.622941,
		-0.612953, 0.784185, -0.096655,
		-0.446684, -0.444827, -0.776274,
		38.223953, 35.221348, 18.421034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870682, 35.596359, 19.069958>,  <38.536633, 35.532730, 18.964426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870682, 35.596359, 19.069958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.858639, 35.310585, 18.790335>,  <37.851414, 35.139122, 18.622561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.858639, 35.310585, 18.790335>,  <37.870682, 35.596359, 19.069958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858639, 35.310585, 18.790335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802107, -0.400039, 0.443387,
		-0.596421, 0.574069, -0.561006,
		-0.030110, -0.714432, -0.699056,
		37.849606, 35.096256, 18.580618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180595, 35.504440, 19.015017>,  <37.870682, 35.596359, 19.069958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180595, 35.504440, 19.015017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.339054, 35.182186, 18.838829>,  <37.434132, 34.988834, 18.733116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.339054, 35.182186, 18.838829>,  <37.180595, 35.504440, 19.015017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339054, 35.182186, 18.838829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714552, -0.571760, 0.403121,
		-0.576625, 0.155068, -0.802158,
		0.396131, -0.805632, -0.440495,
		37.457897, 34.940495, 18.706688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488495, 35.063778, 18.835613>,  <37.180595, 35.504440, 19.015017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488495, 35.063778, 18.835613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.808708, 34.825485, 18.809542>,  <37.000835, 34.682510, 18.793900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.808708, 34.825485, 18.809542>,  <36.488495, 35.063778, 18.835613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808708, 34.825485, 18.809542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531890, -0.756395, 0.380734,
		-0.276117, -0.270122, -0.922384,
		0.800533, -0.595735, -0.065178,
		37.048866, 34.646767, 18.789988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247063, 34.403214, 18.547653>,  <36.488495, 35.063778, 18.835613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247063, 34.403214, 18.547653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.590164, 34.339878, 18.743280>,  <36.796024, 34.301876, 18.860657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.590164, 34.339878, 18.743280>,  <36.247063, 34.403214, 18.547653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590164, 34.339878, 18.743280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451993, -0.685484, 0.570801,
		0.244869, -0.710662, -0.659544,
		0.857754, -0.158338, 0.489069,
		36.847488, 34.292377, 18.890001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232826, 33.602730, 18.721718>,  <36.247063, 34.403214, 18.547653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232826, 33.602730, 18.721718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.503593, 33.788883, 18.949823>,  <36.666054, 33.900574, 19.086687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.503593, 33.788883, 18.949823>,  <36.232826, 33.602730, 18.721718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503593, 33.788883, 18.949823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385924, -0.435325, 0.813360,
		0.626774, -0.770657, -0.115078,
		0.676918, 0.465381, 0.570265,
		36.706669, 33.928497, 19.120903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.718830, 39.126495, 18.296137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.957695, 38.920898, 18.542458>,  <41.101013, 38.797539, 18.690250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.957695, 38.920898, 18.542458>,  <40.718830, 39.126495, 18.296137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957695, 38.920898, 18.542458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781628, -0.200437, 0.590663,
		-0.180166, -0.834049, -0.521443,
		0.597158, -0.513992, 0.615804,
		41.136841, 38.766701, 18.727198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482193, 38.430351, 18.418472>,  <40.718830, 39.126495, 18.296137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482193, 38.430351, 18.418472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.697830, 38.523411, 18.742264>,  <40.827213, 38.579247, 18.936539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.697830, 38.523411, 18.742264>,  <40.482193, 38.430351, 18.418472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697830, 38.523411, 18.742264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743245, -0.320687, 0.587152,
		0.396187, -0.918170, 0.000033,
		0.539094, 0.232647, 0.809477,
		40.859558, 38.593204, 18.985107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505215, 37.769325, 18.899126>,  <40.482193, 38.430351, 18.418472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505215, 37.769325, 18.899126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.588463, 38.084328, 19.131168>,  <40.638412, 38.273331, 19.270393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.588463, 38.084328, 19.131168>,  <40.505215, 37.769325, 18.899126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588463, 38.084328, 19.131168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595192, -0.368677, 0.714019,
		0.776165, -0.493875, 0.391988,
		0.208119, 0.787505, 0.580105,
		40.650898, 38.320580, 19.305201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582554, 37.500290, 19.615667>,  <40.505215, 37.769325, 18.899126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582554, 37.500290, 19.615667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.534615, 37.894279, 19.665398>,  <40.505852, 38.130672, 19.695236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.534615, 37.894279, 19.665398>,  <40.582554, 37.500290, 19.615667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534615, 37.894279, 19.665398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551810, -0.170193, 0.816419,
		0.825314, 0.029240, 0.563917,
		-0.119847, 0.984977, 0.124328,
		40.498661, 38.189774, 19.702696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626022, 37.623138, 20.394489>,  <40.582554, 37.500290, 19.615667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626022, 37.623138, 20.394489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.439156, 37.946766, 20.251846>,  <40.327038, 38.140942, 20.166260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.439156, 37.946766, 20.251846>,  <40.626022, 37.623138, 20.394489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439156, 37.946766, 20.251846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616800, -0.009238, 0.787066,
		0.633494, 0.587645, 0.503347,
		-0.467165, 0.809066, -0.356607,
		40.299007, 38.189487, 20.144863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755951, 38.202168, 20.866497>,  <40.626022, 37.623138, 20.394489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755951, 38.202168, 20.866497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.415817, 38.285206, 20.673069>,  <40.211739, 38.335030, 20.557013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.415817, 38.285206, 20.673069>,  <40.755951, 38.202168, 20.866497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415817, 38.285206, 20.673069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477629, 0.081303, 0.874792,
		0.220918, 0.974830, 0.030019,
		-0.850333, 0.207595, -0.483569,
		40.160717, 38.347485, 20.527998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425545, 38.695198, 21.228495>,  <40.755951, 38.202168, 20.866497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425545, 38.695198, 21.228495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.122940, 38.560436, 21.004284>,  <39.941380, 38.479580, 20.869759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.122940, 38.560436, 21.004284>,  <40.425545, 38.695198, 21.228495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122940, 38.560436, 21.004284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611790, 0.061707, 0.788610,
		-0.231099, 0.939514, -0.252797,
		-0.756509, -0.336906, -0.560525,
		39.895988, 38.459366, 20.836126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914207, 38.914082, 21.573158>,  <40.425545, 38.695198, 21.228495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914207, 38.914082, 21.573158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.699944, 38.686817, 21.323275>,  <39.571384, 38.550457, 21.173346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.699944, 38.686817, 21.323275>,  <39.914207, 38.914082, 21.573158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699944, 38.686817, 21.323275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825093, 0.194740, 0.530375,
		-0.179683, 0.799544, -0.573099,
		-0.535664, -0.568159, -0.624707,
		39.539246, 38.516369, 21.135862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249084, 39.242580, 21.394114>,  <39.914207, 38.914082, 21.573158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249084, 39.242580, 21.394114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.196854, 38.848301, 21.351519>,  <39.165516, 38.611732, 21.325962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.196854, 38.848301, 21.351519>,  <39.249084, 39.242580, 21.394114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196854, 38.848301, 21.351519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880600, 0.065960, 0.469247,
		-0.455515, 0.155044, -0.876623,
		-0.130577, -0.985703, -0.106486,
		39.157681, 38.552589, 21.319572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579964, 39.223583, 21.071480>,  <39.249084, 39.242580, 21.394114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579964, 39.223583, 21.071480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.667915, 38.873447, 21.243725>,  <38.720684, 38.663364, 21.347073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.667915, 38.873447, 21.243725>,  <38.579964, 39.223583, 21.071480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667915, 38.873447, 21.243725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912697, -0.028735, 0.407625,
		-0.344439, -0.482645, -0.805242,
		0.219877, -0.875344, 0.430612,
		38.733879, 38.610844, 21.372908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988255, 38.927471, 21.046131>,  <38.579964, 39.223583, 21.071480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988255, 38.927471, 21.046131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.205822, 38.741329, 21.325445>,  <38.336361, 38.629642, 21.493032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.205822, 38.741329, 21.325445>,  <37.988255, 38.927471, 21.046131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205822, 38.741329, 21.325445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785965, 0.008993, 0.618205,
		-0.293966, -0.885077, -0.360863,
		0.543914, -0.465358, 0.698284,
		38.368996, 38.601723, 21.534931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488857, 38.415791, 21.352446>,  <37.988255, 38.927471, 21.046131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488857, 38.415791, 21.352446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.780975, 38.471165, 21.620029>,  <37.956245, 38.504391, 21.780579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.780975, 38.471165, 21.620029>,  <37.488857, 38.415791, 21.352446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780975, 38.471165, 21.620029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669430, -0.050115, 0.741182,
		0.136132, -0.989102, 0.056075,
		0.730295, 0.138437, 0.668958,
		38.000065, 38.512695, 21.820717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653103, 37.733952, 21.087568>,  <37.488857, 38.415791, 21.352446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653103, 37.733952, 21.087568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.387287, 37.556488, 20.847052>,  <37.227798, 37.450008, 20.702742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.387287, 37.556488, 20.847052>,  <37.653103, 37.733952, 21.087568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387287, 37.556488, 20.847052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523305, 0.298097, -0.798304,
		0.533419, -0.845164, 0.034072,
		-0.664541, -0.443661, -0.601290,
		37.187923, 37.423389, 20.666664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050961, 37.329163, 20.697086>,  <37.653103, 37.733952, 21.087568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050961, 37.329163, 20.697086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.708878, 37.374844, 20.494867>,  <37.503628, 37.402252, 20.373535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.708878, 37.374844, 20.494867>,  <38.050961, 37.329163, 20.697086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708878, 37.374844, 20.494867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517462, 0.133191, -0.845277,
		-0.029194, -0.984489, -0.172999,
		-0.855208, 0.114198, -0.505547,
		37.452316, 37.409103, 20.343203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060749, 36.886444, 20.162720>,  <38.050961, 37.329163, 20.697086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060749, 36.886444, 20.162720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.811954, 37.183224, 20.062603>,  <37.662678, 37.361290, 20.002533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.811954, 37.183224, 20.062603>,  <38.060749, 36.886444, 20.162720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811954, 37.183224, 20.062603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627908, 0.281633, -0.725544,
		-0.467825, -0.608440, -0.641047,
		-0.621990, 0.741946, -0.250289,
		37.625359, 37.405807, 19.987516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082726, 36.800983, 19.430429>,  <38.060749, 36.886444, 20.162720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082726, 36.800983, 19.430429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.871437, 37.139088, 19.462734>,  <37.744663, 37.341949, 19.482117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.871437, 37.139088, 19.462734>,  <38.082726, 36.800983, 19.430429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871437, 37.139088, 19.462734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237183, 0.238207, -0.941808,
		-0.815309, -0.478325, -0.326307,
		-0.528219, 0.845259, 0.080762,
		37.712971, 37.392666, 19.486963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729301, 36.939430, 18.740194>,  <38.082726, 36.800983, 19.430429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729301, 36.939430, 18.740194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.729218, 37.288612, 18.935316>,  <37.729168, 37.498119, 19.052389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.729218, 37.288612, 18.935316>,  <37.729301, 36.939430, 18.740194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729218, 37.288612, 18.935316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045188, 0.487299, -0.872065,
		-0.998978, -0.022222, 0.039347,
		-0.000206, 0.872952, 0.487806,
		37.729156, 37.550499, 19.081657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317230, 37.382465, 18.385311>,  <37.729301, 36.939430, 18.740194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317230, 37.382465, 18.385311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.491001, 37.649300, 18.627392>,  <37.595264, 37.809399, 18.772640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.491001, 37.649300, 18.627392>,  <37.317230, 37.382465, 18.385311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491001, 37.649300, 18.627392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040668, 0.685762, -0.726689,
		-0.899787, 0.291083, 0.325045,
		0.434430, 0.667084, 0.605202,
		37.621330, 37.849426, 18.808952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904705, 37.959435, 18.335142>,  <37.317230, 37.382465, 18.385311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904705, 37.959435, 18.335142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.269482, 38.080235, 18.446251>,  <37.488346, 38.152714, 18.512917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.269482, 38.080235, 18.446251>,  <36.904705, 37.959435, 18.335142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269482, 38.080235, 18.446251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039060, 0.610000, -0.791438,
		-0.408456, 0.732595, 0.544488,
		0.911942, 0.302000, 0.277774,
		37.543064, 38.170834, 18.529583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941059, 38.621841, 18.286163>,  <36.904705, 37.959435, 18.335142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941059, 38.621841, 18.286163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.331108, 38.538486, 18.255955>,  <37.565140, 38.488472, 18.237829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.331108, 38.538486, 18.255955>,  <36.941059, 38.621841, 18.286163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331108, 38.538486, 18.255955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058523, 0.570689, -0.819078,
		0.213789, 0.794284, 0.568689,
		0.975125, -0.208392, -0.075523,
		37.623646, 38.475967, 18.233297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388893, 39.300507, 18.082901>,  <36.941059, 38.621841, 18.286163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388893, 39.300507, 18.082901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.641479, 38.997021, 18.018900>,  <37.793030, 38.814930, 17.980499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.641479, 38.997021, 18.018900>,  <37.388893, 39.300507, 18.082901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641479, 38.997021, 18.018900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251945, 0.395912, -0.883050,
		0.733332, 0.517304, 0.441159,
		0.631465, -0.758716, -0.160003,
		37.830917, 38.769405, 17.970900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988659, 39.628960, 17.827002>,  <37.388893, 39.300507, 18.082901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988659, 39.628960, 17.827002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.004051, 39.250977, 17.697035>,  <38.013287, 39.024185, 17.619055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.004051, 39.250977, 17.697035>,  <37.988659, 39.628960, 17.827002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004051, 39.250977, 17.697035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413318, 0.311090, -0.855798,
		0.909773, -0.101366, 0.402538,
		0.038476, -0.944959, -0.324918,
		38.015594, 38.967487, 17.599560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605442, 39.532261, 17.361252>,  <37.988659, 39.628960, 17.827002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605442, 39.532261, 17.361252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.324738, 39.258507, 17.282108>,  <38.156315, 39.094254, 17.234623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.324738, 39.258507, 17.282108>,  <38.605442, 39.532261, 17.361252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324738, 39.258507, 17.282108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126248, 0.153867, -0.979993,
		0.701137, -0.712700, -0.021575,
		-0.701761, -0.684385, -0.197859,
		38.114208, 39.053192, 17.222752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004475, 39.228111, 16.948006>,  <38.605442, 39.532261, 17.361252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004475, 39.228111, 16.948006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.626934, 39.117023, 16.876434>,  <38.400410, 39.050373, 16.833490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.626934, 39.117023, 16.876434>,  <39.004475, 39.228111, 16.948006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626934, 39.117023, 16.876434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148529, 0.127066, -0.980711,
		0.295096, -0.952222, -0.078682,
		-0.943852, -0.277717, -0.178930,
		38.343777, 39.033710, 16.822756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139496, 38.748127, 16.496758>,  <39.004475, 39.228111, 16.948006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139496, 38.748127, 16.496758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.754150, 38.838177, 16.438463>,  <38.522942, 38.892208, 16.403486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.754150, 38.838177, 16.438463>,  <39.139496, 38.748127, 16.496758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754150, 38.838177, 16.438463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168556, 0.085605, -0.981968,
		-0.208594, -0.970561, -0.120416,
		-0.963367, 0.225129, -0.145737,
		38.465141, 38.905716, 16.394741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637730, 38.208576, 16.750423>,  <39.139496, 38.748127, 16.496758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637730, 38.208576, 16.750423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.688984, 37.927761, 16.470217>,  <39.719738, 37.759274, 16.302094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.688984, 37.927761, 16.470217>,  <39.637730, 38.208576, 16.750423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688984, 37.927761, 16.470217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558972, -0.634584, 0.533716,
		-0.819226, 0.323179, -0.473734,
		0.128138, -0.702038, -0.700516,
		39.727425, 37.717148, 16.260061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025101, 37.844696, 16.616093>,  <39.637730, 38.208576, 16.750423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025101, 37.844696, 16.616093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.281658, 37.566357, 16.486843>,  <39.435593, 37.399353, 16.409294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.281658, 37.566357, 16.486843>,  <39.025101, 37.844696, 16.616093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281658, 37.566357, 16.486843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564721, -0.713282, 0.415114,
		-0.519334, -0.083777, -0.850455,
		0.641390, -0.695852, -0.323121,
		39.474075, 37.357601, 16.389906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586372, 37.374447, 16.387403>,  <39.025101, 37.844696, 16.616093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586372, 37.374447, 16.387403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.929867, 37.171944, 16.419079>,  <39.135963, 37.050442, 16.438084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.929867, 37.171944, 16.419079>,  <38.586372, 37.374447, 16.387403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929867, 37.171944, 16.419079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506489, -0.815178, 0.280986,
		-0.077699, -0.281402, -0.956439,
		0.858738, -0.506259, 0.079188,
		39.187489, 37.020065, 16.442835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379356, 36.746025, 16.265221>,  <38.586372, 37.374447, 16.387403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379356, 36.746025, 16.265221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.712887, 36.691765, 16.479263>,  <38.913006, 36.659206, 16.607689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.712887, 36.691765, 16.479263>,  <38.379356, 36.746025, 16.265221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712887, 36.691765, 16.479263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400408, -0.815908, 0.417094,
		0.380017, -0.562043, -0.734639,
		0.833823, -0.135653, 0.535106,
		38.963032, 36.651070, 16.639795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407398, 36.037937, 16.306427>,  <38.379356, 36.746025, 16.265221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407398, 36.037937, 16.306427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.708202, 36.120102, 16.556959>,  <38.888683, 36.169399, 16.707279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.708202, 36.120102, 16.556959>,  <38.407398, 36.037937, 16.306427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708202, 36.120102, 16.556959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200745, -0.833698, 0.514441,
		0.627842, -0.512597, -0.585713,
		0.752008, 0.205409, 0.626332,
		38.933804, 36.181725, 16.744858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893253, 35.349842, 16.537428>,  <38.407398, 36.037937, 16.306427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893253, 35.349842, 16.537428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.872482, 35.641991, 16.809856>,  <38.860020, 35.817280, 16.973314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.872482, 35.641991, 16.809856>,  <38.893253, 35.349842, 16.537428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872482, 35.641991, 16.809856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316443, -0.658885, 0.682448,
		0.947189, -0.180080, 0.265338,
		-0.051932, 0.730372, 0.681073,
		38.856903, 35.861103, 17.014179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180511, 34.997444, 17.144308>,  <38.893253, 35.349842, 16.537428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180511, 34.997444, 17.144308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.019806, 35.330784, 17.296156>,  <38.923382, 35.530788, 17.387264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.019806, 35.330784, 17.296156>,  <39.180511, 34.997444, 17.144308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019806, 35.330784, 17.296156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140843, -0.465848, 0.873584,
		0.904849, 0.297504, 0.304531,
		-0.401760, 0.833353, 0.379621,
		38.899277, 35.580791, 17.410042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433292, 35.081856, 17.852835>,  <39.180511, 34.997444, 17.144308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433292, 35.081856, 17.852835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.091156, 35.285175, 17.812799>,  <38.885872, 35.407166, 17.788778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.091156, 35.285175, 17.812799>,  <39.433292, 35.081856, 17.852835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091156, 35.285175, 17.812799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364784, -0.453745, 0.813049,
		0.367855, 0.731949, 0.573528,
		-0.855345, 0.508297, -0.100090,
		38.834553, 35.437664, 17.782772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922710, 35.134315, 18.386618>,  <39.433292, 35.081856, 17.852835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922710, 35.134315, 18.386618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.115238, 34.787037, 18.338354>,  <40.230755, 34.578671, 18.309397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.115238, 34.787037, 18.338354>,  <39.922710, 35.134315, 18.386618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115238, 34.787037, 18.338354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539930, 0.402096, -0.739455,
		0.690512, 0.290768, 0.662305,
		0.481320, -0.868201, -0.120658,
		40.259636, 34.526577, 18.302156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655922, 35.296505, 18.379400>,  <39.922710, 35.134315, 18.386618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655922, 35.296505, 18.379400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.647846, 34.921276, 18.241060>,  <40.643002, 34.696140, 18.158056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.647846, 34.921276, 18.241060>,  <40.655922, 35.296505, 18.379400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647846, 34.921276, 18.241060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701942, 0.233028, -0.673035,
		0.711948, -0.256358, 0.653766,
		-0.020193, -0.938072, -0.345852,
		40.641788, 34.639854, 18.137304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405994, 35.212654, 18.205761>,  <40.655922, 35.296505, 18.379400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.405994, 35.212654, 18.205761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.159630, 34.966270, 18.009295>,  <41.011810, 34.818439, 17.891415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.159630, 34.966270, 18.009295>,  <41.405994, 35.212654, 18.205761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159630, 34.966270, 18.009295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524223, 0.144959, -0.839152,
		0.588083, -0.774326, 0.233618,
		-0.615913, -0.615959, -0.491168,
		40.974857, 34.781483, 17.861944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.818542, 34.846279, 17.784578>,  <41.405994, 35.212654, 18.205761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.818542, 34.846279, 17.784578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.464973, 34.781914, 17.608948>,  <41.252831, 34.743294, 17.503569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.464973, 34.781914, 17.608948>,  <41.818542, 34.846279, 17.784578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464973, 34.781914, 17.608948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423077, 0.124819, -0.897455,
		0.199219, -0.979044, -0.042251,
		-0.883922, -0.160914, -0.439077,
		41.199799, 34.733639, 17.477224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955185, 34.425190, 17.218082>,  <41.818542, 34.846279, 17.784578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.955185, 34.425190, 17.218082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.605789, 34.588470, 17.111954>,  <41.396152, 34.686440, 17.048277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.605789, 34.588470, 17.111954>,  <41.955185, 34.425190, 17.218082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.605789, 34.588470, 17.111954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342826, 0.128771, -0.930531,
		-0.345677, -0.903765, -0.252421,
		-0.873486, 0.408200, -0.265321,
		41.343742, 34.710930, 17.032358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920559, 34.413723, 16.516203>,  <41.955185, 34.425190, 17.218082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920559, 34.413723, 16.516203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.631851, 34.685108, 16.570963>,  <41.458626, 34.847939, 16.603819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.631851, 34.685108, 16.570963>,  <41.920559, 34.413723, 16.516203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631851, 34.685108, 16.570963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255994, 0.445446, -0.857931,
		-0.643057, -0.584178, -0.495190,
		-0.721765, 0.678464, 0.136901,
		41.415321, 34.888649, 16.612034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642883, 34.618423, 15.844591>,  <41.920559, 34.413723, 16.516203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642883, 34.618423, 15.844591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.522137, 34.918617, 16.079758>,  <41.449688, 35.098736, 16.220858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.522137, 34.918617, 16.079758>,  <41.642883, 34.618423, 15.844591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.522137, 34.918617, 16.079758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198399, 0.652636, -0.731235,
		-0.932479, -0.104091, -0.345903,
		-0.301863, 0.750488, 0.587917,
		41.431580, 35.143764, 16.256132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075775, 34.879944, 15.472575>,  <41.642883, 34.618423, 15.844591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075775, 34.879944, 15.472575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.256989, 35.149826, 15.705654>,  <41.365715, 35.311756, 15.845502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.256989, 35.149826, 15.705654>,  <41.075775, 34.879944, 15.472575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256989, 35.149826, 15.705654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108925, 0.606830, -0.787333,
		-0.884815, 0.420157, 0.201421,
		0.453031, 0.674704, 0.582698,
		41.392899, 35.352238, 15.880464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910469, 35.477161, 15.218062>,  <41.075775, 34.879944, 15.472575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910469, 35.477161, 15.218062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.201057, 35.616814, 15.454824>,  <41.375408, 35.700607, 15.596882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.201057, 35.616814, 15.454824>,  <40.910469, 35.477161, 15.218062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201057, 35.616814, 15.454824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237804, 0.680393, -0.693192,
		-0.644745, 0.644338, 0.411258,
		0.726466, 0.349133, 0.591906,
		41.418999, 35.721554, 15.632397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.523762, 34.283875, 29.968391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.919765, 34.313457, 29.920368>,  <36.157368, 34.331207, 29.891554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.919765, 34.313457, 29.920368>,  <35.523762, 34.283875, 29.968391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919765, 34.313457, 29.920368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084023, -0.374370, -0.923465,
		-0.113240, 0.924326, -0.364415,
		0.990008, 0.073954, -0.120059,
		36.216766, 34.335644, 29.884350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560852, 34.506966, 29.348783>,  <35.523762, 34.283875, 29.968391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560852, 34.506966, 29.348783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.919243, 34.347446, 29.426958>,  <36.134277, 34.251736, 29.473864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.919243, 34.347446, 29.426958>,  <35.560852, 34.506966, 29.348783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919243, 34.347446, 29.426958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028802, -0.491318, -0.870504,
		0.443175, 0.774318, -0.451694,
		0.895972, -0.398795, 0.195438,
		36.188034, 34.227806, 29.485590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897476, 34.613632, 28.709766>,  <35.560852, 34.506966, 29.348783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897476, 34.613632, 28.709766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.122021, 34.327148, 28.875616>,  <36.256748, 34.155258, 28.975126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.122021, 34.327148, 28.875616>,  <35.897476, 34.613632, 28.709766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122021, 34.327148, 28.875616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176727, -0.385711, -0.905535,
		0.808482, 0.581606, -0.089948,
		0.561359, -0.716213, 0.414626,
		36.290428, 34.112286, 29.000004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454647, 34.486294, 28.282436>,  <35.897476, 34.613632, 28.709766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454647, 34.486294, 28.282436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.482800, 34.159676, 28.511623>,  <36.499691, 33.963703, 28.649136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.482800, 34.159676, 28.511623>,  <36.454647, 34.486294, 28.282436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482800, 34.159676, 28.511623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181980, -0.554242, -0.812219,
		0.980780, 0.161436, 0.109586,
		0.070384, -0.816550, 0.572968,
		36.503914, 33.914711, 28.683514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081306, 34.131184, 28.062136>,  <36.454647, 34.486294, 28.282436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081306, 34.131184, 28.062136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.843212, 33.861851, 28.237556>,  <36.700356, 33.700253, 28.342808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.843212, 33.861851, 28.237556>,  <37.081306, 34.131184, 28.062136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843212, 33.861851, 28.237556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239174, -0.669484, -0.703269,
		0.767134, -0.313718, 0.559541,
		-0.595231, -0.673330, 0.438551,
		36.664642, 33.659851, 28.369122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539658, 33.450573, 28.030706>,  <37.081306, 34.131184, 28.062136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539658, 33.450573, 28.030706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.155106, 33.362606, 28.096907>,  <36.924374, 33.309826, 28.136627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.155106, 33.362606, 28.096907>,  <37.539658, 33.450573, 28.030706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155106, 33.362606, 28.096907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063820, -0.763040, -0.643193,
		0.267733, -0.607788, 0.747604,
		-0.961377, -0.219916, 0.165502,
		36.866692, 33.296631, 28.146557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555862, 32.702904, 28.095612>,  <37.539658, 33.450573, 28.030706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555862, 32.702904, 28.095612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.189026, 32.826958, 27.995399>,  <36.968925, 32.901390, 27.935272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.189026, 32.826958, 27.995399>,  <37.555862, 32.702904, 28.095612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189026, 32.826958, 27.995399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012040, -0.649650, -0.760138,
		-0.398501, -0.694097, 0.599521,
		-0.917089, 0.310134, -0.250530,
		36.913898, 32.919998, 27.920240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346806, 32.066158, 27.887135>,  <37.555862, 32.702904, 28.095612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346806, 32.066158, 27.887135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.088383, 32.341164, 27.754513>,  <36.933331, 32.506168, 27.674940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.088383, 32.341164, 27.754513>,  <37.346806, 32.066158, 27.887135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088383, 32.341164, 27.754513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078841, -0.492162, -0.866926,
		-0.759206, -0.533943, 0.372170,
		-0.646057, 0.687518, -0.331556,
		36.894566, 32.547421, 27.655046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772846, 31.668119, 27.542892>,  <37.346806, 32.066158, 27.887135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772846, 31.668119, 27.542892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.749050, 32.042393, 27.403776>,  <36.734772, 32.266956, 27.320307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.749050, 32.042393, 27.403776>,  <36.772846, 31.668119, 27.542892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749050, 32.042393, 27.403776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022205, -0.347083, -0.937571,
		-0.997982, -0.063500, -0.000129,
		-0.059491, 0.935682, -0.347793,
		36.731201, 32.323097, 27.299438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330803, 31.650389, 26.958904>,  <36.772846, 31.668119, 27.542892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330803, 31.650389, 26.958904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.528107, 31.995678, 26.915936>,  <36.646488, 32.202850, 26.890154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.528107, 31.995678, 26.915936>,  <36.330803, 31.650389, 26.958904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528107, 31.995678, 26.915936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132101, -0.196390, -0.971586,
		-0.859792, 0.465056, -0.210904,
		0.493262, 0.863223, -0.107420,
		36.676086, 32.254646, 26.883709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041058, 31.923235, 26.395184>,  <36.330803, 31.650389, 26.958904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041058, 31.923235, 26.395184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.399174, 32.097824, 26.430847>,  <36.614044, 32.202579, 26.452246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.399174, 32.097824, 26.430847>,  <36.041058, 31.923235, 26.395184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399174, 32.097824, 26.430847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113805, -0.030591, -0.993032,
		-0.430706, 0.899197, -0.077061,
		0.895288, 0.436474, 0.089157,
		36.667759, 32.228767, 26.457594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126625, 32.330490, 25.778008>,  <36.041058, 31.923235, 26.395184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126625, 32.330490, 25.778008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.503471, 32.325104, 25.912012>,  <36.729580, 32.321873, 25.992414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.503471, 32.325104, 25.912012>,  <36.126625, 32.330490, 25.778008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503471, 32.325104, 25.912012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335238, 0.021494, -0.941888,
		0.005487, 0.999678, 0.024765,
		0.942117, -0.013470, 0.335012,
		36.786106, 32.321064, 26.012516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841236, 32.817272, 25.415810>,  <36.126625, 32.330490, 25.778008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841236, 32.817272, 25.415810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.493504, 32.828400, 25.218431>,  <35.284863, 32.835075, 25.100004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.493504, 32.828400, 25.218431>,  <35.841236, 32.817272, 25.415810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493504, 32.828400, 25.218431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474702, -0.324878, 0.817993,
		-0.137552, 0.945347, 0.295633,
		-0.869332, 0.027821, -0.493446,
		35.232704, 32.836746, 25.070398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436234, 33.194061, 25.837065>,  <35.841236, 32.817272, 25.415810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436234, 33.194061, 25.837065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.213295, 32.947033, 25.615082>,  <35.079533, 32.798817, 25.481892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.213295, 32.947033, 25.615082>,  <35.436234, 33.194061, 25.837065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213295, 32.947033, 25.615082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503169, -0.280443, 0.817418,
		-0.660445, 0.734821, -0.154437,
		-0.557345, -0.617568, -0.554956,
		35.046093, 32.761765, 25.448595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917889, 33.156551, 26.274296>,  <35.436234, 33.194061, 25.837065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917889, 33.156551, 26.274296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.823631, 32.881783, 25.999310>,  <34.767075, 32.716923, 25.834318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.823631, 32.881783, 25.999310>,  <34.917889, 33.156551, 26.274296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823631, 32.881783, 25.999310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570783, -0.474699, 0.669976,
		-0.786560, 0.550271, -0.280221,
		-0.235648, -0.686922, -0.687465,
		34.752937, 32.675705, 25.793070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235615, 33.156868, 26.348032>,  <34.917889, 33.156551, 26.274296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235615, 33.156868, 26.348032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.354469, 32.804482, 26.200729>,  <34.425781, 32.593052, 26.112349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.354469, 32.804482, 26.200729>,  <34.235615, 33.156868, 26.348032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354469, 32.804482, 26.200729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664920, -0.467702, 0.582354,
		-0.685266, 0.071821, -0.724743,
		0.297138, -0.880963, -0.368255,
		34.443611, 32.540192, 26.090252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668991, 32.833427, 26.392681>,  <34.235615, 33.156868, 26.348032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668991, 32.833427, 26.392681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.945427, 32.544445, 26.384087>,  <34.111286, 32.371056, 26.378929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.945427, 32.544445, 26.384087>,  <33.668991, 32.833427, 26.392681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945427, 32.544445, 26.384087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453280, -0.456374, 0.765676,
		-0.562973, -0.519407, -0.642867,
		0.691085, -0.722454, -0.021489,
		34.152752, 32.327709, 26.377640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268436, 32.259014, 26.378363>,  <33.668991, 32.833427, 26.392681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268436, 32.259014, 26.378363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.631786, 32.166950, 26.518007>,  <33.849796, 32.111710, 26.601795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.631786, 32.166950, 26.518007>,  <33.268436, 32.259014, 26.378363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631786, 32.166950, 26.518007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417133, -0.440415, 0.795006,
		-0.029224, -0.867791, -0.496069,
		0.908376, -0.230161, 0.349114,
		33.904301, 32.097900, 26.622742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145092, 31.625858, 26.626007>,  <33.268436, 32.259014, 26.378363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145092, 31.625858, 26.626007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.488083, 31.729246, 26.803963>,  <33.693878, 31.791279, 26.910736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.488083, 31.729246, 26.803963>,  <33.145092, 31.625858, 26.626007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488083, 31.729246, 26.803963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284443, -0.482388, 0.828489,
		0.428751, -0.836955, -0.340116,
		0.857476, 0.258472, 0.444890,
		33.745327, 31.806787, 26.937429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297077, 31.089590, 27.053682>,  <33.145092, 31.625858, 26.626007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297077, 31.089590, 27.053682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.482605, 31.402849, 27.219355>,  <33.593922, 31.590805, 27.318758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.482605, 31.402849, 27.219355>,  <33.297077, 31.089590, 27.053682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482605, 31.402849, 27.219355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388387, -0.240444, 0.889574,
		0.796256, -0.573468, 0.192641,
		0.463823, 0.783148, 0.414183,
		33.621754, 31.637794, 27.343609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468933, 30.871536, 27.737349>,  <33.297077, 31.089590, 27.053682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468933, 30.871536, 27.737349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.489758, 31.269806, 27.768137>,  <33.502251, 31.508768, 27.786610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.489758, 31.269806, 27.768137>,  <33.468933, 30.871536, 27.737349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489758, 31.269806, 27.768137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474196, -0.043186, 0.879360,
		0.878879, -0.082276, 0.469896,
		0.052057, 0.995674, 0.076970,
		33.505375, 31.568508, 27.791227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714798, 30.977404, 28.378836>,  <33.468933, 30.871536, 27.737349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714798, 30.977404, 28.378836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.532303, 31.323742, 28.296701>,  <33.422806, 31.531544, 28.247421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.532303, 31.323742, 28.296701>,  <33.714798, 30.977404, 28.378836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532303, 31.323742, 28.296701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510250, -0.065503, 0.857528,
		0.729035, 0.496008, 0.471682,
		-0.456237, 0.865844, -0.205334,
		33.395432, 31.583494, 28.235102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729504, 31.403900, 29.128910>,  <33.714798, 30.977404, 28.378836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729504, 31.403900, 29.128910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.464783, 31.581968, 28.887634>,  <33.305950, 31.688808, 28.742868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.464783, 31.581968, 28.887634>,  <33.729504, 31.403900, 29.128910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464783, 31.581968, 28.887634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534939, 0.283278, 0.795986,
		0.525221, 0.849456, 0.050665,
		-0.661803, 0.445171, -0.603191,
		33.266243, 31.715519, 28.706676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483494, 32.074757, 29.544649>,  <33.729504, 31.403900, 29.128910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483494, 32.074757, 29.544649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.202957, 32.036743, 29.262064>,  <33.034637, 32.013935, 29.092512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.202957, 32.036743, 29.262064>,  <33.483494, 32.074757, 29.544649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202957, 32.036743, 29.262064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691804, 0.329665, 0.642439,
		0.171844, 0.939303, -0.296951,
		-0.701339, -0.095033, -0.706465,
		32.992554, 32.008232, 29.050125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119022, 32.653450, 29.593842>,  <33.483494, 32.074757, 29.544649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119022, 32.653450, 29.593842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.844650, 32.414902, 29.427065>,  <32.680027, 32.271774, 29.326998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.844650, 32.414902, 29.427065>,  <33.119022, 32.653450, 29.593842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844650, 32.414902, 29.427065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687452, 0.343254, 0.639990,
		-0.238552, 0.725618, -0.645424,
		-0.685933, -0.596368, -0.416943,
		32.638870, 32.235992, 29.301981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530155, 33.042797, 29.520170>,  <33.119022, 32.653450, 29.593842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530155, 33.042797, 29.520170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.433594, 32.655777, 29.550003>,  <32.375656, 32.423565, 29.567904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.433594, 32.655777, 29.550003>,  <32.530155, 33.042797, 29.520170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433594, 32.655777, 29.550003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719385, 0.230008, 0.655425,
		-0.651314, 0.104569, -0.751569,
		-0.241404, -0.967555, 0.074582,
		32.361172, 32.365509, 29.572378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469044, 32.919243, 28.798843>,  <32.530155, 33.042797, 29.520170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469044, 32.919243, 28.798843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.183350, 33.122601, 28.991262>,  <32.011932, 33.244614, 29.106714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.183350, 33.122601, 28.991262>,  <32.469044, 32.919243, 28.798843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183350, 33.122601, 28.991262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219672, 0.489742, -0.843740,
		-0.664540, -0.708300, -0.238111,
		-0.714234, 0.508393, 0.481047,
		31.969080, 33.275120, 29.135576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841566, 32.975952, 28.397465>,  <32.469044, 32.919243, 28.798843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841566, 32.975952, 28.397465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.920057, 33.295448, 28.624975>,  <31.967152, 33.487144, 28.761482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.920057, 33.295448, 28.624975>,  <31.841566, 32.975952, 28.397465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920057, 33.295448, 28.624975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051281, 0.570902, -0.819415,
		-0.979216, 0.189960, 0.071067,
		0.196229, 0.798740, 0.568778,
		31.978926, 33.535069, 28.795609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368576, 33.434933, 28.238878>,  <31.841566, 32.975952, 28.397465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368576, 33.434933, 28.238878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.678452, 33.636482, 28.391703>,  <31.864376, 33.757412, 28.483397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.678452, 33.636482, 28.391703>,  <31.368576, 33.434933, 28.238878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678452, 33.636482, 28.391703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057201, 0.545879, -0.835909,
		-0.629750, 0.669424, 0.394064,
		0.774689, 0.503874, 0.382059,
		31.910858, 33.787643, 28.506321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165581, 34.135109, 28.238605>,  <31.368576, 33.434933, 28.238878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165581, 34.135109, 28.238605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.564993, 34.116531, 28.249807>,  <31.804640, 34.105385, 28.256529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.564993, 34.116531, 28.249807>,  <31.165581, 34.135109, 28.238605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564993, 34.116531, 28.249807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047160, 0.488554, -0.871258,
		0.026784, 0.871297, 0.490025,
		0.998528, -0.046445, 0.028005,
		31.864552, 34.102596, 28.258209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361506, 34.747555, 28.059639>,  <31.165581, 34.135109, 28.238605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361506, 34.747555, 28.059639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.709497, 34.560047, 27.998466>,  <31.918293, 34.447544, 27.961763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.709497, 34.560047, 27.998466>,  <31.361506, 34.747555, 28.059639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709497, 34.560047, 27.998466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134586, 0.524127, -0.840938,
		0.474363, 0.711017, 0.519070,
		0.869981, -0.468769, -0.152933,
		31.970491, 34.419415, 27.952587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766502, 35.246956, 27.729687>,  <31.361506, 34.747555, 28.059639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766502, 35.246956, 27.729687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.955969, 34.904057, 27.648916>,  <32.069649, 34.698318, 27.600454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.955969, 34.904057, 27.648916>,  <31.766502, 35.246956, 27.729687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955969, 34.904057, 27.648916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219045, 0.336743, -0.915764,
		0.853031, 0.389534, 0.347278,
		0.473664, -0.857244, -0.201927,
		32.098068, 34.646885, 27.588339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431038, 35.461205, 27.548004>,  <31.766502, 35.246956, 27.729687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431038, 35.461205, 27.548004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.400673, 35.093208, 27.394194>,  <32.382454, 34.872410, 27.301907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.400673, 35.093208, 27.394194>,  <32.431038, 35.461205, 27.548004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400673, 35.093208, 27.394194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187641, 0.365569, -0.911674,
		0.979300, -0.141361, 0.144876,
		-0.075913, -0.919987, -0.384526,
		32.377899, 34.817211, 27.278835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984196, 35.430420, 26.982904>,  <32.431038, 35.461205, 27.548004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984196, 35.430420, 26.982904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.719017, 35.139339, 26.912535>,  <32.559910, 34.964691, 26.870314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.719017, 35.139339, 26.912535>,  <32.984196, 35.430420, 26.982904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719017, 35.139339, 26.912535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071158, 0.172672, -0.982406,
		0.745276, -0.663803, -0.062691,
		-0.662948, -0.727702, -0.175923,
		32.520134, 34.921028, 26.859758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400047, 34.906193, 26.539627>,  <32.984196, 35.430420, 26.982904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400047, 34.906193, 26.539627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.007481, 34.852325, 26.484941>,  <32.771942, 34.820004, 26.452131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.007481, 34.852325, 26.484941>,  <33.400047, 34.906193, 26.539627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007481, 34.852325, 26.484941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130295, 0.055409, -0.989926,
		0.140888, -0.989340, -0.036833,
		-0.981414, -0.134670, -0.136712,
		32.713055, 34.811924, 26.443928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407845, 34.513649, 25.920494>,  <33.400047, 34.906193, 26.539627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407845, 34.513649, 25.920494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.036480, 34.659081, 25.951130>,  <32.813663, 34.746338, 25.969511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.036480, 34.659081, 25.951130>,  <33.407845, 34.513649, 25.920494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036480, 34.659081, 25.951130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049466, 0.083345, -0.995292,
		-0.368252, -0.927827, -0.059393,
		-0.928409, 0.363581, 0.076588,
		32.757957, 34.768154, 25.974106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951347, 34.186523, 25.494911>,  <33.407845, 34.513649, 25.920494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951347, 34.186523, 25.494911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.758240, 34.533924, 25.539888>,  <32.642376, 34.742363, 25.566875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.758240, 34.533924, 25.539888>,  <32.951347, 34.186523, 25.494911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758240, 34.533924, 25.539888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063150, 0.162588, -0.984671,
		-0.873468, -0.468268, -0.133338,
		-0.482769, 0.868499, 0.112444,
		32.613407, 34.794476, 25.573622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433418, 34.133572, 24.964924>,  <32.951347, 34.186523, 25.494911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433418, 34.133572, 24.964924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.502434, 34.511711, 25.075588>,  <32.543842, 34.738594, 25.141987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.502434, 34.511711, 25.075588>,  <32.433418, 34.133572, 24.964924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502434, 34.511711, 25.075588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243182, 0.231298, -0.942000,
		-0.954512, 0.229813, -0.189983,
		0.172541, 0.945350, 0.276663,
		32.554195, 34.795315, 25.158587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180561, 34.504627, 24.467632>,  <32.433418, 34.133572, 24.964924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180561, 34.504627, 24.467632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.438915, 34.746170, 24.654476>,  <32.593929, 34.891094, 24.766582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.438915, 34.746170, 24.654476>,  <32.180561, 34.504627, 24.467632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438915, 34.746170, 24.654476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376222, 0.280636, -0.883007,
		-0.664296, 0.746057, -0.045925,
		0.645885, 0.603856, 0.467108,
		32.632679, 34.927326, 24.794609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318951, 35.063301, 23.947355>,  <32.180561, 34.504627, 24.467632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318951, 35.063301, 23.947355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.613209, 35.091278, 24.216852>,  <32.789764, 35.108063, 24.378551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.613209, 35.091278, 24.216852>,  <32.318951, 35.063301, 23.947355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613209, 35.091278, 24.216852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525966, 0.567779, -0.633235,
		-0.426828, 0.820204, 0.380897,
		0.735648, 0.069943, 0.673744,
		32.833904, 35.112263, 24.418976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474232, 35.816177, 23.966053>,  <32.318951, 35.063301, 23.947355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474232, 35.816177, 23.966053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.795803, 35.620014, 24.100632>,  <32.988747, 35.502316, 24.181379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.795803, 35.620014, 24.100632>,  <32.474232, 35.816177, 23.966053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795803, 35.620014, 24.100632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566580, 0.459566, -0.683949,
		0.180797, 0.740470, 0.647315,
		0.803927, -0.490412, 0.336448,
		33.036980, 35.472889, 24.201567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956757, 36.308674, 24.064804>,  <32.474232, 35.816177, 23.966053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956757, 36.308674, 24.064804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.165802, 35.971268, 24.015242>,  <33.291229, 35.768822, 23.985504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.165802, 35.971268, 24.015242>,  <32.956757, 36.308674, 24.064804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165802, 35.971268, 24.015242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609358, 0.471208, -0.637688,
		0.596285, 0.257764, 0.760265,
		0.522616, -0.843517, -0.123904,
		33.322586, 35.718212, 23.978071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604870, 36.642700, 23.910948>,  <32.956757, 36.308674, 24.064804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604870, 36.642700, 23.910948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.668491, 36.255165, 23.834997>,  <33.706665, 36.022644, 23.789427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.668491, 36.255165, 23.834997>,  <33.604870, 36.642700, 23.910948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668491, 36.255165, 23.834997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693771, 0.246514, -0.676693,
		0.702413, -0.024100, 0.711361,
		0.159053, -0.968840, -0.189874,
		33.716206, 35.964512, 23.778034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323715, 36.485085, 24.066729>,  <33.604870, 36.642700, 23.910948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323715, 36.485085, 24.066729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.213364, 36.193916, 23.815643>,  <34.147152, 36.019215, 23.664991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.213364, 36.193916, 23.815643>,  <34.323715, 36.485085, 24.066729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213364, 36.193916, 23.815643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811210, 0.173976, -0.558275,
		0.515587, -0.663223, 0.542500,
		-0.275878, -0.727920, -0.627712,
		34.130600, 35.975540, 23.627329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983940, 36.169250, 23.801785>,  <34.323715, 36.485085, 24.066729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983940, 36.169250, 23.801785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.694237, 36.067791, 23.545315>,  <34.520412, 36.006916, 23.391432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.694237, 36.067791, 23.545315>,  <34.983940, 36.169250, 23.801785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694237, 36.067791, 23.545315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638539, 0.104200, -0.762503,
		0.260220, -0.961667, 0.086498,
		-0.724260, -0.253651, -0.641177,
		34.476959, 35.991695, 23.352962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328701, 35.741615, 23.379387>,  <34.983940, 36.169250, 23.801785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328701, 35.741615, 23.379387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.013481, 35.874352, 23.171984>,  <34.824348, 35.953995, 23.047543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.013481, 35.874352, 23.171984>,  <35.328701, 35.741615, 23.379387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013481, 35.874352, 23.171984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610403, 0.311932, -0.728084,
		-0.079871, -0.890268, -0.448378,
		-0.788054, 0.331844, -0.518509,
		34.777065, 35.973904, 23.016432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501045, 35.526577, 22.672073>,  <35.328701, 35.741615, 23.379387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501045, 35.526577, 22.672073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.220272, 35.810600, 22.649771>,  <35.051807, 35.981014, 22.636389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.220272, 35.810600, 22.649771>,  <35.501045, 35.526577, 22.672073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220272, 35.810600, 22.649771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516273, 0.453314, -0.726614,
		-0.490661, -0.538822, -0.684779,
		-0.701936, 0.710054, -0.055756,
		35.009693, 36.023617, 22.633043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300941, 35.538002, 21.981171>,  <35.501045, 35.526577, 22.672073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300941, 35.538002, 21.981171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.209793, 35.897522, 22.130960>,  <35.155106, 36.113235, 22.220835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.209793, 35.897522, 22.130960>,  <35.300941, 35.538002, 21.981171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209793, 35.897522, 22.130960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594189, 0.433040, -0.677802,
		-0.771371, 0.068056, -0.632735,
		-0.227872, 0.898802, 0.374473,
		35.141430, 36.167164, 22.243303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159691, 35.861271, 21.372005>,  <35.300941, 35.538002, 21.981171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159691, 35.861271, 21.372005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.232143, 36.138546, 21.651054>,  <35.275616, 36.304913, 21.818483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.232143, 36.138546, 21.651054>,  <35.159691, 35.861271, 21.372005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232143, 36.138546, 21.651054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522912, 0.532892, -0.665274,
		-0.832920, 0.485296, -0.265956,
		0.181129, 0.693191, 0.697624,
		35.286484, 36.346504, 21.860342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933346, 36.446243, 21.037394>,  <35.159691, 35.861271, 21.372005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933346, 36.446243, 21.037394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.203552, 36.537308, 21.317921>,  <35.365677, 36.591949, 21.486237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.203552, 36.537308, 21.317921>,  <34.933346, 36.446243, 21.037394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203552, 36.537308, 21.317921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557495, 0.464795, -0.687870,
		-0.482573, 0.855648, 0.187054,
		0.675517, 0.227666, 0.701317,
		35.406208, 36.605606, 21.528316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221531, 37.013332, 20.748014>,  <34.933346, 36.446243, 21.037394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221531, 37.013332, 20.748014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.469292, 36.924580, 21.049242>,  <35.617947, 36.871330, 21.229979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.469292, 36.924580, 21.049242>,  <35.221531, 37.013332, 20.748014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469292, 36.924580, 21.049242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761597, 0.402659, -0.507774,
		-0.190566, 0.888051, 0.418389,
		0.619398, -0.221880, 0.753071,
		35.655109, 36.858017, 21.275164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542419, 37.660294, 21.017187>,  <35.221531, 37.013332, 20.748014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542419, 37.660294, 21.017187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.780537, 37.353249, 21.112185>,  <35.923409, 37.169022, 21.169182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.780537, 37.353249, 21.112185>,  <35.542419, 37.660294, 21.017187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780537, 37.353249, 21.112185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781762, 0.485009, -0.391937,
		0.185669, 0.418980, 0.888810,
		0.595294, -0.767608, 0.237491,
		35.959126, 37.122967, 21.183432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171005, 38.012409, 21.198318>,  <35.542419, 37.660294, 21.017187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171005, 38.012409, 21.198318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.283680, 37.633862, 21.135015>,  <36.351284, 37.406734, 21.097034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.283680, 37.633862, 21.135015>,  <36.171005, 38.012409, 21.198318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283680, 37.633862, 21.135015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738699, 0.319157, -0.593685,
		0.612351, 0.050332, 0.788982,
		0.281690, -0.946364, -0.158256,
		36.368187, 37.349953, 21.087540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908619, 37.957458, 21.312962>,  <36.171005, 38.012409, 21.198318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908619, 37.957458, 21.312962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.826569, 37.648083, 21.073055>,  <36.777336, 37.462460, 20.929111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.826569, 37.648083, 21.073055>,  <36.908619, 37.957458, 21.312962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826569, 37.648083, 21.073055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728110, 0.288915, -0.621598,
		0.654047, -0.564205, 0.503880,
		-0.205130, -0.773435, -0.599767,
		36.765030, 37.416054, 20.893126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496048, 37.790218, 21.859873>,  <36.908619, 37.957458, 21.312962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496048, 37.790218, 21.859873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.709682, 38.062664, 22.060205>,  <37.837864, 38.226131, 22.180405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.709682, 38.062664, 22.060205>,  <37.496048, 37.790218, 21.859873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709682, 38.062664, 22.060205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572758, -0.144229, 0.806936,
		0.621849, -0.717832, 0.313082,
		0.534089, 0.681113, 0.500833,
		37.869907, 38.266998, 22.210455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593384, 37.473732, 22.627806>,  <37.496048, 37.790218, 21.859873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593384, 37.473732, 22.627806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.623409, 37.872593, 22.630444>,  <37.641422, 38.111912, 22.632027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.623409, 37.872593, 22.630444>,  <37.593384, 37.473732, 22.627806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623409, 37.872593, 22.630444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610097, 0.040693, 0.791281,
		0.788763, -0.063418, 0.611417,
		0.075062, 0.997157, 0.006595,
		37.645927, 38.171741, 22.632421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786064, 37.615829, 23.338081>,  <37.593384, 37.473732, 22.627806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786064, 37.615829, 23.338081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.631409, 37.956944, 23.197645>,  <37.538616, 38.161613, 23.113384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.631409, 37.956944, 23.197645>,  <37.786064, 37.615829, 23.338081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631409, 37.956944, 23.197645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396673, 0.189901, 0.898103,
		0.832561, 0.486513, 0.264853,
		-0.386643, 0.852785, -0.351091,
		37.515415, 38.212780, 23.092318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989326, 38.075348, 23.783495>,  <37.786064, 37.615829, 23.338081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989326, 38.075348, 23.783495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.672821, 38.249249, 23.611500>,  <37.482918, 38.353588, 23.508303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.672821, 38.249249, 23.611500>,  <37.989326, 38.075348, 23.783495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672821, 38.249249, 23.611500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417179, 0.130294, 0.899436,
		0.447056, 0.891075, 0.078273,
		-0.791266, 0.434752, -0.429987,
		37.435440, 38.379673, 23.482504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893913, 38.692131, 24.253553>,  <37.989326, 38.075348, 23.783495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893913, 38.692131, 24.253553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.545265, 38.630600, 24.067385>,  <37.336075, 38.593681, 23.955683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.545265, 38.630600, 24.067385>,  <37.893913, 38.692131, 24.253553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545265, 38.630600, 24.067385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481684, 0.092727, 0.871425,
		-0.090890, 0.983738, -0.154918,
		-0.871619, -0.153825, -0.465423,
		37.283779, 38.584454, 23.927757>
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
