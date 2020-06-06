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
	<23.847363, 34.958561, 35.264172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.196245, 34.980537, 35.069756>,  <24.405575, 34.993725, 34.953106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.196245, 34.980537, 35.069756>,  <23.847363, 34.958561, 35.264172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.196245, 34.980537, 35.069756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488348, -0.154166, 0.858923,
		-0.027739, -0.986516, -0.161296,
		0.872208, 0.054942, -0.486039,
		24.457909, 34.997021, 34.923943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.273779, 34.374928, 35.520164>,  <23.847363, 34.958561, 35.264172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.273779, 34.374928, 35.520164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.515270, 34.665470, 35.388763>,  <24.660166, 34.839794, 35.309921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.515270, 34.665470, 35.388763>,  <24.273779, 34.374928, 35.520164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.515270, 34.665470, 35.388763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637502, -0.192476, 0.746019,
		0.478648, -0.659816, -0.579257,
		0.603728, 0.726358, -0.328506,
		24.696388, 34.883377, 35.290211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.979340, 34.216537, 35.447269>,  <24.273779, 34.374928, 35.520164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.979340, 34.216537, 35.447269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.947857, 34.602058, 35.549160>,  <24.928967, 34.833370, 35.610294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.947857, 34.602058, 35.549160>,  <24.979340, 34.216537, 35.447269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.947857, 34.602058, 35.549160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573544, -0.165217, 0.802341,
		0.815385, 0.209250, -0.539780,
		-0.078709, 0.963804, 0.254730,
		24.924244, 34.891201, 35.625580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.616493, 34.397648, 35.645264>,  <24.979340, 34.216537, 35.447269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.616493, 34.397648, 35.645264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.416704, 34.699200, 35.816002>,  <25.296831, 34.880131, 35.918446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.416704, 34.699200, 35.816002>,  <25.616493, 34.397648, 35.645264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.416704, 34.699200, 35.816002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652648, 0.003419, 0.757654,
		0.569717, 0.657009, -0.493723,
		-0.499473, 0.753875, 0.426847,
		25.266863, 34.925362, 35.944057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.115919, 34.875565, 35.962215>,  <25.616493, 34.397648, 35.645264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.115919, 34.875565, 35.962215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.773186, 34.983669, 36.137852>,  <25.567547, 35.048531, 36.243233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.773186, 34.983669, 36.137852>,  <26.115919, 34.875565, 35.962215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.773186, 34.983669, 36.137852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475451, 0.084703, 0.875655,
		0.199460, 0.959055, -0.201071,
		-0.856832, 0.270258, 0.439089,
		25.516136, 35.064747, 36.269577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.118298, 35.626984, 36.214386>,  <26.115919, 34.875565, 35.962215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.118298, 35.626984, 36.214386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.881248, 35.377674, 36.418472>,  <25.739017, 35.228088, 36.540924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.881248, 35.377674, 36.418472>,  <26.118298, 35.626984, 36.214386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.881248, 35.377674, 36.418472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600038, 0.080968, 0.795863,
		-0.537354, 0.777799, 0.326006,
		-0.592625, -0.623276, 0.510218,
		25.703461, 35.190693, 36.571537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.838905, 36.070839, 36.755550>,  <26.118298, 35.626984, 36.214386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.838905, 36.070839, 36.755550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.905069, 35.680496, 36.812607>,  <25.944767, 35.446293, 36.846840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.905069, 35.680496, 36.812607>,  <25.838905, 36.070839, 36.755550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.905069, 35.680496, 36.812607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752474, 0.218372, 0.621367,
		-0.637513, 0.004553, 0.770426,
		0.165411, -0.975855, 0.142641,
		25.954693, 35.387741, 36.855400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.605558, 35.903358, 37.355099>,  <25.838905, 36.070839, 36.755550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.605558, 35.903358, 37.355099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.912395, 35.685421, 37.219624>,  <26.096498, 35.554657, 37.138340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.912395, 35.685421, 37.219624>,  <25.605558, 35.903358, 37.355099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.912395, 35.685421, 37.219624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577928, 0.357696, 0.733521,
		-0.278508, -0.758417, 0.589268,
		0.767094, -0.544846, -0.338689,
		26.142523, 35.521969, 37.118015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.024052, 35.846184, 37.929142>,  <25.605558, 35.903358, 37.355099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.024052, 35.846184, 37.929142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270096, 35.692543, 37.653721>,  <26.417723, 35.600361, 37.488468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270096, 35.692543, 37.653721>,  <26.024052, 35.846184, 37.929142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.270096, 35.692543, 37.653721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774115, 0.128505, 0.619864,
		-0.149606, -0.914306, 0.376381,
		0.615113, -0.384097, -0.688553,
		26.454630, 35.577312, 37.447155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.432556, 35.411209, 38.258400>,  <26.024052, 35.846184, 37.929142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.432556, 35.411209, 38.258400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621937, 35.539040, 37.930080>,  <26.735565, 35.615738, 37.733089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621937, 35.539040, 37.930080>,  <26.432556, 35.411209, 38.258400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.621937, 35.539040, 37.930080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801369, 0.230485, 0.551982,
		0.365584, -0.919101, -0.146977,
		0.473451, 0.319579, -0.820800,
		26.763971, 35.634914, 37.683842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.038054, 35.051067, 38.277809>,  <26.432556, 35.411209, 38.258400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.038054, 35.051067, 38.277809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065195, 35.391899, 38.070213>,  <27.081480, 35.596397, 37.945656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065195, 35.391899, 38.070213>,  <27.038054, 35.051067, 38.277809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065195, 35.391899, 38.070213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799885, 0.264446, 0.538751,
		0.596305, -0.451689, -0.663625,
		0.067855, 0.852083, -0.518989,
		27.085552, 35.647526, 37.914516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698132, 35.221684, 38.078854>,  <27.038054, 35.051067, 38.277809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.698132, 35.221684, 38.078854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.484091, 35.558186, 38.109730>,  <27.355667, 35.760086, 38.128254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.484091, 35.558186, 38.109730>,  <27.698132, 35.221684, 38.078854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.484091, 35.558186, 38.109730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722327, 0.408237, 0.558199,
		0.438076, 0.354448, -0.826109,
		-0.535101, 0.841254, 0.077188,
		27.323561, 35.810562, 38.132885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178822, 35.760231, 38.014935>,  <27.698132, 35.221684, 38.078854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.178822, 35.760231, 38.014935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.857143, 35.871078, 38.225258>,  <27.664137, 35.937588, 38.351452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.857143, 35.871078, 38.225258>,  <28.178822, 35.760231, 38.014935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.857143, 35.871078, 38.225258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594289, 0.389097, 0.703864,
		-0.009535, 0.878526, -0.477600,
		-0.804195, 0.277121, 0.525808,
		27.615885, 35.954216, 38.382999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.440321, 36.402218, 38.191513>,  <28.178822, 35.760231, 38.014935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.440321, 36.402218, 38.191513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190691, 36.204327, 38.433430>,  <28.040913, 36.085590, 38.578579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190691, 36.204327, 38.433430>,  <28.440321, 36.402218, 38.191513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.190691, 36.204327, 38.433430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418128, 0.442419, 0.793369,
		-0.660076, 0.748001, -0.069241,
		-0.624074, -0.494733, 0.604791,
		28.003469, 36.055908, 38.614868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.796141, 36.877213, 38.183285>,  <28.440321, 36.402218, 38.191513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.796141, 36.877213, 38.183285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859810, 36.556404, 37.953011>,  <27.898012, 36.363918, 37.814846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859810, 36.556404, 37.953011>,  <27.796141, 36.877213, 38.183285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859810, 36.556404, 37.953011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980985, -0.062898, -0.183609,
		0.111050, 0.593969, -0.796786,
		0.159174, -0.802025, -0.575690,
		27.907562, 36.315796, 37.780304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.147051, 36.813084, 37.754951>,  <27.796141, 36.877213, 38.183285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.147051, 36.813084, 37.754951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.343307, 36.466129, 37.721680>,  <27.461061, 36.257957, 37.701717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.343307, 36.466129, 37.721680>,  <27.147051, 36.813084, 37.754951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.343307, 36.466129, 37.721680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813251, -0.421553, -0.401143,
		0.312882, 0.264461, -0.912231,
		0.490640, -0.867383, -0.083177,
		27.490499, 36.205914, 37.696728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.284239, 36.531750, 37.027615>,  <27.147051, 36.813084, 37.754951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.284239, 36.531750, 37.027615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.255625, 36.234005, 37.293186>,  <27.238457, 36.055359, 37.452530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.255625, 36.234005, 37.293186>,  <27.284239, 36.531750, 37.027615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.255625, 36.234005, 37.293186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714682, -0.426074, -0.554698,
		0.695782, -0.514179, -0.501506,
		-0.071535, -0.744366, 0.663929,
		27.234163, 36.010696, 37.492367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.359528, 35.918873, 36.556206>,  <27.284239, 36.531750, 37.027615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.359528, 35.918873, 36.556206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.207338, 35.790600, 36.903172>,  <27.116026, 35.713634, 37.111351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.207338, 35.790600, 36.903172>,  <27.359528, 35.918873, 36.556206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.207338, 35.790600, 36.903172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617094, -0.610559, -0.496400,
		0.688794, -0.724140, 0.034408,
		-0.380471, -0.320684, 0.867412,
		27.093197, 35.694393, 37.163395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.404293, 35.173576, 36.663750>,  <27.359528, 35.918873, 36.556206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.404293, 35.173576, 36.663750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.095560, 35.266106, 36.900650>,  <26.910320, 35.321625, 37.042789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.095560, 35.266106, 36.900650>,  <27.404293, 35.173576, 36.663750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.095560, 35.266106, 36.900650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620583, -0.476804, -0.622523,
		0.138381, -0.848024, 0.511572,
		-0.771834, 0.231327, 0.592250,
		26.864010, 35.335503, 37.078323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.940359, 34.595192, 36.695446>,  <27.404293, 35.173576, 36.663750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.940359, 34.595192, 36.695446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.716312, 34.901855, 36.820988>,  <26.581884, 35.085854, 36.896313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.716312, 34.901855, 36.820988>,  <26.940359, 34.595192, 36.695446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.716312, 34.901855, 36.820988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775339, -0.351721, -0.524539,
		-0.291752, -0.537148, 0.791425,
		-0.560116, 0.766658, 0.313857,
		26.548279, 35.131855, 36.915142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.242815, 34.313473, 36.998871>,  <26.940359, 34.595192, 36.695446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.242815, 34.313473, 36.998871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.228436, 34.689533, 36.863331>,  <26.219809, 34.915169, 36.782005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.228436, 34.689533, 36.863331>,  <26.242815, 34.313473, 36.998871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.228436, 34.689533, 36.863331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711009, -0.262332, -0.652417,
		-0.702263, 0.217473, 0.677887,
		-0.035949, 0.940153, -0.338852,
		26.217651, 34.971581, 36.761677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.629784, 34.384319, 36.600128>,  <26.242815, 34.313473, 36.998871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.629784, 34.384319, 36.600128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.797606, 34.739933, 36.526810>,  <25.898298, 34.953300, 36.482819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.797606, 34.739933, 36.526810>,  <25.629784, 34.384319, 36.600128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.797606, 34.739933, 36.526810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673966, 0.169826, -0.718978,
		-0.608065, 0.425187, 0.670427,
		0.419556, 0.889030, -0.183297,
		25.923471, 35.006641, 36.471821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.176914, 34.500477, 37.249611>,  <25.629784, 34.384319, 36.600128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.176914, 34.500477, 37.249611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.335669, 34.864315, 37.200420>,  <25.430922, 35.082619, 37.170906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.335669, 34.864315, 37.200420>,  <25.176914, 34.500477, 37.249611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.335669, 34.864315, 37.200420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429496, 0.065632, -0.900680,
		-0.811181, 0.410284, 0.416715,
		0.396885, 0.909593, -0.122976,
		25.454735, 35.137192, 37.163528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.586020, 34.830841, 37.062115>,  <25.176914, 34.500477, 37.249611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.586020, 34.830841, 37.062115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.924879, 35.016693, 36.958996>,  <25.128195, 35.128204, 36.897125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.924879, 35.016693, 36.958996>,  <24.586020, 34.830841, 37.062115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.924879, 35.016693, 36.958996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331080, 0.082077, -0.940026,
		-0.415602, 0.881695, 0.223360,
		0.847149, 0.464626, -0.257800,
		25.179024, 35.156082, 36.881657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.487797, 35.523605, 36.881271>,  <24.586020, 34.830841, 37.062115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.487797, 35.523605, 36.881271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.810463, 35.382034, 36.691944>,  <25.004063, 35.297092, 36.578350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.810463, 35.382034, 36.691944>,  <24.487797, 35.523605, 36.881271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.810463, 35.382034, 36.691944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436681, 0.182725, -0.880864,
		0.398248, 0.917250, -0.007155,
		0.806665, -0.353927, -0.473315,
		25.052462, 35.275856, 36.549950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.590675, 36.028366, 36.354950>,  <24.487797, 35.523605, 36.881271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.590675, 36.028366, 36.354950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.778471, 35.689457, 36.255589>,  <24.891148, 35.486111, 36.195972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.778471, 35.689457, 36.255589>,  <24.590675, 36.028366, 36.354950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.778471, 35.689457, 36.255589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443520, 0.016958, -0.896104,
		0.763459, 0.530883, -0.367822,
		0.469489, -0.847275, -0.248404,
		24.919317, 35.435276, 36.181068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.051331, 36.159473, 35.874306>,  <24.590675, 36.028366, 36.354950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.051331, 36.159473, 35.874306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.971003, 35.770741, 35.824959>,  <24.922806, 35.537502, 35.795349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.971003, 35.770741, 35.824959>,  <25.051331, 36.159473, 35.874306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.971003, 35.770741, 35.824959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506089, 0.210746, -0.836337,
		0.838776, -0.105517, -0.534154,
		-0.200819, -0.971829, -0.123367,
		24.910757, 35.479191, 35.787949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.329226, 35.985008, 35.222061>,  <25.051331, 36.159473, 35.874306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.329226, 35.985008, 35.222061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.015230, 35.760628, 35.327232>,  <24.826834, 35.625999, 35.390335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.015230, 35.760628, 35.327232>,  <25.329226, 35.985008, 35.222061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.015230, 35.760628, 35.327232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482202, 0.286790, -0.827788,
		0.388945, -0.776585, -0.495618,
		-0.784986, -0.560952, 0.262926,
		24.779734, 35.592342, 35.406109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.847866, 36.507252, 35.429260>,  <25.329226, 35.985008, 35.222061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.847866, 36.507252, 35.429260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646116, 36.558983, 35.087761>,  <25.525066, 36.590019, 34.882862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646116, 36.558983, 35.087761>,  <25.847866, 36.507252, 35.429260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.646116, 36.558983, 35.087761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648517, 0.709537, -0.275649,
		0.570117, -0.692699, -0.441742,
		-0.504374, 0.129325, -0.853746,
		25.494804, 36.597778, 34.831638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.287611, 36.368179, 34.824951>,  <25.847866, 36.507252, 35.429260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.287611, 36.368179, 34.824951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.000360, 36.630123, 34.730759>,  <25.828011, 36.787289, 34.674244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.000360, 36.630123, 34.730759>,  <26.287611, 36.368179, 34.824951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.000360, 36.630123, 34.730759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695803, 0.681717, -0.226097,
		0.012470, -0.326215, -0.945213,
		-0.718125, 0.654863, -0.235482,
		25.784924, 36.826580, 34.660114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.317070, 36.609943, 34.209152>,  <26.287611, 36.368179, 34.824951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.317070, 36.609943, 34.209152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171532, 36.943787, 34.374588>,  <26.084209, 37.144093, 34.473850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171532, 36.943787, 34.374588>,  <26.317070, 36.609943, 34.209152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.171532, 36.943787, 34.374588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734208, 0.530212, -0.424044,
		-0.573198, 0.149373, -0.805687,
		-0.363844, 0.834603, 0.413587,
		26.062378, 37.194168, 34.498665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.124180, 37.210888, 33.738361>,  <26.317070, 36.609943, 34.209152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.124180, 37.210888, 33.738361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223738, 37.391609, 34.081039>,  <26.283472, 37.500042, 34.286648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223738, 37.391609, 34.081039>,  <26.124180, 37.210888, 33.738361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.223738, 37.391609, 34.081039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603994, 0.619057, -0.501956,
		-0.757128, 0.642373, -0.118805,
		0.248896, 0.451802, 0.856695,
		26.298407, 37.527149, 34.338047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.213221, 37.917061, 33.521152>,  <26.124180, 37.210888, 33.738361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.213221, 37.917061, 33.521152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383425, 37.912224, 33.883102>,  <26.485546, 37.909321, 34.100273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383425, 37.912224, 33.883102>,  <26.213221, 37.917061, 33.521152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.383425, 37.912224, 33.883102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647681, 0.702408, -0.295181,
		-0.632022, 0.711672, 0.306712,
		0.425509, -0.012090, 0.904873,
		26.511078, 37.908596, 34.154564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.255512, 38.631832, 33.748718>,  <26.213221, 37.917061, 33.521152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.255512, 38.631832, 33.748718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.547993, 38.411850, 33.910160>,  <26.723480, 38.279861, 34.007027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.547993, 38.411850, 33.910160>,  <26.255512, 38.631832, 33.748718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.547993, 38.411850, 33.910160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678924, 0.644267, -0.352111,
		-0.066384, 0.531480, 0.844465,
		0.731201, -0.549953, 0.403604,
		26.767353, 38.246864, 34.031242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.463787, 38.928902, 34.302120>,  <26.255512, 38.631832, 33.748718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.463787, 38.928902, 34.302120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761774, 38.714138, 34.143757>,  <26.940567, 38.585278, 34.048740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761774, 38.714138, 34.143757>,  <26.463787, 38.928902, 34.302120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.761774, 38.714138, 34.143757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531525, 0.836363, -0.134083,
		0.403115, -0.110548, 0.908448,
		0.744969, -0.536913, -0.395910,
		26.985266, 38.553062, 34.024982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.932625, 39.226097, 34.803234>,  <26.463787, 38.928902, 34.302120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.932625, 39.226097, 34.803234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123158, 38.901211, 34.668530>,  <27.237476, 38.706280, 34.587708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123158, 38.901211, 34.668530>,  <26.932625, 39.226097, 34.803234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.123158, 38.901211, 34.668530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827181, 0.543808, -0.141578,
		0.298127, -0.211127, 0.930884,
		0.476331, -0.812218, -0.336764,
		27.266056, 38.657547, 34.567501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.541853, 39.091221, 35.157520>,  <26.932625, 39.226097, 34.803234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.541853, 39.091221, 35.157520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.603628, 38.914303, 34.804131>,  <27.640694, 38.808151, 34.592098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.603628, 38.914303, 34.804131>,  <27.541853, 39.091221, 35.157520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.603628, 38.914303, 34.804131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838419, 0.531732, -0.119641,
		0.522687, -0.722242, 0.452951,
		0.154439, -0.442297, -0.883471,
		27.649960, 38.781612, 34.539089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222338, 38.736561, 35.170918>,  <27.541853, 39.091221, 35.157520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222338, 38.736561, 35.170918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.141087, 38.810631, 34.786324>,  <28.092335, 38.855072, 34.555569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.141087, 38.810631, 34.786324>,  <28.222338, 38.736561, 35.170918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.141087, 38.810631, 34.786324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894981, 0.433425, -0.105605,
		0.397175, -0.881960, -0.253768,
		-0.203129, 0.185174, -0.961483,
		28.080149, 38.866184, 34.497879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593309, 39.195713, 34.791294>,  <28.222338, 38.736561, 35.170918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593309, 39.195713, 34.791294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.824535, 38.977543, 34.548523>,  <28.963270, 38.846642, 34.402863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.824535, 38.977543, 34.548523>,  <28.593309, 39.195713, 34.791294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.824535, 38.977543, 34.548523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735195, 0.670822, 0.097392,
		0.354018, -0.502506, 0.788771,
		0.578065, -0.545422, -0.606923,
		28.997955, 38.813915, 34.366447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.388519, 39.424953, 35.482292>,  <28.593309, 39.195713, 34.791294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.388519, 39.424953, 35.482292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495144, 39.809860, 35.504166>,  <28.559118, 40.040806, 35.517288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495144, 39.809860, 35.504166>,  <28.388519, 39.424953, 35.482292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.495144, 39.809860, 35.504166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590311, -0.118151, -0.798481,
		-0.761891, 0.245121, -0.599531,
		0.266560, 0.962266, 0.054679,
		28.575111, 40.098541, 35.520569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222086, 39.876041, 34.901520>,  <28.388519, 39.424953, 35.482292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222086, 39.876041, 34.901520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.559031, 40.011993, 35.068810>,  <28.761196, 40.093567, 35.169182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.559031, 40.011993, 35.068810>,  <28.222086, 39.876041, 34.901520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.559031, 40.011993, 35.068810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463347, -0.060465, -0.884112,
		-0.275206, 0.938522, -0.208417,
		0.842360, 0.339882, 0.418221,
		28.811739, 40.113956, 35.194275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190235, 39.858936, 34.200970>,  <28.222086, 39.876041, 34.901520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190235, 39.858936, 34.200970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409779, 39.574223, 34.025646>,  <28.541506, 39.403393, 33.920452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409779, 39.574223, 34.025646>,  <28.190235, 39.858936, 34.200970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.409779, 39.574223, 34.025646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748840, -0.651688, 0.120587,
		-0.371471, 0.262036, -0.890700,
		0.548860, -0.711787, -0.438306,
		28.574436, 39.360687, 33.894154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765331, 39.518528, 33.665123>,  <28.190235, 39.858936, 34.200970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765331, 39.518528, 33.665123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047787, 39.272820, 33.806000>,  <28.217260, 39.125393, 33.890526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047787, 39.272820, 33.806000>,  <27.765331, 39.518528, 33.665123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.047787, 39.272820, 33.806000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695120, -0.696090, 0.179630,
		0.134816, -0.371660, -0.918528,
		0.706139, -0.614270, 0.352192,
		28.259628, 39.088539, 33.911655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.672997, 38.896893, 33.265781>,  <27.765331, 39.518528, 33.665123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.672997, 38.896893, 33.265781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.821125, 38.871078, 33.636444>,  <27.910002, 38.855591, 33.858841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.821125, 38.871078, 33.636444>,  <27.672997, 38.896893, 33.265781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.821125, 38.871078, 33.636444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684739, -0.693064, 0.225375,
		0.627690, -0.717981, -0.300846,
		0.370320, -0.064535, 0.926660,
		27.932220, 38.851719, 33.914440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.866915, 38.164234, 33.461956>,  <27.672997, 38.896893, 33.265781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.866915, 38.164234, 33.461956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765522, 38.381989, 33.781803>,  <27.704685, 38.512642, 33.973713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765522, 38.381989, 33.781803>,  <27.866915, 38.164234, 33.461956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.765522, 38.381989, 33.781803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791881, -0.591536, 0.151688,
		0.555581, -0.594755, 0.581030,
		-0.253483, 0.544382, 0.799622,
		27.689478, 38.545303, 34.021690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.763121, 37.652969, 33.936398>,  <27.866915, 38.164234, 33.461956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.763121, 37.652969, 33.936398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.573311, 37.980659, 34.065205>,  <27.459425, 38.177273, 34.142490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.573311, 37.980659, 34.065205>,  <27.763121, 37.652969, 33.936398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.573311, 37.980659, 34.065205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766555, -0.564421, 0.306303,
		0.432686, -0.101499, 0.895813,
		-0.474526, 0.819223, 0.322022,
		27.430952, 38.226425, 34.161812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.721752, 37.714264, 34.731850>,  <27.763121, 37.652969, 33.936398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.721752, 37.714264, 34.731850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.419043, 37.836578, 34.500751>,  <27.237417, 37.909966, 34.362091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.419043, 37.836578, 34.500751>,  <27.721752, 37.714264, 34.731850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.419043, 37.836578, 34.500751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635111, -0.553117, 0.539163,
		-0.154692, 0.774956, 0.612791,
		-0.756773, 0.305786, -0.577746,
		27.192011, 37.928314, 34.327427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.177776, 37.696743, 35.238602>,  <27.721752, 37.714264, 34.731850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.177776, 37.696743, 35.238602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.977499, 37.782772, 34.903210>,  <26.857332, 37.834389, 34.701973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.977499, 37.782772, 34.903210>,  <27.177776, 37.696743, 35.238602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.977499, 37.782772, 34.903210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817925, -0.434650, 0.376933,
		-0.283378, 0.874542, 0.393540,
		-0.500695, 0.215072, -0.838480,
		26.827290, 37.847294, 34.651665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.593145, 38.042747, 35.496365>,  <27.177776, 37.696743, 35.238602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.593145, 38.042747, 35.496365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494070, 37.904396, 35.134365>,  <26.434624, 37.821384, 34.917168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494070, 37.904396, 35.134365>,  <26.593145, 38.042747, 35.496365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.494070, 37.904396, 35.134365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831108, -0.404199, 0.381947,
		-0.497905, 0.846754, -0.187345,
		-0.247691, -0.345877, -0.904996,
		26.419764, 37.800632, 34.862865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.958534, 38.296307, 35.226753>,  <26.593145, 38.042747, 35.496365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.958534, 38.296307, 35.226753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.032101, 37.921051, 35.109398>,  <26.076241, 37.695900, 35.038986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.032101, 37.921051, 35.109398>,  <25.958534, 38.296307, 35.226753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.032101, 37.921051, 35.109398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876629, -0.291564, 0.382769,
		-0.444630, 0.186793, -0.876021,
		0.183918, -0.938136, -0.293386,
		26.087276, 37.639610, 35.021381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.402323, 38.203537, 34.827320>,  <25.958534, 38.296307, 35.226753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.402323, 38.203537, 34.827320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.547564, 37.846653, 34.934734>,  <25.634708, 37.632523, 34.999184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.547564, 37.846653, 34.934734>,  <25.402323, 38.203537, 34.827320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.547564, 37.846653, 34.934734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922243, -0.303084, 0.240018,
		-0.132759, -0.334804, -0.932889,
		0.363103, -0.892214, 0.268533,
		25.656494, 37.578987, 35.015293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.506271, 38.931656, 34.494942>,  <25.402323, 38.203537, 34.827320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.506271, 38.931656, 34.494942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.845707, 39.084084, 34.641739>,  <26.049368, 39.175541, 34.729816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.845707, 39.084084, 34.641739>,  <25.506271, 38.931656, 34.494942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.845707, 39.084084, 34.641739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037875, 0.648135, -0.760583,
		-0.527697, 0.659321, 0.535567,
		0.848588, 0.381072, 0.366991,
		26.100283, 39.198406, 34.751835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.375700, 39.580456, 34.719696>,  <25.506271, 38.931656, 34.494942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.375700, 39.580456, 34.719696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.757528, 39.552517, 34.603825>,  <25.986626, 39.535755, 34.534302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.757528, 39.552517, 34.603825>,  <25.375700, 39.580456, 34.719696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.757528, 39.552517, 34.603825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144441, 0.741835, -0.654841,
		0.260631, 0.666935, 0.698047,
		0.954572, -0.069846, -0.289678,
		26.043900, 39.531563, 34.516922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.758751, 40.214024, 34.881363>,  <25.375700, 39.580456, 34.719696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.758751, 40.214024, 34.881363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.922974, 40.044418, 34.558464>,  <26.021507, 39.942654, 34.364723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.922974, 40.044418, 34.558464>,  <25.758751, 40.214024, 34.881363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.922974, 40.044418, 34.558464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157609, 0.904977, -0.395191,
		0.898111, 0.035018, 0.438373,
		0.410556, -0.424017, -0.807250,
		26.046141, 39.917213, 34.316288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.317341, 40.546848, 34.683910>,  <25.758751, 40.214024, 34.881363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.317341, 40.546848, 34.683910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.159323, 40.366051, 34.364002>,  <26.064512, 40.257572, 34.172058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.159323, 40.366051, 34.364002>,  <26.317341, 40.546848, 34.683910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.159323, 40.366051, 34.364002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077906, 0.850966, -0.519411,
		0.915353, -0.267497, -0.300956,
		-0.395044, -0.451998, -0.799773,
		26.040810, 40.230450, 34.124069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.787754, 40.436420, 34.133945>,  <26.317341, 40.546848, 34.683910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.787754, 40.436420, 34.133945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.409689, 40.478039, 34.010113>,  <26.182850, 40.503010, 33.935814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.409689, 40.478039, 34.010113>,  <26.787754, 40.436420, 34.133945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.409689, 40.478039, 34.010113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256180, 0.824144, -0.505133,
		0.202579, -0.556741, -0.805606,
		-0.945163, 0.104051, -0.309580,
		26.126141, 40.509254, 33.917240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.894192, 40.687202, 33.474136>,  <26.787754, 40.436420, 34.133945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.894192, 40.687202, 33.474136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505636, 40.779652, 33.495987>,  <26.272503, 40.835121, 33.509098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505636, 40.779652, 33.495987>,  <26.894192, 40.687202, 33.474136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.505636, 40.779652, 33.495987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184576, 0.879436, -0.438775,
		-0.149451, -0.416139, -0.896935,
		-0.971389, 0.231128, 0.054623,
		26.214220, 40.848991, 33.512375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.737394, 40.971561, 32.855072>,  <26.894192, 40.687202, 33.474136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.737394, 40.971561, 32.855072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.478916, 41.145821, 33.105717>,  <26.323830, 41.250378, 33.256104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.478916, 41.145821, 33.105717>,  <26.737394, 40.971561, 32.855072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.478916, 41.145821, 33.105717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114613, 0.867149, -0.484682,
		-0.754519, -0.241379, -0.610277,
		-0.646193, 0.435647, 0.626615,
		26.285059, 41.276516, 33.293701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.341543, 41.393410, 32.466137>,  <26.737394, 40.971561, 32.855072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.341543, 41.393410, 32.466137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277536, 41.532974, 32.835495>,  <26.239132, 41.616714, 33.057110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277536, 41.532974, 32.835495>,  <26.341543, 41.393410, 32.466137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.277536, 41.532974, 32.835495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287896, 0.878282, -0.381754,
		-0.944198, -0.326928, -0.040089,
		-0.160016, 0.348910, 0.923394,
		26.229532, 41.637646, 33.112514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.627996, 41.667358, 31.890400>,  <26.341543, 41.393410, 32.466137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.627996, 41.667358, 31.890400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.343538, 41.450382, 31.711500>,  <26.172863, 41.320198, 31.604160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.343538, 41.450382, 31.711500>,  <26.627996, 41.667358, 31.890400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.343538, 41.450382, 31.711500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025182, 0.655405, -0.754858,
		0.702593, -0.525552, -0.479748,
		-0.711147, -0.542439, -0.447248,
		26.130194, 41.287651, 31.577326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.740795, 41.547802, 31.078651>,  <26.627996, 41.667358, 31.890400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.740795, 41.547802, 31.078651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351295, 41.556343, 31.169302>,  <26.117596, 41.561466, 31.223692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351295, 41.556343, 31.169302>,  <26.740795, 41.547802, 31.078651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351295, 41.556343, 31.169302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103369, 0.845535, -0.523818,
		-0.202803, -0.533493, -0.821131,
		-0.973748, 0.021352, 0.226624,
		26.059172, 41.562748, 31.237289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.424992, 41.960609, 31.158995>,  <26.740795, 41.547802, 31.078651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.424992, 41.960609, 31.158995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.766190, 41.788357, 31.041042>,  <27.970909, 41.685005, 30.970270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.766190, 41.788357, 31.041042>,  <27.424992, 41.960609, 31.158995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.766190, 41.788357, 31.041042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456825, -0.342783, -0.820860,
		0.252406, 0.834900, -0.489115,
		0.852996, -0.430630, -0.294882,
		28.022089, 41.659168, 30.952578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413771, 41.828773, 30.430710>,  <27.424992, 41.960609, 31.158995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413771, 41.828773, 30.430710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.711874, 41.582874, 30.533998>,  <27.890736, 41.435337, 30.595972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.711874, 41.582874, 30.533998>,  <27.413771, 41.828773, 30.430710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.711874, 41.582874, 30.533998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139036, -0.522032, -0.841517,
		0.652117, 0.591247, -0.474521,
		0.745260, -0.614743, 0.258222,
		27.935452, 41.398453, 30.611465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.884899, 41.711262, 29.918510>,  <27.413771, 41.828773, 30.430710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.884899, 41.711262, 29.918510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936438, 41.388412, 30.148972>,  <27.967361, 41.194702, 30.287249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936438, 41.388412, 30.148972>,  <27.884899, 41.711262, 29.918510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936438, 41.388412, 30.148972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151089, -0.558234, -0.815810,
		0.980087, 0.192166, 0.050020,
		0.128848, -0.807123, 0.576152,
		27.975092, 41.146275, 30.321817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.524309, 41.236725, 29.754436>,  <27.884899, 41.711262, 29.918510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.524309, 41.236725, 29.754436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.220646, 41.027569, 29.909489>,  <28.038448, 40.902073, 30.002520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.220646, 41.027569, 29.909489>,  <28.524309, 41.236725, 29.754436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.220646, 41.027569, 29.909489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069651, -0.526852, -0.847099,
		0.647167, -0.670082, 0.363545,
		-0.759160, -0.522893, 0.387633,
		27.992897, 40.870701, 30.025778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661198, 40.562298, 29.647097>,  <28.524309, 41.236725, 29.754436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661198, 40.562298, 29.647097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.262835, 40.577381, 29.679945>,  <28.023817, 40.586433, 29.699654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.262835, 40.577381, 29.679945>,  <28.661198, 40.562298, 29.647097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.262835, 40.577381, 29.679945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081065, -0.774393, -0.627490,
		0.039928, -0.631580, 0.774282,
		-0.995909, 0.037713, 0.082119,
		27.964062, 40.588696, 29.704580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.326763, 39.884495, 29.802105>,  <28.661198, 40.562298, 29.647097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.326763, 39.884495, 29.802105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.072182, 40.112320, 29.594057>,  <27.919434, 40.249016, 29.469229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.072182, 40.112320, 29.594057>,  <28.326763, 39.884495, 29.802105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.072182, 40.112320, 29.594057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027436, -0.690619, -0.722698,
		-0.770827, -0.445694, 0.455174,
		-0.636454, 0.569563, -0.520119,
		27.881247, 40.283188, 29.438021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669523, 39.540585, 29.723803>,  <28.326763, 39.884495, 29.802105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669523, 39.540585, 29.723803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.724920, 39.799870, 29.424299>,  <27.758160, 39.955441, 29.244596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.724920, 39.799870, 29.424299>,  <27.669523, 39.540585, 29.723803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.724920, 39.799870, 29.424299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104349, -0.742285, -0.661909,
		-0.984850, 0.169803, -0.035162,
		0.138494, 0.648212, -0.748759,
		27.766468, 39.994335, 29.199671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.095345, 39.525784, 29.215706>,  <27.669523, 39.540585, 29.723803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.095345, 39.525784, 29.215706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434174, 39.632111, 29.031614>,  <27.637470, 39.695908, 28.921160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434174, 39.632111, 29.031614>,  <27.095345, 39.525784, 29.215706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.434174, 39.632111, 29.031614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126720, -0.739958, -0.660609,
		-0.516150, 0.617904, -0.593114,
		0.847072, 0.265814, -0.460230,
		27.688295, 39.711853, 28.893545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.992661, 39.352100, 28.560266>,  <27.095345, 39.525784, 29.215706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.992661, 39.352100, 28.560266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.384151, 39.430965, 28.537580>,  <27.619047, 39.478283, 28.523968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.384151, 39.430965, 28.537580>,  <26.992661, 39.352100, 28.560266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.384151, 39.430965, 28.537580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121615, -0.780211, -0.613581,
		-0.165226, 0.593631, -0.787593,
		0.978729, 0.197162, -0.056717,
		27.677771, 39.490112, 28.520565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.194332, 39.371395, 27.850359>,  <26.992661, 39.352100, 28.560266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.194332, 39.371395, 27.850359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542078, 39.298237, 28.033991>,  <27.750725, 39.254341, 28.144171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542078, 39.298237, 28.033991>,  <27.194332, 39.371395, 27.850359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.542078, 39.298237, 28.033991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223189, -0.683525, -0.694968,
		0.440902, 0.706641, -0.553410,
		0.869363, -0.182898, 0.459082,
		27.802887, 39.243366, 28.171715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.703306, 39.205055, 27.264502>,  <27.194332, 39.371395, 27.850359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.703306, 39.205055, 27.264502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.871408, 39.084312, 27.606792>,  <27.972269, 39.011868, 27.812168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.871408, 39.084312, 27.606792>,  <27.703306, 39.205055, 27.264502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.871408, 39.084312, 27.606792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520894, -0.691937, -0.499892,
		0.743005, 0.655825, -0.133556,
		0.420254, -0.301853, 0.855728,
		27.997484, 38.993755, 27.863510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453913, 39.211769, 27.218809>,  <27.703306, 39.205055, 27.264502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.453913, 39.211769, 27.218809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.360779, 38.928928, 27.485884>,  <28.304899, 38.759224, 27.646128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.360779, 38.928928, 27.485884>,  <28.453913, 39.211769, 27.218809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.360779, 38.928928, 27.485884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480808, -0.680473, -0.552974,
		0.845348, 0.192277, 0.498414,
		-0.232833, -0.707097, 0.667684,
		28.290928, 38.716801, 27.686190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.963541, 38.782272, 27.229710>,  <28.453913, 39.211769, 27.218809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.963541, 38.782272, 27.229710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681784, 38.556057, 27.401287>,  <28.512730, 38.420326, 27.504234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681784, 38.556057, 27.401287>,  <28.963541, 38.782272, 27.229710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681784, 38.556057, 27.401287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291066, -0.781302, -0.552130,
		0.647388, -0.264066, 0.714954,
		-0.704393, -0.565541, 0.428945,
		28.470467, 38.386395, 27.529970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197130, 38.167278, 27.509279>,  <28.963541, 38.782272, 27.229710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.197130, 38.167278, 27.509279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.815527, 38.057072, 27.462021>,  <28.586565, 37.990948, 27.433666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.815527, 38.057072, 27.462021>,  <29.197130, 38.167278, 27.509279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.815527, 38.057072, 27.462021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298757, -0.841236, -0.450629,
		0.024767, -0.465201, 0.884859,
		-0.954008, -0.275519, -0.118147,
		28.529325, 37.974415, 27.426577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.216265, 37.365116, 27.328405>,  <29.197130, 38.167278, 27.509279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.216265, 37.365116, 27.328405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.849710, 37.488739, 27.226645>,  <28.629778, 37.562912, 27.165588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.849710, 37.488739, 27.226645>,  <29.216265, 37.365116, 27.328405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849710, 37.488739, 27.226645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028649, -0.684543, -0.728409,
		-0.399270, -0.660215, 0.636160,
		-0.916386, 0.309057, -0.254403,
		28.574795, 37.581455, 27.150324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.828159, 36.738014, 27.326498>,  <29.216265, 37.365116, 27.328405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.828159, 36.738014, 27.326498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.612946, 37.006687, 27.122789>,  <28.483818, 37.167892, 27.000565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.612946, 37.006687, 27.122789>,  <28.828159, 36.738014, 27.326498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.612946, 37.006687, 27.122789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173896, -0.679626, -0.712649,
		-0.824792, -0.294867, 0.482464,
		-0.538032, 0.671686, -0.509274,
		28.451536, 37.208191, 26.970007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303560, 36.375561, 27.124722>,  <28.828159, 36.738014, 27.326498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303560, 36.375561, 27.124722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264526, 36.665913, 26.852375>,  <28.241106, 36.840122, 26.688967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264526, 36.665913, 26.852375>,  <28.303560, 36.375561, 27.124722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.264526, 36.665913, 26.852375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304778, -0.673061, -0.673869,
		-0.947411, 0.141753, 0.286913,
		-0.097586, 0.725876, -0.680868,
		28.235250, 36.883675, 26.648115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.621090, 36.288895, 26.654228>,  <28.303560, 36.375561, 27.124722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.621090, 36.288895, 26.654228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812845, 36.555817, 26.426233>,  <27.927898, 36.715969, 26.289436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812845, 36.555817, 26.426233>,  <27.621090, 36.288895, 26.654228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.812845, 36.555817, 26.426233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341257, -0.456625, -0.821607,
		-0.808536, 0.588380, 0.008823,
		0.479388, 0.667310, -0.569987,
		27.956661, 36.756008, 26.255238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.155144, 36.479477, 26.169048>,  <27.621090, 36.288895, 26.654228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.155144, 36.479477, 26.169048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518831, 36.566959, 26.027349>,  <27.737043, 36.619450, 25.942329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518831, 36.566959, 26.027349>,  <27.155144, 36.479477, 26.169048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518831, 36.566959, 26.027349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186482, -0.546810, -0.816225,
		-0.372223, 0.808186, -0.456383,
		0.909216, 0.218710, -0.354247,
		27.791595, 36.632572, 25.921076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.121834, 36.643944, 25.465576>,  <27.155144, 36.479477, 26.169048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.121834, 36.643944, 25.465576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497225, 36.518398, 25.523188>,  <27.722460, 36.443069, 25.557755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497225, 36.518398, 25.523188>,  <27.121834, 36.643944, 25.465576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.497225, 36.518398, 25.523188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031841, -0.493940, -0.868913,
		0.343865, 0.810871, -0.473546,
		0.938479, -0.313867, 0.144029,
		27.778769, 36.424240, 25.566397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.473898, 36.824295, 24.759504>,  <27.121834, 36.643944, 25.465576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.473898, 36.824295, 24.759504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.700542, 36.551964, 24.945160>,  <27.836529, 36.388565, 25.056553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.700542, 36.551964, 24.945160>,  <27.473898, 36.824295, 24.759504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.700542, 36.551964, 24.945160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107076, -0.497674, -0.860729,
		0.816997, 0.537399, -0.209089,
		0.566613, -0.680825, 0.464141,
		27.870527, 36.347717, 25.084402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930414, 36.616486, 24.288313>,  <27.473898, 36.824295, 24.759504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.930414, 36.616486, 24.288313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973434, 36.311668, 24.543726>,  <27.999247, 36.128777, 24.696974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973434, 36.311668, 24.543726>,  <27.930414, 36.616486, 24.288313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.973434, 36.311668, 24.543726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071807, -0.634624, -0.769477,
		0.991603, 0.128608, -0.013533,
		0.107550, -0.762044, 0.638531,
		28.005699, 36.083054, 24.735285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.461411, 36.298363, 23.982254>,  <27.930414, 36.616486, 24.288313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.461411, 36.298363, 23.982254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263086, 36.048954, 24.224043>,  <28.144093, 35.899307, 24.369116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263086, 36.048954, 24.224043>,  <28.461411, 36.298363, 23.982254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263086, 36.048954, 24.224043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045734, -0.713834, -0.698820,
		0.867226, -0.318837, 0.382442,
		-0.495810, -0.623526, 0.604473,
		28.114344, 35.861897, 24.405384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.779594, 35.653141, 23.848246>,  <28.461411, 36.298363, 23.982254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.779594, 35.653141, 23.848246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.421247, 35.569588, 24.005110>,  <28.206240, 35.519455, 24.099228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.421247, 35.569588, 24.005110>,  <28.779594, 35.653141, 23.848246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.421247, 35.569588, 24.005110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123286, -0.731085, -0.671056,
		0.426876, -0.649525, 0.629202,
		-0.895867, -0.208886, 0.392160,
		28.152487, 35.506924, 24.122757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758406, 34.918076, 23.969036>,  <28.779594, 35.653141, 23.848246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.758406, 34.918076, 23.969036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.374784, 35.029850, 23.950552>,  <28.144611, 35.096916, 23.939461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.374784, 35.029850, 23.950552>,  <28.758406, 34.918076, 23.969036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374784, 35.029850, 23.950552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175519, -0.714414, -0.677352,
		-0.222290, -0.641505, 0.734206,
		-0.959052, 0.279435, -0.046211,
		28.087069, 35.113682, 23.936689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351482, 34.253551, 23.773817>,  <28.758406, 34.918076, 23.969036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351482, 34.253551, 23.773817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096746, 34.552536, 23.698202>,  <27.943905, 34.731926, 23.652834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096746, 34.552536, 23.698202>,  <28.351482, 34.253551, 23.773817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096746, 34.552536, 23.698202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314021, -0.475390, -0.821824,
		-0.704147, -0.464011, 0.537467,
		-0.636842, 0.747462, -0.189035,
		27.905693, 34.776775, 23.641491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.654015, 33.941608, 23.600693>,  <28.351482, 34.253551, 23.773817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.654015, 33.941608, 23.600693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.630625, 34.306721, 23.438995>,  <27.616590, 34.525787, 23.341978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.630625, 34.306721, 23.438995>,  <27.654015, 33.941608, 23.600693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.630625, 34.306721, 23.438995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354634, -0.397517, -0.846295,
		-0.933175, 0.093870, 0.346948,
		-0.058476, 0.912781, -0.404242,
		27.613081, 34.580555, 23.317722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.970016, 34.025780, 23.447977>,  <27.654015, 33.941608, 23.600693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.970016, 34.025780, 23.447977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.170378, 34.295448, 23.230871>,  <27.290594, 34.457249, 23.100609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.170378, 34.295448, 23.230871>,  <26.970016, 34.025780, 23.447977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.170378, 34.295448, 23.230871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445300, -0.336997, -0.829542,
		-0.742160, 0.657215, 0.131403,
		0.500905, 0.674167, -0.542764,
		27.320650, 34.497700, 23.068043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.521915, 34.310730, 23.050694>,  <26.970016, 34.025780, 23.447977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.521915, 34.310730, 23.050694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.863268, 34.382980, 22.855095>,  <27.068079, 34.426331, 22.737736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.863268, 34.382980, 22.855095>,  <26.521915, 34.310730, 23.050694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.863268, 34.382980, 22.855095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334296, -0.530140, -0.779229,
		-0.399988, 0.828448, -0.392027,
		0.853379, 0.180629, -0.488996,
		27.119282, 34.437168, 22.708397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.499956, 34.694088, 22.340202>,  <26.521915, 34.310730, 23.050694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.499956, 34.694088, 22.340202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.844915, 34.492458, 22.321543>,  <27.051891, 34.371479, 22.310347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.844915, 34.492458, 22.321543>,  <26.499956, 34.694088, 22.340202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.844915, 34.492458, 22.321543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323343, -0.477589, -0.816919,
		0.389510, 0.719594, -0.574862,
		0.862398, -0.504077, -0.046650,
		27.103634, 34.341236, 22.307549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.576696, 34.615810, 21.655331>,  <26.499956, 34.694088, 22.340202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.576696, 34.615810, 21.655331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.844385, 34.357540, 21.802433>,  <27.004999, 34.202579, 21.890694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.844385, 34.357540, 21.802433>,  <26.576696, 34.615810, 21.655331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.844385, 34.357540, 21.802433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188940, -0.626514, -0.756163,
		0.718639, 0.436559, -0.541272,
		0.669224, -0.645675, 0.367754,
		27.045153, 34.163837, 21.912760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.941626, 34.468487, 21.137701>,  <26.576696, 34.615810, 21.655331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.941626, 34.468487, 21.137701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.989885, 34.164791, 21.393515>,  <27.018841, 33.982574, 21.547003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.989885, 34.164791, 21.393515>,  <26.941626, 34.468487, 21.137701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.989885, 34.164791, 21.393515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016518, -0.645685, -0.763425,
		0.992558, 0.081542, -0.090442,
		0.120648, -0.759238, 0.639533,
		27.026079, 33.937019, 21.585375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.333759, 33.990509, 20.733589>,  <26.941626, 34.468487, 21.137701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.333759, 33.990509, 20.733589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.202188, 33.773056, 21.042461>,  <27.123245, 33.642582, 21.227785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.202188, 33.773056, 21.042461>,  <27.333759, 33.990509, 20.733589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.202188, 33.773056, 21.042461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111197, -0.789697, -0.603336,
		0.937785, -0.284319, 0.199303,
		-0.328929, -0.543637, 0.772181,
		27.103510, 33.609966, 21.274117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.795658, 33.359711, 20.834734>,  <27.333759, 33.990509, 20.733589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.795658, 33.359711, 20.834734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.429169, 33.286041, 20.977064>,  <27.209274, 33.241840, 21.062462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.429169, 33.286041, 20.977064>,  <27.795658, 33.359711, 20.834734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.429169, 33.286041, 20.977064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009036, -0.878362, -0.477911,
		0.400565, -0.441089, 0.803112,
		-0.916224, -0.184177, 0.355826,
		27.154301, 33.230789, 21.083813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.817640, 32.707420, 21.201405>,  <27.795658, 33.359711, 20.834734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.817640, 32.707420, 21.201405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.440001, 32.764900, 21.082729>,  <27.213417, 32.799389, 21.011524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.440001, 32.764900, 21.082729>,  <27.817640, 32.707420, 21.201405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.440001, 32.764900, 21.082729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031408, -0.856686, -0.514882,
		-0.328160, -0.495418, 0.804283,
		-0.944100, 0.143702, -0.296690,
		27.156771, 32.808010, 20.993723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557108, 32.081165, 21.295948>,  <27.817640, 32.707420, 21.201405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557108, 32.081165, 21.295948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.280409, 32.268421, 21.076008>,  <27.114389, 32.380775, 20.944044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.280409, 32.268421, 21.076008>,  <27.557108, 32.081165, 21.295948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.280409, 32.268421, 21.076008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068318, -0.800427, -0.595525,
		-0.718900, -0.374388, 0.585676,
		-0.691748, 0.468135, -0.549849,
		27.072886, 32.408863, 20.911053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.041451, 31.599556, 21.122715>,  <27.557108, 32.081165, 21.295948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.041451, 31.599556, 21.122715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.952131, 31.879957, 20.851795>,  <26.898540, 32.048199, 20.689243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.952131, 31.879957, 20.851795>,  <27.041451, 31.599556, 21.122715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.952131, 31.879957, 20.851795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138465, -0.710609, -0.689828,
		-0.964866, -0.060254, 0.255740,
		-0.223296, 0.701003, -0.677299,
		26.885143, 32.090260, 20.648605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.499310, 31.377953, 20.798927>,  <27.041451, 31.599556, 21.122715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.499310, 31.377953, 20.798927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643579, 31.649893, 20.543516>,  <26.730141, 31.813057, 20.390270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643579, 31.649893, 20.543516>,  <26.499310, 31.377953, 20.798927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.643579, 31.649893, 20.543516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275064, -0.576626, -0.769313,
		-0.891210, 0.453106, -0.020971,
		0.360673, 0.679851, -0.638528,
		26.751781, 31.853848, 20.351957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.975756, 31.504145, 20.202488>,  <26.499310, 31.377953, 20.798927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.975756, 31.504145, 20.202488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.315081, 31.663029, 20.062435>,  <26.518675, 31.758360, 19.978403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.315081, 31.663029, 20.062435>,  <25.975756, 31.504145, 20.202488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.315081, 31.663029, 20.062435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184289, -0.398420, -0.898498,
		-0.496391, 0.826732, -0.264783,
		0.848312, 0.397210, -0.350130,
		26.569574, 31.782192, 19.957396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.840164, 31.938095, 19.524254>,  <25.975756, 31.504145, 20.202488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.840164, 31.938095, 19.524254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.194902, 31.754551, 19.545971>,  <26.407745, 31.644424, 19.559002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.194902, 31.754551, 19.545971>,  <25.840164, 31.938095, 19.524254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.194902, 31.754551, 19.545971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162339, -0.419433, -0.893153,
		0.432607, 0.783276, -0.446464,
		0.886847, -0.458862, 0.054293,
		26.460957, 31.616892, 19.562260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.072094, 31.682068, 18.883762>,  <25.840164, 31.938095, 19.524254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.072094, 31.682068, 18.883762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.416819, 31.558418, 19.044622>,  <26.623653, 31.484228, 19.141138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.416819, 31.558418, 19.044622>,  <26.072094, 31.682068, 18.883762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.416819, 31.558418, 19.044622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242732, -0.444824, -0.862098,
		0.445382, 0.840580, -0.308319,
		0.861810, -0.309124, 0.402152,
		26.675362, 31.465681, 19.165268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.546272, 31.900139, 18.476173>,  <26.072094, 31.682068, 18.883762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.546272, 31.900139, 18.476173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677608, 31.587778, 18.688734>,  <26.756411, 31.400362, 18.816271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677608, 31.587778, 18.688734>,  <26.546272, 31.900139, 18.476173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.677608, 31.587778, 18.688734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124091, -0.522055, -0.843836,
		0.936373, 0.343008, -0.074509,
		0.328340, -0.780900, 0.531402,
		26.776110, 31.353508, 18.848154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.096247, 31.631994, 18.136824>,  <26.546272, 31.900139, 18.476173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.096247, 31.631994, 18.136824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.966518, 31.315006, 18.343437>,  <26.888681, 31.124813, 18.467405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.966518, 31.315006, 18.343437>,  <27.096247, 31.631994, 18.136824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.966518, 31.315006, 18.343437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153182, -0.582839, -0.798019,
		0.933461, -0.179692, 0.310420,
		-0.324323, -0.792471, 0.516532,
		26.869221, 31.077265, 18.498396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.596241, 31.169889, 17.989288>,  <27.096247, 31.631994, 18.136824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.596241, 31.169889, 17.989288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.241508, 30.997362, 18.055616>,  <27.028669, 30.893845, 18.095413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.241508, 30.997362, 18.055616>,  <27.596241, 31.169889, 17.989288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.241508, 30.997362, 18.055616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129193, -0.575958, -0.807206,
		0.443668, -0.694432, 0.566500,
		-0.886830, -0.431320, 0.165818,
		26.975460, 30.867966, 18.105362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731577, 30.481516, 17.788965>,  <27.596241, 31.169889, 17.989288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.731577, 30.481516, 17.788965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.334755, 30.528938, 17.805782>,  <27.096661, 30.557392, 17.815872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.334755, 30.528938, 17.805782>,  <27.731577, 30.481516, 17.788965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.334755, 30.528938, 17.805782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084453, -0.380042, -0.921106,
		-0.093226, -0.917340, 0.387036,
		-0.992057, 0.118557, 0.042043,
		27.037138, 30.564505, 17.818396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.556326, 29.814558, 17.604614>,  <27.731577, 30.481516, 17.788965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.556326, 29.814558, 17.604614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.241339, 30.060175, 17.583261>,  <27.052347, 30.207544, 17.570450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.241339, 30.060175, 17.583261>,  <27.556326, 29.814558, 17.604614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.241339, 30.060175, 17.583261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250158, -0.397560, -0.882818,
		-0.563311, -0.681834, 0.466673,
		-0.787465, 0.614043, -0.053384,
		27.005098, 30.244387, 17.567245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.025175, 29.328369, 17.468803>,  <27.556326, 29.814558, 17.604614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.025175, 29.328369, 17.468803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.909815, 29.689194, 17.340359>,  <26.840599, 29.905689, 17.263292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.909815, 29.689194, 17.340359>,  <27.025175, 29.328369, 17.468803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.909815, 29.689194, 17.340359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155057, -0.374931, -0.913994,
		-0.944872, -0.213805, 0.248001,
		-0.288400, 0.902061, -0.321110,
		26.823296, 29.959812, 17.244026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.339926, 29.257988, 17.115221>,  <27.025175, 29.328369, 17.468803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.339926, 29.257988, 17.115221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513437, 29.597080, 16.993114>,  <26.617544, 29.800535, 16.919851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513437, 29.597080, 16.993114>,  <26.339926, 29.257988, 17.115221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.513437, 29.597080, 16.993114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267633, -0.202283, -0.942048,
		-0.860354, 0.490339, 0.139135,
		0.433778, 0.847732, -0.305266,
		26.643570, 29.851400, 16.901535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.907694, 29.543941, 16.542845>,  <26.339926, 29.257988, 17.115221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.907694, 29.543941, 16.542845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246988, 29.752222, 16.504143>,  <26.450565, 29.877192, 16.480921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246988, 29.752222, 16.504143>,  <25.907694, 29.543941, 16.542845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.246988, 29.752222, 16.504143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008388, -0.195875, -0.980593,
		-0.529550, 0.830964, -0.170516,
		0.848237, 0.520704, -0.096755,
		26.501459, 29.908434, 16.475117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.821301, 30.120825, 15.967316>,  <25.907694, 29.543941, 16.542845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.821301, 30.120825, 15.967316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.189062, 29.979120, 16.035666>,  <26.409719, 29.894098, 16.076675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.189062, 29.979120, 16.035666>,  <25.821301, 30.120825, 15.967316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.189062, 29.979120, 16.035666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024951, -0.381039, -0.924222,
		0.392525, 0.853996, -0.341489,
		0.919403, -0.354260, 0.170876,
		26.464884, 29.872843, 16.086927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.292215, 30.553741, 15.579500>,  <25.821301, 30.120825, 15.967316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.292215, 30.553741, 15.579500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.341717, 30.156830, 15.582752>,  <26.371418, 29.918682, 15.584703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.341717, 30.156830, 15.582752>,  <26.292215, 30.553741, 15.579500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.341717, 30.156830, 15.582752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027378, -0.004777, -0.999614,
		0.991935, 0.123930, 0.026576,
		0.123755, -0.992280, 0.008131,
		26.378843, 29.859146, 15.585192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.691639, 30.331499, 14.952695>,  <26.292215, 30.553741, 15.579500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.691639, 30.331499, 14.952695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.466875, 30.019432, 15.062671>,  <26.332016, 29.832191, 15.128656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.466875, 30.019432, 15.062671>,  <26.691639, 30.331499, 14.952695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.466875, 30.019432, 15.062671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144237, -0.234874, -0.961265,
		0.814525, -0.579802, 0.019449,
		-0.561911, -0.780169, 0.274940,
		26.298302, 29.785381, 15.145152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.451279, 30.175539, 15.013080>,  <26.691639, 30.331499, 14.952695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.451279, 30.175539, 15.013080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.690588, 30.436750, 14.827337>,  <27.834173, 30.593477, 14.715892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.690588, 30.436750, 14.827337>,  <27.451279, 30.175539, 15.013080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.690588, 30.436750, 14.827337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078413, -0.624439, -0.777128,
		-0.797447, 0.428523, -0.424790,
		0.598273, 0.653027, -0.464355,
		27.870070, 30.632658, 14.688030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279127, 30.164961, 14.328669>,  <27.451279, 30.175539, 15.013080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.279127, 30.164961, 14.328669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.656660, 30.296488, 14.341677>,  <27.883181, 30.375404, 14.349482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.656660, 30.296488, 14.341677>,  <27.279127, 30.164961, 14.328669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.656660, 30.296488, 14.341677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279945, -0.743484, -0.607340,
		-0.175525, 0.582332, -0.793776,
		0.943834, 0.328817, 0.032521,
		27.939810, 30.395132, 14.351433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579397, 30.270023, 13.641730>,  <27.279127, 30.164961, 14.328669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579397, 30.270023, 13.641730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891920, 30.205898, 13.883013>,  <28.079433, 30.167423, 14.027782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891920, 30.205898, 13.883013>,  <27.579397, 30.270023, 13.641730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891920, 30.205898, 13.883013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401584, -0.610713, -0.682466,
		0.477794, 0.775454, -0.412775,
		0.781308, -0.160315, 0.603205,
		28.126312, 30.157804, 14.063974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262754, 30.427240, 13.308558>,  <27.579397, 30.270023, 13.641730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262754, 30.427240, 13.308558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.364235, 30.207098, 13.626739>,  <28.425123, 30.075012, 13.817647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.364235, 30.207098, 13.626739>,  <28.262754, 30.427240, 13.308558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.364235, 30.207098, 13.626739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591693, -0.562254, -0.577729,
		0.765202, 0.617234, 0.182997,
		0.253703, -0.550358, 0.795450,
		28.440346, 30.041990, 13.865374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.964249, 30.595915, 13.673608>,  <28.262754, 30.427240, 13.308558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.964249, 30.595915, 13.673608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.862900, 30.209019, 13.667365>,  <28.802090, 29.976881, 13.663619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.862900, 30.209019, 13.667365>,  <28.964249, 30.595915, 13.673608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.862900, 30.209019, 13.667365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737877, -0.182807, -0.649707,
		0.625571, -0.176135, 0.760025,
		-0.253374, -0.967242, -0.015607,
		28.786888, 29.918846, 13.662683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059235, 31.032051, 14.271485>,  <28.964249, 30.595915, 13.673608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059235, 31.032051, 14.271485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.710541, 30.837362, 14.294045>,  <28.501324, 30.720549, 14.307582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.710541, 30.837362, 14.294045>,  <29.059235, 31.032051, 14.271485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.710541, 30.837362, 14.294045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385402, 0.752199, 0.534474,
		-0.302565, 0.444182, -0.843301,
		-0.871734, -0.486723, 0.056401,
		28.449020, 30.691345, 14.310966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554405, 31.596302, 14.208682>,  <29.059235, 31.032051, 14.271485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554405, 31.596302, 14.208682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351307, 31.279165, 14.343497>,  <28.229448, 31.088882, 14.424387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351307, 31.279165, 14.343497>,  <28.554405, 31.596302, 14.208682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.351307, 31.279165, 14.343497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529955, 0.595888, 0.603378,
		-0.679221, 0.127747, -0.722730,
		-0.507746, -0.792842, 0.337039,
		28.198982, 31.041313, 14.444609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888075, 31.716393, 14.174682>,  <28.554405, 31.596302, 14.208682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888075, 31.716393, 14.174682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.866793, 31.443895, 14.466729>,  <27.854023, 31.280397, 14.641958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.866793, 31.443895, 14.466729>,  <27.888075, 31.716393, 14.174682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.866793, 31.443895, 14.466729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657881, 0.573967, 0.487602,
		-0.751240, -0.454387, -0.478717,
		-0.053208, -0.681245, 0.730119,
		27.850830, 31.239521, 14.685765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238787, 31.746895, 14.348930>,  <27.888075, 31.716393, 14.174682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238787, 31.746895, 14.348930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.442488, 31.602880, 14.661607>,  <27.564709, 31.516472, 14.849213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.442488, 31.602880, 14.661607>,  <27.238787, 31.746895, 14.348930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.442488, 31.602880, 14.661607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542010, 0.571355, 0.616262,
		-0.668498, -0.737515, 0.095821,
		0.509250, -0.360034, 0.781690,
		27.595263, 31.494871, 14.896113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.804781, 31.554291, 14.891937>,  <27.238787, 31.746895, 14.348930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.804781, 31.554291, 14.891937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.145649, 31.564985, 15.100969>,  <27.350170, 31.571402, 15.226388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.145649, 31.564985, 15.100969>,  <26.804781, 31.554291, 14.891937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.145649, 31.564985, 15.100969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439754, 0.577843, 0.687542,
		-0.283586, -0.815710, 0.504179,
		0.852171, 0.026737, 0.522580,
		27.401300, 31.573006, 15.257743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.566744, 31.688324, 15.547679>,  <26.804781, 31.554291, 14.891937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.566744, 31.688324, 15.547679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.955624, 31.765347, 15.600975>,  <27.188951, 31.811560, 15.632953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.955624, 31.765347, 15.600975>,  <26.566744, 31.688324, 15.547679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.955624, 31.765347, 15.600975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227744, 0.645280, 0.729209,
		0.054435, -0.739281, 0.671194,
		0.972198, 0.192555, 0.133241,
		27.247284, 31.823112, 15.640947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.603203, 31.787592, 16.260088>,  <26.566744, 31.688324, 15.547679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.603203, 31.787592, 16.260088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944431, 31.939102, 16.116535>,  <27.149168, 32.030010, 16.030403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944431, 31.939102, 16.116535>,  <26.603203, 31.787592, 16.260088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.944431, 31.939102, 16.116535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075493, 0.590955, 0.803164,
		0.516298, -0.712252, 0.475534,
		0.853075, 0.378773, -0.358879,
		27.200354, 32.052734, 16.008871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.137691, 31.734707, 16.726921>,  <26.603203, 31.787592, 16.260088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.137691, 31.734707, 16.726921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.234037, 32.045719, 16.494566>,  <27.291845, 32.232327, 16.355154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.234037, 32.045719, 16.494566>,  <27.137691, 31.734707, 16.726921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.234037, 32.045719, 16.494566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206549, 0.543732, 0.813446,
		0.948326, -0.315910, -0.029634,
		0.240863, 0.777533, -0.580886,
		27.306295, 32.278980, 16.320301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.620495, 31.972542, 17.066013>,  <27.137691, 31.734707, 16.726921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.620495, 31.972542, 17.066013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.519138, 32.278957, 16.829718>,  <27.458324, 32.462807, 16.687941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.519138, 32.278957, 16.829718>,  <27.620495, 31.972542, 17.066013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.519138, 32.278957, 16.829718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253494, 0.641912, 0.723664,
		0.933560, 0.033621, -0.356842,
		-0.253391, 0.766041, -0.590741,
		27.443121, 32.508770, 16.652496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199938, 32.556023, 17.057964>,  <27.620495, 31.972542, 17.066013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199938, 32.556023, 17.057964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.871439, 32.746437, 16.932144>,  <27.674339, 32.860683, 16.856651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.871439, 32.746437, 16.932144>,  <28.199938, 32.556023, 17.057964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.871439, 32.746437, 16.932144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203207, 0.759168, 0.618362,
		0.533158, 0.443910, -0.720199,
		-0.821249, 0.476034, -0.314551,
		27.625065, 32.889248, 16.837778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.425255, 33.231091, 16.906004>,  <28.199938, 32.556023, 17.057964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.425255, 33.231091, 16.906004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.032036, 33.269203, 16.968658>,  <27.796104, 33.292072, 17.006250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.032036, 33.269203, 16.968658>,  <28.425255, 33.231091, 16.906004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.032036, 33.269203, 16.968658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177725, 0.705058, 0.686518,
		-0.045025, 0.702720, -0.710041,
		-0.983050, 0.095281, 0.156636,
		27.737122, 33.297787, 17.015650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.315556, 33.948227, 16.980722>,  <28.425255, 33.231091, 16.906004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.315556, 33.948227, 16.980722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.000750, 33.774094, 17.155581>,  <27.811867, 33.669613, 17.260494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.000750, 33.774094, 17.155581>,  <28.315556, 33.948227, 16.980722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.000750, 33.774094, 17.155581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007517, 0.701753, 0.712380,
		-0.616889, 0.563939, -0.549017,
		-0.787014, -0.435333, 0.437143,
		27.764645, 33.643494, 17.286724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897612, 34.563320, 17.125942>,  <28.315556, 33.948227, 16.980722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897612, 34.563320, 17.125942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.746428, 34.266880, 17.347902>,  <27.655716, 34.089016, 17.481079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.746428, 34.266880, 17.347902>,  <27.897612, 34.563320, 17.125942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.746428, 34.266880, 17.347902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294626, 0.664485, 0.686772,
		-0.877690, 0.096086, -0.469497,
		-0.377963, -0.741099, 0.554902,
		27.633039, 34.044552, 17.514374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.244207, 34.770027, 17.383150>,  <27.897612, 34.563320, 17.125942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.244207, 34.770027, 17.383150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.325674, 34.471889, 17.637072>,  <27.374554, 34.293007, 17.789425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.325674, 34.471889, 17.637072>,  <27.244207, 34.770027, 17.383150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.325674, 34.471889, 17.637072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374590, 0.539733, 0.753904,
		-0.904545, -0.391337, -0.169273,
		0.203668, -0.745348, 0.634804,
		27.386774, 34.248283, 17.827513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756514, 34.652252, 17.898869>,  <27.244207, 34.770027, 17.383150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.756514, 34.652252, 17.898869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.075109, 34.500641, 18.087313>,  <27.266266, 34.409676, 18.200378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.075109, 34.500641, 18.087313>,  <26.756514, 34.652252, 17.898869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.075109, 34.500641, 18.087313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273937, 0.468393, 0.839980,
		-0.539041, -0.798088, 0.269240,
		0.796488, -0.379029, 0.471109,
		27.314056, 34.386932, 18.228645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.492182, 34.310165, 18.463432>,  <26.756514, 34.652252, 17.898869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.492182, 34.310165, 18.463432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.875196, 34.379940, 18.555250>,  <27.105005, 34.421806, 18.610340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.875196, 34.379940, 18.555250>,  <26.492182, 34.310165, 18.463432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.875196, 34.379940, 18.555250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286458, 0.485680, 0.825867,
		0.032577, -0.856555, 0.515026,
		0.957539, 0.174438, 0.229545,
		27.162458, 34.432270, 18.624113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.587410, 34.282745, 19.231899>,  <26.492182, 34.310165, 18.463432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.587410, 34.282745, 19.231899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.921381, 34.467426, 19.112085>,  <27.121765, 34.578236, 19.040197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.921381, 34.467426, 19.112085>,  <26.587410, 34.282745, 19.231899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.921381, 34.467426, 19.112085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077733, 0.637732, 0.766326,
		0.544837, -0.616545, 0.568352,
		0.834931, 0.461703, -0.299535,
		27.171860, 34.605938, 19.022224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.999914, 34.456928, 19.860868>,  <26.587410, 34.282745, 19.231899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.999914, 34.456928, 19.860868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138933, 34.702908, 19.577728>,  <27.222345, 34.850494, 19.407845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138933, 34.702908, 19.577728>,  <26.999914, 34.456928, 19.860868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.138933, 34.702908, 19.577728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016522, 0.750775, 0.660352,
		0.937517, -0.241199, 0.250770,
		0.347547, 0.614947, -0.707849,
		27.243198, 34.887390, 19.365374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.644491, 34.636768, 20.183668>,  <26.999914, 34.456928, 19.860868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.644491, 34.636768, 20.183668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.522892, 34.897530, 19.905787>,  <27.449932, 35.053986, 19.739058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.522892, 34.897530, 19.905787>,  <27.644491, 34.636768, 20.183668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.522892, 34.897530, 19.905787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091133, 0.745771, 0.659940,
		0.948303, 0.137310, -0.286123,
		-0.303999, 0.651899, -0.694704,
		27.431692, 35.093098, 19.697376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134583, 35.180874, 20.328880>,  <27.644491, 34.636768, 20.183668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134583, 35.180874, 20.328880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825886, 35.326641, 20.120413>,  <27.640669, 35.414101, 19.995333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825886, 35.326641, 20.120413>,  <28.134583, 35.180874, 20.328880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825886, 35.326641, 20.120413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019418, 0.832649, 0.553461,
		0.635641, 0.417008, -0.649665,
		-0.771741, 0.364417, -0.521168,
		27.594364, 35.435966, 19.964062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.392658, 35.814732, 20.145601>,  <28.134583, 35.180874, 20.328880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.392658, 35.814732, 20.145601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.992811, 35.812771, 20.134708>,  <27.752903, 35.811592, 20.128172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.992811, 35.812771, 20.134708>,  <28.392658, 35.814732, 20.145601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.992811, 35.812771, 20.134708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022110, 0.733442, 0.679392,
		0.016641, 0.679734, -0.733270,
		-0.999617, -0.004907, -0.027234,
		27.692926, 35.811298, 20.126537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178196, 36.521515, 20.175606>,  <28.392658, 35.814732, 20.145601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.178196, 36.521515, 20.175606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833239, 36.345623, 20.275938>,  <27.626265, 36.240089, 20.336138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833239, 36.345623, 20.275938>,  <28.178196, 36.521515, 20.175606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.833239, 36.345623, 20.275938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092170, 0.623580, 0.776307,
		-0.497778, 0.646363, -0.578301,
		-0.862393, -0.439730, 0.250829,
		27.574520, 36.213703, 20.351187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.709900, 37.143513, 20.377159>,  <28.178196, 36.521515, 20.175606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.709900, 37.143513, 20.377159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.570122, 36.807835, 20.543840>,  <27.486254, 36.606426, 20.643848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.570122, 36.807835, 20.543840>,  <27.709900, 37.143513, 20.377159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.570122, 36.807835, 20.543840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121386, 0.481539, 0.867978,
		-0.929060, 0.252731, -0.270139,
		-0.349447, -0.839194, 0.416701,
		27.465288, 36.556076, 20.668850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.146173, 37.347660, 20.708883>,  <27.709900, 37.143513, 20.377159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.146173, 37.347660, 20.708883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243671, 37.002857, 20.886658>,  <27.302170, 36.795975, 20.993322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243671, 37.002857, 20.886658>,  <27.146173, 37.347660, 20.708883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.243671, 37.002857, 20.886658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115539, 0.429186, 0.895796,
		-0.962932, -0.269696, 0.005016,
		0.243745, -0.862011, 0.444438,
		27.316795, 36.744255, 21.019989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.644766, 37.144577, 21.081358>,  <27.146173, 37.347660, 20.708883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.644766, 37.144577, 21.081358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.947151, 36.946274, 21.252352>,  <27.128582, 36.827290, 21.354948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.947151, 36.946274, 21.252352>,  <26.644766, 37.144577, 21.081358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.947151, 36.946274, 21.252352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252016, 0.382287, 0.889013,
		-0.604158, -0.779794, 0.164056,
		0.755964, -0.495760, 0.427482,
		27.173941, 36.797546, 21.380596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.329275, 37.063431, 21.667175>,  <26.644766, 37.144577, 21.081358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.329275, 37.063431, 21.667175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701736, 36.947636, 21.755854>,  <26.925213, 36.878159, 21.809061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701736, 36.947636, 21.755854>,  <26.329275, 37.063431, 21.667175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.701736, 36.947636, 21.755854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056206, 0.486781, 0.871714,
		-0.360270, -0.824160, 0.436996,
		0.931153, -0.289491, 0.221696,
		26.981083, 36.860790, 21.822363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.316971, 36.797894, 22.373699>,  <26.329275, 37.063431, 21.667175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.316971, 36.797894, 22.373699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694784, 36.911407, 22.307583>,  <26.921473, 36.979515, 22.267912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694784, 36.911407, 22.307583>,  <26.316971, 36.797894, 22.373699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694784, 36.911407, 22.307583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033096, 0.582993, 0.811803,
		0.326743, -0.761305, 0.560048,
		0.944533, 0.283786, -0.165293,
		26.978144, 36.996544, 22.257996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.799391, 36.675213, 22.975239>,  <26.316971, 36.797894, 22.373699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.799391, 36.675213, 22.975239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978500, 36.963951, 22.764172>,  <27.085966, 37.137196, 22.637531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978500, 36.963951, 22.764172>,  <26.799391, 36.675213, 22.975239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.978500, 36.963951, 22.764172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177178, 0.506805, 0.843657,
		0.876418, -0.471257, 0.099037,
		0.447772, 0.721849, -0.527669,
		27.112831, 37.180508, 22.605871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.271671, 36.837982, 23.472364>,  <26.799391, 36.675213, 22.975239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.271671, 36.837982, 23.472364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.272278, 37.141064, 23.211325>,  <27.272642, 37.322914, 23.054701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.272278, 37.141064, 23.211325>,  <27.271671, 36.837982, 23.472364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.272278, 37.141064, 23.211325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040836, 0.652101, 0.757031,
		0.999165, 0.025501, 0.031931,
		0.001517, 0.757703, -0.652598,
		27.272734, 37.368374, 23.015545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.768667, 37.237083, 23.682703>,  <27.271671, 36.837982, 23.472364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.768667, 37.237083, 23.682703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518534, 37.467068, 23.471659>,  <27.368454, 37.605061, 23.345032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518534, 37.467068, 23.471659>,  <27.768667, 37.237083, 23.682703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518534, 37.467068, 23.471659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028378, 0.658911, 0.751685,
		0.779840, 0.485027, -0.395724,
		-0.625335, 0.574964, -0.527610,
		27.330933, 37.639557, 23.313375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.161188, 37.877392, 23.739246>,  <27.768667, 37.237083, 23.682703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.161188, 37.877392, 23.739246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796408, 37.986591, 23.616726>,  <27.577539, 38.052109, 23.543213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796408, 37.986591, 23.616726>,  <28.161188, 37.877392, 23.739246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796408, 37.986591, 23.616726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033004, 0.695306, 0.717956,
		0.408972, 0.664849, -0.625074,
		-0.911950, 0.272994, -0.306303,
		27.522823, 38.068489, 23.524836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184866, 38.583305, 23.587170>,  <28.161188, 37.877392, 23.739246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.184866, 38.583305, 23.587170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.804314, 38.493820, 23.671858>,  <27.575983, 38.440128, 23.722672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.804314, 38.493820, 23.671858>,  <28.184866, 38.583305, 23.587170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.804314, 38.493820, 23.671858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012916, 0.715740, 0.698248,
		-0.307748, 0.661565, -0.683830,
		-0.951380, -0.223717, 0.211722,
		27.518900, 38.426704, 23.735374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.866688, 39.168232, 23.544937>,  <28.184866, 38.583305, 23.587170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.866688, 39.168232, 23.544937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600222, 38.957932, 23.756525>,  <27.440342, 38.831749, 23.883478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600222, 38.957932, 23.756525>,  <27.866688, 39.168232, 23.544937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.600222, 38.957932, 23.756525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048364, 0.738218, 0.672826,
		-0.744236, 0.422629, -0.517201,
		-0.666163, -0.525755, 0.528969,
		27.400373, 38.800205, 23.915216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281664, 39.593266, 23.827085>,  <27.866688, 39.168232, 23.544937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281664, 39.593266, 23.827085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254507, 39.276688, 24.070068>,  <27.238213, 39.086742, 24.215858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254507, 39.276688, 24.070068>,  <27.281664, 39.593266, 23.827085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254507, 39.276688, 24.070068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039916, 0.610530, 0.790987,
		-0.996894, 0.029453, -0.073040,
		-0.067890, -0.791445, 0.607458,
		27.234140, 39.039253, 24.252306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.767467, 39.822830, 24.182684>,  <27.281664, 39.593266, 23.827085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.767467, 39.822830, 24.182684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.913605, 39.530544, 24.413364>,  <27.001287, 39.355175, 24.551773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.913605, 39.530544, 24.413364>,  <26.767467, 39.822830, 24.182684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.913605, 39.530544, 24.413364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185813, 0.549816, 0.814356,
		-0.912140, -0.404677, 0.065095,
		0.365342, -0.730711, 0.576703,
		27.023207, 39.311333, 24.586376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.339394, 39.699051, 24.849688>,  <26.767467, 39.822830, 24.182684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.339394, 39.699051, 24.849688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705755, 39.551170, 24.912220>,  <26.925571, 39.462440, 24.949739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705755, 39.551170, 24.912220>,  <26.339394, 39.699051, 24.849688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.705755, 39.551170, 24.912220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002849, 0.395443, 0.918486,
		-0.401388, -0.840799, 0.363241,
		0.915903, -0.369704, 0.156331,
		26.980526, 39.440258, 24.959120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.388687, 39.494415, 25.625006>,  <26.339394, 39.699051, 24.849688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.388687, 39.494415, 25.625006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767416, 39.524952, 25.499981>,  <26.994654, 39.543274, 25.424967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767416, 39.524952, 25.499981>,  <26.388687, 39.494415, 25.625006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.767416, 39.524952, 25.499981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278214, 0.293692, 0.914517,
		0.161616, -0.952846, 0.256835,
		0.946825, 0.076346, -0.312561,
		27.051464, 39.547855, 25.406212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.748020, 39.192261, 26.118992>,  <26.388687, 39.494415, 25.625006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.748020, 39.192261, 26.118992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.008436, 39.432499, 25.933336>,  <27.164686, 39.576641, 25.821943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.008436, 39.432499, 25.933336>,  <26.748020, 39.192261, 26.118992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.008436, 39.432499, 25.933336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406184, 0.240896, 0.881467,
		0.641218, -0.762397, -0.087121,
		0.651040, 0.600600, -0.464141,
		27.203749, 39.612679, 25.794094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.387716, 39.045158, 26.370323>,  <26.748020, 39.192261, 26.118992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.387716, 39.045158, 26.370323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.427988, 39.408436, 26.207817>,  <27.452152, 39.626404, 26.110313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.427988, 39.408436, 26.207817>,  <27.387716, 39.045158, 26.370323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.427988, 39.408436, 26.207817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523888, 0.298750, 0.797678,
		0.845816, -0.293148, -0.445713,
		0.100681, 0.908192, -0.406264,
		27.458193, 39.680893, 26.085938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177568, 39.191525, 26.357115>,  <27.387716, 39.045158, 26.370323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.177568, 39.191525, 26.357115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982141, 39.540024, 26.338264>,  <27.864885, 39.749123, 26.326954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982141, 39.540024, 26.338264>,  <28.177568, 39.191525, 26.357115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.982141, 39.540024, 26.338264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481755, 0.314396, 0.817966,
		0.727469, 0.376931, -0.573334,
		-0.488570, 0.871251, -0.047125,
		27.835571, 39.801399, 26.324127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698938, 39.695004, 26.440626>,  <28.177568, 39.191525, 26.357115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698938, 39.695004, 26.440626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.355078, 39.880306, 26.526779>,  <28.148762, 39.991489, 26.578470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.355078, 39.880306, 26.526779>,  <28.698938, 39.695004, 26.440626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.355078, 39.880306, 26.526779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442523, 0.464545, 0.767053,
		0.255291, 0.754710, -0.604351,
		-0.859651, 0.463261, 0.215382,
		28.097183, 40.019283, 26.591394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067265, 39.645443, 25.792994>,  <28.698938, 39.695004, 26.440626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067265, 39.645443, 25.792994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.370331, 39.906479, 25.789557>,  <29.552170, 40.063099, 25.787495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.370331, 39.906479, 25.789557>,  <29.067265, 39.645443, 25.792994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.370331, 39.906479, 25.789557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446530, -0.527942, -0.722419,
		-0.475976, 0.543516, -0.691402,
		0.757666, 0.652586, -0.008591,
		29.597631, 40.102253, 25.786980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145731, 39.944721, 25.090448>,  <29.067265, 39.645443, 25.792994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145731, 39.944721, 25.090448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.500170, 39.993942, 25.269196>,  <29.712833, 40.023476, 25.376444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.500170, 39.993942, 25.269196>,  <29.145731, 39.944721, 25.090448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.500170, 39.993942, 25.269196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462245, -0.305520, -0.832459,
		0.034089, 0.944201, -0.327602,
		0.886097, 0.123055, 0.446867,
		29.765999, 40.030857, 25.403255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630127, 40.303730, 24.563883>,  <29.145731, 39.944721, 25.090448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.630127, 40.303730, 24.563883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869301, 40.173027, 24.856649>,  <30.012806, 40.094604, 25.032309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869301, 40.173027, 24.856649>,  <29.630127, 40.303730, 24.563883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869301, 40.173027, 24.856649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574325, -0.462313, -0.675587,
		0.559128, 0.824315, -0.088767,
		0.597935, -0.326759, 0.731917,
		30.048681, 40.075001, 25.076225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.426952, 40.471687, 24.424725>,  <29.630127, 40.303730, 24.563883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.426952, 40.471687, 24.424725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.446091, 40.158203, 24.672436>,  <30.457573, 39.970112, 24.821062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.446091, 40.158203, 24.672436>,  <30.426952, 40.471687, 24.424725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.446091, 40.158203, 24.672436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599809, -0.473215, -0.645210,
		0.798711, 0.402317, 0.447438,
		0.047844, -0.783714, 0.619276,
		30.460443, 39.923088, 24.858219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178362, 40.302715, 24.473660>,  <30.426952, 40.471687, 24.424725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178362, 40.302715, 24.473660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955370, 39.983833, 24.566339>,  <30.821575, 39.792503, 24.621948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955370, 39.983833, 24.566339>,  <31.178362, 40.302715, 24.473660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955370, 39.983833, 24.566339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558706, -0.566702, -0.605555,
		0.614055, -0.208132, 0.761326,
		-0.557481, -0.797201, 0.231702,
		30.788126, 39.744675, 24.635851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606464, 39.708160, 24.389677>,  <31.178362, 40.302715, 24.473660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606464, 39.708160, 24.389677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252186, 39.523033, 24.404343>,  <31.039619, 39.411957, 24.413141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252186, 39.523033, 24.404343>,  <31.606464, 39.708160, 24.389677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252186, 39.523033, 24.404343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306056, -0.641433, -0.703487,
		0.349102, -0.611855, 0.709762,
		-0.885696, -0.462815, 0.036664,
		30.986477, 39.384190, 24.415342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689051, 38.990238, 24.475626>,  <31.606464, 39.708160, 24.389677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689051, 38.990238, 24.475626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327112, 39.027451, 24.309444>,  <31.109949, 39.049778, 24.209736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327112, 39.027451, 24.309444>,  <31.689051, 38.990238, 24.475626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327112, 39.027451, 24.309444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228416, -0.717423, -0.658126,
		-0.359281, -0.690398, 0.627907,
		-0.904844, 0.093028, -0.415455,
		31.055658, 39.055359, 24.184809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413164, 38.184044, 24.396788>,  <31.689051, 38.990238, 24.475626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413164, 38.184044, 24.396788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210751, 38.428997, 24.153831>,  <31.089302, 38.575970, 24.008059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210751, 38.428997, 24.153831>,  <31.413164, 38.184044, 24.396788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210751, 38.428997, 24.153831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149033, -0.631537, -0.760888,
		-0.849540, -0.475556, 0.228315,
		-0.506034, 0.612379, -0.607390,
		31.058941, 38.612709, 23.971615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976130, 37.765396, 23.921934>,  <31.413164, 38.184044, 24.396788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976130, 37.765396, 23.921934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.985668, 38.112099, 23.722668>,  <30.991392, 38.320122, 23.603107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.985668, 38.112099, 23.722668>,  <30.976130, 37.765396, 23.921934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.985668, 38.112099, 23.722668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016313, -0.497902, -0.867080,
		-0.999582, 0.028805, 0.002265,
		0.023849, 0.866755, -0.498164,
		30.992823, 38.372124, 23.573219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.509605, 37.687523, 23.543970>,  <30.976130, 37.765396, 23.921934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.509605, 37.687523, 23.543970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746243, 37.963711, 23.377466>,  <30.888226, 38.129421, 23.277563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746243, 37.963711, 23.377466>,  <30.509605, 37.687523, 23.543970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746243, 37.963711, 23.377466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039375, -0.490942, -0.870302,
		-0.805274, 0.531255, -0.263251,
		0.591593, 0.690466, -0.416262,
		30.923721, 38.170849, 23.252588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203142, 37.978306, 22.969229>,  <30.509605, 37.687523, 23.543970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203142, 37.978306, 22.969229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582735, 38.068737, 22.881304>,  <30.810492, 38.122993, 22.828548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582735, 38.068737, 22.881304>,  <30.203142, 37.978306, 22.969229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582735, 38.068737, 22.881304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109526, -0.417373, -0.902111,
		-0.295690, 0.880165, -0.371319,
		0.948984, 0.226076, -0.219814,
		30.867430, 38.136559, 22.815359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.169075, 38.263237, 22.280680>,  <30.203142, 37.978306, 22.969229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.169075, 38.263237, 22.280680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.549406, 38.143417, 22.312181>,  <30.777605, 38.071526, 22.331083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.549406, 38.143417, 22.312181>,  <30.169075, 38.263237, 22.280680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.549406, 38.143417, 22.312181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049115, -0.396880, -0.916555,
		0.305806, 0.867617, -0.392076,
		0.950826, -0.299545, 0.078756,
		30.834654, 38.053555, 22.335808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.426235, 38.444420, 21.698662>,  <30.169075, 38.263237, 22.280680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.426235, 38.444420, 21.698662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679590, 38.170116, 21.842077>,  <30.831604, 38.005535, 21.928125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679590, 38.170116, 21.842077>,  <30.426235, 38.444420, 21.698662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679590, 38.170116, 21.842077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043762, -0.494327, -0.868174,
		0.772595, 0.534202, -0.343111,
		0.633389, -0.685762, 0.358537,
		30.869606, 37.964386, 21.949638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864443, 38.359776, 21.073997>,  <30.426235, 38.444420, 21.698662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864443, 38.359776, 21.073997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936451, 38.044533, 21.309448>,  <30.979656, 37.855389, 21.450718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936451, 38.044533, 21.309448>,  <30.864443, 38.359776, 21.073997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936451, 38.044533, 21.309448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231643, -0.615537, -0.753297,
		0.955999, -0.000742, -0.293369,
		0.180021, -0.788108, 0.588625,
		30.990458, 37.808102, 21.486036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201559, 37.905918, 20.655493>,  <30.864443, 38.359776, 21.073997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201559, 37.905918, 20.655493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064497, 37.688484, 20.961983>,  <30.982260, 37.558025, 21.145878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064497, 37.688484, 20.961983>,  <31.201559, 37.905918, 20.655493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064497, 37.688484, 20.961983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114669, -0.785304, -0.608398,
		0.932436, -0.296334, 0.206758,
		-0.342657, -0.543584, 0.766226,
		30.961700, 37.525410, 21.191851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611488, 37.332779, 20.658817>,  <31.201559, 37.905918, 20.655493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611488, 37.332779, 20.658817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291067, 37.213825, 20.866615>,  <31.098814, 37.142452, 20.991295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291067, 37.213825, 20.866615>,  <31.611488, 37.332779, 20.658817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291067, 37.213825, 20.866615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095793, -0.792990, -0.601657,
		0.590879, -0.531723, 0.606739,
		-0.801053, -0.297385, 0.519497,
		31.050751, 37.124611, 21.022465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799574, 36.639660, 20.737324>,  <31.611488, 37.332779, 20.658817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799574, 36.639660, 20.737324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406002, 36.680267, 20.796083>,  <31.169859, 36.704632, 20.831339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406002, 36.680267, 20.796083>,  <31.799574, 36.639660, 20.737324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406002, 36.680267, 20.796083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157385, -0.881646, -0.444895,
		0.084350, -0.460864, 0.883453,
		-0.983928, 0.101516, 0.146900,
		31.110823, 36.710724, 20.840153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446285, 35.950493, 20.922518>,  <31.799574, 36.639660, 20.737324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446285, 35.950493, 20.922518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.174854, 36.186096, 20.746971>,  <31.011995, 36.327457, 20.641644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.174854, 36.186096, 20.746971>,  <31.446285, 35.950493, 20.922518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174854, 36.186096, 20.746971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279839, -0.759724, -0.586950,
		-0.679135, -0.275479, 0.680358,
		-0.678576, 0.589008, -0.438866,
		30.971281, 36.362801, 20.615311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813322, 35.534607, 20.912836>,  <31.446285, 35.950493, 20.922518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813322, 35.534607, 20.912836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772228, 35.827114, 20.643110>,  <30.747572, 36.002617, 20.481276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772228, 35.827114, 20.643110>,  <30.813322, 35.534607, 20.912836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772228, 35.827114, 20.643110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380309, -0.655274, -0.652673,
		-0.919136, 0.189396, 0.345425,
		-0.102735, 0.731263, -0.674314,
		30.741407, 36.046494, 20.440817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236883, 35.456944, 20.613626>,  <30.813322, 35.534607, 20.912836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236883, 35.456944, 20.613626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393265, 35.702263, 20.339104>,  <30.487093, 35.849457, 20.174391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393265, 35.702263, 20.339104>,  <30.236883, 35.456944, 20.613626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393265, 35.702263, 20.339104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454536, -0.519734, -0.723376,
		-0.800345, 0.594757, 0.075576,
		0.390954, 0.613303, -0.686306,
		30.510551, 35.886253, 20.133211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681730, 35.594341, 20.102182>,  <30.236883, 35.456944, 20.613626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681730, 35.594341, 20.102182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036369, 35.668201, 19.932549>,  <30.249153, 35.712517, 19.830769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036369, 35.668201, 19.932549>,  <29.681730, 35.594341, 20.102182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.036369, 35.668201, 19.932549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259587, -0.560221, -0.786618,
		-0.382829, 0.807501, -0.448759,
		0.886598, 0.184648, -0.424085,
		30.302349, 35.723595, 19.805323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535639, 35.658302, 19.418768>,  <29.681730, 35.594341, 20.102182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535639, 35.658302, 19.418768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.924578, 35.566967, 19.438379>,  <30.157940, 35.512165, 19.450146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.924578, 35.566967, 19.438379>,  <29.535639, 35.658302, 19.418768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.924578, 35.566967, 19.438379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104947, -0.614739, -0.781717,
		0.208640, 0.754954, -0.621703,
		0.972345, -0.228343, 0.049029,
		30.216282, 35.498463, 19.453089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650875, 35.623230, 18.740604>,  <29.535639, 35.658302, 19.418768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650875, 35.623230, 18.740604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955118, 35.435825, 18.920368>,  <30.137665, 35.323383, 19.028227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955118, 35.435825, 18.920368>,  <29.650875, 35.623230, 18.740604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.955118, 35.435825, 18.920368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051305, -0.733454, -0.677800,
		0.647179, 0.492484, -0.581909,
		0.760609, -0.468513, 0.449409,
		30.183302, 35.295273, 19.055191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132683, 35.577641, 18.244217>,  <29.650875, 35.623230, 18.740604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.132683, 35.577641, 18.244217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221016, 35.294712, 18.512823>,  <30.274015, 35.124954, 18.673986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221016, 35.294712, 18.512823>,  <30.132683, 35.577641, 18.244217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.221016, 35.294712, 18.512823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147830, -0.704833, -0.693799,
		0.964043, 0.053944, -0.260214,
		0.220834, -0.707319, 0.671514,
		30.287266, 35.082516, 18.714277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532625, 35.068604, 17.920158>,  <30.132683, 35.577641, 18.244217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532625, 35.068604, 17.920158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372599, 34.874420, 18.231100>,  <30.276583, 34.757912, 18.417665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372599, 34.874420, 18.231100>,  <30.532625, 35.068604, 17.920158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.372599, 34.874420, 18.231100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162261, -0.797271, -0.581403,
		0.902008, -0.358735, 0.240191,
		-0.400067, -0.485456, 0.777354,
		30.252579, 34.728783, 18.464306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787703, 34.427685, 17.904945>,  <30.532625, 35.068604, 17.920158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787703, 34.427685, 17.904945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452028, 34.374306, 18.115835>,  <30.250624, 34.342278, 18.242369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452028, 34.374306, 18.115835>,  <30.787703, 34.427685, 17.904945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452028, 34.374306, 18.115835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055805, -0.943183, -0.327554,
		0.540978, -0.304299, 0.784057,
		-0.839183, -0.133445, 0.527222,
		30.200274, 34.334270, 18.274002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819998, 33.855579, 18.075401>,  <30.787703, 34.427685, 17.904945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819998, 33.855579, 18.075401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.430189, 33.877636, 18.162365>,  <30.196304, 33.890869, 18.214542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.430189, 33.877636, 18.162365>,  <30.819998, 33.855579, 18.075401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.430189, 33.877636, 18.162365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102798, -0.971317, -0.214420,
		0.199350, -0.231306, 0.952238,
		-0.974522, 0.055144, 0.217410,
		30.137833, 33.894180, 18.227589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824610, 33.374222, 18.514145>,  <30.819998, 33.855579, 18.075401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824610, 33.374222, 18.514145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459438, 33.428932, 18.360336>,  <30.240335, 33.461758, 18.268051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459438, 33.428932, 18.360336>,  <30.824610, 33.374222, 18.514145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459438, 33.428932, 18.360336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045295, -0.970304, -0.237611,
		-0.405603, -0.199504, 0.892012,
		-0.912926, 0.136779, -0.384521,
		30.185560, 33.469967, 18.244980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401720, 32.871246, 18.781971>,  <30.824610, 33.374222, 18.514145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401720, 32.871246, 18.781971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.178169, 32.985767, 18.470667>,  <30.044039, 33.054478, 18.283884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.178169, 32.985767, 18.470667>,  <30.401720, 32.871246, 18.781971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178169, 32.985767, 18.470667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288159, -0.947075, -0.141471,
		-0.777575, 0.145198, 0.611796,
		-0.558875, 0.286299, -0.778262,
		30.010508, 33.071655, 18.237188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636772, 32.592686, 18.868725>,  <30.401720, 32.871246, 18.781971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636772, 32.592686, 18.868725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.714302, 32.656204, 18.481485>,  <29.760820, 32.694313, 18.249142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.714302, 32.656204, 18.481485>,  <29.636772, 32.592686, 18.868725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714302, 32.656204, 18.481485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329690, -0.918877, -0.216725,
		-0.923979, 0.361180, -0.125748,
		0.193823, 0.158792, -0.968100,
		29.772449, 32.703842, 18.191055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.086945, 32.186737, 18.488937>,  <29.636772, 32.592686, 18.868725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.086945, 32.186737, 18.488937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.339556, 32.291809, 18.197138>,  <29.491123, 32.354851, 18.022058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.339556, 32.291809, 18.197138>,  <29.086945, 32.186737, 18.488937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.339556, 32.291809, 18.197138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040409, -0.950735, -0.307360,
		-0.774300, 0.164628, -0.611030,
		0.631528, 0.262680, -0.729501,
		29.529015, 32.370613, 17.978287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817419, 32.084175, 17.819565>,  <29.086945, 32.186737, 18.488937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817419, 32.084175, 17.819565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.211348, 32.046829, 17.761042>,  <29.447704, 32.024422, 17.725927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.211348, 32.046829, 17.761042>,  <28.817419, 32.084175, 17.819565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211348, 32.046829, 17.761042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138381, -0.931208, -0.337198,
		-0.104761, 0.352326, -0.929995,
		0.984823, -0.093368, -0.146310,
		29.506794, 32.018818, 17.717148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.930265, 31.813549, 17.074345>,  <28.817419, 32.084175, 17.819565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.930265, 31.813549, 17.074345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.280315, 31.757040, 17.259472>,  <29.490345, 31.723135, 17.370548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.280315, 31.757040, 17.259472>,  <28.930265, 31.813549, 17.074345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280315, 31.757040, 17.259472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055648, -0.920709, -0.386263,
		0.480688, 0.363783, -0.797873,
		0.875124, -0.141272, 0.462817,
		29.542852, 31.714659, 17.398317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.367895, 31.598400, 16.538239>,  <28.930265, 31.813549, 17.074345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.367895, 31.598400, 16.538239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527214, 31.475636, 16.883993>,  <29.622807, 31.401976, 17.091446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527214, 31.475636, 16.883993>,  <29.367895, 31.598400, 16.538239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527214, 31.475636, 16.883993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092950, -0.924005, -0.370912,
		0.912534, 0.228078, -0.339503,
		0.398299, -0.306913, 0.864385,
		29.646704, 31.383562, 17.143309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947433, 31.185835, 16.296139>,  <29.367895, 31.598400, 16.538239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947433, 31.185835, 16.296139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842968, 31.070963, 16.664772>,  <29.780289, 31.002039, 16.885952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842968, 31.070963, 16.664772>,  <29.947433, 31.185835, 16.296139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842968, 31.070963, 16.664772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239441, -0.944155, -0.226361,
		0.935126, 0.161548, 0.315343,
		-0.261165, -0.287182, 0.921586,
		29.764618, 30.984808, 16.941248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434669, 30.595726, 16.496027>,  <29.947433, 31.185835, 16.296139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434669, 30.595726, 16.496027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.119713, 30.564219, 16.740587>,  <29.930738, 30.545315, 16.887323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.119713, 30.564219, 16.740587>,  <30.434669, 30.595726, 16.496027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.119713, 30.564219, 16.740587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026196, -0.986632, -0.160846,
		0.615899, -0.142665, 0.774800,
		-0.787389, -0.078768, 0.611403,
		29.883495, 30.540588, 16.924007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593866, 29.934282, 16.912519>,  <30.434669, 30.595726, 16.496027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593866, 29.934282, 16.912519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203485, 30.012800, 16.950438>,  <29.969257, 30.059912, 16.973188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203485, 30.012800, 16.950438>,  <30.593866, 29.934282, 16.912519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.203485, 30.012800, 16.950438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209225, -0.965562, -0.154646,
		0.061174, -0.170761, 0.983412,
		-0.975952, 0.196294, 0.094795,
		29.910700, 30.071688, 16.978876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357876, 29.526123, 17.488173>,  <30.593866, 29.934282, 16.912519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.357876, 29.526123, 17.488173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027283, 29.594954, 17.273767>,  <29.828926, 29.636251, 17.145124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027283, 29.594954, 17.273767>,  <30.357876, 29.526123, 17.488173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027283, 29.594954, 17.273767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122945, -0.984327, -0.126429,
		-0.549369, -0.038591, 0.834688,
		-0.826485, 0.172077, -0.536015,
		29.779337, 29.646576, 17.112963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843987, 29.151556, 17.611704>,  <30.357876, 29.526123, 17.488173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843987, 29.151556, 17.611704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980818, 28.898884, 17.889975>,  <30.062916, 28.747280, 18.056936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980818, 28.898884, 17.889975>,  <29.843987, 29.151556, 17.611704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980818, 28.898884, 17.889975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448461, 0.760331, 0.469872,
		-0.825752, 0.151250, 0.543375,
		0.342077, -0.631680, 0.695675,
		30.083441, 28.709379, 18.098677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726091, 29.414089, 18.286549>,  <29.843987, 29.151556, 17.611704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726091, 29.414089, 18.286549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030031, 29.154699, 18.304928>,  <30.212395, 28.999065, 18.315956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030031, 29.154699, 18.304928>,  <29.726091, 29.414089, 18.286549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.030031, 29.154699, 18.304928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566155, 0.694819, 0.443503,
		-0.319527, -0.310981, 0.895094,
		0.759850, -0.648473, 0.045950,
		30.257986, 28.960157, 18.318712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005779, 29.533211, 18.959120>,  <29.726091, 29.414089, 18.286549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005779, 29.533211, 18.959120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304005, 29.348364, 18.767044>,  <30.482939, 29.237455, 18.651798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304005, 29.348364, 18.767044>,  <30.005779, 29.533211, 18.959120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304005, 29.348364, 18.767044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663645, 0.580688, 0.471568,
		0.060920, -0.670259, 0.739623,
		0.745563, -0.462119, -0.480190,
		30.527674, 29.209728, 18.622988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486351, 29.400860, 19.410055>,  <30.005779, 29.533211, 18.959120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486351, 29.400860, 19.410055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698000, 29.381998, 19.071161>,  <30.824989, 29.370682, 18.867825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698000, 29.381998, 19.071161>,  <30.486351, 29.400860, 19.410055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698000, 29.381998, 19.071161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773812, 0.436528, 0.458975,
		0.348199, -0.898454, 0.267464,
		0.529124, -0.047153, -0.847234,
		30.856737, 29.367851, 18.816992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237898, 29.285721, 19.628607>,  <30.486351, 29.400860, 19.410055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237898, 29.285721, 19.628607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247852, 29.442837, 19.260891>,  <31.253824, 29.537107, 19.040260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247852, 29.442837, 19.260891>,  <31.237898, 29.285721, 19.628607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247852, 29.442837, 19.260891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550103, 0.762451, 0.340668,
		0.834726, -0.514182, -0.197103,
		0.024884, 0.392792, -0.919291,
		31.255318, 29.560675, 18.985104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927040, 29.357340, 19.496580>,  <31.237898, 29.285721, 19.628607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927040, 29.357340, 19.496580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751085, 29.613251, 19.244490>,  <31.645512, 29.766798, 19.093235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751085, 29.613251, 19.244490>,  <31.927040, 29.357340, 19.496580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751085, 29.613251, 19.244490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603308, 0.730352, 0.320321,
		0.665221, -0.239315, -0.707255,
		-0.439887, 0.639777, -0.630226,
		31.619120, 29.805183, 19.055422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524273, 29.851362, 19.161703>,  <31.927040, 29.357340, 19.496580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524273, 29.851362, 19.161703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166195, 30.026859, 19.130384>,  <31.951347, 30.132158, 19.111593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166195, 30.026859, 19.130384>,  <32.524273, 29.851362, 19.161703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166195, 30.026859, 19.130384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384408, 0.849022, 0.362481,
		0.225512, 0.294392, -0.928696,
		-0.895195, 0.438742, -0.078298,
		31.897636, 30.158482, 19.106895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728855, 30.492905, 19.031937>,  <32.524273, 29.851362, 19.161703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728855, 30.492905, 19.031937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343220, 30.572569, 19.102215>,  <32.111839, 30.620367, 19.144382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343220, 30.572569, 19.102215>,  <32.728855, 30.492905, 19.031937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343220, 30.572569, 19.102215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248993, 0.907953, 0.337081,
		-0.092393, 0.368723, -0.924936,
		-0.964088, 0.199159, 0.175698,
		32.053993, 30.632317, 19.154924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529358, 31.170736, 18.740770>,  <32.728855, 30.492905, 19.031937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529358, 31.170736, 18.740770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262207, 31.081821, 19.024893>,  <32.101917, 31.028473, 19.195366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262207, 31.081821, 19.024893>,  <32.529358, 31.170736, 18.740770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262207, 31.081821, 19.024893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107225, 0.915667, 0.387371,
		-0.736512, 0.334877, -0.587714,
		-0.667872, -0.222285, 0.710307,
		32.061844, 31.015137, 19.237986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222237, 31.858952, 19.002098>,  <32.529358, 31.170736, 18.740770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222237, 31.858952, 19.002098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130001, 31.606600, 19.298428>,  <32.074661, 31.455189, 19.476225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130001, 31.606600, 19.298428>,  <32.222237, 31.858952, 19.002098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130001, 31.606600, 19.298428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060839, 0.750502, 0.658061,
		-0.971148, 0.196811, -0.134674,
		-0.230587, -0.630881, 0.740823,
		32.060825, 31.417336, 19.520674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639542, 32.131630, 19.371094>,  <32.222237, 31.858952, 19.002098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639542, 32.131630, 19.371094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775637, 31.883165, 19.653482>,  <31.857294, 31.734087, 19.822916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775637, 31.883165, 19.653482>,  <31.639542, 32.131630, 19.371094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775637, 31.883165, 19.653482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104813, 0.721032, 0.684928,
		-0.934479, -0.307035, 0.180218,
		0.340239, -0.621162, 0.705971,
		31.877708, 31.696817, 19.865274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265343, 32.141064, 20.066479>,  <31.639542, 32.131630, 19.371094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265343, 32.141064, 20.066479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653448, 32.056660, 20.113914>,  <31.886311, 32.006016, 20.142376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653448, 32.056660, 20.113914>,  <31.265343, 32.141064, 20.066479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653448, 32.056660, 20.113914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096580, 0.786738, 0.609685,
		-0.221950, -0.580102, 0.783722,
		0.970263, -0.211012, 0.118590,
		31.944527, 31.993357, 20.149492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394096, 32.214874, 20.824564>,  <31.265343, 32.141064, 20.066479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394096, 32.214874, 20.824564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753824, 32.210758, 20.649696>,  <31.969662, 32.208290, 20.544775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753824, 32.210758, 20.649696>,  <31.394096, 32.214874, 20.824564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753824, 32.210758, 20.649696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312187, 0.715145, 0.625385,
		0.306207, -0.698900, 0.646356,
		0.899320, -0.010287, -0.437170,
		32.023621, 32.207672, 20.518545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876621, 32.158016, 21.364037>,  <31.394096, 32.214874, 20.824564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876621, 32.158016, 21.364037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090885, 32.293755, 21.054737>,  <32.219444, 32.375198, 20.869158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090885, 32.293755, 21.054737>,  <31.876621, 32.158016, 21.364037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090885, 32.293755, 21.054737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280093, 0.792458, 0.541810,
		0.796618, -0.506813, 0.329452,
		0.535674, 0.339339, -0.773241,
		32.251583, 32.395557, 20.822763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435680, 32.553711, 21.663969>,  <31.876621, 32.158016, 21.364037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435680, 32.553711, 21.663969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495392, 32.685238, 21.290960>,  <32.531219, 32.764153, 21.067156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495392, 32.685238, 21.290960>,  <32.435680, 32.553711, 21.663969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495392, 32.685238, 21.290960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226520, 0.906636, 0.355948,
		0.962499, -0.264370, 0.060857,
		0.149277, 0.328814, -0.932522,
		32.540176, 32.783882, 21.011204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161186, 32.823284, 21.643799>,  <32.435680, 32.553711, 21.663969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161186, 32.823284, 21.643799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948029, 32.965290, 21.336555>,  <32.820133, 33.050491, 21.152210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948029, 32.965290, 21.336555>,  <33.161186, 32.823284, 21.643799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948029, 32.965290, 21.336555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237507, 0.933998, 0.266905,
		0.812164, -0.040197, -0.582043,
		-0.532898, 0.355010, -0.768106,
		32.788158, 33.071793, 21.106123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549980, 33.438766, 21.363804>,  <33.161186, 32.823284, 21.643799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549980, 33.438766, 21.363804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162746, 33.472660, 21.269459>,  <32.930405, 33.492996, 21.212852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162746, 33.472660, 21.269459>,  <33.549980, 33.438766, 21.363804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162746, 33.472660, 21.269459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052600, 0.988844, 0.139358,
		0.245039, 0.122504, -0.961742,
		-0.968085, 0.084736, -0.235862,
		32.872322, 33.498081, 21.198700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543106, 33.906986, 20.868366>,  <33.549980, 33.438766, 21.363804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543106, 33.906986, 20.868366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171661, 33.891640, 21.015993>,  <32.948795, 33.882431, 21.104568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171661, 33.891640, 21.015993>,  <33.543106, 33.906986, 20.868366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171661, 33.891640, 21.015993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005342, 0.993155, 0.116677,
		-0.371015, 0.110319, -0.922051,
		-0.928611, -0.038363, 0.369065,
		32.893078, 33.880131, 21.126713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150055, 34.519238, 20.700819>,  <33.543106, 33.906986, 20.868366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150055, 34.519238, 20.700819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918774, 34.398296, 21.003942>,  <32.780006, 34.325733, 21.185816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918774, 34.398296, 21.003942>,  <33.150055, 34.519238, 20.700819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918774, 34.398296, 21.003942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188631, 0.953177, 0.236373,
		-0.793791, -0.006275, -0.608159,
		-0.578199, -0.302348, 0.757806,
		32.745316, 34.307590, 21.231285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720860, 35.029373, 20.793890>,  <33.150055, 34.519238, 20.700819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720860, 35.029373, 20.793890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681080, 34.819061, 21.131805>,  <32.657211, 34.692875, 21.334555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681080, 34.819061, 21.131805>,  <32.720860, 35.029373, 20.793890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681080, 34.819061, 21.131805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144601, 0.847622, 0.510517,
		-0.984480, -0.071388, -0.160321,
		-0.099447, -0.525776, 0.844790,
		32.651245, 34.661327, 21.385242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112293, 35.288219, 21.115852>,  <32.720860, 35.029373, 20.793890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112293, 35.288219, 21.115852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316948, 35.112755, 21.411366>,  <32.439739, 35.007477, 21.588673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316948, 35.112755, 21.411366>,  <32.112293, 35.288219, 21.115852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316948, 35.112755, 21.411366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069007, 0.836092, 0.544232,
		-0.856426, -0.329431, 0.397505,
		0.511637, -0.438664, 0.738784,
		32.470440, 34.981155, 21.633001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779667, 35.512981, 21.802513>,  <32.112293, 35.288219, 21.115852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779667, 35.512981, 21.802513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160278, 35.411469, 21.872013>,  <32.388645, 35.350559, 21.913713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160278, 35.411469, 21.872013>,  <31.779667, 35.512981, 21.802513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160278, 35.411469, 21.872013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095603, 0.780989, 0.617184,
		-0.292327, -0.570656, 0.767396,
		0.951528, -0.253785, 0.173748,
		32.445736, 35.335335, 21.924137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774624, 35.590294, 22.466824>,  <31.779667, 35.512981, 21.802513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774624, 35.590294, 22.466824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164272, 35.590328, 22.376411>,  <32.398060, 35.590347, 22.322165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164272, 35.590328, 22.376411>,  <31.774624, 35.590294, 22.466824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164272, 35.590328, 22.376411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145192, 0.766172, 0.626019,
		0.173229, -0.642636, 0.746332,
		0.974121, 0.000083, -0.226028,
		32.456509, 35.590355, 22.308603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056404, 35.540035, 23.114901>,  <31.774624, 35.590294, 22.466824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056404, 35.540035, 23.114901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361542, 35.651306, 22.881426>,  <32.544624, 35.718067, 22.741341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361542, 35.651306, 22.881426>,  <32.056404, 35.540035, 23.114901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361542, 35.651306, 22.881426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310117, 0.634708, 0.707795,
		0.567362, -0.720947, 0.397915,
		0.762842, 0.278176, -0.583686,
		32.590393, 35.734760, 22.706320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585350, 35.630424, 23.537729>,  <32.056404, 35.540035, 23.114901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585350, 35.630424, 23.537729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701435, 35.860188, 23.231571>,  <32.771084, 35.998047, 23.047876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701435, 35.860188, 23.231571>,  <32.585350, 35.630424, 23.537729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701435, 35.860188, 23.231571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351666, 0.679842, 0.643542,
		0.890005, -0.455926, -0.004704,
		0.290209, 0.574409, -0.765397,
		32.788498, 36.032509, 23.001951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257092, 35.935383, 23.793451>,  <32.585350, 35.630424, 23.537729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257092, 35.935383, 23.793451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145073, 36.145489, 23.472036>,  <33.077862, 36.271553, 23.279188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145073, 36.145489, 23.472036>,  <33.257092, 35.935383, 23.793451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145073, 36.145489, 23.472036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392226, 0.826585, 0.403627,
		0.876202, -0.202132, -0.437507,
		-0.280051, 0.525261, -0.803537,
		33.061058, 36.303066, 23.230974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824680, 36.369480, 23.521347>,  <33.257092, 35.935383, 23.793451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824680, 36.369480, 23.521347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485157, 36.541451, 23.398258>,  <33.281445, 36.644634, 23.324406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485157, 36.541451, 23.398258>,  <33.824680, 36.369480, 23.521347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485157, 36.541451, 23.398258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329442, 0.885308, 0.328173,
		0.413518, 0.177179, -0.893090,
		-0.848805, 0.429927, -0.307721,
		33.230515, 36.670429, 23.305943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072186, 36.959126, 23.110147>,  <33.824680, 36.369480, 23.521347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072186, 36.959126, 23.110147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693916, 37.029091, 23.219770>,  <33.466953, 37.071072, 23.285543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693916, 37.029091, 23.219770>,  <34.072186, 36.959126, 23.110147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693916, 37.029091, 23.219770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280968, 0.863803, 0.418213,
		-0.163579, 0.472493, -0.866021,
		-0.945674, 0.174913, 0.274055,
		33.410213, 37.081566, 23.301987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911125, 37.718307, 23.050056>,  <34.072186, 36.959126, 23.110147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911125, 37.718307, 23.050056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624580, 37.585335, 23.295435>,  <33.452652, 37.505550, 23.442661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624580, 37.585335, 23.295435>,  <33.911125, 37.718307, 23.050056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624580, 37.585335, 23.295435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225968, 0.721281, 0.654745,
		-0.660124, 0.607654, -0.441580,
		-0.716362, -0.332430, 0.613445,
		33.409672, 37.485607, 23.479469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500462, 38.283333, 23.223614>,  <33.911125, 37.718307, 23.050056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500462, 38.283333, 23.223614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471600, 38.013649, 23.517616>,  <33.454281, 37.851837, 23.694017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471600, 38.013649, 23.517616>,  <33.500462, 38.283333, 23.223614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471600, 38.013649, 23.517616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303540, 0.687127, 0.660091,
		-0.950082, 0.270735, 0.155067,
		-0.072159, -0.674209, 0.735006,
		33.449951, 37.811386, 23.738119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102627, 38.647320, 23.703661>,  <33.500462, 38.283333, 23.223614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102627, 38.647320, 23.703661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263828, 38.341629, 23.905075>,  <33.360550, 38.158215, 24.025923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263828, 38.341629, 23.905075>,  <33.102627, 38.647320, 23.703661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263828, 38.341629, 23.905075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212201, 0.613222, 0.760874,
		-0.890260, -0.199781, 0.409299,
		0.403000, -0.764229, 0.503533,
		33.384727, 38.112362, 24.056135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925251, 38.697094, 24.408957>,  <33.102627, 38.647320, 23.703661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925251, 38.697094, 24.408957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273499, 38.501694, 24.432236>,  <33.482449, 38.384453, 24.446203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273499, 38.501694, 24.432236>,  <32.925251, 38.697094, 24.408957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273499, 38.501694, 24.432236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300206, 0.621273, 0.723806,
		-0.389735, -0.612690, 0.687544,
		0.870622, -0.488497, 0.058198,
		33.534687, 38.355145, 24.449696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957745, 38.590942, 25.142208>,  <32.925251, 38.697094, 24.408957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957745, 38.590942, 25.142208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316738, 38.506870, 24.987112>,  <33.532135, 38.456429, 24.894054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316738, 38.506870, 24.987112>,  <32.957745, 38.590942, 25.142208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316738, 38.506870, 24.987112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440921, 0.448018, 0.777733,
		0.010251, -0.868968, 0.494762,
		0.897487, -0.210179, -0.387739,
		33.585983, 38.443817, 24.870790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305386, 38.307262, 25.621145>,  <32.957745, 38.590942, 25.142208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305386, 38.307262, 25.621145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606155, 38.435509, 25.390732>,  <33.786617, 38.512455, 25.252483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606155, 38.435509, 25.390732>,  <33.305386, 38.307262, 25.621145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606155, 38.435509, 25.390732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508897, 0.273168, 0.816335,
		0.419080, -0.906966, 0.042245,
		0.751928, 0.320611, -0.576031,
		33.831734, 38.531693, 25.217922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889591, 38.031273, 25.918497>,  <33.305386, 38.307262, 25.621145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889591, 38.031273, 25.918497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008450, 38.351978, 25.711081>,  <34.079765, 38.544399, 25.586630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008450, 38.351978, 25.711081>,  <33.889591, 38.031273, 25.918497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008450, 38.351978, 25.711081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422184, 0.376782, 0.824498,
		0.856427, -0.463913, -0.226533,
		0.297141, 0.801761, -0.518543,
		34.097591, 38.592506, 25.555517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641159, 38.041245, 26.021305>,  <33.889591, 38.031273, 25.918497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641159, 38.041245, 26.021305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.522350, 38.408951, 25.917976>,  <34.451065, 38.629574, 25.855978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.522350, 38.408951, 25.917976>,  <34.641159, 38.041245, 26.021305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522350, 38.408951, 25.917976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578584, 0.388480, 0.717164,
		0.759616, 0.063555, -0.647259,
		-0.297026, 0.919263, -0.258324,
		34.433243, 38.684731, 25.840479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267578, 38.498848, 26.164555>,  <34.641159, 38.041245, 26.021305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267578, 38.498848, 26.164555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980057, 38.773911, 26.123655>,  <34.807545, 38.938950, 26.099115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980057, 38.773911, 26.123655>,  <35.267578, 38.498848, 26.164555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980057, 38.773911, 26.123655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491564, 0.606718, 0.624706,
		0.491619, 0.398777, -0.774136,
		-0.718801, 0.687655, -0.102250,
		34.764416, 38.980206, 26.092981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673412, 39.044155, 26.271761>,  <35.267578, 38.498848, 26.164555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673412, 39.044155, 26.271761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289127, 39.140949, 26.326128>,  <35.058556, 39.199024, 26.358747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289127, 39.140949, 26.326128>,  <35.673412, 39.044155, 26.271761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289127, 39.140949, 26.326128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245597, 0.513110, 0.822436,
		0.129277, 0.823506, -0.552382,
		-0.960713, 0.241985, 0.135918,
		35.000912, 39.213547, 26.366903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504288, 39.834198, 26.191179>,  <35.673412, 39.044155, 26.271761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504288, 39.834198, 26.191179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249825, 39.646049, 26.435820>,  <35.097149, 39.533161, 26.582603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249825, 39.646049, 26.435820>,  <35.504288, 39.834198, 26.191179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249825, 39.646049, 26.435820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255922, 0.619165, 0.742387,
		-0.727881, 0.628796, -0.273506,
		-0.636155, -0.470373, 0.611601,
		35.058979, 39.504936, 26.619299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220501, 40.428280, 26.583908>,  <35.504288, 39.834198, 26.191179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220501, 40.428280, 26.583908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138149, 40.111691, 26.814100>,  <35.088737, 39.921738, 26.952215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138149, 40.111691, 26.814100>,  <35.220501, 40.428280, 26.583908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138149, 40.111691, 26.814100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077514, 0.599423, 0.796670,
		-0.975502, 0.119412, -0.184761,
		-0.205881, -0.791475, 0.575482,
		35.076385, 39.874249, 26.986746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664814, 40.658253, 27.079678>,  <35.220501, 40.428280, 26.583908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664814, 40.658253, 27.079678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870796, 40.349136, 27.228062>,  <34.994385, 40.163666, 27.317093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870796, 40.349136, 27.228062>,  <34.664814, 40.658253, 27.079678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870796, 40.349136, 27.228062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070019, 0.393384, 0.916704,
		-0.854354, -0.498034, 0.148464,
		0.514953, -0.772794, 0.370962,
		35.025284, 40.117298, 27.339350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384716, 40.729126, 27.198584>,  <34.664814, 40.658253, 27.079678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384716, 40.729126, 27.198584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422607, 41.127087, 27.184700>,  <35.445343, 41.365864, 27.176371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422607, 41.127087, 27.184700>,  <35.384716, 40.729126, 27.198584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422607, 41.127087, 27.184700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537164, -0.021728, 0.843198,
		0.838142, -0.098517, -0.536481,
		0.094726, 0.994898, -0.034709,
		35.451027, 41.425556, 27.174288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293251, 40.893711, 27.881168>,  <35.384716, 40.729126, 27.198584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293251, 40.893711, 27.881168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907925, 40.998829, 27.859396>,  <34.676727, 41.061901, 27.846333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907925, 40.998829, 27.859396>,  <35.293251, 40.893711, 27.881168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907925, 40.998829, 27.859396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023766, 0.285562, 0.958065,
		0.267319, 0.921625, -0.281332,
		-0.963315, 0.262795, -0.054433,
		34.618931, 41.077667, 27.843065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209614, 41.585426, 28.059334>,  <35.293251, 40.893711, 27.881168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209614, 41.585426, 28.059334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873833, 41.399681, 28.172249>,  <34.672363, 41.288235, 28.239998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873833, 41.399681, 28.172249>,  <35.209614, 41.585426, 28.059334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873833, 41.399681, 28.172249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109817, 0.363781, 0.924989,
		-0.532225, 0.807482, -0.254380,
		-0.839450, -0.464367, 0.282289,
		34.621998, 41.260372, 28.256935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830719, 42.068432, 28.340641>,  <35.209614, 41.585426, 28.059334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830719, 42.068432, 28.340641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799221, 41.688229, 28.460869>,  <34.780323, 41.460106, 28.533005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799221, 41.688229, 28.460869>,  <34.830719, 42.068432, 28.340641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799221, 41.688229, 28.460869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277214, 0.268735, 0.922461,
		-0.957576, 0.155958, 0.242332,
		-0.078741, -0.950504, 0.300568,
		34.775600, 41.403076, 28.551039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558708, 42.073780, 28.914928>,  <34.830719, 42.068432, 28.340641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558708, 42.073780, 28.914928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711052, 41.705238, 28.946053>,  <34.802456, 41.484112, 28.964727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711052, 41.705238, 28.946053>,  <34.558708, 42.073780, 28.914928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711052, 41.705238, 28.946053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206869, 0.166928, 0.964023,
		-0.901196, -0.351056, 0.254175,
		0.380855, -0.921355, 0.077813,
		34.825310, 41.428833, 28.969397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389244, 41.905624, 29.634716>,  <34.558708, 42.073780, 28.914928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389244, 41.905624, 29.634716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717041, 41.712421, 29.511335>,  <34.913719, 41.596500, 29.437307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717041, 41.712421, 29.511335>,  <34.389244, 41.905624, 29.634716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717041, 41.712421, 29.511335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463949, 0.243165, 0.851834,
		-0.336436, -0.841176, 0.423361,
		0.819489, -0.483006, -0.308453,
		34.962887, 41.567520, 29.418798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523926, 41.461357, 30.166538>,  <34.389244, 41.905624, 29.634716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523926, 41.461357, 30.166538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848961, 41.555862, 29.953417>,  <35.043983, 41.612568, 29.825544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848961, 41.555862, 29.953417>,  <34.523926, 41.461357, 30.166538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848961, 41.555862, 29.953417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460747, 0.299459, 0.835486,
		0.356949, -0.924393, 0.134479,
		0.812588, 0.236265, -0.532803,
		35.092739, 41.626743, 29.793575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222622, 41.051674, 30.252045>,  <34.523926, 41.461357, 30.166538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222622, 41.051674, 30.252045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268375, 41.444439, 30.191690>,  <35.295826, 41.680099, 30.155478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268375, 41.444439, 30.191690>,  <35.222622, 41.051674, 30.252045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268375, 41.444439, 30.191690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375353, 0.097907, 0.921696,
		0.919797, -0.162061, -0.357365,
		0.114383, 0.981912, -0.150884,
		35.302689, 41.739014, 30.146425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972977, 41.316921, 30.390755>,  <35.222622, 41.051674, 30.252045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972977, 41.316921, 30.390755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672810, 41.566505, 30.477972>,  <35.492710, 41.716255, 30.530302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672810, 41.566505, 30.477972>,  <35.972977, 41.316921, 30.390755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672810, 41.566505, 30.477972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356826, 0.104758, 0.928278,
		0.556370, 0.774400, -0.301258,
		-0.750418, 0.623963, 0.218042,
		35.447685, 41.753693, 30.543385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169159, 41.267136, 31.123793>,  <35.972977, 41.316921, 30.390755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169159, 41.267136, 31.123793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882404, 41.541538, 31.074034>,  <35.710354, 41.706181, 31.044178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882404, 41.541538, 31.074034>,  <36.169159, 41.267136, 31.123793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882404, 41.541538, 31.074034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048276, 0.226839, 0.972735,
		0.695518, 0.691334, -0.195734,
		-0.716885, 0.686004, -0.124396,
		35.667339, 41.747341, 31.036715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333569, 41.938034, 31.468931>,  <36.169159, 41.267136, 31.123793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333569, 41.938034, 31.468931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937016, 41.886967, 31.457127>,  <35.699085, 41.856327, 31.450045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937016, 41.886967, 31.457127>,  <36.333569, 41.938034, 31.468931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937016, 41.886967, 31.457127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059151, 0.235080, 0.970174,
		-0.116920, 0.963555, -0.240605,
		-0.991378, -0.127664, -0.029510,
		35.639603, 41.848667, 31.448273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895729, 42.637878, 31.460081>,  <36.333569, 41.938034, 31.468931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895729, 42.637878, 31.460081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742260, 42.306026, 31.622318>,  <35.650177, 42.106915, 31.719660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742260, 42.306026, 31.622318>,  <35.895729, 42.637878, 31.460081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742260, 42.306026, 31.622318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108849, 0.476772, 0.872262,
		-0.917030, 0.290519, -0.273231,
		-0.383677, -0.829631, 0.405591,
		35.627155, 42.057137, 31.743996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064362, 42.223831, 32.122173>,  <35.895729, 42.637878, 31.460081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064362, 42.223831, 32.122173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359917, 42.285870, 32.384468>,  <36.537251, 42.323093, 32.541843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359917, 42.285870, 32.384468>,  <36.064362, 42.223831, 32.122173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359917, 42.285870, 32.384468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474149, 0.811130, 0.342419,
		-0.478778, -0.563925, 0.672875,
		0.738887, 0.155101, 0.655736,
		36.581581, 42.332401, 32.581188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762032, 42.223316, 32.743801>,  <36.064362, 42.223831, 32.122173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762032, 42.223316, 32.743801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102139, 42.430580, 32.780819>,  <36.306202, 42.554939, 32.803032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102139, 42.430580, 32.780819>,  <35.762032, 42.223316, 32.743801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102139, 42.430580, 32.780819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519197, 0.796733, 0.309274,
		0.086516, -0.311015, 0.946459,
		0.850264, 0.518156, 0.092548,
		36.357220, 42.586025, 32.808582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685871, 42.595356, 33.346519>,  <35.762032, 42.223316, 32.743801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685871, 42.595356, 33.346519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971886, 42.816673, 33.175598>,  <36.143494, 42.949463, 33.073044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971886, 42.816673, 33.175598>,  <35.685871, 42.595356, 33.346519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971886, 42.816673, 33.175598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393045, 0.823652, 0.408795,
		0.578135, -0.124353, 0.806409,
		0.715035, 0.553294, -0.427306,
		36.186398, 42.982662, 33.047405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918953, 43.052502, 33.832130>,  <35.685871, 42.595356, 33.346519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918953, 43.052502, 33.832130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009369, 43.205494, 33.473774>,  <36.063618, 43.297291, 33.258762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009369, 43.205494, 33.473774>,  <35.918953, 43.052502, 33.832130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009369, 43.205494, 33.473774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590709, 0.785118, 0.186152,
		0.774577, 0.487131, 0.403402,
		0.226038, 0.382482, -0.895887,
		36.077179, 43.320240, 33.205009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984077, 43.759075, 33.916573>,  <35.918953, 43.052502, 33.832130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984077, 43.759075, 33.916573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924244, 43.726967, 33.522377>,  <35.888344, 43.707703, 33.285862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924244, 43.726967, 33.522377>,  <35.984077, 43.759075, 33.916573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924244, 43.726967, 33.522377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597615, 0.801379, 0.025432,
		0.787706, 0.592746, -0.167844,
		-0.149582, -0.080273, -0.985485,
		35.879368, 43.702885, 33.226730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013248, 44.477886, 33.744583>,  <35.984077, 43.759075, 33.916573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013248, 44.477886, 33.744583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801868, 44.253761, 33.489464>,  <35.675041, 44.119286, 33.336391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801868, 44.253761, 33.489464>,  <36.013248, 44.477886, 33.744583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801868, 44.253761, 33.489464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693266, 0.718444, -0.056754,
		0.490023, 0.412172, -0.768110,
		-0.528452, -0.560315, -0.637798,
		35.643333, 44.085667, 33.298122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782494, 44.942345, 33.258114>,  <36.013248, 44.477886, 33.744583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782494, 44.942345, 33.258114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531918, 44.631813, 33.230164>,  <35.381573, 44.445496, 33.213394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531918, 44.631813, 33.230164>,  <35.782494, 44.942345, 33.258114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531918, 44.631813, 33.230164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768798, 0.630160, -0.108845,
		0.128534, -0.014462, -0.991600,
		-0.626441, -0.776331, -0.069879,
		35.343987, 44.398914, 33.209198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153824, 45.240852, 32.943130>,  <35.782494, 44.942345, 33.258114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153824, 45.240852, 32.943130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043308, 44.895252, 33.111500>,  <34.976997, 44.687893, 33.212521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043308, 44.895252, 33.111500>,  <35.153824, 45.240852, 32.943130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043308, 44.895252, 33.111500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919369, 0.365222, 0.146197,
		-0.280042, -0.346587, -0.895240,
		-0.276291, -0.863997, 0.420919,
		34.960423, 44.636055, 33.237774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498077, 44.887146, 32.568508>,  <35.153824, 45.240852, 32.943130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498077, 44.887146, 32.568508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531685, 44.911381, 32.966358>,  <34.551849, 44.925922, 33.205067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531685, 44.911381, 32.966358>,  <34.498077, 44.887146, 32.568508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531685, 44.911381, 32.966358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937567, 0.342884, 0.058308,
		-0.337506, -0.937422, 0.085610,
		0.084014, 0.060586, 0.994621,
		34.556889, 44.929558, 33.264744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934048, 44.550705, 32.901627>,  <34.498077, 44.887146, 32.568508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934048, 44.550705, 32.901627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045921, 44.804527, 33.189823>,  <34.113045, 44.956821, 33.362743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045921, 44.804527, 33.189823>,  <33.934048, 44.550705, 32.901627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045921, 44.804527, 33.189823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942694, 0.039292, 0.331336,
		0.181943, -0.771875, 0.609184,
		0.279686, 0.634559, 0.720494,
		34.129826, 44.994896, 33.405972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826332, 44.303970, 33.699001>,  <33.934048, 44.550705, 32.901627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826332, 44.303970, 33.699001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787827, 44.673756, 33.551434>,  <33.764721, 44.895626, 33.462894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787827, 44.673756, 33.551434>,  <33.826332, 44.303970, 33.699001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787827, 44.673756, 33.551434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949604, 0.025778, 0.312390,
		0.298303, 0.380396, 0.875393,
		-0.096266, 0.924464, -0.368916,
		33.758945, 44.951096, 33.440758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174644, 43.866577, 33.309433>,  <33.826332, 44.303970, 33.699001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174644, 43.866577, 33.309433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450054, 44.122944, 33.173687>,  <34.615299, 44.276764, 33.092239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450054, 44.122944, 33.173687>,  <34.174644, 43.866577, 33.309433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450054, 44.122944, 33.173687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708740, -0.693842, 0.127557,
		-0.153712, -0.328347, -0.931966,
		0.688520, 0.640914, -0.339365,
		34.656609, 44.315220, 33.071877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658894, 43.422565, 32.911182>,  <34.174644, 43.866577, 33.309433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658894, 43.422565, 32.911182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871517, 43.753311, 32.984661>,  <34.999092, 43.951759, 33.028748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871517, 43.753311, 32.984661>,  <34.658894, 43.422565, 32.911182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871517, 43.753311, 32.984661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845136, -0.532217, -0.049902,
		0.056503, 0.181773, -0.981716,
		0.531556, 0.826864, 0.183694,
		35.030983, 44.001369, 33.039768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125431, 43.435608, 32.366272>,  <34.658894, 43.422565, 32.911182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125431, 43.435608, 32.366272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300816, 43.670673, 32.638271>,  <35.406044, 43.811714, 32.801472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300816, 43.670673, 32.638271>,  <35.125431, 43.435608, 32.366272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300816, 43.670673, 32.638271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877406, -0.443803, -0.182201,
		0.194714, 0.676526, -0.710211,
		0.438457, 0.587667, 0.680002,
		35.432354, 43.846973, 32.842274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659813, 43.726986, 31.987396>,  <35.125431, 43.435608, 32.366272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659813, 43.726986, 31.987396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717598, 43.690792, 32.381542>,  <35.752270, 43.669075, 32.618031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717598, 43.690792, 32.381542>,  <35.659813, 43.726986, 31.987396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717598, 43.690792, 32.381542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768982, -0.616433, -0.169342,
		0.622734, 0.782191, -0.019467,
		0.144458, -0.090485, 0.985365,
		35.760937, 43.663647, 32.677151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379425, 43.624756, 31.986914>,  <35.659813, 43.726986, 31.987396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379425, 43.624756, 31.986914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282921, 43.541451, 32.366055>,  <36.225018, 43.491467, 32.593540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282921, 43.541451, 32.366055>,  <36.379425, 43.624756, 31.986914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282921, 43.541451, 32.366055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770126, -0.635392, 0.056420,
		0.590506, 0.743576, 0.313683,
		-0.241264, -0.208260, 0.947850,
		36.210541, 43.478973, 32.650410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986069, 43.645393, 32.334641>,  <36.379425, 43.624756, 31.986914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986069, 43.645393, 32.334641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760693, 43.428726, 32.584160>,  <36.625465, 43.298725, 32.733871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760693, 43.428726, 32.584160>,  <36.986069, 43.645393, 32.334641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760693, 43.428726, 32.584160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750626, -0.651052, 0.112663,
		0.345101, 0.531720, 0.773421,
		-0.563442, -0.541669, 0.623801,
		36.591660, 43.266224, 32.771301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455654, 43.262451, 32.744747>,  <36.986069, 43.645393, 32.334641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455654, 43.262451, 32.744747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118713, 43.059761, 32.818146>,  <36.916550, 42.938145, 32.862186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118713, 43.059761, 32.818146>,  <37.455654, 43.262451, 32.744747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118713, 43.059761, 32.818146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509767, -0.859648, -0.033817,
		0.174879, 0.065055, 0.982438,
		-0.842351, -0.506728, 0.183497,
		36.866009, 42.907742, 32.873196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621307, 42.721691, 33.362850>,  <37.455654, 43.262451, 32.744747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621307, 42.721691, 33.362850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314041, 42.574047, 33.153595>,  <37.129681, 42.485458, 33.028042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314041, 42.574047, 33.153595>,  <37.621307, 42.721691, 33.362850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314041, 42.574047, 33.153595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496425, -0.859381, -0.122584,
		-0.404329, -0.353865, 0.843384,
		-0.768167, -0.369113, -0.523140,
		37.083591, 42.463314, 32.996655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319866, 42.092148, 33.568218>,  <37.621307, 42.721691, 33.362850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319866, 42.092148, 33.568218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296352, 42.086895, 33.168945>,  <37.282242, 42.083744, 32.929382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296352, 42.086895, 33.168945>,  <37.319866, 42.092148, 33.568218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296352, 42.086895, 33.168945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544485, -0.838507, -0.021035,
		-0.836708, -0.544733, 0.056444,
		-0.058787, -0.013133, -0.998184,
		37.278717, 42.082954, 32.869492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119919, 41.386459, 33.288021>,  <37.319866, 42.092148, 33.568218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119919, 41.386459, 33.288021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307533, 41.556599, 32.978420>,  <37.420101, 41.658684, 32.792660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307533, 41.556599, 32.978420>,  <37.119919, 41.386459, 33.288021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307533, 41.556599, 32.978420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441248, -0.872026, -0.211828,
		-0.765054, -0.242173, -0.596695,
		0.469035, 0.425350, -0.774005,
		37.448242, 41.684204, 32.746220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077190, 41.010559, 32.585629>,  <37.119919, 41.386459, 33.288021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077190, 41.010559, 32.585629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448322, 41.157547, 32.611244>,  <37.671001, 41.245739, 32.626614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448322, 41.157547, 32.611244>,  <37.077190, 41.010559, 32.585629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448322, 41.157547, 32.611244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369198, -0.880246, -0.298093,
		-0.053169, 0.300223, -0.952386,
		0.927829, 0.367468, 0.064040,
		37.726669, 41.267788, 32.630455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494728, 41.097130, 31.832977>,  <37.077190, 41.010559, 32.585629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494728, 41.097130, 31.832977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689079, 40.993053, 32.166737>,  <37.805691, 40.930607, 32.366993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689079, 40.993053, 32.166737>,  <37.494728, 41.097130, 31.832977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689079, 40.993053, 32.166737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404131, -0.779604, -0.478431,
		0.774985, 0.569666, -0.273642,
		0.485878, -0.260190, 0.834401,
		37.834843, 40.914997, 32.417057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018021, 40.782372, 31.525616>,  <37.494728, 41.097130, 31.832977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018021, 40.782372, 31.525616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988270, 40.644257, 31.899834>,  <37.970417, 40.561386, 32.124363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988270, 40.644257, 31.899834>,  <38.018021, 40.782372, 31.525616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988270, 40.644257, 31.899834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250127, -0.914613, -0.317679,
		0.965352, 0.210376, 0.154395,
		-0.074380, -0.345290, 0.935544,
		37.965958, 40.540668, 32.180496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032688, 40.062050, 31.460503>,  <38.018021, 40.782372, 31.525616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032688, 40.062050, 31.460503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048943, 40.064342, 31.860167>,  <38.058693, 40.065716, 32.099964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048943, 40.064342, 31.860167>,  <38.032688, 40.062050, 31.460503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048943, 40.064342, 31.860167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124436, -0.992227, 0.000629,
		0.991395, 0.124306, -0.041028,
		0.040631, 0.005729, 0.999158,
		38.061131, 40.066063, 32.159912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687813, 39.863976, 31.647490>,  <38.032688, 40.062050, 31.460503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687813, 39.863976, 31.647490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428520, 39.780865, 31.940510>,  <38.272945, 39.730999, 32.116322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428520, 39.780865, 31.940510>,  <38.687813, 39.863976, 31.647490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428520, 39.780865, 31.940510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417500, -0.901530, 0.113744,
		0.636781, 0.379572, 0.671145,
		-0.648231, -0.207773, 0.732549,
		38.234051, 39.718533, 32.160275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157230, 39.534130, 32.034058>,  <38.687813, 39.863976, 31.647490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157230, 39.534130, 32.034058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778252, 39.443378, 32.124279>,  <38.550865, 39.388927, 32.178413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778252, 39.443378, 32.124279>,  <39.157230, 39.534130, 32.034058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778252, 39.443378, 32.124279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280372, -0.928395, 0.243874,
		0.154074, 0.294296, 0.943213,
		-0.947445, -0.226876, 0.225554,
		38.494019, 39.375317, 32.191944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252918, 39.229172, 32.699192>,  <39.157230, 39.534130, 32.034058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252918, 39.229172, 32.699192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912327, 39.111366, 32.525639>,  <38.707973, 39.040684, 32.421509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912327, 39.111366, 32.525639>,  <39.252918, 39.229172, 32.699192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912327, 39.111366, 32.525639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266725, -0.955603, 0.125223,
		-0.451497, -0.009102, 0.892226,
		-0.851474, -0.294517, -0.433879,
		38.656883, 39.023010, 32.395473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938980, 38.729282, 33.164394>,  <39.252918, 39.229172, 32.699192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938980, 38.729282, 33.164394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.841328, 38.665104, 32.781845>,  <38.782738, 38.626598, 32.552315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.841328, 38.665104, 32.781845>,  <38.938980, 38.729282, 33.164394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841328, 38.665104, 32.781845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349396, -0.934534, 0.067594,
		-0.904612, -0.317653, 0.284205,
		-0.244128, -0.160446, -0.956378,
		38.768089, 38.616970, 32.494930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055664, 38.031452, 33.200832>,  <38.938980, 38.729282, 33.164394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055664, 38.031452, 33.200832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897770, 38.028255, 32.833328>,  <38.803032, 38.026337, 32.612827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897770, 38.028255, 32.833328>,  <39.055664, 38.031452, 33.200832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897770, 38.028255, 32.833328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093662, -0.995103, -0.031585,
		-0.914008, -0.098521, 0.393551,
		-0.394735, -0.007992, -0.918760,
		38.779350, 38.025856, 32.557701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495556, 37.587086, 33.180096>,  <39.055664, 38.031452, 33.200832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495556, 37.587086, 33.180096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631119, 37.601727, 32.804050>,  <38.712456, 37.610512, 32.578423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631119, 37.601727, 32.804050>,  <38.495556, 37.587086, 33.180096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631119, 37.601727, 32.804050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146177, -0.989157, 0.014189,
		-0.929395, -0.142231, -0.340578,
		0.338904, 0.036598, -0.940109,
		38.732788, 37.612705, 32.522018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263847, 37.229374, 32.666561>,  <38.495556, 37.587086, 33.180096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263847, 37.229374, 32.666561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649208, 37.286755, 32.575981>,  <38.880424, 37.321182, 32.521633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649208, 37.286755, 32.575981>,  <38.263847, 37.229374, 32.666561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649208, 37.286755, 32.575981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129145, -0.988642, -0.076865,
		-0.234900, 0.044807, -0.970986,
		0.963402, 0.143454, -0.226445,
		38.938229, 37.329792, 32.508049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120220, 36.557400, 32.890980>,  <38.263847, 37.229374, 32.666561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120220, 36.557400, 32.890980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.041344, 36.246792, 33.130360>,  <37.994019, 36.060429, 33.273987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.041344, 36.246792, 33.130360>,  <38.120220, 36.557400, 32.890980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041344, 36.246792, 33.130360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877921, 0.131809, 0.460306,
		-0.436316, 0.616157, 0.655728,
		-0.197190, -0.776516, 0.598447,
		37.982185, 36.013836, 33.309895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126083, 36.880009, 33.592014>,  <38.120220, 36.557400, 32.890980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126083, 36.880009, 33.592014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194149, 36.487267, 33.625484>,  <38.234989, 36.251621, 33.645565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194149, 36.487267, 33.625484>,  <38.126083, 36.880009, 33.592014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194149, 36.487267, 33.625484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783659, 0.186317, 0.592591,
		-0.597429, -0.035271, 0.801146,
		0.170169, -0.981856, 0.083671,
		38.245201, 36.192711, 33.650585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170307, 36.697403, 34.330151>,  <38.126083, 36.880009, 33.592014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170307, 36.697403, 34.330151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393929, 36.458302, 34.100315>,  <38.528103, 36.314842, 33.962414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393929, 36.458302, 34.100315>,  <38.170307, 36.697403, 34.330151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393929, 36.458302, 34.100315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735789, 0.038231, 0.676131,
		-0.382191, -0.800769, 0.461193,
		0.559057, -0.597752, -0.574585,
		38.561646, 36.278976, 33.927940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509232, 35.983997, 34.756348>,  <38.170307, 36.697403, 34.330151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509232, 35.983997, 34.756348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711765, 36.116638, 34.437935>,  <38.833286, 36.196224, 34.246887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711765, 36.116638, 34.437935>,  <38.509232, 35.983997, 34.756348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711765, 36.116638, 34.437935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839221, 0.022808, 0.543312,
		0.198320, -0.943143, -0.266741,
		0.506337, 0.331604, -0.796029,
		38.863667, 36.216118, 34.199127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139004, 35.802128, 34.836632>,  <38.509232, 35.983997, 34.756348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139004, 35.802128, 34.836632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.220245, 36.102379, 34.585136>,  <39.268990, 36.282528, 34.434238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.220245, 36.102379, 34.585136>,  <39.139004, 35.802128, 34.836632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220245, 36.102379, 34.585136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942822, 0.023378, 0.332476,
		0.264264, -0.660317, -0.702956,
		0.203106, 0.750623, -0.628739,
		39.281178, 36.327564, 34.396515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843502, 35.680698, 34.625557>,  <39.139004, 35.802128, 34.836632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843502, 35.680698, 34.625557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774921, 36.061882, 34.525578>,  <39.733772, 36.290592, 34.465591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774921, 36.061882, 34.525578>,  <39.843502, 35.680698, 34.625557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774921, 36.061882, 34.525578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915122, 0.248017, 0.317865,
		0.364903, -0.174231, -0.914598,
		-0.171454, 0.952959, -0.249944,
		39.723484, 36.347771, 34.450596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476528, 35.899727, 34.318508>,  <39.843502, 35.680698, 34.625557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476528, 35.899727, 34.318508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.280693, 36.226452, 34.440563>,  <40.163193, 36.422489, 34.513798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.280693, 36.226452, 34.440563>,  <40.476528, 35.899727, 34.318508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280693, 36.226452, 34.440563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858240, 0.389605, 0.334115,
		0.154026, 0.425465, -0.891771,
		-0.489593, 0.816816, 0.305142,
		40.133816, 36.471497, 34.532104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142139, 35.580414, 34.629128>,  <40.476528, 35.899727, 34.318508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.142139, 35.580414, 34.629128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080254, 35.652534, 35.017673>,  <41.043121, 35.695805, 35.250801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080254, 35.652534, 35.017673>,  <41.142139, 35.580414, 34.629128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.080254, 35.652534, 35.017673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431494, -0.872143, 0.230607,
		0.888750, 0.454818, 0.057135,
		-0.154714, 0.180299, 0.971368,
		41.033840, 35.706623, 35.309082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750546, 35.694439, 34.968742>,  <41.142139, 35.580414, 34.629128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750546, 35.694439, 34.968742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478340, 35.531460, 35.212341>,  <41.315018, 35.433674, 35.358501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478340, 35.531460, 35.212341>,  <41.750546, 35.694439, 34.968742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478340, 35.531460, 35.212341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614321, -0.770280, 0.171109,
		0.399384, 0.490565, 0.774493,
		-0.680516, -0.407449, 0.609002,
		41.274185, 35.409225, 35.395042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018902, 36.113598, 34.369789>,  <41.750546, 35.694439, 34.968742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018902, 36.113598, 34.369789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.211105, 35.853119, 34.134823>,  <42.326427, 35.696831, 33.993843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.211105, 35.853119, 34.134823>,  <42.018902, 36.113598, 34.369789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.211105, 35.853119, 34.134823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847646, 0.173048, 0.501548,
		-0.224955, -0.738918, 0.635134,
		0.480511, -0.651194, -0.587413,
		42.355259, 35.657761, 33.958599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463802, 35.744205, 34.742847>,  <42.018902, 36.113598, 34.369789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463802, 35.744205, 34.742847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624069, 35.701759, 34.378822>,  <42.720230, 35.676292, 34.160408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624069, 35.701759, 34.378822>,  <42.463802, 35.744205, 34.742847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624069, 35.701759, 34.378822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914755, 0.102572, 0.390770,
		0.051878, -0.989049, 0.138169,
		0.400663, -0.106118, -0.910059,
		42.744267, 35.669926, 34.105804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.966728, 35.181122, 34.735165>,  <42.463802, 35.744205, 34.742847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.966728, 35.181122, 34.735165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023891, 35.486492, 34.483212>,  <43.058189, 35.669716, 34.332039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023891, 35.486492, 34.483212>,  <42.966728, 35.181122, 34.735165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.023891, 35.486492, 34.483212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881566, 0.191114, 0.431644,
		0.449908, -0.616971, -0.645700,
		0.142909, 0.763428, -0.629885,
		43.066765, 35.715519, 34.294247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.646481, 35.099949, 34.486416>,  <42.966728, 35.181122, 34.735165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.646481, 35.099949, 34.486416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.509033, 35.472527, 34.534317>,  <43.426567, 35.696072, 34.563057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.509033, 35.472527, 34.534317>,  <43.646481, 35.099949, 34.486416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.509033, 35.472527, 34.534317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832471, 0.243094, 0.497893,
		0.434649, 0.270772, -0.858931,
		-0.343616, 0.931444, 0.119750,
		43.405949, 35.751961, 34.570240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.096756, 35.693130, 34.177910>,  <43.646481, 35.099949, 34.486416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.096756, 35.693130, 34.177910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.911259, 35.807941, 34.513187>,  <43.799961, 35.876827, 34.714352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.911259, 35.807941, 34.513187>,  <44.096756, 35.693130, 34.177910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.911259, 35.807941, 34.513187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879156, 0.266202, 0.395248,
		-0.109682, 0.920192, -0.375789,
		-0.463740, 0.287025, 0.838190,
		43.772137, 35.894051, 34.764645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.994022, 36.465057, 34.236973>,  <44.096756, 35.693130, 34.177910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.994022, 36.465057, 34.236973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.046635, 36.254360, 34.572887>,  <44.078201, 36.127941, 34.774437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.046635, 36.254360, 34.572887>,  <43.994022, 36.465057, 34.236973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.046635, 36.254360, 34.572887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938573, 0.338805, 0.065511,
		-0.319032, 0.779586, 0.538947,
		0.131527, -0.526741, 0.839788,
		44.086094, 36.096336, 34.824825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.178593, 36.804283, 34.862198>,  <43.994022, 36.465057, 34.236973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.178593, 36.804283, 34.862198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.374836, 36.455757, 34.866280>,  <44.492584, 36.246639, 34.868729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.374836, 36.455757, 34.866280>,  <44.178593, 36.804283, 34.862198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.374836, 36.455757, 34.866280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859288, 0.485714, 0.160333,
		-0.144657, -0.069894, 0.987010,
		0.490611, -0.871319, 0.010203,
		44.522018, 36.194363, 34.869339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.736629, 36.937439, 35.329857>,  <44.178593, 36.804283, 34.862198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.736629, 36.937439, 35.329857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811577, 36.612156, 35.109459>,  <44.856544, 36.416988, 34.977222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811577, 36.612156, 35.109459>,  <44.736629, 36.937439, 35.329857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.811577, 36.612156, 35.109459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972901, 0.231002, -0.010094,
		0.135489, -0.534170, 0.834449,
		0.187368, -0.813204, -0.550993,
		44.867786, 36.368195, 34.944160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.253986, 36.382111, 35.648964>,  <44.736629, 36.937439, 35.329857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.253986, 36.382111, 35.648964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.249306, 36.456951, 35.256054>,  <45.246498, 36.501854, 35.020309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.249306, 36.456951, 35.256054>,  <45.253986, 36.382111, 35.648964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.249306, 36.456951, 35.256054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999831, 0.016165, -0.008836,
		0.014225, -0.982207, -0.187260,
		-0.011706, 0.187102, -0.982271,
		45.245792, 36.513081, 34.961372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.681942, 35.961620, 35.316242>,  <45.253986, 36.382111, 35.648964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.681942, 35.961620, 35.316242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.646263, 36.260124, 35.052383>,  <45.624855, 36.439228, 34.894070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.646263, 36.260124, 35.052383>,  <45.681942, 35.961620, 35.316242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.646263, 36.260124, 35.052383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957615, -0.117870, -0.262830,
		-0.273893, -0.655130, -0.704121,
		-0.089193, 0.746264, -0.659647,
		45.619507, 36.484005, 34.854488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.200989, 35.449539, 34.891270>,  <45.681942, 35.961620, 35.316242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.200989, 35.449539, 34.891270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.445396, 35.191956, 35.075432>,  <46.592041, 35.037403, 35.185928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.445396, 35.191956, 35.075432>,  <46.200989, 35.449539, 34.891270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.445396, 35.191956, 35.075432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147703, -0.478641, -0.865498,
		0.777716, 0.596836, -0.197343,
		0.611017, -0.643964, 0.460401,
		46.628700, 34.998768, 35.213551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.787056, 35.288956, 34.447346>,  <46.200989, 35.449539, 34.891270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.787056, 35.288956, 34.447346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.748039, 34.979633, 34.697941>,  <46.724628, 34.794041, 34.848297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.748039, 34.979633, 34.697941>,  <46.787056, 35.288956, 34.447346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.748039, 34.979633, 34.697941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124916, -0.634024, -0.763157,
		0.987361, 0.003822, 0.158440,
		-0.097538, -0.773304, 0.626488,
		46.718777, 34.747643, 34.885887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.278786, 34.869404, 34.818436>,  <46.787056, 35.288956, 34.447346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.278786, 34.869404, 34.818436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.641357, 34.946663, 34.968674>,  <47.858902, 34.993019, 35.058815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.641357, 34.946663, 34.968674>,  <47.278786, 34.869404, 34.818436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.641357, 34.946663, 34.968674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147020, 0.689380, -0.709324,
		-0.395935, 0.698175, 0.596479,
		0.906433, 0.193152, 0.375595,
		47.913288, 35.004608, 35.081352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.119839, 31.519968, 24.220900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.750589, 31.672338, 24.241821>,  <29.529039, 31.763762, 24.254374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.750589, 31.672338, 24.241821>,  <30.119839, 31.519968, 24.220900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750589, 31.672338, 24.241821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380087, 0.883495, 0.273806,
		0.058090, 0.272637, -0.960362,
		-0.923125, 0.380926, 0.052303,
		29.473652, 31.786617, 24.257513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255085, 32.257652, 24.180840>,  <30.119839, 31.519968, 24.220900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.255085, 32.257652, 24.180840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.872765, 32.255348, 24.298420>,  <29.643372, 32.253963, 24.368969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.872765, 32.255348, 24.298420>,  <30.255085, 32.257652, 24.180840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.872765, 32.255348, 24.298420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108627, 0.922143, 0.371284,
		-0.273205, 0.386806, -0.880761,
		-0.955803, -0.005763, 0.293952,
		29.586023, 32.253620, 24.386606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033283, 32.912788, 24.094324>,  <30.255085, 32.257652, 24.180840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033283, 32.912788, 24.094324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.786869, 32.763931, 24.372032>,  <29.639021, 32.674618, 24.538656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.786869, 32.763931, 24.372032>,  <30.033283, 32.912788, 24.094324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786869, 32.763931, 24.372032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152551, 0.921044, 0.358338,
		-0.772805, 0.114838, -0.624167,
		-0.616036, -0.372142, 0.694269,
		29.602058, 32.652290, 24.580313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541504, 33.394108, 24.134468>,  <30.033283, 32.912788, 24.094324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541504, 33.394108, 24.134468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.517008, 33.179047, 24.470844>,  <29.502310, 33.050011, 24.672670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.517008, 33.179047, 24.470844>,  <29.541504, 33.394108, 24.134468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517008, 33.179047, 24.470844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168780, 0.835966, 0.522182,
		-0.983750, -0.109956, -0.141938,
		-0.061239, -0.537653, 0.840940,
		29.498636, 33.017750, 24.723125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.989590, 33.694309, 24.497236>,  <29.541504, 33.394108, 24.134468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.989590, 33.694309, 24.497236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.177341, 33.497169, 24.790297>,  <29.289993, 33.378883, 24.966133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.177341, 33.497169, 24.790297>,  <28.989590, 33.694309, 24.497236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177341, 33.497169, 24.790297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045675, 0.815071, 0.577557,
		-0.881815, -0.304557, 0.360067,
		0.469379, -0.492853, 0.732652,
		29.318155, 33.349312, 25.010092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598516, 33.789040, 25.108374>,  <28.989590, 33.694309, 24.497236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.598516, 33.789040, 25.108374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.958544, 33.663418, 25.229198>,  <29.174561, 33.588043, 25.301693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.958544, 33.663418, 25.229198>,  <28.598516, 33.789040, 25.108374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958544, 33.663418, 25.229198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037949, 0.747072, 0.663659,
		-0.434091, -0.585876, 0.684335,
		0.900069, -0.314058, 0.302064,
		29.228565, 33.569199, 25.319818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575363, 33.825031, 25.897793>,  <28.598516, 33.789040, 25.108374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575363, 33.825031, 25.897793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.948696, 33.821472, 25.754232>,  <29.172695, 33.819336, 25.668097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.948696, 33.821472, 25.754232>,  <28.575363, 33.825031, 25.897793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.948696, 33.821472, 25.754232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214891, 0.814676, 0.538632,
		0.287597, -0.579848, 0.762276,
		0.933333, -0.008897, -0.358902,
		29.228697, 33.818802, 25.646563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.970179, 33.953011, 26.530674>,  <28.575363, 33.825031, 25.897793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.970179, 33.953011, 26.530674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.203058, 34.050953, 26.220554>,  <29.342785, 34.109718, 26.034483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.203058, 34.050953, 26.220554>,  <28.970179, 33.953011, 26.530674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203058, 34.050953, 26.220554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417130, 0.728555, 0.543332,
		0.697888, -0.639728, 0.322026,
		0.582198, 0.244859, -0.775300,
		29.377718, 34.124413, 25.987965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665081, 34.183628, 26.796318>,  <28.970179, 33.953011, 26.530674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665081, 34.183628, 26.796318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.662781, 34.318962, 26.419914>,  <29.661400, 34.400162, 26.194073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.662781, 34.318962, 26.419914>,  <29.665081, 34.183628, 26.796318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.662781, 34.318962, 26.419914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313608, 0.894161, 0.319571,
		0.949535, -0.293270, -0.111246,
		-0.005751, 0.338331, -0.941010,
		29.661055, 34.420460, 26.137611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339479, 34.526825, 26.651201>,  <29.665081, 34.183628, 26.796318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.339479, 34.526825, 26.651201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.105072, 34.700710, 26.377674>,  <29.964428, 34.805042, 26.213558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.105072, 34.700710, 26.377674>,  <30.339479, 34.526825, 26.651201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105072, 34.700710, 26.377674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286252, 0.900560, 0.327188,
		0.758052, -0.004006, -0.652182,
		-0.586018, 0.434713, -0.683818,
		29.929266, 34.831123, 26.172529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676842, 34.826363, 26.122490>,  <30.339479, 34.526825, 26.651201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676842, 34.826363, 26.122490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.329470, 35.011368, 26.193945>,  <30.121046, 35.122372, 26.236818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.329470, 35.011368, 26.193945>,  <30.676842, 34.826363, 26.122490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329470, 35.011368, 26.193945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495781, 0.806020, 0.323316,
		0.005550, 0.369343, -0.929276,
		-0.868430, 0.462512, 0.178640,
		30.068941, 35.150120, 26.247538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708996, 35.502922, 25.800676>,  <30.676842, 34.826363, 26.122490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708996, 35.502922, 25.800676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.428738, 35.533604, 26.084427>,  <30.260584, 35.552013, 26.254677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.428738, 35.533604, 26.084427>,  <30.708996, 35.502922, 25.800676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428738, 35.533604, 26.084427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463767, 0.804507, 0.371064,
		-0.542235, 0.588969, -0.599247,
		-0.700643, 0.076708, 0.709376,
		30.218544, 35.556618, 26.297239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734018, 36.169857, 25.897356>,  <30.708996, 35.502922, 25.800676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734018, 36.169857, 25.897356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.529373, 36.032623, 26.212456>,  <30.406586, 35.950283, 26.401516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.529373, 36.032623, 26.212456>,  <30.734018, 36.169857, 25.897356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529373, 36.032623, 26.212456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279999, 0.800203, 0.530354,
		-0.812313, 0.491905, -0.313333,
		-0.511614, -0.343080, 0.787748,
		30.375889, 35.929699, 26.448780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387613, 36.669056, 26.093201>,  <30.734018, 36.169857, 25.897356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.387613, 36.669056, 26.093201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.405996, 36.450985, 26.428024>,  <30.417027, 36.320141, 26.628918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.405996, 36.450985, 26.428024>,  <30.387613, 36.669056, 26.093201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405996, 36.450985, 26.428024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422719, 0.769834, 0.478189,
		-0.905095, 0.331863, 0.265839,
		0.045959, -0.545182, 0.837057,
		30.419785, 36.287430, 26.679142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231123, 37.087582, 26.628534>,  <30.387613, 36.669056, 26.093201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.231123, 37.087582, 26.628534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.412056, 36.784039, 26.815948>,  <30.520615, 36.601913, 26.928396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.412056, 36.784039, 26.815948>,  <30.231123, 37.087582, 26.628534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412056, 36.784039, 26.815948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517134, 0.651190, 0.555449,
		-0.726614, -0.008952, 0.686987,
		0.452332, -0.758862, 0.468535,
		30.547756, 36.556381, 26.956509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.193426, 37.199226, 27.382076>,  <30.231123, 37.087582, 26.628534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.193426, 37.199226, 27.382076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.509024, 36.956501, 27.343578>,  <30.698381, 36.810863, 27.320480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.509024, 36.956501, 27.343578>,  <30.193426, 37.199226, 27.382076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.509024, 36.956501, 27.343578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522316, 0.579974, 0.625153,
		-0.323533, -0.543512, 0.774546,
		0.788994, -0.606816, -0.096244,
		30.745722, 36.774456, 27.314705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.418772, 37.061199, 28.116821>,  <30.193426, 37.199226, 27.382076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.418772, 37.061199, 28.116821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.725927, 36.986374, 27.871758>,  <30.910221, 36.941479, 27.724718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.725927, 36.986374, 27.871758>,  <30.418772, 37.061199, 28.116821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725927, 36.986374, 27.871758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620008, 0.457482, 0.637417,
		0.161046, -0.869321, 0.467275,
		0.767890, -0.187060, -0.612661,
		30.956295, 36.930256, 27.687960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944622, 36.644497, 28.530277>,  <30.418772, 37.061199, 28.116821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944622, 36.644497, 28.530277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.101423, 36.849476, 28.224669>,  <31.195505, 36.972462, 28.041304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.101423, 36.849476, 28.224669>,  <30.944622, 36.644497, 28.530277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101423, 36.849476, 28.224669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689090, 0.386662, 0.612901,
		0.609497, -0.766741, -0.201548,
		0.392005, 0.512447, -0.764023,
		31.219025, 37.003208, 27.995462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583727, 36.411152, 28.629398>,  <30.944622, 36.644497, 28.530277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583727, 36.411152, 28.629398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.598070, 36.755859, 28.426987>,  <31.606676, 36.962685, 28.305540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.598070, 36.755859, 28.426987>,  <31.583727, 36.411152, 28.629398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598070, 36.755859, 28.426987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688997, 0.345458, 0.637136,
		0.723877, -0.371498, -0.581371,
		0.035856, 0.861771, -0.506030,
		31.608828, 37.014389, 28.275177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203400, 36.594578, 28.718111>,  <31.583727, 36.411152, 28.629398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203400, 36.594578, 28.718111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.045959, 36.933186, 28.574732>,  <31.951494, 37.136349, 28.488705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.045959, 36.933186, 28.574732>,  <32.203400, 36.594578, 28.718111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045959, 36.933186, 28.574732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452300, 0.517791, 0.726166,
		0.800314, 0.123694, -0.586683,
		-0.393601, 0.846518, -0.358449,
		31.927879, 37.187141, 28.467197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761082, 37.184822, 28.475422>,  <32.203400, 36.594578, 28.718111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761082, 37.184822, 28.475422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.405537, 37.291801, 28.624229>,  <32.192211, 37.355988, 28.713514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.405537, 37.291801, 28.624229>,  <32.761082, 37.184822, 28.475422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405537, 37.291801, 28.624229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457484, 0.562693, 0.688538,
		-0.025186, 0.782208, -0.622508,
		-0.888861, 0.267446, 0.372020,
		32.138878, 37.372036, 28.735836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001003, 37.830170, 28.928265>,  <32.761082, 37.184822, 28.475422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001003, 37.830170, 28.928265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.373680, 37.940189, 28.833359>,  <33.597286, 38.006199, 28.776415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.373680, 37.940189, 28.833359>,  <33.001003, 37.830170, 28.928265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373680, 37.940189, 28.833359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036665, -0.578640, -0.814759,
		-0.361386, 0.767806, -0.529031,
		0.931695, 0.275045, -0.237264,
		33.653187, 38.022701, 28.762180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995575, 38.092327, 28.228573>,  <33.001003, 37.830170, 28.928265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995575, 38.092327, 28.228573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.357452, 37.948517, 28.320026>,  <33.574577, 37.862228, 28.374899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.357452, 37.948517, 28.320026>,  <32.995575, 38.092327, 28.228573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357452, 37.948517, 28.320026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094571, -0.692674, -0.715024,
		0.415440, 0.625254, -0.660657,
		0.904691, -0.359529, 0.228633,
		33.628860, 37.840660, 28.388617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312332, 38.070236, 27.619093>,  <32.995575, 38.092327, 28.228573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312332, 38.070236, 27.619093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.517120, 37.820797, 27.855404>,  <33.639992, 37.671135, 27.997190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.517120, 37.820797, 27.855404>,  <33.312332, 38.070236, 27.619093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517120, 37.820797, 27.855404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046158, -0.706723, -0.705983,
		0.857762, 0.334173, -0.390605,
		0.511970, -0.623595, 0.590776,
		33.670712, 37.633720, 28.032637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727520, 37.870892, 27.139771>,  <33.312332, 38.070236, 27.619093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727520, 37.870892, 27.139771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.745098, 37.619099, 27.450077>,  <33.755646, 37.468021, 27.636261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.745098, 37.619099, 27.450077>,  <33.727520, 37.870892, 27.139771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745098, 37.619099, 27.450077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151010, -0.763411, -0.628013,
		0.987555, 0.144748, 0.061508,
		0.043947, -0.629486, 0.775768,
		33.758282, 37.430252, 27.682808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336929, 37.454918, 27.128571>,  <33.727520, 37.870892, 27.139771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336929, 37.454918, 27.128571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.077339, 37.241333, 27.345352>,  <33.921585, 37.113182, 27.475420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.077339, 37.241333, 27.345352>,  <34.336929, 37.454918, 27.128571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077339, 37.241333, 27.345352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108859, -0.770178, -0.628471,
		0.752982, -0.348865, 0.557953,
		-0.648975, -0.533965, 0.541953,
		33.882648, 37.081142, 27.507938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578228, 36.752888, 27.048477>,  <34.336929, 37.454918, 27.128571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578228, 36.752888, 27.048477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.234764, 36.653088, 27.227562>,  <34.028687, 36.593208, 27.335012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.234764, 36.653088, 27.227562>,  <34.578228, 36.752888, 27.048477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234764, 36.653088, 27.227562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035592, -0.900434, -0.433533,
		0.511304, -0.356324, 0.782050,
		-0.858663, -0.249502, 0.447713,
		33.977165, 36.578236, 27.361876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616161, 36.021515, 27.404093>,  <34.578228, 36.752888, 27.048477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616161, 36.021515, 27.404093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.228638, 36.107700, 27.355143>,  <33.996124, 36.159412, 27.325771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.228638, 36.107700, 27.355143>,  <34.616161, 36.021515, 27.404093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228638, 36.107700, 27.355143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148876, -0.900922, -0.407646,
		-0.198087, -0.376714, 0.904903,
		-0.968812, 0.215468, -0.122377,
		33.937992, 36.172340, 27.318430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170895, 35.524574, 27.701180>,  <34.616161, 36.021515, 27.404093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170895, 35.524574, 27.701180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.932415, 35.688709, 27.425159>,  <33.789326, 35.787189, 27.259548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.932415, 35.688709, 27.425159>,  <34.170895, 35.524574, 27.701180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932415, 35.688709, 27.425159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316909, -0.910004, -0.267324,
		-0.737639, 0.059303, 0.672586,
		-0.596203, 0.410337, -0.690048,
		33.753555, 35.811810, 27.218145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564148, 35.107803, 27.719191>,  <34.170895, 35.524574, 27.701180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564148, 35.107803, 27.719191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.535515, 35.298916, 27.368967>,  <33.518337, 35.413582, 27.158833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.535515, 35.298916, 27.368967>,  <33.564148, 35.107803, 27.719191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535515, 35.298916, 27.368967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185155, -0.868920, -0.459017,
		-0.980099, 0.129259, 0.150658,
		-0.071578, 0.477777, -0.875560,
		33.514042, 35.442249, 27.106298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878002, 34.779617, 27.408924>,  <33.564148, 35.107803, 27.719191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878002, 34.779617, 27.408924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.088264, 34.963749, 27.122768>,  <33.214424, 35.074226, 26.951075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.088264, 34.963749, 27.122768>,  <32.878002, 34.779617, 27.408924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088264, 34.963749, 27.122768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192412, -0.754818, -0.627078,
		-0.828650, 0.467279, -0.308204,
		0.525659, 0.460326, -0.715390,
		33.245960, 35.101845, 26.908152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430759, 34.783882, 26.814240>,  <32.878002, 34.779617, 27.408924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430759, 34.783882, 26.814240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.805347, 34.827774, 26.680979>,  <33.030098, 34.854107, 26.601023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.805347, 34.827774, 26.680979>,  <32.430759, 34.783882, 26.814240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805347, 34.827774, 26.680979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083192, -0.853228, -0.514860,
		-0.340749, 0.509865, -0.789891,
		0.936466, 0.109726, -0.333153,
		33.086288, 34.860691, 26.581034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382122, 34.632812, 26.127098>,  <32.430759, 34.783882, 26.814240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382122, 34.632812, 26.127098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.776669, 34.586971, 26.174343>,  <33.013397, 34.559467, 26.202690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.776669, 34.586971, 26.174343>,  <32.382122, 34.632812, 26.127098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776669, 34.586971, 26.174343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000765, -0.720881, -0.693058,
		0.164569, 0.683519, -0.711140,
		0.986365, -0.114600, 0.118112,
		33.072578, 34.552593, 26.209776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677895, 34.676449, 25.461519>,  <32.382122, 34.632812, 26.127098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677895, 34.676449, 25.461519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.963081, 34.501221, 25.680525>,  <33.134193, 34.396084, 25.811928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.963081, 34.501221, 25.680525>,  <32.677895, 34.676449, 25.461519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963081, 34.501221, 25.680525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116758, -0.695761, -0.708720,
		0.691406, 0.569223, -0.444908,
		0.712969, -0.438067, 0.547515,
		33.176971, 34.369801, 25.844780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205776, 34.480591, 25.004126>,  <32.677895, 34.676449, 25.461519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205776, 34.480591, 25.004126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.237125, 34.271465, 25.343660>,  <33.255936, 34.145988, 25.547380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.237125, 34.271465, 25.343660>,  <33.205776, 34.480591, 25.004126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237125, 34.271465, 25.343660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013905, -0.851945, -0.523447,
		0.996827, 0.029221, -0.074039,
		0.078373, -0.522816, 0.848835,
		33.260635, 34.114620, 25.598310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761169, 33.954594, 24.894659>,  <33.205776, 34.480591, 25.004126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761169, 33.954594, 24.894659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.564053, 33.790119, 25.201405>,  <33.445782, 33.691433, 25.385452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.564053, 33.790119, 25.201405>,  <33.761169, 33.954594, 24.894659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564053, 33.790119, 25.201405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218324, -0.794685, -0.566401,
		0.842314, -0.446542, 0.301840,
		-0.492790, -0.411188, 0.766866,
		33.416214, 33.666763, 25.431465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001625, 33.214214, 24.921667>,  <33.761169, 33.954594, 24.894659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001625, 33.214214, 24.921667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.663303, 33.240143, 25.133484>,  <33.460312, 33.255699, 25.260574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.663303, 33.240143, 25.133484>,  <34.001625, 33.214214, 24.921667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663303, 33.240143, 25.133484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286904, -0.892101, -0.349059,
		0.449777, -0.447163, 0.773140,
		-0.845805, 0.064819, 0.529540,
		33.409561, 33.259590, 25.292345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924095, 32.551136, 25.354088>,  <34.001625, 33.214214, 24.921667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924095, 32.551136, 25.354088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.573875, 32.721302, 25.262501>,  <33.363743, 32.823402, 25.207548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.573875, 32.721302, 25.262501>,  <33.924095, 32.551136, 25.354088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573875, 32.721302, 25.262501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367595, -0.894153, -0.255664,
		-0.313496, -0.139680, 0.939260,
		-0.875554, 0.425417, -0.228968,
		33.311211, 32.848927, 25.193810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475178, 32.021149, 25.561207>,  <33.924095, 32.551136, 25.354088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475178, 32.021149, 25.561207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.248707, 32.265266, 25.339581>,  <33.112823, 32.411736, 25.206604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.248707, 32.265266, 25.339581>,  <33.475178, 32.021149, 25.561207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248707, 32.265266, 25.339581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545800, -0.781279, -0.302830,
		-0.617693, 0.130953, 0.775439,
		-0.566178, 0.610291, -0.554065,
		33.078854, 32.448353, 25.173361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730179, 31.832829, 25.736599>,  <33.475178, 32.021149, 25.561207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730179, 31.832829, 25.736599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.705139, 32.001724, 25.374870>,  <32.690113, 32.103062, 25.157833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.705139, 32.001724, 25.374870>,  <32.730179, 31.832829, 25.736599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705139, 32.001724, 25.374870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589162, -0.747009, -0.308002,
		-0.805586, 0.513510, 0.295531,
		-0.062603, 0.422238, -0.904321,
		32.686359, 32.128395, 25.103575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<32.086044, 31.592197, 25.411581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.275322, 31.742128, 25.092686>,  <32.388889, 31.832087, 24.901348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.275322, 31.742128, 25.092686>,  <32.086044, 31.592197, 25.411581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275322, 31.742128, 25.092686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450143, -0.675035, -0.584551,
		-0.757271, 0.635477, -0.150696,
		0.473194, 0.374829, -0.797240,
		32.417278, 31.854576, 24.853514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597992, 31.745869, 24.994627>,  <32.086044, 31.592197, 25.411581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597992, 31.745869, 24.994627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.921822, 31.729614, 24.760384>,  <32.116119, 31.719862, 24.619837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.921822, 31.729614, 24.760384>,  <31.597992, 31.745869, 24.994627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921822, 31.729614, 24.760384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471111, -0.640129, -0.606869,
		-0.350205, 0.767192, -0.537376,
		0.809574, -0.040635, -0.585609,
		32.164696, 31.717424, 24.584702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343945, 31.905396, 24.341068>,  <31.597992, 31.745869, 24.994627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343945, 31.905396, 24.341068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.686455, 31.703560, 24.296915>,  <31.891960, 31.582458, 24.270422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.686455, 31.703560, 24.296915>,  <31.343945, 31.905396, 24.341068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686455, 31.703560, 24.296915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484923, -0.711715, -0.508244,
		0.177892, 0.488724, -0.854110,
		0.856274, -0.504590, -0.110385,
		31.943336, 31.552183, 24.263800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340559, 31.736601, 23.613440>,  <31.343945, 31.905396, 24.341068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340559, 31.736601, 23.613440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.602686, 31.474264, 23.763338>,  <31.759962, 31.316862, 23.853277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.602686, 31.474264, 23.763338>,  <31.340559, 31.736601, 23.613440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602686, 31.474264, 23.763338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359661, -0.707189, -0.608710,
		0.664232, 0.264116, -0.699313,
		0.655316, -0.655841, 0.374746,
		31.799280, 31.277512, 23.875761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616726, 31.375002, 22.983555>,  <31.340559, 31.736601, 23.613440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616726, 31.375002, 22.983555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.692261, 31.132948, 23.292915>,  <31.737581, 30.987715, 23.478533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.692261, 31.132948, 23.292915>,  <31.616726, 31.375002, 22.983555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692261, 31.132948, 23.292915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184881, -0.795396, -0.577204,
		0.964448, -0.033991, -0.262077,
		0.188835, -0.605137, 0.773402,
		31.748911, 30.951406, 23.524937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031437, 30.823030, 22.678356>,  <31.616726, 31.375002, 22.983555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031437, 30.823030, 22.678356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.853298, 30.689285, 23.010590>,  <31.746416, 30.609039, 23.209930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.853298, 30.689285, 23.010590>,  <32.031437, 30.823030, 22.678356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853298, 30.689285, 23.010590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255016, -0.841865, -0.475637,
		0.858274, -0.423635, 0.289653,
		-0.445345, -0.334361, 0.830584,
		31.719694, 30.588978, 23.259766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177788, 30.103247, 22.741028>,  <32.031437, 30.823030, 22.678356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177788, 30.103247, 22.741028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.859283, 30.151535, 22.978140>,  <31.668180, 30.180508, 23.120407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.859283, 30.151535, 22.978140>,  <32.177788, 30.103247, 22.741028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859283, 30.151535, 22.978140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407468, -0.831296, -0.378043,
		0.447140, -0.542562, 0.711120,
		-0.796263, 0.120721, 0.592783,
		31.620405, 30.187752, 23.155975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076588, 29.461487, 22.897219>,  <32.177788, 30.103247, 22.741028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076588, 29.461487, 22.897219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.733948, 29.658028, 22.960228>,  <31.528364, 29.775951, 22.998034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.733948, 29.658028, 22.960228>,  <32.076588, 29.461487, 22.897219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733948, 29.658028, 22.960228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515953, -0.812336, -0.271850,
		-0.005610, -0.314142, 0.949359,
		-0.856598, 0.491350, 0.157525,
		31.476969, 29.805433, 23.007486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626570, 29.049866, 23.349152>,  <32.076588, 29.461487, 22.897219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626570, 29.049866, 23.349152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.375143, 29.289686, 23.150982>,  <31.224287, 29.433578, 23.032080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.375143, 29.289686, 23.150982>,  <31.626570, 29.049866, 23.349152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375143, 29.289686, 23.150982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467215, -0.800324, -0.375754,
		-0.621784, -0.004716, 0.783175,
		-0.628566, 0.599549, -0.495425,
		31.186573, 29.469551, 23.002354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929020, 28.833168, 23.473129>,  <31.626570, 29.049866, 23.349152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929020, 28.833168, 23.473129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.918030, 29.040133, 23.131012>,  <30.911436, 29.164310, 22.925741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.918030, 29.040133, 23.131012>,  <30.929020, 28.833168, 23.473129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918030, 29.040133, 23.131012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500223, -0.747900, -0.436374,
		-0.865461, 0.415849, 0.279369,
		-0.027474, 0.517412, -0.855295,
		30.909788, 29.195356, 22.874424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335117, 28.579405, 23.175058>,  <30.929020, 28.833168, 23.473129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335117, 28.579405, 23.175058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.482235, 28.763260, 22.851711>,  <30.570505, 28.873573, 22.657703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.482235, 28.763260, 22.851711>,  <30.335117, 28.579405, 23.175058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482235, 28.763260, 22.851711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479234, -0.651281, -0.588362,
		-0.796908, 0.603794, -0.019263,
		0.367794, 0.459638, -0.808369,
		30.592573, 28.901152, 22.609201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.800171, 28.698492, 22.691208>,  <30.335117, 28.579405, 23.175058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.800171, 28.698492, 22.691208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.118492, 28.773508, 22.460896>,  <30.309484, 28.818518, 22.322708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.118492, 28.773508, 22.460896>,  <29.800171, 28.698492, 22.691208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.118492, 28.773508, 22.460896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455814, -0.440458, -0.773454,
		-0.398660, 0.877967, -0.265036,
		0.795804, 0.187538, -0.575783,
		30.357233, 28.829769, 22.288160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.558270, 28.912268, 22.009462>,  <29.800171, 28.698492, 22.691208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.558270, 28.912268, 22.009462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.934353, 28.788279, 21.953003>,  <30.160004, 28.713886, 21.919127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.934353, 28.788279, 21.953003>,  <29.558270, 28.912268, 22.009462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934353, 28.788279, 21.953003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282202, -0.476941, -0.832400,
		0.190700, 0.822463, -0.535899,
		0.940210, -0.309971, -0.141148,
		30.216415, 28.695288, 21.910658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767132, 29.137039, 21.357904>,  <29.558270, 28.912268, 22.009462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767132, 29.137039, 21.357904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.008804, 28.824228, 21.419083>,  <30.153809, 28.636541, 21.455790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.008804, 28.824228, 21.419083>,  <29.767132, 29.137039, 21.357904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.008804, 28.824228, 21.419083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359585, -0.438858, -0.823469,
		0.711098, 0.442530, -0.546357,
		0.604184, -0.782030, 0.152944,
		30.190060, 28.589619, 21.464966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298449, 29.013334, 20.786982>,  <29.767132, 29.137039, 21.357904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298449, 29.013334, 20.786982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.223402, 28.655441, 20.949097>,  <30.178373, 28.440706, 21.046366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.223402, 28.655441, 20.949097>,  <30.298449, 29.013334, 20.786982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.223402, 28.655441, 20.949097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274425, -0.348436, -0.896261,
		0.943128, -0.279374, -0.180165,
		-0.187616, -0.894731, 0.405287,
		30.167118, 28.387022, 21.070683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476913, 28.506643, 20.210117>,  <30.298449, 29.013334, 20.786982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476913, 28.506643, 20.210117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.320210, 28.267248, 20.489641>,  <30.226187, 28.123611, 20.657356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.320210, 28.267248, 20.489641>,  <30.476913, 28.506643, 20.210117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320210, 28.267248, 20.489641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336304, -0.613818, -0.714232,
		0.856402, -0.514819, 0.039195,
		-0.391759, -0.598489, 0.698810,
		30.202682, 28.087702, 20.699284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677221, 27.861198, 20.035749>,  <30.476913, 28.506643, 20.210117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677221, 27.861198, 20.035749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.337193, 27.837311, 20.245058>,  <30.133175, 27.822977, 20.370644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.337193, 27.837311, 20.245058>,  <30.677221, 27.861198, 20.035749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337193, 27.837311, 20.245058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351873, -0.674861, -0.648651,
		0.391874, -0.735524, 0.552665,
		-0.850070, -0.059721, 0.523272,
		30.082170, 27.819395, 20.402039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459291, 27.163040, 20.117441>,  <30.677221, 27.861198, 20.035749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459291, 27.163040, 20.117441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.103321, 27.338236, 20.168350>,  <29.889740, 27.443354, 20.198896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.103321, 27.338236, 20.168350>,  <30.459291, 27.163040, 20.117441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103321, 27.338236, 20.168350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426009, -0.698491, -0.575001,
		-0.162945, -0.565928, 0.808192,
		-0.889924, 0.437991, 0.127275,
		29.836344, 27.469633, 20.206533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144178, 26.637238, 20.171808>,  <30.459291, 27.163040, 20.117441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144178, 26.637238, 20.171808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.851063, 26.907326, 20.138098>,  <29.675194, 27.069378, 20.117872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.851063, 26.907326, 20.138098>,  <30.144178, 26.637238, 20.171808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.851063, 26.907326, 20.138098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555936, -0.665496, -0.498047,
		-0.392375, -0.318112, 0.863045,
		-0.732787, 0.675219, -0.084274,
		29.631227, 27.109892, 20.112816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480051, 26.405855, 20.363081>,  <30.144178, 26.637238, 20.171808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480051, 26.405855, 20.363081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.365835, 26.684860, 20.100191>,  <29.297306, 26.852262, 19.942457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.365835, 26.684860, 20.100191>,  <29.480051, 26.405855, 20.363081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365835, 26.684860, 20.100191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655482, -0.642427, -0.397027,
		-0.699150, 0.317431, 0.640646,
		-0.285540, 0.697513, -0.657223,
		29.280174, 26.894114, 19.903025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.748156, 26.558226, 20.474167>,  <29.480051, 26.405855, 20.363081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.748156, 26.558226, 20.474167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.806738, 26.653530, 20.090130>,  <28.841887, 26.710712, 19.859707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.806738, 26.653530, 20.090130>,  <28.748156, 26.558226, 20.474167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.806738, 26.653530, 20.090130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692124, -0.668753, -0.271540,
		-0.706764, 0.704273, 0.066965,
		0.146455, 0.238262, -0.960095,
		28.850674, 26.725008, 19.802101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.095968, 26.626883, 20.132158>,  <28.748156, 26.558226, 20.474167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.095968, 26.626883, 20.132158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.321131, 26.606220, 19.802197>,  <28.456228, 26.593822, 19.604219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.321131, 26.606220, 19.802197>,  <28.095968, 26.626883, 20.132158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321131, 26.606220, 19.802197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651437, -0.641985, -0.404332,
		-0.508691, 0.764975, -0.395026,
		0.562905, -0.051655, -0.824906,
		28.490002, 26.590723, 19.554726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679398, 26.375156, 19.567020>,  <28.095968, 26.626883, 20.132158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.679398, 26.375156, 19.567020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.043182, 26.287846, 19.425467>,  <28.261454, 26.235460, 19.340534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.043182, 26.287846, 19.425467>,  <27.679398, 26.375156, 19.567020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.043182, 26.287846, 19.425467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367773, -0.819350, -0.439783,
		-0.193960, 0.530115, -0.825444,
		0.909463, -0.218275, -0.353883,
		28.316021, 26.222363, 19.319302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258610, 26.461126, 19.051643>,  <27.679398, 26.375156, 19.567020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.258610, 26.461126, 19.051643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.142307, 26.672319, 18.732470>,  <27.072525, 26.799034, 18.540966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.142307, 26.672319, 18.732470>,  <27.258610, 26.461126, 19.051643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.142307, 26.672319, 18.732470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002722, 0.834416, 0.551128,
		0.956793, 0.158071, -0.244049,
		-0.290756, 0.527980, -0.797933,
		27.055080, 26.830713, 18.493090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.724407, 27.031755, 18.927254>,  <27.258610, 26.461126, 19.051643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.724407, 27.031755, 18.927254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.354010, 27.113499, 18.800274>,  <27.131771, 27.162544, 18.724085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.354010, 27.113499, 18.800274>,  <27.724407, 27.031755, 18.927254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.354010, 27.113499, 18.800274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011747, 0.856028, 0.516797,
		0.377358, 0.474821, -0.795076,
		-0.925993, 0.204357, -0.317451,
		27.076212, 27.174807, 18.705038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.705486, 27.675386, 18.718756>,  <27.724407, 27.031755, 18.927254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.705486, 27.675386, 18.718756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.317509, 27.620264, 18.798969>,  <27.084721, 27.587191, 18.847097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.317509, 27.620264, 18.798969>,  <27.705486, 27.675386, 18.718756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.317509, 27.620264, 18.798969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023519, 0.767195, 0.640983,
		-0.242180, 0.626435, -0.740896,
		-0.969946, -0.137808, 0.200532,
		27.026525, 27.578922, 18.859129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.453611, 28.345100, 18.622957>,  <27.705486, 27.675386, 18.718756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.453611, 28.345100, 18.622957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.141516, 28.173887, 18.805391>,  <26.954258, 28.071159, 18.914852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.141516, 28.173887, 18.805391>,  <27.453611, 28.345100, 18.622957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141516, 28.173887, 18.805391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112024, 0.813014, 0.571366,
		-0.615365, 0.394711, -0.682297,
		-0.780241, -0.428032, 0.456083,
		26.907444, 28.045477, 18.942217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.937485, 28.883753, 18.695148>,  <27.453611, 28.345100, 18.622957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.937485, 28.883753, 18.695148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.852673, 28.616348, 18.980282>,  <26.801785, 28.455906, 19.151361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.852673, 28.616348, 18.980282>,  <26.937485, 28.883753, 18.695148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.852673, 28.616348, 18.980282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127099, 0.704361, 0.698370,
		-0.968962, 0.238678, -0.064380,
		-0.212033, -0.668512, 0.712835,
		26.789062, 28.415794, 19.194132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.482731, 29.164709, 19.198389>,  <26.937485, 28.883753, 18.695148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.482731, 29.164709, 19.198389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.673574, 28.860682, 19.374870>,  <26.788080, 28.678265, 19.480759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.673574, 28.860682, 19.374870>,  <26.482731, 29.164709, 19.198389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673574, 28.860682, 19.374870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321467, 0.618168, 0.717306,
		-0.817940, -0.200402, 0.539271,
		0.477109, -0.760071, 0.441202,
		26.816708, 28.632660, 19.507231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.272251, 29.240347, 19.895472>,  <26.482731, 29.164709, 19.198389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.272251, 29.240347, 19.895472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.591455, 28.999870, 19.878735>,  <26.782978, 28.855585, 19.868692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.591455, 28.999870, 19.878735>,  <26.272251, 29.240347, 19.895472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.591455, 28.999870, 19.878735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404813, 0.483321, 0.776226,
		-0.446437, -0.636374, 0.629065,
		0.798010, -0.601189, -0.041840,
		26.830858, 28.819513, 19.866182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.435900, 29.171440, 20.589483>,  <26.272251, 29.240347, 19.895472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.435900, 29.171440, 20.589483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.773296, 29.075972, 20.397003>,  <26.975735, 29.018690, 20.281515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.773296, 29.075972, 20.397003>,  <26.435900, 29.171440, 20.589483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.773296, 29.075972, 20.397003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537012, 0.394230, 0.745789,
		0.011705, -0.887478, 0.460701,
		0.843493, -0.238673, -0.481201,
		27.026344, 29.004370, 20.252644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.886232, 28.874540, 21.051134>,  <26.435900, 29.171440, 20.589483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.886232, 28.874540, 21.051134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.122669, 28.999050, 20.753485>,  <27.264530, 29.073757, 20.574896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.122669, 28.999050, 20.753485>,  <26.886232, 28.874540, 21.051134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122669, 28.999050, 20.753485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582899, 0.472820, 0.660810,
		0.557531, -0.824347, 0.098037,
		0.591091, 0.311276, -0.744123,
		27.299997, 29.092432, 20.530249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.507988, 28.791115, 21.378235>,  <26.886232, 28.874540, 21.051134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.507988, 28.791115, 21.378235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.587917, 29.029434, 21.067083>,  <27.635876, 29.172426, 20.880392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.587917, 29.029434, 21.067083>,  <27.507988, 28.791115, 21.378235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.587917, 29.029434, 21.067083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663424, 0.501963, 0.554889,
		0.721068, -0.626943, -0.294963,
		0.199823, 0.595799, -0.777878,
		27.647865, 29.208174, 20.833719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.173378, 28.672602, 21.205006>,  <27.507988, 28.791115, 21.378235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.173378, 28.672602, 21.205006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.055548, 29.038708, 21.095085>,  <27.984850, 29.258371, 21.029133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.055548, 29.038708, 21.095085>,  <28.173378, 28.672602, 21.205006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.055548, 29.038708, 21.095085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540169, 0.396691, 0.742195,
		0.788317, 0.070191, -0.611253,
		-0.294574, 0.915265, -0.274803,
		27.967176, 29.313288, 21.012644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.790874, 29.116245, 21.020782>,  <28.173378, 28.672602, 21.205006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.790874, 29.116245, 21.020782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.498693, 29.379251, 21.094664>,  <28.323385, 29.537054, 21.138992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.498693, 29.379251, 21.094664>,  <28.790874, 29.116245, 21.020782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.498693, 29.379251, 21.094664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626281, 0.536999, 0.565158,
		0.272415, 0.528496, -0.804041,
		-0.730453, 0.657513, 0.184701,
		28.279558, 29.576506, 21.150074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196693, 29.754280, 20.960976>,  <28.790874, 29.116245, 21.020782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196693, 29.754280, 20.960976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.848776, 29.802090, 21.152466>,  <28.640026, 29.830776, 21.267359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.848776, 29.802090, 21.152466>,  <29.196693, 29.754280, 20.960976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.848776, 29.802090, 21.152466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472261, 0.482729, 0.737524,
		-0.142941, 0.867575, -0.476321,
		-0.869792, 0.119525, 0.478723,
		28.587839, 29.837948, 21.296083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368666, 30.304707, 21.430859>,  <29.196693, 29.754280, 20.960976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368666, 30.304707, 21.430859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.014790, 30.183489, 21.572554>,  <28.802464, 30.110758, 21.657572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.014790, 30.183489, 21.572554>,  <29.368666, 30.304707, 21.430859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.014790, 30.183489, 21.572554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165797, 0.505663, 0.846650,
		-0.435699, 0.807756, -0.397111,
		-0.884691, -0.303045, 0.354240,
		28.749382, 30.092575, 21.678825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.955524, 30.880770, 21.666594>,  <29.368666, 30.304707, 21.430859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.955524, 30.880770, 21.666594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.790901, 30.577143, 21.868361>,  <28.692127, 30.394966, 21.989420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.790901, 30.577143, 21.868361>,  <28.955524, 30.880770, 21.666594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.790901, 30.577143, 21.868361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035998, 0.539492, 0.841221,
		-0.910673, 0.364368, -0.194706,
		-0.411556, -0.759069, 0.504417,
		28.667435, 30.349422, 22.019686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.327751, 31.087658, 21.973524>,  <28.955524, 30.880770, 21.666594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.327751, 31.087658, 21.973524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.486637, 30.790739, 22.189383>,  <28.581968, 30.612589, 22.318897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.486637, 30.790739, 22.189383>,  <28.327751, 31.087658, 21.973524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486637, 30.790739, 22.189383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032657, 0.576218, 0.816643,
		-0.917144, -0.342007, 0.204642,
		0.397216, -0.742296, 0.539644,
		28.605803, 30.568050, 22.351276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.113014, 31.225063, 22.608889>,  <28.327751, 31.087658, 21.973524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.113014, 31.225063, 22.608889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.454809, 31.025570, 22.667021>,  <28.659885, 30.905874, 22.701900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.454809, 31.025570, 22.667021>,  <28.113014, 31.225063, 22.608889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.454809, 31.025570, 22.667021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070716, 0.388833, 0.918590,
		-0.514639, -0.774646, 0.367521,
		0.854486, -0.498732, 0.145329,
		28.711155, 30.875950, 22.710619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.978842, 30.802492, 23.183052>,  <28.113014, 31.225063, 22.608889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.978842, 30.802492, 23.183052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.371693, 30.868877, 23.147532>,  <28.607403, 30.908709, 23.126219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.371693, 30.868877, 23.147532>,  <27.978842, 30.802492, 23.183052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.371693, 30.868877, 23.147532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025702, 0.349099, 0.936733,
		0.186463, -0.922272, 0.338593,
		0.982126, 0.165964, -0.088799,
		28.666330, 30.918667, 23.120892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.397711, 30.396566, 23.742472>,  <27.978842, 30.802492, 23.183052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.397711, 30.396566, 23.742472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.625380, 30.700775, 23.617477>,  <28.761982, 30.883301, 23.542480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.625380, 30.700775, 23.617477>,  <28.397711, 30.396566, 23.742472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625380, 30.700775, 23.617477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158422, 0.271492, 0.949313,
		0.806811, -0.589828, 0.034042,
		0.569173, 0.760523, -0.312484,
		28.796131, 30.928932, 23.523731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795116, 30.595491, 24.306622>,  <28.397711, 30.396566, 23.742472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.795116, 30.595491, 24.306622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.915400, 30.906389, 24.085546>,  <28.987570, 31.092928, 23.952902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.915400, 30.906389, 24.085546>,  <28.795116, 30.595491, 24.306622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.915400, 30.906389, 24.085546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202862, 0.514122, 0.833381,
		0.931891, -0.362725, -0.003073,
		0.300708, 0.777244, -0.552690,
		29.005611, 31.139563, 23.919739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.427755, 30.884224, 24.575815>,  <28.795116, 30.595491, 24.306622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.427755, 30.884224, 24.575815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.252356, 31.184072, 24.377508>,  <29.147116, 31.363981, 24.258524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.252356, 31.184072, 24.377508>,  <29.427755, 30.884224, 24.575815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252356, 31.184072, 24.377508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312927, 0.644460, 0.697673,
		0.842494, 0.150790, -0.517172,
		-0.438499, 0.749623, -0.495767,
		29.120806, 31.408958, 24.228779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<34.065742, 33.754852, 26.623423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.797974, 33.939747, 26.390799>,  <33.637314, 34.050686, 26.251225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.797974, 33.939747, 26.390799>,  <34.065742, 33.754852, 26.623423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797974, 33.939747, 26.390799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244871, 0.876386, 0.414712,
		0.701366, 0.135210, -0.699860,
		-0.669420, 0.462240, -0.581559,
		33.597149, 34.078419, 26.216331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447979, 34.399326, 26.498917>,  <34.065742, 33.754852, 26.623423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447979, 34.399326, 26.498917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.059669, 34.441772, 26.412817>,  <33.826683, 34.467239, 26.361156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.059669, 34.441772, 26.412817>,  <34.447979, 34.399326, 26.498917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059669, 34.441772, 26.412817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031354, 0.945321, 0.324630,
		0.237928, 0.308394, -0.921023,
		-0.970776, 0.106117, -0.215249,
		33.768436, 34.473606, 26.348242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369217, 35.106110, 26.261930>,  <34.447979, 34.399326, 26.498917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369217, 35.106110, 26.261930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.987782, 35.023338, 26.349428>,  <33.758919, 34.973675, 26.401928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.987782, 35.023338, 26.349428>,  <34.369217, 35.106110, 26.261930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987782, 35.023338, 26.349428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149897, 0.956268, 0.251163,
		-0.261152, 0.206716, -0.942904,
		-0.953588, -0.206930, 0.218745,
		33.701706, 34.961258, 26.415052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012920, 35.685295, 25.981016>,  <34.369217, 35.106110, 26.261930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012920, 35.685295, 25.981016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.781467, 35.509621, 26.255911>,  <33.642593, 35.404217, 26.420847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.781467, 35.509621, 26.255911>,  <34.012920, 35.685295, 25.981016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781467, 35.509621, 26.255911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076044, 0.868013, 0.490685,
		-0.812032, 0.231668, -0.535661,
		-0.578637, -0.439186, 0.687238,
		33.607876, 35.377865, 26.462082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324760, 36.075245, 25.984409>,  <34.012920, 35.685295, 25.981016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324760, 36.075245, 25.984409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.384338, 35.884529, 26.330933>,  <33.420086, 35.770100, 26.538847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.384338, 35.884529, 26.330933>,  <33.324760, 36.075245, 25.984409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384338, 35.884529, 26.330933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001703, 0.876202, 0.481941,
		-0.988845, -0.070305, 0.131314,
		0.148940, -0.476788, 0.866308,
		33.429020, 35.741493, 26.590824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818741, 36.357021, 26.525599>,  <33.324760, 36.075245, 25.984409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818741, 36.357021, 26.525599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.107456, 36.171982, 26.731522>,  <33.280685, 36.060959, 26.855076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.107456, 36.171982, 26.731522>,  <32.818741, 36.357021, 26.525599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107456, 36.171982, 26.731522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082214, 0.795859, 0.599875,
		-0.687217, -0.390656, 0.612471,
		0.721785, -0.462598, 0.514810,
		33.323990, 36.033203, 26.885965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684090, 36.460423, 27.190813>,  <32.818741, 36.357021, 26.525599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684090, 36.460423, 27.190813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.075058, 36.380424, 27.218086>,  <33.309639, 36.332424, 27.234449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.075058, 36.380424, 27.218086>,  <32.684090, 36.460423, 27.190813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075058, 36.380424, 27.218086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112685, 0.766334, 0.632482,
		-0.178744, -0.610518, 0.771568,
		0.977421, -0.199996, 0.068181,
		33.368286, 36.320427, 27.238541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853779, 36.270458, 27.912447>,  <32.684090, 36.460423, 27.190813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853779, 36.270458, 27.912447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.194313, 36.370239, 27.727837>,  <33.398632, 36.430107, 27.617071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.194313, 36.370239, 27.727837>,  <32.853779, 36.270458, 27.912447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194313, 36.370239, 27.727837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046738, 0.840162, 0.540318,
		0.522539, -0.481562, 0.703599,
		0.851333, 0.249452, -0.461525,
		33.449715, 36.445076, 27.589378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195835, 36.447247, 28.422926>,  <32.853779, 36.270458, 27.912447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195835, 36.447247, 28.422926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.402912, 36.625778, 28.130957>,  <33.527161, 36.732895, 27.955776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.402912, 36.625778, 28.130957>,  <33.195835, 36.447247, 28.422926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402912, 36.625778, 28.130957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169339, 0.782814, 0.598770,
		0.838641, -0.433583, 0.329678,
		0.517693, 0.446326, -0.729922,
		33.558220, 36.759674, 27.911980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873974, 36.483105, 28.690712>,  <33.195835, 36.447247, 28.422926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873974, 36.483105, 28.690712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.826206, 36.767387, 28.413403>,  <33.797546, 36.937958, 28.247017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.826206, 36.767387, 28.413403>,  <33.873974, 36.483105, 28.690712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826206, 36.767387, 28.413403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294178, 0.692246, 0.658980,
		0.948260, -0.125249, -0.291746,
		-0.119423, 0.710710, -0.693274,
		33.790379, 36.980602, 28.205420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442814, 36.813602, 28.699989>,  <33.873974, 36.483105, 28.690712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442814, 36.813602, 28.699989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.198727, 37.071156, 28.515360>,  <34.052273, 37.225685, 28.404583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.198727, 37.071156, 28.515360>,  <34.442814, 36.813602, 28.699989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198727, 37.071156, 28.515360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260818, 0.713422, 0.650387,
		0.748068, 0.276492, -0.603279,
		-0.610220, 0.643880, -0.461574,
		34.015659, 37.264320, 28.376888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861652, 37.477226, 28.551888>,  <34.442814, 36.813602, 28.699989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861652, 37.477226, 28.551888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.475960, 37.582310, 28.537800>,  <34.244545, 37.645359, 28.529346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.475960, 37.582310, 28.537800>,  <34.861652, 37.477226, 28.551888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475960, 37.582310, 28.537800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212119, 0.844488, 0.491778,
		0.158937, 0.466717, -0.870008,
		-0.964233, 0.262707, -0.035220,
		34.186691, 37.661121, 28.527233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932079, 38.215122, 28.621923>,  <34.861652, 37.477226, 28.551888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932079, 38.215122, 28.621923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.539265, 38.172504, 28.684216>,  <34.303577, 38.146935, 28.721592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.539265, 38.172504, 28.684216>,  <34.932079, 38.215122, 28.621923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539265, 38.172504, 28.684216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021286, 0.882621, 0.469602,
		-0.187485, 0.457852, -0.869035,
		-0.982037, -0.106542, 0.155732,
		34.244652, 38.140541, 28.730934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649506, 38.812832, 28.474655>,  <34.932079, 38.215122, 28.621923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649506, 38.812832, 28.474655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.386703, 38.656902, 28.732767>,  <34.229023, 38.563347, 28.887634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.386703, 38.656902, 28.732767>,  <34.649506, 38.812832, 28.474655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386703, 38.656902, 28.732767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011268, 0.860919, 0.508618,
		-0.753805, 0.326892, -0.570017,
		-0.657001, -0.389822, 0.645281,
		34.189602, 38.539955, 28.926352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669792, 38.827282, 27.708750>,  <34.649506, 38.812832, 28.474655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669792, 38.827282, 27.708750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.774544, 39.147762, 27.493528>,  <34.837395, 39.340050, 27.364395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.774544, 39.147762, 27.493528>,  <34.669792, 38.827282, 27.708750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774544, 39.147762, 27.493528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306199, -0.459732, -0.833600,
		-0.915239, 0.383054, 0.124932,
		0.261878, 0.801197, -0.538055,
		34.853107, 39.388123, 27.332111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034100, 38.940075, 27.292206>,  <34.669792, 38.827282, 27.708750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034100, 38.940075, 27.292206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.322491, 39.136536, 27.096670>,  <34.495525, 39.254410, 26.979349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.322491, 39.136536, 27.096670>,  <34.034100, 38.940075, 27.292206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322491, 39.136536, 27.096670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355835, -0.342925, -0.869358,
		-0.594619, 0.800735, -0.072474,
		0.720978, 0.491148, -0.488839,
		34.538784, 39.283878, 26.950018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718082, 39.266495, 26.654234>,  <34.034100, 38.940075, 27.292206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718082, 39.266495, 26.654234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.110245, 39.259487, 26.575752>,  <34.345543, 39.255283, 26.528664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.110245, 39.259487, 26.575752>,  <33.718082, 39.266495, 26.654234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110245, 39.259487, 26.575752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196642, -0.145833, -0.969569,
		-0.011628, 0.989154, -0.146420,
		0.980406, -0.017518, -0.196205,
		34.404366, 39.254230, 26.516891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879631, 39.854187, 26.067516>,  <33.718082, 39.266495, 26.654234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879631, 39.854187, 26.067516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.133999, 39.545975, 26.084892>,  <34.286621, 39.361046, 26.095318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.133999, 39.545975, 26.084892>,  <33.879631, 39.854187, 26.067516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133999, 39.545975, 26.084892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191700, -0.212232, -0.958232,
		0.747565, 0.601034, -0.282674,
		0.635922, -0.770529, 0.043438,
		34.324776, 39.314816, 26.097923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178165, 39.865162, 25.350800>,  <33.879631, 39.854187, 26.067516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178165, 39.865162, 25.350800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.262272, 39.507053, 25.507915>,  <34.312737, 39.292191, 25.602184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.262272, 39.507053, 25.507915>,  <34.178165, 39.865162, 25.350800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262272, 39.507053, 25.507915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187394, -0.431227, -0.882568,
		0.959517, 0.111964, -0.258438,
		0.210262, -0.895269, 0.392788,
		34.325352, 39.238472, 25.625751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621437, 39.615898, 24.907675>,  <34.178165, 39.865162, 25.350800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621437, 39.615898, 24.907675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.444000, 39.313072, 25.099541>,  <34.337536, 39.131378, 25.214661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.444000, 39.313072, 25.099541>,  <34.621437, 39.615898, 24.907675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444000, 39.313072, 25.099541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101702, -0.489226, -0.866207,
		0.890438, -0.433028, 0.140023,
		-0.443594, -0.757063, 0.479665,
		34.310921, 39.085953, 25.243441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704208, 39.039322, 24.491470>,  <34.621437, 39.615898, 24.907675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704208, 39.039322, 24.491470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.447681, 38.859592, 24.740252>,  <34.293766, 38.751755, 24.889521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.447681, 38.859592, 24.740252>,  <34.704208, 39.039322, 24.491470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447681, 38.859592, 24.740252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292967, -0.605786, -0.739725,
		0.709146, -0.656608, 0.256863,
		-0.641313, -0.449321, 0.621955,
		34.255287, 38.724796, 24.926838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648914, 38.325180, 24.175848>,  <34.704208, 39.039322, 24.491470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648914, 38.325180, 24.175848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.342079, 38.325886, 24.432463>,  <34.157978, 38.326309, 24.586432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.342079, 38.325886, 24.432463>,  <34.648914, 38.325180, 24.175848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342079, 38.325886, 24.432463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465830, -0.689101, -0.555106,
		0.441105, -0.724663, 0.529424,
		-0.767091, 0.001761, 0.641536,
		34.111950, 38.326416, 24.624924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475491, 37.544281, 24.378578>,  <34.648914, 38.325180, 24.175848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475491, 37.544281, 24.378578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.163055, 37.788788, 24.429586>,  <33.975594, 37.935490, 24.460192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.163055, 37.788788, 24.429586>,  <34.475491, 37.544281, 24.378578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163055, 37.788788, 24.429586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582167, -0.639025, -0.502721,
		-0.225806, -0.466907, 0.854991,
		-0.781085, 0.611265, 0.127523,
		33.928730, 37.972168, 24.467844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922615, 37.159016, 24.762121>,  <34.475491, 37.544281, 24.378578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922615, 37.159016, 24.762121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.746571, 37.453388, 24.556318>,  <33.640945, 37.630013, 24.432837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.746571, 37.453388, 24.556318>,  <33.922615, 37.159016, 24.762121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746571, 37.453388, 24.556318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517410, -0.676137, -0.524524,
		-0.733887, 0.035362, 0.678350,
		-0.440109, 0.735927, -0.514505,
		33.614536, 37.674168, 24.401966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172863, 36.963436, 24.672995>,  <33.922615, 37.159016, 24.762121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172863, 36.963436, 24.672995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.275517, 37.227428, 24.390556>,  <33.337109, 37.385822, 24.221094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.275517, 37.227428, 24.390556>,  <33.172863, 36.963436, 24.672995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275517, 37.227428, 24.390556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448929, -0.565574, -0.691801,
		-0.855922, 0.494525, 0.151137,
		0.256634, 0.659978, -0.706094,
		33.352509, 37.425423, 24.178728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510063, 37.001244, 24.255022>,  <33.172863, 36.963436, 24.672995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510063, 37.001244, 24.255022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.786701, 37.175480, 24.024557>,  <32.952682, 37.280022, 23.886278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.786701, 37.175480, 24.024557>,  <32.510063, 37.001244, 24.255022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786701, 37.175480, 24.024557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319380, -0.531047, -0.784848,
		-0.647840, 0.726809, -0.228150,
		0.691593, 0.435589, -0.576161,
		32.994179, 37.306156, 23.851709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108154, 37.065369, 23.673441>,  <32.510063, 37.001244, 24.255022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108154, 37.065369, 23.673441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.493946, 37.084625, 23.569546>,  <32.725422, 37.096180, 23.507208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.493946, 37.084625, 23.569546>,  <32.108154, 37.065369, 23.673441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493946, 37.084625, 23.569546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164780, -0.658867, -0.733990,
		-0.206470, 0.750717, -0.627530,
		0.964478, 0.048142, -0.259739,
		32.783291, 37.099068, 23.491625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121578, 37.186584, 22.960985>,  <32.108154, 37.065369, 23.673441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121578, 37.186584, 22.960985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.477268, 37.034756, 23.063131>,  <32.690681, 36.943657, 23.124418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.477268, 37.034756, 23.063131>,  <32.121578, 37.186584, 22.960985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477268, 37.034756, 23.063131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056968, -0.645731, -0.761437,
		0.453918, 0.662538, -0.595821,
		0.889220, -0.379573, 0.255365,
		32.744034, 36.920883, 23.139740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118107, 37.816673, 22.423288>,  <32.121578, 37.186584, 22.960985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118107, 37.816673, 22.423288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.729670, 37.899582, 22.375938>,  <31.496607, 37.949329, 22.347528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.729670, 37.899582, 22.375938>,  <32.118107, 37.816673, 22.423288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729670, 37.899582, 22.375938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058015, 0.686006, 0.725279,
		0.231538, 0.697447, -0.678202,
		-0.971094, 0.207276, -0.118374,
		31.438341, 37.961765, 22.340425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100101, 38.517811, 22.691202>,  <32.118107, 37.816673, 22.423288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100101, 38.517811, 22.691202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.713367, 38.416622, 22.677130>,  <31.481327, 38.355907, 22.668686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.713367, 38.416622, 22.677130>,  <32.100101, 38.517811, 22.691202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713367, 38.416622, 22.677130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163591, 0.507582, 0.845930,
		-0.196140, 0.823629, -0.532131,
		-0.966833, -0.252973, -0.035181,
		31.423317, 38.340729, 22.666574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693443, 39.183720, 22.796682>,  <32.100101, 38.517811, 22.691202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693443, 39.183720, 22.796682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.472120, 38.875198, 22.922503>,  <31.339327, 38.690086, 22.997995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.472120, 38.875198, 22.922503>,  <31.693443, 39.183720, 22.796682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472120, 38.875198, 22.922503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256195, 0.516897, 0.816812,
		-0.792600, 0.371362, -0.483607,
		-0.553308, -0.771303, 0.314551,
		31.306128, 38.643806, 23.016869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120258, 39.476986, 22.944521>,  <31.693443, 39.183720, 22.796682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120258, 39.476986, 22.944521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.073030, 39.137783, 23.151190>,  <31.044695, 38.934261, 23.275190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.073030, 39.137783, 23.151190>,  <31.120258, 39.476986, 22.944521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073030, 39.137783, 23.151190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429187, 0.512781, 0.743542,
		-0.895466, -0.133960, -0.424495,
		-0.118068, -0.848003, 0.516672,
		31.037609, 38.883381, 23.306190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438576, 39.441307, 23.180119>,  <31.120258, 39.476986, 22.944521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438576, 39.441307, 23.180119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.610397, 39.177631, 23.427004>,  <30.713490, 39.019424, 23.575136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.610397, 39.177631, 23.427004>,  <30.438576, 39.441307, 23.180119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610397, 39.177631, 23.427004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459418, 0.428901, 0.777804,
		-0.777444, -0.617667, -0.118609,
		0.429552, -0.659190, 0.617214,
		30.739264, 38.979874, 23.612167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.923435, 39.172417, 23.586956>,  <30.438576, 39.441307, 23.180119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.923435, 39.172417, 23.586956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.268677, 39.134602, 23.785397>,  <30.475822, 39.111912, 23.904461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.268677, 39.134602, 23.785397>,  <29.923435, 39.172417, 23.586956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268677, 39.134602, 23.785397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378170, 0.530080, 0.758949,
		-0.334725, -0.842661, 0.421761,
		0.863103, -0.094542, 0.496100,
		30.527607, 39.106239, 23.934227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723579, 38.981415, 24.307755>,  <29.923435, 39.172417, 23.586956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723579, 38.981415, 24.307755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.107771, 39.088497, 24.338253>,  <30.338285, 39.152748, 24.356552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.107771, 39.088497, 24.338253>,  <29.723579, 38.981415, 24.307755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107771, 39.088497, 24.338253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198871, 0.468315, 0.860890,
		0.194763, -0.842029, 0.503046,
		0.960478, 0.267710, 0.076245,
		30.395914, 39.168812, 24.361126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943455, 38.788399, 25.020519>,  <29.723579, 38.981415, 24.307755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943455, 38.788399, 25.020519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.216217, 39.055355, 24.900791>,  <30.379873, 39.215530, 24.828955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.216217, 39.055355, 24.900791>,  <29.943455, 38.788399, 25.020519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216217, 39.055355, 24.900791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058881, 0.457979, 0.887011,
		0.729067, -0.587233, 0.351595,
		0.681905, 0.667393, -0.299321,
		30.420788, 39.255573, 24.810995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441923, 38.868484, 25.575241>,  <29.943455, 38.788399, 25.020519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441923, 38.868484, 25.575241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.438519, 39.204670, 25.358519>,  <30.436476, 39.406380, 25.228485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.438519, 39.204670, 25.358519>,  <30.441923, 38.868484, 25.575241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438519, 39.204670, 25.358519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289156, 0.516609, 0.805918,
		0.957244, 0.163527, 0.238627,
		-0.008513, 0.840461, -0.541806,
		30.435965, 39.456810, 25.195976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788240, 39.402439, 25.953032>,  <30.441923, 38.868484, 25.575241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788240, 39.402439, 25.953032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.577091, 39.616570, 25.689281>,  <30.450401, 39.745049, 25.531031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.577091, 39.616570, 25.689281>,  <30.788240, 39.402439, 25.953032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577091, 39.616570, 25.689281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212284, 0.668553, 0.712722,
		0.822367, 0.516201, -0.239269,
		-0.527871, 0.535326, -0.659377,
		30.418730, 39.777168, 25.491468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.891279, 40.122177, 26.146875>,  <30.788240, 39.402439, 25.953032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.891279, 40.122177, 26.146875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.554340, 40.098736, 25.932579>,  <30.352177, 40.084671, 25.804001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.554340, 40.098736, 25.932579>,  <30.891279, 40.122177, 26.146875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554340, 40.098736, 25.932579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451749, 0.618870, 0.642591,
		0.293898, 0.783304, -0.547776,
		-0.842346, -0.058601, -0.535742,
		30.301636, 40.081154, 25.771856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622007, 40.899479, 26.045855>,  <30.891279, 40.122177, 26.146875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622007, 40.899479, 26.045855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.311306, 40.664543, 25.954922>,  <30.124886, 40.523582, 25.900362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.311306, 40.664543, 25.954922>,  <30.622007, 40.899479, 26.045855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311306, 40.664543, 25.954922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616380, 0.634820, 0.465917,
		-0.129337, 0.502027, -0.855126,
		-0.776754, -0.587343, -0.227334,
		30.078279, 40.488338, 25.886721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<31.444529, 36.022724, 19.284191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094275, 35.926971, 19.451982>,  <30.884123, 35.869518, 19.552658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094275, 35.926971, 19.451982>,  <31.444529, 36.022724, 19.284191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094275, 35.926971, 19.451982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053572, 0.815032, 0.576934,
		-0.479997, 0.527655, -0.700845,
		-0.875633, -0.239381, 0.419480,
		30.831585, 35.855156, 19.577827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970488, 36.761517, 19.311934>,  <31.444529, 36.022724, 19.284191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970488, 36.761517, 19.311934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820316, 36.486469, 19.560524>,  <30.730213, 36.321442, 19.709679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820316, 36.486469, 19.560524>,  <30.970488, 36.761517, 19.311934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.820316, 36.486469, 19.560524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011347, 0.673883, 0.738751,
		-0.926781, 0.270297, -0.260798,
		-0.375430, -0.687620, 0.621475,
		30.707687, 36.280182, 19.746967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400936, 37.024818, 19.588472>,  <30.970488, 36.761517, 19.311934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400936, 37.024818, 19.588472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501492, 36.730000, 19.839411>,  <30.561825, 36.553108, 19.989973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501492, 36.730000, 19.839411>,  <30.400936, 37.024818, 19.588472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501492, 36.730000, 19.839411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015979, 0.651232, 0.758710,
		-0.967755, -0.180705, 0.175488,
		0.251387, -0.737050, 0.627346,
		30.576908, 36.508884, 20.027615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.983730, 37.111523, 20.210508>,  <30.400936, 37.024818, 19.588472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.983730, 37.111523, 20.210508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275864, 36.871922, 20.341841>,  <30.451143, 36.728161, 20.420639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275864, 36.871922, 20.341841>,  <29.983730, 37.111523, 20.210508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275864, 36.871922, 20.341841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049288, 0.433191, 0.899953,
		-0.681309, -0.673450, 0.286851,
		0.730335, -0.599008, 0.328330,
		30.494965, 36.692219, 20.440340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801842, 36.960396, 20.905661>,  <29.983730, 37.111523, 20.210508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801842, 36.960396, 20.905661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181339, 36.834103, 20.911327>,  <30.409037, 36.758327, 20.914726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181339, 36.834103, 20.911327>,  <29.801842, 36.960396, 20.905661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181339, 36.834103, 20.911327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165519, 0.534553, 0.828768,
		-0.269240, -0.783943, 0.559413,
		0.948743, -0.315731, 0.014165,
		30.465961, 36.739384, 20.915577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.022779, 36.822193, 21.676222>,  <29.801842, 36.960396, 20.905661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.022779, 36.822193, 21.676222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339819, 36.904434, 21.446608>,  <30.530043, 36.953781, 21.308840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339819, 36.904434, 21.446608>,  <30.022779, 36.822193, 21.676222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339819, 36.904434, 21.446608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343495, 0.627276, 0.698953,
		0.503787, -0.751167, 0.426553,
		0.792597, 0.205605, -0.574035,
		30.577599, 36.966114, 21.274397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385639, 36.891102, 22.195366>,  <30.022779, 36.822193, 21.676222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385639, 36.891102, 22.195366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.578392, 37.079212, 21.899628>,  <30.694044, 37.192078, 21.722185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.578392, 37.079212, 21.899628>,  <30.385639, 36.891102, 22.195366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578392, 37.079212, 21.899628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474609, 0.569199, 0.671386,
		0.736571, -0.674428, 0.051089,
		0.481881, 0.470275, -0.739345,
		30.722956, 37.220295, 21.677824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116646, 36.835464, 22.325108>,  <30.385639, 36.891102, 22.195366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116646, 36.835464, 22.325108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079514, 37.134380, 22.061914>,  <31.057234, 37.313728, 21.903997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079514, 37.134380, 22.061914>,  <31.116646, 36.835464, 22.325108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079514, 37.134380, 22.061914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540816, 0.592703, 0.596843,
		0.836003, -0.300442, -0.459167,
		-0.092833, 0.747287, -0.657985,
		31.051664, 37.358566, 21.864519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789396, 37.140621, 22.266676>,  <31.116646, 36.835464, 22.325108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789396, 37.140621, 22.266676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491381, 37.394936, 22.185986>,  <31.312571, 37.547523, 22.137571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491381, 37.394936, 22.185986>,  <31.789396, 37.140621, 22.266676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491381, 37.394936, 22.185986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413801, 0.677757, 0.607794,
		0.523148, 0.369356, -0.768044,
		-0.745040, 0.635784, -0.201727,
		31.267868, 37.585670, 22.125467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553955, 37.130314, 22.330173>,  <31.789396, 37.140621, 22.266676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553955, 37.130314, 22.330173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695206, 36.863209, 22.592285>,  <32.779957, 36.702946, 22.749552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695206, 36.863209, 22.592285>,  <32.553955, 37.130314, 22.330173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695206, 36.863209, 22.592285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066888, -0.716631, -0.694238,
		0.933182, 0.201321, -0.297725,
		0.353124, -0.667765, 0.655281,
		32.801144, 36.662880, 22.788870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108440, 36.821266, 22.052732>,  <32.553955, 37.130314, 22.330173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108440, 36.821266, 22.052732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004116, 36.562229, 22.339117>,  <32.941521, 36.406807, 22.510948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004116, 36.562229, 22.339117>,  <33.108440, 36.821266, 22.052732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004116, 36.562229, 22.339117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036373, -0.747695, -0.663046,
		0.964704, -0.146888, 0.218562,
		-0.260811, -0.647593, 0.715962,
		32.925873, 36.367950, 22.553905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594177, 36.119022, 22.021719>,  <33.108440, 36.821266, 22.052732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594177, 36.119022, 22.021719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284138, 35.989182, 22.238552>,  <33.098114, 35.911278, 22.368652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284138, 35.989182, 22.238552>,  <33.594177, 36.119022, 22.021719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284138, 35.989182, 22.238552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041528, -0.829917, -0.556339,
		0.630474, -0.453730, 0.629787,
		-0.775099, -0.324603, 0.542083,
		33.051609, 35.891800, 22.401176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724674, 35.480865, 22.058170>,  <33.594177, 36.119022, 22.021719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724674, 35.480865, 22.058170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334427, 35.498692, 22.144125>,  <33.100277, 35.509388, 22.195698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334427, 35.498692, 22.144125>,  <33.724674, 35.480865, 22.058170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334427, 35.498692, 22.144125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150500, -0.848516, -0.507317,
		0.159726, -0.527290, 0.834537,
		-0.975622, 0.044566, 0.214887,
		33.041740, 35.512062, 22.208591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635284, 34.892143, 22.320339>,  <33.724674, 35.480865, 22.058170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635284, 34.892143, 22.320339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278206, 35.019596, 22.192862>,  <33.063957, 35.096069, 22.116375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278206, 35.019596, 22.192862>,  <33.635284, 34.892143, 22.320339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278206, 35.019596, 22.192862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172570, -0.894965, -0.411410,
		-0.416308, -0.312268, 0.853918,
		-0.892697, 0.318634, -0.318693,
		33.010395, 35.115185, 22.097254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211712, 34.415527, 22.555534>,  <33.635284, 34.892143, 22.320339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211712, 34.415527, 22.555534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984634, 34.590996, 22.276882>,  <32.848389, 34.696278, 22.109692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984634, 34.590996, 22.276882>,  <33.211712, 34.415527, 22.555534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984634, 34.590996, 22.276882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318720, -0.897326, -0.305325,
		-0.759041, 0.048699, 0.649218,
		-0.567692, 0.438673, -0.696629,
		32.814327, 34.722599, 22.067894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447582, 34.231358, 22.566174>,  <33.211712, 34.415527, 22.555534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447582, 34.231358, 22.566174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537148, 34.323685, 22.187420>,  <32.590885, 34.379082, 21.960169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537148, 34.323685, 22.187420>,  <32.447582, 34.231358, 22.566174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537148, 34.323685, 22.187420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355781, -0.885144, -0.299901,
		-0.907350, 0.404034, -0.116072,
		0.223910, 0.230819, -0.946883,
		32.604321, 34.392929, 21.903355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940805, 33.852833, 22.124002>,  <32.447582, 34.231358, 22.566174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940805, 33.852833, 22.124002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202629, 33.992512, 21.855789>,  <32.359722, 34.076317, 21.694860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202629, 33.992512, 21.855789>,  <31.940805, 33.852833, 22.124002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202629, 33.992512, 21.855789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073856, -0.853159, -0.516396,
		-0.752396, 0.387534, -0.532652,
		0.654558, 0.349195, -0.670535,
		32.398998, 34.097271, 21.654629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650167, 33.851219, 21.439030>,  <31.940805, 33.852833, 22.124002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650167, 33.851219, 21.439030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039059, 33.877914, 21.349298>,  <32.272392, 33.893932, 21.295460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039059, 33.877914, 21.349298>,  <31.650167, 33.851219, 21.439030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039059, 33.877914, 21.349298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119482, -0.682635, -0.720925,
		-0.201247, 0.727705, -0.655702,
		0.972226, 0.066740, -0.224326,
		32.330727, 33.897938, 21.282001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666187, 33.628296, 20.776331>,  <31.650167, 33.851219, 21.439030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666187, 33.628296, 20.776331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047737, 33.590908, 20.890446>,  <32.276669, 33.568474, 20.958914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047737, 33.590908, 20.890446>,  <31.666187, 33.628296, 20.776331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047737, 33.590908, 20.890446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129950, -0.728089, -0.673052,
		0.270624, 0.679080, -0.682359,
		0.953874, -0.093472, 0.285285,
		32.333900, 33.562866, 20.976030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139488, 33.656208, 20.113810>,  <31.666187, 33.628296, 20.776331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139488, 33.656208, 20.113810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332012, 33.469238, 20.410418>,  <32.447529, 33.357056, 20.588383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332012, 33.469238, 20.410418>,  <32.139488, 33.656208, 20.113810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332012, 33.469238, 20.410418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008752, -0.843351, -0.537291,
		0.876504, 0.265096, -0.401826,
		0.481315, -0.467421, 0.741521,
		32.476406, 33.329010, 20.632874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640995, 33.370865, 19.886568>,  <32.139488, 33.656208, 20.113810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640995, 33.370865, 19.886568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625072, 33.161652, 20.227119>,  <32.615517, 33.036121, 20.431450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625072, 33.161652, 20.227119>,  <32.640995, 33.370865, 19.886568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625072, 33.161652, 20.227119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279041, -0.823976, -0.493154,
		0.959454, 0.217938, 0.178750,
		-0.039809, -0.523037, 0.851380,
		32.613129, 33.004742, 20.482534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111935, 32.747574, 19.863728>,  <32.640995, 33.370865, 19.886568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111935, 32.747574, 19.863728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855114, 32.650589, 20.154652>,  <32.701023, 32.592400, 20.329206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855114, 32.650589, 20.154652>,  <33.111935, 32.747574, 19.863728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855114, 32.650589, 20.154652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002490, -0.949327, -0.314279,
		0.766657, -0.199973, 0.610121,
		-0.642052, -0.242463, 0.727311,
		32.662498, 32.577850, 20.372845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256126, 32.071533, 20.013548>,  <33.111935, 32.747574, 19.863728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256126, 32.071533, 20.013548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889034, 32.117905, 20.165516>,  <32.668781, 32.145729, 20.256697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889034, 32.117905, 20.165516>,  <33.256126, 32.071533, 20.013548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889034, 32.117905, 20.165516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257290, -0.902189, -0.346204,
		0.302625, -0.415470, 0.857790,
		-0.917726, 0.115931, 0.379921,
		32.613716, 32.152683, 20.279491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<26.036018, 33.002739, 21.719296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.385666, 33.036400, 21.527948>,  <26.595455, 33.056595, 21.413139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.385666, 33.036400, 21.527948>,  <26.036018, 33.002739, 21.719296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.385666, 33.036400, 21.527948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390729, 0.463215, 0.795464,
		0.288527, -0.882242, 0.372024,
		0.874119, 0.084152, -0.478368,
		26.647902, 33.061646, 21.384438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.548656, 32.874935, 22.241602>,  <26.036018, 33.002739, 21.719296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.548656, 32.874935, 22.241602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.715843, 33.113544, 21.967533>,  <26.816154, 33.256710, 21.803091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.715843, 33.113544, 21.967533>,  <26.548656, 32.874935, 22.241602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.715843, 33.113544, 21.967533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372658, 0.575255, 0.728154,
		0.828511, -0.559679, 0.018138,
		0.417966, 0.596524, -0.685174,
		26.841232, 33.292503, 21.761980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225571, 33.075100, 22.467264>,  <26.548656, 32.874935, 22.241602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.225571, 33.075100, 22.467264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.197277, 33.330349, 22.160593>,  <27.180302, 33.483498, 21.976591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.197277, 33.330349, 22.160593>,  <27.225571, 33.075100, 22.467264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.197277, 33.330349, 22.160593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438949, 0.710096, 0.550533,
		0.895723, -0.297591, -0.330332,
		-0.070734, 0.638125, -0.766677,
		27.176058, 33.521786, 21.930590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.944347, 33.287235, 22.268633>,  <27.225571, 33.075100, 22.467264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.944347, 33.287235, 22.268633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.672445, 33.558094, 22.155920>,  <27.509304, 33.720608, 22.088291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.672445, 33.558094, 22.155920>,  <27.944347, 33.287235, 22.268633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.672445, 33.558094, 22.155920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364661, 0.645376, 0.671202,
		0.636360, 0.353498, -0.685628,
		-0.679756, 0.677148, -0.281784,
		27.468519, 33.761238, 22.071384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.267212, 33.877228, 22.161467>,  <27.944347, 33.287235, 22.268633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.267212, 33.877228, 22.161467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.896044, 34.020809, 22.201704>,  <27.673344, 34.106956, 22.225847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.896044, 34.020809, 22.201704>,  <28.267212, 33.877228, 22.161467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.896044, 34.020809, 22.201704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353249, 0.760490, 0.544859,
		0.119076, 0.541121, -0.832472,
		-0.927920, 0.358949, 0.100594,
		27.617668, 34.128494, 22.231882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261560, 34.577049, 22.142595>,  <28.267212, 33.877228, 22.161467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.261560, 34.577049, 22.142595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.896868, 34.561371, 22.306160>,  <27.678053, 34.551964, 22.404299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.896868, 34.561371, 22.306160>,  <28.261560, 34.577049, 22.142595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.896868, 34.561371, 22.306160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332491, 0.514161, 0.790626,
		-0.241237, 0.856798, -0.455744,
		-0.911732, -0.039198, 0.408912,
		27.623348, 34.549610, 22.428833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.053352, 35.327953, 22.343346>,  <28.261560, 34.577049, 22.142595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.053352, 35.327953, 22.343346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.816200, 35.084335, 22.554079>,  <27.673910, 34.938164, 22.680519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.816200, 35.084335, 22.554079>,  <28.053352, 35.327953, 22.343346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.816200, 35.084335, 22.554079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287161, 0.451313, 0.844900,
		-0.752353, 0.652209, -0.092679,
		-0.592878, -0.609049, 0.526835,
		27.638336, 34.901619, 22.712130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.582611, 35.729084, 22.712616>,  <28.053352, 35.327953, 22.343346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.582611, 35.729084, 22.712616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.606173, 35.379066, 22.904793>,  <27.620310, 35.169056, 23.020100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.606173, 35.379066, 22.904793>,  <27.582611, 35.729084, 22.712616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.606173, 35.379066, 22.904793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112122, 0.484033, 0.867837,
		-0.991947, 0.002748, 0.126624,
		0.058905, -0.875046, 0.480443,
		27.623844, 35.116554, 23.048925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.106020, 35.743538, 23.319101>,  <27.582611, 35.729084, 22.712616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.106020, 35.743538, 23.319101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.352858, 35.442078, 23.409607>,  <27.500961, 35.261200, 23.463911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.352858, 35.442078, 23.409607>,  <27.106020, 35.743538, 23.319101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.352858, 35.442078, 23.409607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088690, 0.352329, 0.931665,
		-0.781874, -0.554859, 0.284263,
		0.617096, -0.753655, 0.226266,
		27.537987, 35.215981, 23.477488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.834873, 35.406487, 23.865751>,  <27.106020, 35.743538, 23.319101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.834873, 35.406487, 23.865751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.227310, 35.331066, 23.883219>,  <27.462772, 35.285816, 23.893700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.227310, 35.331066, 23.883219>,  <26.834873, 35.406487, 23.865751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.227310, 35.331066, 23.883219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067072, 0.542891, 0.837121,
		-0.181545, -0.818364, 0.545272,
		0.981093, -0.188548, 0.043670,
		27.521639, 35.274502, 23.896320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.956726, 35.153580, 24.580107>,  <26.834873, 35.406487, 23.865751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.956726, 35.153580, 24.580107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.310627, 35.264965, 24.430614>,  <27.522966, 35.331795, 24.340919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.310627, 35.264965, 24.430614>,  <26.956726, 35.153580, 24.580107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.310627, 35.264965, 24.430614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180440, 0.534699, 0.825553,
		0.429716, -0.797846, 0.422831,
		0.884751, 0.278458, -0.373732,
		27.576052, 35.348503, 24.318495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.450768, 35.014492, 25.145138>,  <26.956726, 35.153580, 24.580107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.450768, 35.014492, 25.145138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.662230, 35.264107, 24.914974>,  <27.789108, 35.413876, 24.776876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.662230, 35.264107, 24.914974>,  <27.450768, 35.014492, 25.145138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.662230, 35.264107, 24.914974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213424, 0.558383, 0.801660,
		0.821567, -0.546609, 0.162007,
		0.528657, 0.624041, -0.575408,
		27.820827, 35.451321, 24.742352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022459, 35.085804, 25.509432>,  <27.450768, 35.014492, 25.145138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.022459, 35.085804, 25.509432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.002003, 35.405449, 25.269831>,  <27.989729, 35.597237, 25.126070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.002003, 35.405449, 25.269831>,  <28.022459, 35.085804, 25.509432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.002003, 35.405449, 25.269831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197571, 0.596031, 0.778276,
		0.978954, -0.078546, -0.188361,
		-0.051139, 0.799111, -0.599005,
		27.986662, 35.645184, 25.090130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.607918, 35.421211, 25.576090>,  <28.022459, 35.085804, 25.509432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.607918, 35.421211, 25.576090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.368286, 35.707584, 25.432676>,  <28.224506, 35.879406, 25.346628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.368286, 35.707584, 25.432676>,  <28.607918, 35.421211, 25.576090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368286, 35.707584, 25.432676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222602, 0.579053, 0.784312,
		0.769123, 0.390056, -0.506267,
		-0.599081, 0.715928, -0.358536,
		28.188562, 35.922363, 25.325115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256861, 35.289772, 25.234499>,  <28.607918, 35.421211, 25.576090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.256861, 35.289772, 25.234499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.495050, 35.123482, 25.509478>,  <29.637964, 35.023708, 25.674465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.495050, 35.123482, 25.509478>,  <29.256861, 35.289772, 25.234499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495050, 35.123482, 25.509478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015207, -0.861379, -0.507736,
		0.803230, 0.291890, -0.519251,
		0.595475, -0.415725, 0.687447,
		29.673693, 34.998764, 25.715712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705784, 34.834873, 24.902422>,  <29.256861, 35.289772, 25.234499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705784, 34.834873, 24.902422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.694138, 34.717945, 25.284773>,  <29.687151, 34.647789, 25.514183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.694138, 34.717945, 25.284773>,  <29.705784, 34.834873, 24.902422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694138, 34.717945, 25.284773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041102, -0.955824, -0.291050,
		0.998731, 0.030815, 0.039843,
		-0.029114, -0.292319, 0.955878,
		29.685404, 34.630249, 25.571537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.290205, 34.382385, 25.027761>,  <29.705784, 34.834873, 24.902422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.290205, 34.382385, 25.027761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.002447, 34.294994, 25.291498>,  <29.829792, 34.242558, 25.449741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.002447, 34.294994, 25.291498>,  <30.290205, 34.382385, 25.027761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002447, 34.294994, 25.291498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000078, -0.949269, -0.314464,
		0.694599, -0.226173, 0.682919,
		-0.719397, -0.218480, 0.659344,
		29.786629, 34.229450, 25.489302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459339, 33.768013, 25.240011>,  <30.290205, 34.382385, 25.027761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459339, 33.768013, 25.240011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.088116, 33.789814, 25.387381>,  <29.865381, 33.802895, 25.475803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.088116, 33.789814, 25.387381>,  <30.459339, 33.768013, 25.240011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088116, 33.789814, 25.387381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132201, -0.973026, -0.189060,
		0.348183, -0.224165, 0.910230,
		-0.928058, 0.054506, 0.368426,
		29.809698, 33.806168, 25.497908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401142, 33.236095, 25.778416>,  <30.459339, 33.768013, 25.240011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401142, 33.236095, 25.778416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.047747, 33.316376, 25.609100>,  <29.835711, 33.364544, 25.507511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.047747, 33.316376, 25.609100>,  <30.401142, 33.236095, 25.778416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047747, 33.316376, 25.609100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145570, -0.976464, -0.159144,
		-0.445265, -0.078983, 0.891908,
		-0.883486, 0.200697, -0.423287,
		29.782701, 33.376583, 25.482115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078611, 32.577869, 25.796915>,  <30.401142, 33.236095, 25.778416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078611, 32.577869, 25.796915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.843878, 32.803810, 25.564859>,  <29.703037, 32.939377, 25.425627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.843878, 32.803810, 25.564859>,  <30.078611, 32.577869, 25.796915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.843878, 32.803810, 25.564859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315035, -0.819306, -0.479051,
		-0.745907, -0.098360, 0.658747,
		-0.586835, 0.564856, -0.580140,
		29.667828, 32.973267, 25.390818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486452, 32.293175, 25.780882>,  <30.078611, 32.577869, 25.796915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486452, 32.293175, 25.780882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.463533, 32.521431, 25.453201>,  <29.449781, 32.658382, 25.256594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.463533, 32.521431, 25.453201>,  <29.486452, 32.293175, 25.780882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463533, 32.521431, 25.453201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270065, -0.798816, -0.537548,
		-0.961136, 0.190437, 0.199879,
		-0.057297, 0.570637, -0.819201,
		29.446344, 32.692623, 25.207441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893612, 32.080364, 25.479589>,  <29.486452, 32.293175, 25.780882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893612, 32.080364, 25.479589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.099487, 32.277534, 25.198984>,  <29.223013, 32.395836, 25.030621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.099487, 32.277534, 25.198984>,  <28.893612, 32.080364, 25.479589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.099487, 32.277534, 25.198984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307330, -0.657770, -0.687668,
		-0.800403, 0.569531, -0.187056,
		0.514688, 0.492923, -0.701515,
		29.253893, 32.425411, 24.988529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.440306, 32.198261, 24.954300>,  <28.893612, 32.080364, 25.479589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.440306, 32.198261, 24.954300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.792145, 32.225723, 24.766003>,  <29.003248, 32.242199, 24.653025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.792145, 32.225723, 24.766003>,  <28.440306, 32.198261, 24.954300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792145, 32.225723, 24.766003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317647, -0.651862, -0.688604,
		-0.354134, 0.755223, -0.551567,
		0.879596, 0.068655, -0.470741,
		29.056025, 32.246319, 24.624781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285513, 32.254555, 24.289827>,  <28.440306, 32.198261, 24.954300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.285513, 32.254555, 24.289827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.659744, 32.113346, 24.293205>,  <28.884283, 32.028622, 24.295231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.659744, 32.113346, 24.293205>,  <28.285513, 32.254555, 24.289827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.659744, 32.113346, 24.293205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226444, -0.618126, -0.752757,
		0.270960, 0.702350, -0.658244,
		0.935577, -0.353023, 0.008444,
		28.940418, 32.007439, 24.295738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.600830, 32.434063, 23.608088>,  <28.285513, 32.254555, 24.289827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.600830, 32.434063, 23.608088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.756891, 32.111034, 23.785002>,  <28.850529, 31.917217, 23.891150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.756891, 32.111034, 23.785002>,  <28.600830, 32.434063, 23.608088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.756891, 32.111034, 23.785002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049711, -0.498126, -0.865679,
		0.919407, 0.315761, -0.234490,
		0.390153, -0.807568, 0.442283,
		28.873938, 31.868765, 23.917686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.980507, 32.125496, 23.108212>,  <28.600830, 32.434063, 23.608088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.980507, 32.125496, 23.108212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.033861, 31.830492, 23.373026>,  <29.065874, 31.653490, 23.531914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.033861, 31.830492, 23.373026>,  <28.980507, 32.125496, 23.108212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.033861, 31.830492, 23.373026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196142, -0.635146, -0.747073,
		0.971461, 0.229501, 0.059938,
		0.133385, -0.737509, 0.662034,
		29.073877, 31.609240, 23.571636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635660, 31.811449, 23.034241>,  <28.980507, 32.125496, 23.108212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635660, 31.811449, 23.034241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.402370, 31.533155, 23.201956>,  <29.262396, 31.366179, 23.302586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.402370, 31.533155, 23.201956>,  <29.635660, 31.811449, 23.034241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402370, 31.533155, 23.201956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144735, -0.596910, -0.789145,
		0.799313, -0.399563, 0.448830,
		-0.583224, -0.695735, 0.419287,
		29.227404, 31.324434, 23.327742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.949924, 31.132816, 22.956553>,  <29.635660, 31.811449, 23.034241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.949924, 31.132816, 22.956553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.552528, 31.105837, 22.993279>,  <29.314091, 31.089649, 23.015314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.552528, 31.105837, 22.993279>,  <29.949924, 31.132816, 22.956553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552528, 31.105837, 22.993279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064023, -0.336095, -0.939650,
		0.094240, -0.939410, 0.329588,
		-0.993489, -0.067451, 0.091817,
		29.254482, 31.085602, 23.020824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350302, 30.530968, 23.233725>,  <29.949924, 31.132816, 22.956553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350302, 30.530968, 23.233725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.669315, 30.296614, 23.176203>,  <30.860723, 30.156002, 23.141689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.669315, 30.296614, 23.176203>,  <30.350302, 30.530968, 23.233725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669315, 30.296614, 23.176203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571596, 0.657642, 0.490699,
		-0.192922, -0.473547, 0.859380,
		0.797534, -0.585884, -0.143804,
		30.908575, 30.120848, 23.133062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627228, 30.277763, 23.896267>,  <30.350302, 30.530968, 23.233725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627228, 30.277763, 23.896267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.931498, 30.257179, 23.637430>,  <31.114059, 30.244829, 23.482128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.931498, 30.257179, 23.637430>,  <30.627228, 30.277763, 23.896267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931498, 30.257179, 23.637430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430496, 0.786093, 0.443545,
		0.485846, -0.615963, 0.620116,
		0.760676, -0.051462, -0.647089,
		31.159700, 30.241741, 23.443304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209637, 30.158312, 24.372419>,  <30.627228, 30.277763, 23.896267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209637, 30.158312, 24.372419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.365370, 30.296738, 24.030973>,  <31.458809, 30.379793, 23.826105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.365370, 30.296738, 24.030973>,  <31.209637, 30.158312, 24.372419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365370, 30.296738, 24.030973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618663, 0.588334, 0.520690,
		0.682404, -0.730822, 0.014959,
		0.389332, 0.346067, -0.853615,
		31.482170, 30.400558, 23.774889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863100, 30.240538, 24.615204>,  <31.209637, 30.158312, 24.372419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863100, 30.240538, 24.615204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.857401, 30.436636, 24.266617>,  <31.853981, 30.554295, 24.057465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.857401, 30.436636, 24.266617>,  <31.863100, 30.240538, 24.615204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857401, 30.436636, 24.266617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535920, 0.739541, 0.407269,
		0.844148, -0.461233, -0.273272,
		-0.014250, 0.490247, -0.871467,
		31.853127, 30.583710, 24.005177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559731, 30.415945, 24.410873>,  <31.863100, 30.240538, 24.615204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559731, 30.415945, 24.410873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.314064, 30.684309, 24.244656>,  <32.166664, 30.845327, 24.144924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.314064, 30.684309, 24.244656>,  <32.559731, 30.415945, 24.410873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314064, 30.684309, 24.244656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579925, 0.740811, 0.338948,
		0.535244, -0.032814, -0.844060,
		-0.614167, 0.670911, -0.415545,
		32.129814, 30.885582, 24.119991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040398, 30.859835, 24.051207>,  <32.559731, 30.415945, 24.410873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040398, 30.859835, 24.051207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.706562, 31.061388, 24.140263>,  <32.506260, 31.182320, 24.193695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.706562, 31.061388, 24.140263>,  <33.040398, 30.859835, 24.051207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706562, 31.061388, 24.140263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546663, 0.807453, 0.221762,
		-0.068028, 0.306787, -0.949344,
		-0.834584, 0.503886, 0.222638,
		32.456188, 31.212553, 24.207054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213615, 31.541569, 23.874022>,  <33.040398, 30.859835, 24.051207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213615, 31.541569, 23.874022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.881226, 31.603977, 24.087614>,  <32.681793, 31.641422, 24.215771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.881226, 31.603977, 24.087614>,  <33.213615, 31.541569, 23.874022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881226, 31.603977, 24.087614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312002, 0.925400, 0.215149,
		-0.460581, 0.345387, -0.817663,
		-0.830975, 0.156019, 0.533983,
		32.631931, 31.650784, 24.247808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001625, 32.263763, 23.776506>,  <33.213615, 31.541569, 23.874022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001625, 32.263763, 23.776506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.819782, 32.150589, 24.114330>,  <32.710678, 32.082684, 24.317024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.819782, 32.150589, 24.114330>,  <33.001625, 32.263763, 23.776506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819782, 32.150589, 24.114330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163105, 0.905729, 0.391219,
		-0.875632, 0.315602, -0.365601,
		-0.454605, -0.282932, 0.844561,
		32.683399, 32.065708, 24.367699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736649, 32.849888, 23.967335>,  <33.001625, 32.263763, 23.776506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736649, 32.849888, 23.967335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.717896, 32.628983, 24.300276>,  <32.706646, 32.496441, 24.500040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.717896, 32.628983, 24.300276>,  <32.736649, 32.849888, 23.967335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717896, 32.628983, 24.300276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217401, 0.807654, 0.548117,
		-0.974956, 0.206650, 0.082200,
		-0.046880, -0.552260, 0.832353,
		32.703831, 32.463306, 24.549982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334450, 33.255611, 24.463957>,  <32.736649, 32.849888, 23.967335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334450, 33.255611, 24.463957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.563477, 33.005825, 24.676453>,  <32.700893, 32.855953, 24.803949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.563477, 33.005825, 24.676453>,  <32.334450, 33.255611, 24.463957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563477, 33.005825, 24.676453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292519, 0.760914, 0.579174,
		-0.765900, -0.176217, 0.618340,
		0.572564, -0.624466, 0.531238,
		32.735245, 32.818485, 24.835823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100639, 33.311943, 25.177519>,  <32.334450, 33.255611, 24.463957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100639, 33.311943, 25.177519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.477261, 33.178120, 25.161768>,  <32.703232, 33.097824, 25.152317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.477261, 33.178120, 25.161768>,  <32.100639, 33.311943, 25.177519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477261, 33.178120, 25.161768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305950, 0.800352, 0.515589,
		-0.140978, -0.497502, 0.855931,
		0.941552, -0.334558, -0.039379,
		32.759727, 33.077751, 25.149954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223866, 33.400024, 25.861794>,  <32.100639, 33.311943, 25.177519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223866, 33.400024, 25.861794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.588779, 33.323544, 25.716919>,  <32.807728, 33.277657, 25.629995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.588779, 33.323544, 25.716919>,  <32.223866, 33.400024, 25.861794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588779, 33.323544, 25.716919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380026, 0.724902, 0.574541,
		0.152696, -0.661784, 0.733979,
		0.912286, -0.191201, -0.362185,
		32.862465, 33.266182, 25.608263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673996, 33.367287, 26.458902>,  <32.223866, 33.400024, 25.861794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673996, 33.367287, 26.458902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.891174, 33.447433, 26.132696>,  <33.021481, 33.495522, 25.936972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.891174, 33.447433, 26.132696>,  <32.673996, 33.367287, 26.458902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891174, 33.447433, 26.132696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617523, 0.562856, 0.549416,
		0.569101, -0.801903, 0.181871,
		0.542945, 0.200363, -0.815515,
		33.054058, 33.507542, 25.888041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365776, 33.357403, 26.626892>,  <32.673996, 33.367287, 26.458902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365776, 33.357403, 26.626892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.345989, 33.596249, 26.306643>,  <33.334118, 33.739555, 26.114492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.345989, 33.596249, 26.306643>,  <33.365776, 33.357403, 26.626892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345989, 33.596249, 26.306643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576951, 0.671420, 0.465105,
		0.815279, -0.438913, -0.377724,
		-0.049471, 0.597118, -0.800626,
		33.331146, 33.775383, 26.066454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.055973, 31.448418, 20.477068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.711491, 31.620310, 20.368509>,  <32.504803, 31.723446, 20.303375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.711491, 31.620310, 20.368509>,  <33.055973, 31.448418, 20.477068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711491, 31.620310, 20.368509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237287, -0.812156, -0.533007,
		-0.449464, -0.394631, 0.801404,
		-0.861207, 0.429730, -0.271394,
		32.453129, 31.749229, 20.287090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511669, 30.888514, 20.629637>,  <33.055973, 31.448418, 20.477068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511669, 30.888514, 20.629637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.326614, 31.146872, 20.386726>,  <32.215580, 31.301886, 20.240980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.326614, 31.146872, 20.386726>,  <32.511669, 30.888514, 20.629637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326614, 31.146872, 20.386726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463474, -0.760138, -0.455392,
		-0.755741, 0.070764, 0.651035,
		-0.462652, 0.645896, -0.607265,
		32.187824, 31.340639, 20.204544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815285, 30.538879, 20.444693>,  <32.511669, 30.888514, 20.629637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815285, 30.538879, 20.444693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.874298, 30.818176, 20.164494>,  <31.909706, 30.985754, 19.996374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.874298, 30.818176, 20.164494>,  <31.815285, 30.538879, 20.444693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874298, 30.818176, 20.164494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462264, -0.577451, -0.672950,
		-0.874383, 0.423097, 0.237578,
		0.147533, 0.698240, -0.700496,
		31.918558, 31.027649, 19.954346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222065, 30.629477, 20.148478>,  <31.815285, 30.538879, 20.444693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222065, 30.629477, 20.148478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.482128, 30.738617, 19.864830>,  <31.638166, 30.804102, 19.694641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.482128, 30.738617, 19.864830>,  <31.222065, 30.629477, 20.148478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482128, 30.738617, 19.864830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465058, -0.595141, -0.655384,
		-0.600848, 0.755883, -0.260042,
		0.650156, 0.272852, -0.709119,
		31.677176, 30.820473, 19.652094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828728, 30.867785, 19.646843>,  <31.222065, 30.629477, 20.148478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828728, 30.867785, 19.646843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.184620, 30.768635, 19.493515>,  <31.398155, 30.709145, 19.401518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.184620, 30.768635, 19.493515>,  <30.828728, 30.867785, 19.646843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184620, 30.768635, 19.493515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449816, -0.619061, -0.643762,
		-0.077725, 0.745199, -0.662297,
		0.889733, -0.247876, -0.383319,
		31.451540, 30.694273, 19.378519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.722359, 30.635939, 18.830481>,  <30.828728, 30.867785, 19.646843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.722359, 30.635939, 18.830481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.086884, 30.488556, 18.903967>,  <31.305597, 30.400126, 18.948059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.086884, 30.488556, 18.903967>,  <30.722359, 30.635939, 18.830481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.086884, 30.488556, 18.903967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214012, -0.805125, -0.553148,
		0.351727, 0.464772, -0.812573,
		0.911311, -0.368457, 0.183717,
		31.360277, 30.378019, 18.959082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015869, 30.503403, 18.146269>,  <30.722359, 30.635939, 18.830481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015869, 30.503403, 18.146269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.195089, 30.278534, 18.424324>,  <31.302622, 30.143612, 18.591156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.195089, 30.278534, 18.424324>,  <31.015869, 30.503403, 18.146269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195089, 30.278534, 18.424324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273873, -0.826476, -0.491865,
		0.851026, 0.030000, -0.524265,
		0.448049, -0.562172, 0.695136,
		31.329504, 30.109882, 18.632866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534563, 30.015173, 17.787161>,  <31.015869, 30.503403, 18.146269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534563, 30.015173, 17.787161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.416470, 29.857952, 18.135494>,  <31.345613, 29.763620, 18.344494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.416470, 29.857952, 18.135494>,  <31.534563, 30.015173, 17.787161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416470, 29.857952, 18.135494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420054, -0.765247, -0.487803,
		0.858133, -0.509812, 0.060824,
		-0.295233, -0.393051, 0.870832,
		31.327900, 29.740036, 18.396744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475506, 29.251211, 17.667315>,  <31.534563, 30.015173, 17.787161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475506, 29.251211, 17.667315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.302639, 29.297766, 18.025015>,  <31.198919, 29.325699, 18.239635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.302639, 29.297766, 18.025015>,  <31.475506, 29.251211, 17.667315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302639, 29.297766, 18.025015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535637, -0.830889, -0.150720,
		0.725481, -0.544130, 0.421426,
		-0.432169, 0.116387, 0.894250,
		31.172989, 29.332682, 18.293289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450155, 28.572338, 17.918844>,  <31.475506, 29.251211, 17.667315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450155, 28.572338, 17.918844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.171278, 28.757530, 18.137777>,  <31.003952, 28.868647, 18.269136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.171278, 28.757530, 18.137777>,  <31.450155, 28.572338, 17.918844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171278, 28.757530, 18.137777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610677, -0.783461, -0.115161,
		0.375496, -0.414532, 0.828955,
		-0.697191, 0.462981, 0.547332,
		30.962120, 28.896425, 18.301977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246841, 28.191473, 18.527739>,  <31.450155, 28.572338, 17.918844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.246841, 28.191473, 18.527739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.944262, 28.432587, 18.426205>,  <30.762714, 28.577255, 18.365284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.944262, 28.432587, 18.426205>,  <31.246841, 28.191473, 18.527739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944262, 28.432587, 18.426205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606878, -0.791594, -0.071257,
		-0.243888, 0.100146, 0.964619,
		-0.756450, 0.602785, -0.253836,
		30.717327, 28.613422, 18.350054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682035, 28.152702, 18.922640>,  <31.246841, 28.191473, 18.527739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682035, 28.152702, 18.922640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.592896, 28.234699, 18.541418>,  <30.539412, 28.283897, 18.312685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.592896, 28.234699, 18.541418>,  <30.682035, 28.152702, 18.922640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592896, 28.234699, 18.541418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573215, -0.818328, -0.041982,
		-0.788518, 0.536951, 0.299871,
		-0.222851, 0.204995, -0.953055,
		30.526041, 28.296198, 18.255501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.194958, 27.631132, 18.752026>,  <30.682035, 28.152702, 18.922640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.194958, 27.631132, 18.752026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.276228, 27.813606, 18.405474>,  <30.324991, 27.923090, 18.197542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.276228, 27.813606, 18.405474>,  <30.194958, 27.631132, 18.752026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276228, 27.813606, 18.405474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243223, -0.833588, -0.495957,
		-0.948452, 0.311491, -0.058411,
		0.203177, 0.456185, -0.866380,
		30.337181, 27.950462, 18.145559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812145, 27.121176, 18.361277>,  <30.194958, 27.631132, 18.752026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812145, 27.121176, 18.361277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.002480, 27.362690, 18.105457>,  <30.116680, 27.507599, 17.951965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.002480, 27.362690, 18.105457>,  <29.812145, 27.121176, 18.361277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002480, 27.362690, 18.105457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266109, -0.594235, -0.758993,
		-0.838312, 0.531345, -0.122084,
		0.475834, 0.603786, -0.639550,
		30.145229, 27.543825, 17.913591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.265827, 26.624264, 18.582809>,  <29.812145, 27.121176, 18.361277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.265827, 26.624264, 18.582809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.979952, 26.645481, 18.861782>,  <28.808428, 26.658213, 19.029165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.979952, 26.645481, 18.861782>,  <29.265827, 26.624264, 18.582809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979952, 26.645481, 18.861782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561043, 0.638909, 0.526332,
		-0.417676, 0.767451, -0.486381,
		-0.714687, 0.053045, 0.697430,
		28.765545, 26.661394, 19.071011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960928, 27.189644, 18.608027>,  <29.265827, 26.624264, 18.582809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.960928, 27.189644, 18.608027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.922544, 27.065107, 18.986202>,  <28.899515, 26.990385, 19.213108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.922544, 27.065107, 18.986202>,  <28.960928, 27.189644, 18.608027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.922544, 27.065107, 18.986202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551439, 0.774120, 0.310892,
		-0.828678, 0.551185, 0.097403,
		-0.095957, -0.311341, 0.945441,
		28.893757, 26.971704, 19.269835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.953493, 27.839520, 19.038368>,  <28.960928, 27.189644, 18.608027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.953493, 27.839520, 19.038368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.036562, 27.549326, 19.300833>,  <29.086403, 27.375210, 19.458311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.036562, 27.549326, 19.300833>,  <28.953493, 27.839520, 19.038368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.036562, 27.549326, 19.300833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402402, 0.674760, 0.618686,
		-0.891597, 0.135557, 0.432064,
		0.207672, -0.725482, 0.656162,
		29.098864, 27.331682, 19.497681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.872700, 28.169724, 19.743118>,  <28.953493, 27.839520, 19.038368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.872700, 28.169724, 19.743118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.065590, 27.836584, 19.851801>,  <29.181324, 27.636702, 19.917009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.065590, 27.836584, 19.851801>,  <28.872700, 28.169724, 19.743118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065590, 27.836584, 19.851801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452569, 0.502392, 0.736738,
		-0.750093, -0.232308, 0.619187,
		0.482225, -0.832848, 0.271706,
		29.210257, 27.586729, 19.933313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750269, 28.036196, 20.477026>,  <28.872700, 28.169724, 19.743118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.750269, 28.036196, 20.477026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.101593, 27.876022, 20.372547>,  <29.312387, 27.779919, 20.309860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.101593, 27.876022, 20.372547>,  <28.750269, 28.036196, 20.477026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.101593, 27.876022, 20.372547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433711, 0.437474, 0.787725,
		-0.201164, -0.805152, 0.557910,
		0.878310, -0.400433, -0.261199,
		29.365086, 27.755892, 20.294188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.021839, 27.770229, 21.112516>,  <28.750269, 28.036196, 20.477026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.021839, 27.770229, 21.112516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.358274, 27.764765, 20.896225>,  <29.560135, 27.761486, 20.766451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.358274, 27.764765, 20.896225>,  <29.021839, 27.770229, 21.112516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.358274, 27.764765, 20.896225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530827, 0.212873, 0.820310,
		0.103901, -0.976984, 0.186296,
		0.841087, -0.013660, -0.540727,
		29.610601, 27.760666, 20.734007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.525257, 27.354034, 21.535648>,  <29.021839, 27.770229, 21.112516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.525257, 27.354034, 21.535648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.726961, 27.596363, 21.289494>,  <29.847984, 27.741760, 21.141802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.726961, 27.596363, 21.289494>,  <29.525257, 27.354034, 21.535648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726961, 27.596363, 21.289494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527337, 0.348289, 0.774990,
		0.683839, -0.715314, -0.143844,
		0.504262, 0.605823, -0.615385,
		29.878241, 27.778111, 21.104877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.221581, 27.238415, 21.682064>,  <29.525257, 27.354034, 21.535648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.221581, 27.238415, 21.682064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.189379, 27.591852, 21.497549>,  <30.170057, 27.803915, 21.386841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.189379, 27.591852, 21.497549>,  <30.221581, 27.238415, 21.682064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.189379, 27.591852, 21.497549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636302, 0.401778, 0.658554,
		0.767228, -0.240500, -0.594577,
		-0.080506, 0.883592, -0.461286,
		30.165228, 27.856930, 21.359163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.895407, 27.559633, 21.780125>,  <30.221581, 27.238415, 21.682064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.895407, 27.559633, 21.780125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.704624, 27.890816, 21.662138>,  <30.590155, 28.089525, 21.591347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.704624, 27.890816, 21.662138>,  <30.895407, 27.559633, 21.780125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704624, 27.890816, 21.662138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405760, 0.505114, 0.761721,
		0.779662, 0.243622, -0.576867,
		-0.476956, 0.827954, -0.294966,
		30.561537, 28.139202, 21.573648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459316, 28.169161, 21.660610>,  <30.895407, 27.559633, 21.780125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459316, 28.169161, 21.660610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.105339, 28.330406, 21.753881>,  <30.892952, 28.427153, 21.809845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.105339, 28.330406, 21.753881>,  <31.459316, 28.169161, 21.660610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105339, 28.330406, 21.753881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446479, 0.592052, 0.670918,
		0.132402, 0.697835, -0.703915,
		-0.884944, 0.403114, 0.233180,
		30.839855, 28.451340, 21.823835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458902, 28.882998, 21.596760>,  <31.459316, 28.169161, 21.660610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458902, 28.882998, 21.596760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.118452, 28.875763, 21.806620>,  <30.914183, 28.871422, 21.932535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.118452, 28.875763, 21.806620>,  <31.458902, 28.882998, 21.596760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.118452, 28.875763, 21.806620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294564, 0.810793, 0.505813,
		-0.434530, 0.585054, -0.684759,
		-0.851126, -0.018086, 0.524650,
		30.863113, 28.870337, 21.964014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191202, 29.509893, 21.704954>,  <31.458902, 28.882998, 21.596760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191202, 29.509893, 21.704954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.984922, 29.316700, 21.988018>,  <30.861155, 29.200785, 22.157856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.984922, 29.316700, 21.988018>,  <31.191202, 29.509893, 21.704954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984922, 29.316700, 21.988018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073357, 0.798039, 0.598124,
		-0.853624, 0.360364, -0.376118,
		-0.515699, -0.482982, 0.707660,
		30.830214, 29.171804, 22.200315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673466, 29.935326, 21.847727>,  <31.191202, 29.509893, 21.704954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.673466, 29.935326, 21.847727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.738337, 29.701950, 22.166048>,  <30.777260, 29.561926, 22.357040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.738337, 29.701950, 22.166048>,  <30.673466, 29.935326, 21.847727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738337, 29.701950, 22.166048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181008, 0.810383, 0.557239,
		-0.970018, 0.053675, 0.237032,
		0.162177, -0.583437, 0.795801,
		30.786989, 29.526918, 22.404789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302614, 30.268515, 22.500057>,  <30.673466, 29.935326, 21.847727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302614, 30.268515, 22.500057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.588263, 30.022285, 22.633385>,  <30.759651, 29.874548, 22.713381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.588263, 30.022285, 22.633385>,  <30.302614, 30.268515, 22.500057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588263, 30.022285, 22.633385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456270, 0.770420, 0.445276,
		-0.530898, -0.165896, 0.831039,
		0.714119, -0.615574, 0.333321,
		30.802498, 29.837614, 22.733381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630770, 30.032223, 22.913548>,  <30.302614, 30.268515, 22.500057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.630770, 30.032223, 22.913548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.278618, 30.213999, 22.967827>,  <29.067326, 30.323065, 23.000395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.278618, 30.213999, 22.967827>,  <29.630770, 30.032223, 22.913548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278618, 30.213999, 22.967827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324974, -0.369632, -0.870496,
		-0.345424, -0.810470, 0.473097,
		-0.880383, 0.454434, 0.135703,
		29.014503, 30.350330, 23.008537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019249, 29.472795, 22.998882>,  <29.630770, 30.032223, 22.913548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019249, 29.472795, 22.998882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.881021, 29.804726, 22.823624>,  <28.798084, 30.003883, 22.718468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.881021, 29.804726, 22.823624>,  <29.019249, 29.472795, 22.998882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.881021, 29.804726, 22.823624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223860, -0.526332, -0.820281,
		-0.911300, -0.185380, 0.367649,
		-0.345569, 0.829824, -0.438147,
		28.777351, 30.053673, 22.692179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.230949, 29.376238, 22.718510>,  <29.019249, 29.472795, 22.998882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.230949, 29.376238, 22.718510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.385042, 29.678593, 22.506763>,  <28.477497, 29.860006, 22.379715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.385042, 29.678593, 22.506763>,  <28.230949, 29.376238, 22.718510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.385042, 29.678593, 22.506763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270575, -0.455910, -0.847901,
		-0.882261, 0.469872, 0.028893,
		0.385233, 0.755888, -0.529367,
		28.500612, 29.905359, 22.347954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.674070, 29.594969, 22.300167>,  <28.230949, 29.376238, 22.718510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.674070, 29.594969, 22.300167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.002775, 29.710646, 22.103769>,  <28.199997, 29.780052, 21.985931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.002775, 29.710646, 22.103769>,  <27.674070, 29.594969, 22.300167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.002775, 29.710646, 22.103769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468346, -0.148045, -0.871054,
		-0.324593, 0.945753, 0.013785,
		0.821761, 0.289194, -0.490995,
		28.249304, 29.797403, 21.956470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.397692, 30.106026, 21.825253>,  <27.674070, 29.594969, 22.300167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.397692, 30.106026, 21.825253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.753984, 30.015182, 21.667763>,  <27.967760, 29.960676, 21.573269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.753984, 30.015182, 21.667763>,  <27.397692, 30.106026, 21.825253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.753984, 30.015182, 21.667763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384503, 0.085455, -0.919160,
		0.242397, 0.970112, -0.011207,
		0.890731, -0.227110, -0.393725,
		28.021204, 29.947050, 21.549644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.290752, 30.468927, 21.207445>,  <27.397692, 30.106026, 21.825253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.290752, 30.468927, 21.207445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.576838, 30.189379, 21.204758>,  <27.748489, 30.021648, 21.203146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.576838, 30.189379, 21.204758>,  <27.290752, 30.468927, 21.207445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.576838, 30.189379, 21.204758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258116, -0.255197, -0.931800,
		0.649495, 0.668171, -0.362911,
		0.715215, -0.698872, -0.006717,
		27.791403, 29.979717, 21.202744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.741043, 30.521082, 20.589088>,  <27.290752, 30.468927, 21.207445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.741043, 30.521082, 20.589088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.781773, 30.144701, 20.718235>,  <27.806210, 29.918873, 20.795723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.781773, 30.144701, 20.718235>,  <27.741043, 30.521082, 20.589088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.781773, 30.144701, 20.718235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386167, -0.336488, -0.858866,
		0.916792, -0.037228, -0.397627,
		0.101823, -0.940951, 0.322866,
		27.812319, 29.862415, 20.815094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.523909, 30.742603, 19.833151>,  <27.741043, 30.521082, 20.589088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.523909, 30.742603, 19.833151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.265196, 30.953304, 19.612532>,  <27.109968, 31.079725, 19.480160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.265196, 30.953304, 19.612532>,  <27.523909, 30.742603, 19.833151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.265196, 30.953304, 19.612532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169216, 0.804261, 0.569675,
		0.743666, 0.275125, -0.609317,
		-0.646782, 0.526754, -0.551546,
		27.071161, 31.111330, 19.447067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756670, 31.400002, 19.691856>,  <27.523909, 30.742603, 19.833151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.756670, 31.400002, 19.691856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.367828, 31.466412, 19.625584>,  <27.134523, 31.506258, 19.585821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.367828, 31.466412, 19.625584>,  <27.756670, 31.400002, 19.691856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.367828, 31.466412, 19.625584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071274, 0.882064, 0.465706,
		0.223460, 0.440906, -0.869291,
		-0.972104, 0.166024, -0.165681,
		27.076197, 31.516218, 19.575880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.758032, 32.059837, 19.574909>,  <27.756670, 31.400002, 19.691856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.758032, 32.059837, 19.574909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.379999, 31.981176, 19.679329>,  <27.153179, 31.933981, 19.741982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.379999, 31.981176, 19.679329>,  <27.758032, 32.059837, 19.574909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.379999, 31.981176, 19.679329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011925, 0.777454, 0.628827,
		-0.326612, 0.597407, -0.732414,
		-0.945083, -0.196648, 0.261050,
		27.096474, 31.922182, 19.757645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.346539, 32.710464, 19.613712>,  <27.758032, 32.059837, 19.574909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.346539, 32.710464, 19.613712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.134180, 32.452354, 19.833447>,  <27.006765, 32.297489, 19.965286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.134180, 32.452354, 19.833447>,  <27.346539, 32.710464, 19.613712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.134180, 32.452354, 19.833447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221675, 0.731404, 0.644910,
		-0.817929, 0.220608, -0.531342,
		-0.530898, -0.645275, 0.549333,
		26.974911, 32.258770, 19.998247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.738274, 33.031158, 19.784077>,  <27.346539, 32.710464, 19.613712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.738274, 33.031158, 19.784077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.794527, 32.744572, 20.057396>,  <26.828279, 32.572620, 20.221388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.794527, 32.744572, 20.057396>,  <26.738274, 33.031158, 19.784077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.794527, 32.744572, 20.057396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210535, 0.652732, 0.727747,
		-0.967417, -0.246206, -0.059044,
		0.140636, -0.716465, 0.683300,
		26.836718, 32.529633, 20.262386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.200651, 33.032913, 20.154062>,  <26.738274, 33.031158, 19.784077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.200651, 33.032913, 20.154062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.493906, 32.867424, 20.369967>,  <26.669859, 32.768127, 20.499510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.493906, 32.867424, 20.369967>,  <26.200651, 33.032913, 20.154062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.493906, 32.867424, 20.369967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161957, 0.664623, 0.729415,
		-0.660517, -0.622178, 0.420253,
		0.733135, -0.413728, 0.539761,
		26.713846, 32.743305, 20.531895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.888250, 33.051411, 20.863667>,  <26.200651, 33.032913, 20.154062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.888250, 33.051411, 20.863667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.274242, 32.953468, 20.901312>,  <26.505838, 32.894703, 20.923899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.274242, 32.953468, 20.901312>,  <25.888250, 33.051411, 20.863667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.274242, 32.953468, 20.901312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089119, 0.643436, 0.760294,
		-0.246722, -0.725282, 0.642725,
		0.964980, -0.244860, 0.094113,
		26.563736, 32.880009, 20.929546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.639420, 29.930723, 16.509867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.985712, 29.841135, 16.688906>,  <29.193487, 29.787382, 16.796329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.985712, 29.841135, 16.688906>,  <28.639420, 29.930723, 16.509867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.985712, 29.841135, 16.688906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202678, 0.974564, 0.095641,
		-0.457634, 0.007919, 0.889106,
		0.865733, -0.223970, 0.447598,
		29.245432, 29.773945, 16.823185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.635790, 30.303816, 17.093248>,  <28.639420, 29.930723, 16.509867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.635790, 30.303816, 17.093248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.026550, 30.223852, 17.063046>,  <29.261005, 30.175873, 17.044924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.026550, 30.223852, 17.063046>,  <28.635790, 30.303816, 17.093248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026550, 30.223852, 17.063046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212446, 0.946704, 0.242111,
		0.023083, -0.252560, 0.967306,
		0.976900, -0.199911, -0.075508,
		29.319620, 30.163879, 17.040394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912098, 30.463058, 17.779398>,  <28.635790, 30.303816, 17.093248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912098, 30.463058, 17.779398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.200209, 30.490364, 17.503271>,  <29.373075, 30.506748, 17.337595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.200209, 30.490364, 17.503271>,  <28.912098, 30.463058, 17.779398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200209, 30.490364, 17.503271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289374, 0.874856, 0.388445,
		0.630445, -0.479549, 0.610387,
		0.720279, 0.068264, -0.690317,
		29.416292, 30.510843, 17.296175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453327, 30.605999, 18.149059>,  <28.912098, 30.463058, 17.779398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453327, 30.605999, 18.149059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.566988, 30.736248, 17.788343>,  <29.635185, 30.814398, 17.571913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.566988, 30.736248, 17.788343>,  <29.453327, 30.605999, 18.149059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.566988, 30.736248, 17.788343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287503, 0.868342, 0.404134,
		0.914658, -0.374103, 0.153125,
		0.284153, 0.325620, -0.901792,
		29.652233, 30.833935, 17.517805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076851, 30.990538, 18.319212>,  <29.453327, 30.605999, 18.149059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.076851, 30.990538, 18.319212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.980160, 31.098276, 17.946327>,  <29.922146, 31.162920, 17.722595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.980160, 31.098276, 17.946327>,  <30.076851, 30.990538, 18.319212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980160, 31.098276, 17.946327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258229, 0.943916, 0.205768,
		0.935354, -0.190985, -0.297722,
		-0.241726, 0.269347, -0.932213,
		29.907642, 31.179081, 17.666664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.632812, 31.442047, 18.000229>,  <30.076851, 30.990538, 18.319212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.632812, 31.442047, 18.000229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.296112, 31.526945, 17.801674>,  <30.094091, 31.577885, 17.682541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.296112, 31.526945, 17.801674>,  <30.632812, 31.442047, 18.000229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296112, 31.526945, 17.801674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148627, 0.975051, 0.164879,
		0.519000, 0.065011, -0.852298,
		-0.841753, 0.212247, -0.496390,
		30.043587, 31.590620, 17.652758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762442, 31.986666, 17.551638>,  <30.632812, 31.442047, 18.000229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762442, 31.986666, 17.551638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.372198, 31.998037, 17.638704>,  <30.138052, 32.004860, 17.690945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.372198, 31.998037, 17.638704>,  <30.762442, 31.986666, 17.551638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.372198, 31.998037, 17.638704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062417, 0.986577, 0.150897,
		-0.210453, 0.160803, -0.964288,
		-0.975609, 0.028431, 0.217665,
		30.079515, 32.006565, 17.704004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515341, 32.574387, 17.123589>,  <30.762442, 31.986666, 17.551638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515341, 32.574387, 17.123589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.221092, 32.505856, 17.385736>,  <30.044544, 32.464737, 17.543026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.221092, 32.505856, 17.385736>,  <30.515341, 32.574387, 17.123589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.221092, 32.505856, 17.385736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187243, 0.981220, 0.046337,
		-0.651002, -0.088627, -0.753885,
		-0.735620, -0.171325, 0.655371,
		30.000406, 32.454456, 17.582348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.973022, 32.961548, 16.860582>,  <30.515341, 32.574387, 17.123589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.973022, 32.961548, 16.860582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.923826, 32.903965, 17.253347>,  <29.894308, 32.869415, 17.489006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.923826, 32.903965, 17.253347>,  <29.973022, 32.961548, 16.860582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923826, 32.903965, 17.253347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036831, 0.989403, 0.140443,
		-0.991724, -0.018891, -0.126990,
		-0.122991, -0.143958, 0.981911,
		29.886929, 32.860779, 17.547920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407875, 33.425919, 17.153675>,  <29.973022, 32.961548, 16.860582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407875, 33.425919, 17.153675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.571272, 33.310215, 17.499962>,  <29.669310, 33.240791, 17.707733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.571272, 33.310215, 17.499962>,  <29.407875, 33.425919, 17.153675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571272, 33.310215, 17.499962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110086, 0.925921, 0.361319,
		-0.906099, -0.242899, 0.346389,
		0.408493, -0.289258, 0.865716,
		29.693819, 33.223438, 17.759676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996534, 33.516190, 17.745701>,  <29.407875, 33.425919, 17.153675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996534, 33.516190, 17.745701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.367744, 33.527691, 17.894260>,  <29.590471, 33.534592, 17.983397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.367744, 33.527691, 17.894260>,  <28.996534, 33.516190, 17.745701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367744, 33.527691, 17.894260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141111, 0.949847, 0.279066,
		-0.344751, -0.311390, 0.885541,
		0.928028, 0.028751, 0.371401,
		29.646152, 33.536316, 18.005680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.830967, 34.003082, 18.291945>,  <28.996534, 33.516190, 17.745701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.830967, 34.003082, 18.291945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.229973, 33.975071, 18.294975>,  <29.469378, 33.958263, 18.296793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.229973, 33.975071, 18.294975>,  <28.830967, 34.003082, 18.291945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.229973, 33.975071, 18.294975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058265, 0.880733, 0.470015,
		-0.039588, -0.468406, 0.882626,
		0.997516, -0.070033, 0.007575,
		29.529228, 33.954060, 18.297249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309019, 33.768864, 18.782166>,  <28.830967, 34.003082, 18.291945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309019, 33.768864, 18.782166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.999569, 33.960915, 18.616768>,  <27.813898, 34.076145, 18.517530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.999569, 33.960915, 18.616768>,  <28.309019, 33.768864, 18.782166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999569, 33.960915, 18.616768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019048, -0.669893, -0.742213,
		-0.633353, -0.566321, 0.527394,
		-0.773629, 0.480129, -0.413491,
		27.767481, 34.104954, 18.492720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789742, 33.296116, 18.667395>,  <28.309019, 33.768864, 18.782166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.789742, 33.296116, 18.667395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.675310, 33.573761, 18.403164>,  <27.606651, 33.740349, 18.244625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.675310, 33.573761, 18.403164>,  <27.789742, 33.296116, 18.667395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.675310, 33.573761, 18.403164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021018, -0.684678, -0.728543,
		-0.957976, -0.222303, 0.181282,
		-0.286077, 0.694116, -0.660577,
		27.589487, 33.781998, 18.204990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.266890, 33.042671, 18.252066>,  <27.789742, 33.296116, 18.667395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.266890, 33.042671, 18.252066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.409170, 33.342003, 18.028109>,  <27.494539, 33.521603, 17.893734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.409170, 33.342003, 18.028109>,  <27.266890, 33.042671, 18.252066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.409170, 33.342003, 18.028109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180734, -0.532688, -0.826788,
		-0.916958, 0.395281, -0.054229,
		0.355701, 0.748329, -0.559893,
		27.515881, 33.566502, 17.860140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.683262, 33.245529, 17.804718>,  <27.266890, 33.042671, 18.252066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.683262, 33.245529, 17.804718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.041281, 33.316437, 17.641027>,  <27.256092, 33.358982, 17.542812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.041281, 33.316437, 17.641027>,  <26.683262, 33.245529, 17.804718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.041281, 33.316437, 17.641027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313633, -0.402159, -0.860176,
		-0.317059, 0.898244, -0.304353,
		0.895046, 0.177272, -0.409228,
		27.309795, 33.369617, 17.518259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.462751, 33.492863, 17.157139>,  <26.683262, 33.245529, 17.804718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.462751, 33.492863, 17.157139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.851301, 33.419621, 17.096609>,  <27.084431, 33.375675, 17.060291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.851301, 33.419621, 17.096609>,  <26.462751, 33.492863, 17.157139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.851301, 33.419621, 17.096609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228387, -0.544703, -0.806931,
		0.065330, 0.818394, -0.570931,
		0.971376, -0.183110, -0.151325,
		27.142714, 33.364689, 17.051212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.608017, 33.538807, 16.408909>,  <26.462751, 33.492863, 17.157139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.608017, 33.538807, 16.408909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.926792, 33.333187, 16.535809>,  <27.118057, 33.209816, 16.611948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.926792, 33.333187, 16.535809>,  <26.608017, 33.538807, 16.408909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.926792, 33.333187, 16.535809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049525, -0.579026, -0.813803,
		0.602029, 0.632838, -0.486906,
		0.796937, -0.514048, 0.317249,
		27.165873, 33.178974, 16.630983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.065353, 33.518105, 15.830433>,  <26.608017, 33.538807, 16.408909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.065353, 33.518105, 15.830433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.161932, 33.211193, 16.068083>,  <27.219879, 33.027046, 16.210672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.161932, 33.211193, 16.068083>,  <27.065353, 33.518105, 15.830433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.161932, 33.211193, 16.068083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006437, -0.613492, -0.789675,
		0.970393, 0.186839, -0.153064,
		0.241445, -0.767280, 0.594126,
		27.234365, 32.981010, 16.246321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.585722, 33.204922, 15.472711>,  <27.065353, 33.518105, 15.830433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.585722, 33.204922, 15.472711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.528690, 32.920631, 15.748259>,  <27.494471, 32.750057, 15.913588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.528690, 32.920631, 15.748259>,  <27.585722, 33.204922, 15.472711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.528690, 32.920631, 15.748259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221954, -0.701214, -0.677521,
		0.964577, 0.056297, 0.257727,
		-0.142580, -0.710725, 0.688870,
		27.485916, 32.707413, 15.954920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.188654, 32.648979, 15.501949>,  <27.585722, 33.204922, 15.472711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.188654, 32.648979, 15.501949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.891045, 32.441319, 15.670194>,  <27.712479, 32.316723, 15.771140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.891045, 32.441319, 15.670194>,  <28.188654, 32.648979, 15.501949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891045, 32.441319, 15.670194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238077, -0.794184, -0.559098,
		0.624298, -0.315844, 0.714489,
		-0.744024, -0.519147, 0.420612,
		27.667837, 32.285576, 15.796377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.489433, 32.098179, 15.770179>,  <28.188654, 32.648979, 15.501949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.489433, 32.098179, 15.770179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.099606, 32.010616, 15.751002>,  <27.865709, 31.958080, 15.739496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.099606, 32.010616, 15.751002>,  <28.489433, 32.098179, 15.770179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099606, 32.010616, 15.751002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211913, -0.830698, -0.514815,
		0.072870, -0.511882, 0.855960,
		-0.974568, -0.218904, -0.047941,
		27.807236, 31.944944, 15.736620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.512974, 31.418650, 15.922324>,  <28.489433, 32.098179, 15.770179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.512974, 31.418650, 15.922324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.182011, 31.497391, 15.711937>,  <27.983433, 31.544636, 15.585705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.182011, 31.497391, 15.711937>,  <28.512974, 31.418650, 15.922324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182011, 31.497391, 15.711937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085744, -0.881296, -0.464721,
		-0.555014, -0.429613, 0.712314,
		-0.827410, 0.196850, -0.525969,
		27.933788, 31.556446, 15.554146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.241709, 30.777727, 15.873666>,  <28.512974, 31.418650, 15.922324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.241709, 30.777727, 15.873666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.048443, 30.991234, 15.596063>,  <27.932484, 31.119337, 15.429501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.048443, 30.991234, 15.596063>,  <28.241709, 30.777727, 15.873666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.048443, 30.991234, 15.596063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135636, -0.737469, -0.661621,
		-0.864959, -0.413804, 0.283921,
		-0.483165, 0.533765, -0.694008,
		27.903494, 31.151363, 15.387860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.922251, 30.336958, 15.584245>,  <28.241709, 30.777727, 15.873666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.922251, 30.336958, 15.584245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.896578, 30.622219, 15.305019>,  <27.881174, 30.793377, 15.137485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.896578, 30.622219, 15.305019>,  <27.922251, 30.336958, 15.584245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.896578, 30.622219, 15.305019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264502, -0.662331, -0.700969,
		-0.962247, -0.229629, -0.146120,
		-0.064182, 0.713154, -0.698063,
		27.877323, 30.836164, 15.095600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440744, 30.604778, 16.122385>,  <27.922251, 30.336958, 15.584245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.440744, 30.604778, 16.122385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.112095, 30.424389, 16.261847>,  <26.914906, 30.316154, 16.345524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.112095, 30.424389, 16.261847>,  <27.440744, 30.604778, 16.122385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.112095, 30.424389, 16.261847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073826, 0.522303, 0.849559,
		-0.565232, 0.723756, -0.395842,
		-0.821622, -0.450974, 0.348654,
		26.865608, 30.289097, 16.366442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.992506, 31.022003, 16.470081>,  <27.440744, 30.604778, 16.122385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.992506, 31.022003, 16.470081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.885723, 30.660875, 16.604929>,  <26.821653, 30.444199, 16.685837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.885723, 30.660875, 16.604929>,  <26.992506, 31.022003, 16.470081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.885723, 30.660875, 16.604929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075358, 0.368298, 0.926649,
		-0.960757, 0.221972, -0.166356,
		-0.266959, -0.902821, 0.337117,
		26.805635, 30.390030, 16.706064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.404013, 31.163975, 16.899879>,  <26.992506, 31.022003, 16.470081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.404013, 31.163975, 16.899879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.537447, 30.799923, 16.998173>,  <26.617508, 30.581491, 17.057148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.537447, 30.799923, 16.998173>,  <26.404013, 31.163975, 16.899879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.537447, 30.799923, 16.998173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138874, 0.210378, 0.967706,
		-0.932435, -0.356939, -0.056214,
		0.333586, -0.910129, 0.245733,
		26.637524, 30.526884, 17.071892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.968046, 31.051785, 17.443213>,  <26.404013, 31.163975, 16.899879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.968046, 31.051785, 17.443213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.287922, 30.813745, 17.475111>,  <26.479847, 30.670921, 17.494249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.287922, 30.813745, 17.475111>,  <25.968046, 31.051785, 17.443213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.287922, 30.813745, 17.475111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062148, 0.050065, 0.996811,
		-0.597192, -0.802092, 0.003052,
		0.799687, -0.595098, 0.079747,
		26.527828, 30.635216, 17.499035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.731567, 30.494854, 17.880781>,  <25.968046, 31.051785, 17.443213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.731567, 30.494854, 17.880781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.129175, 30.537458, 17.890390>,  <26.367741, 30.563021, 17.896156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.129175, 30.537458, 17.890390>,  <25.731567, 30.494854, 17.880781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.129175, 30.537458, 17.890390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020241, -0.036467, 0.999130,
		0.107299, -0.993642, -0.034093,
		0.994021, 0.106515, 0.024025,
		26.427382, 30.569412, 17.897598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.027571, 30.089363, 18.475496>,  <25.731567, 30.494854, 17.880781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.027571, 30.089363, 18.475496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.319101, 30.344114, 18.374941>,  <26.494020, 30.496965, 18.314608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.319101, 30.344114, 18.374941>,  <26.027571, 30.089363, 18.475496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.319101, 30.344114, 18.374941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198227, 0.155164, 0.967797,
		0.655375, -0.755189, -0.013159,
		0.728828, 0.636878, -0.251389,
		26.537750, 30.535177, 18.299524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.534414, 29.985245, 19.030146>,  <26.027571, 30.089363, 18.475496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.534414, 29.985245, 19.030146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.606579, 30.338058, 18.856035>,  <26.649878, 30.549747, 18.751570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.606579, 30.338058, 18.856035>,  <26.534414, 29.985245, 19.030146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.606579, 30.338058, 18.856035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266980, 0.382010, 0.884754,
		0.946665, -0.275828, -0.166568,
		0.180409, 0.882036, -0.435276,
		26.660702, 30.602669, 18.725452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231127, 30.194597, 19.294519>,  <26.534414, 29.985245, 19.030146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.231127, 30.194597, 19.294519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.028122, 30.521399, 19.185020>,  <26.906319, 30.717480, 19.119322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.028122, 30.521399, 19.185020>,  <27.231127, 30.194597, 19.294519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.028122, 30.521399, 19.185020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221181, 0.430583, 0.875030,
		0.832774, 0.383538, -0.399232,
		-0.507510, 0.817004, -0.273747,
		26.875870, 30.766500, 19.102896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.784472, 30.040167, 19.818096>,  <27.231127, 30.194597, 19.294519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.784472, 30.040167, 19.818096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.733477, 29.794024, 20.129244>,  <27.702879, 29.646338, 20.315931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.733477, 29.794024, 20.129244>,  <27.784472, 30.040167, 19.818096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.733477, 29.794024, 20.129244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297146, -0.724548, -0.621880,
		0.946283, -0.310424, -0.090480,
		-0.127489, -0.615360, 0.777868,
		27.695230, 29.609415, 20.362604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.122700, 29.421352, 19.582115>,  <27.784472, 30.040167, 19.818096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.122700, 29.421352, 19.582115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.856215, 29.343801, 19.870163>,  <27.696323, 29.297270, 20.042992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.856215, 29.343801, 19.870163>,  <28.122700, 29.421352, 19.582115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856215, 29.343801, 19.870163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357672, -0.764246, -0.536656,
		0.654394, -0.615093, 0.439805,
		-0.666212, -0.193879, 0.720119,
		27.656351, 29.285639, 20.086199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.065424, 28.641266, 19.580767>,  <28.122700, 29.421352, 19.582115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.065424, 28.641266, 19.580767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.754068, 28.762848, 19.800484>,  <27.567255, 28.835798, 19.932314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.754068, 28.762848, 19.800484>,  <28.065424, 28.641266, 19.580767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.754068, 28.762848, 19.800484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535307, -0.778452, -0.327810,
		0.327956, -0.549203, 0.768649,
		-0.778390, 0.303956, 0.549291,
		27.520552, 28.854034, 19.965271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.898272, 28.081236, 20.031094>,  <28.065424, 28.641266, 19.580767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.898272, 28.081236, 20.031094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.588520, 28.313816, 19.931290>,  <27.402670, 28.453363, 19.871408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.588520, 28.313816, 19.931290>,  <27.898272, 28.081236, 20.031094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.588520, 28.313816, 19.931290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541782, -0.813033, -0.213191,
		-0.326818, -0.029912, 0.944614,
		-0.774379, 0.581449, -0.249508,
		27.356207, 28.488251, 19.856438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382923, 27.640575, 20.070995>,  <27.898272, 28.081236, 20.031094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.382923, 27.640575, 20.070995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.195211, 27.957878, 19.915806>,  <27.082584, 28.148260, 19.822693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.195211, 27.957878, 19.915806>,  <27.382923, 27.640575, 20.070995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.195211, 27.957878, 19.915806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590004, -0.608556, -0.530617,
		-0.657020, -0.020098, 0.753605,
		-0.469276, 0.793256, -0.387976,
		27.054428, 28.195854, 19.799414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.690241, 27.447001, 20.061991>,  <27.382923, 27.640575, 20.070995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.690241, 27.447001, 20.061991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.729475, 27.743210, 19.796057>,  <26.753016, 27.920935, 19.636497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.729475, 27.743210, 19.796057>,  <26.690241, 27.447001, 20.061991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.729475, 27.743210, 19.796057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502656, -0.539710, -0.675315,
		-0.858904, 0.400423, 0.319289,
		0.098088, 0.740523, -0.664834,
		26.758902, 27.965366, 19.596607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.983574, 27.517017, 19.705013>,  <26.690241, 27.447001, 20.061991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.983574, 27.517017, 19.705013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.287939, 27.645945, 19.479759>,  <26.470558, 27.723301, 19.344606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.287939, 27.645945, 19.479759>,  <25.983574, 27.517017, 19.705013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.287939, 27.645945, 19.479759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253499, -0.651240, -0.715279,
		-0.597283, 0.687021, -0.413830,
		0.760915, 0.322319, -0.563134,
		26.516212, 27.742640, 19.310820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.809639, 27.278706, 19.107899>,  <25.983574, 27.517017, 19.705013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.809639, 27.278706, 19.107899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.182467, 27.381559, 19.005819>,  <26.406164, 27.443272, 18.944572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.182467, 27.381559, 19.005819>,  <25.809639, 27.278706, 19.107899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.182467, 27.381559, 19.005819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025417, -0.656279, -0.754090,
		-0.361383, 0.709352, -0.605163,
		0.932071, 0.257134, -0.255198,
		26.462088, 27.458700, 18.929260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.814318, 27.373461, 18.317863>,  <25.809639, 27.278706, 19.107899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.814318, 27.373461, 18.317863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.188168, 27.302353, 18.441071>,  <26.412477, 27.259689, 18.514994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.188168, 27.302353, 18.441071>,  <25.814318, 27.373461, 18.317863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.188168, 27.302353, 18.441071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048734, -0.793915, -0.606073,
		0.352279, 0.581462, -0.733350,
		0.934626, -0.177768, 0.308016,
		26.468555, 27.249023, 18.533476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<31.161983, 38.107624, 29.109404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.546171, 38.004452, 29.067503>,  <31.776684, 37.942551, 29.042362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.546171, 38.004452, 29.067503>,  <31.161983, 38.107624, 29.109404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546171, 38.004452, 29.067503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162374, -0.213397, -0.963377,
		0.226128, 0.942303, -0.246842,
		0.960469, -0.257927, -0.104751,
		31.834312, 37.927074, 29.036077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116514, 38.001202, 28.410175>,  <31.161983, 38.107624, 29.109404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116514, 38.001202, 28.410175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.490547, 37.880447, 28.484457>,  <31.714968, 37.807995, 28.529026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.490547, 37.880447, 28.484457>,  <31.116514, 38.001202, 28.410175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490547, 37.880447, 28.484457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061458, -0.377909, -0.923801,
		0.349061, 0.875243, -0.334823,
		0.935083, -0.301885, 0.185704,
		31.771072, 37.789883, 28.540169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488047, 38.250851, 27.889084>,  <31.116514, 38.001202, 28.410175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488047, 38.250851, 27.889084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.639467, 37.917873, 28.050943>,  <31.730320, 37.718086, 28.148060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.639467, 37.917873, 28.050943>,  <31.488047, 38.250851, 27.889084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639467, 37.917873, 28.050943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106185, -0.473357, -0.874447,
		0.919469, 0.288056, -0.267583,
		0.378552, -0.832440, 0.404650,
		31.753033, 37.668140, 28.172338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902201, 37.967930, 27.387413>,  <31.488047, 38.250851, 27.889084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902201, 37.967930, 27.387413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.801952, 37.683754, 27.650459>,  <31.741802, 37.513248, 27.808287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.801952, 37.683754, 27.650459>,  <31.902201, 37.967930, 27.387413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801952, 37.683754, 27.650459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262801, -0.603860, -0.752522,
		0.931732, -0.361421, -0.035365,
		-0.250622, -0.710442, 0.657617,
		31.726767, 37.470623, 27.847744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016415, 37.354610, 27.044064>,  <31.902201, 37.967930, 27.387413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016415, 37.354610, 27.044064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.778976, 37.243862, 27.346317>,  <31.636513, 37.177414, 27.527670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.778976, 37.243862, 27.346317>,  <32.016415, 37.354610, 27.044064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778976, 37.243862, 27.346317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347237, -0.758937, -0.550855,
		0.725993, -0.589371, 0.354366,
		-0.593600, -0.276868, 0.755634,
		31.600897, 37.160801, 27.573008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919346, 36.635414, 26.885929>,  <32.016415, 37.354610, 27.044064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919346, 36.635414, 26.885929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.623667, 36.712521, 27.144054>,  <31.446259, 36.758785, 27.298929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.623667, 36.712521, 27.144054>,  <31.919346, 36.635414, 26.885929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623667, 36.712521, 27.144054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578253, -0.672862, -0.461390,
		0.345268, -0.714213, 0.608843,
		-0.739198, 0.192762, 0.645313,
		31.401907, 36.770348, 27.337648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747416, 35.942150, 27.295044>,  <31.919346, 36.635414, 26.885929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747416, 35.942150, 27.295044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.424519, 36.177891, 27.307821>,  <31.230780, 36.319336, 27.315487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.424519, 36.177891, 27.307821>,  <31.747416, 35.942150, 27.295044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424519, 36.177891, 27.307821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554682, -0.739034, -0.382304,
		-0.201706, -0.326330, 0.923484,
		-0.807243, 0.589353, 0.031942,
		31.182346, 36.354698, 27.317404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128637, 35.543110, 27.515320>,  <31.747416, 35.942150, 27.295044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128637, 35.543110, 27.515320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.946772, 35.868992, 27.371359>,  <30.837652, 36.064522, 27.284983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.946772, 35.868992, 27.371359>,  <31.128637, 35.543110, 27.515320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.946772, 35.868992, 27.371359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760498, -0.565441, -0.319248,
		-0.463598, 0.128554, 0.876671,
		-0.454665, 0.814709, -0.359902,
		30.810371, 36.113403, 27.263388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343790, 35.485947, 27.716421>,  <31.128637, 35.543110, 27.515320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343790, 35.485947, 27.716421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.386116, 35.708656, 27.386862>,  <30.411510, 35.842281, 27.189127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.386116, 35.708656, 27.386862>,  <30.343790, 35.485947, 27.716421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386116, 35.708656, 27.386862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599774, -0.625133, -0.499480,
		-0.793142, 0.547004, 0.267789,
		0.105813, 0.556772, -0.823898,
		30.417860, 35.875687, 27.139692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703741, 35.534542, 27.470497>,  <30.343790, 35.485947, 27.716421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703741, 35.534542, 27.470497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.911255, 35.658539, 27.151810>,  <30.035763, 35.732937, 26.960596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.911255, 35.658539, 27.151810>,  <29.703741, 35.534542, 27.470497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.911255, 35.658539, 27.151810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527695, -0.617100, -0.583717,
		-0.672606, 0.723250, -0.156560,
		0.518787, 0.309996, -0.796720,
		30.066891, 35.751537, 26.912794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182693, 35.775867, 27.020226>,  <29.703741, 35.534542, 27.470497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.182693, 35.775867, 27.020226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.514263, 35.670372, 26.822912>,  <29.713205, 35.607075, 26.704525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.514263, 35.670372, 26.822912>,  <29.182693, 35.775867, 27.020226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.514263, 35.670372, 26.822912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528823, -0.656910, -0.537415,
		-0.182304, 0.706335, -0.684000,
		0.828922, -0.263742, -0.493284,
		29.762939, 35.591248, 26.674927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936518, 35.749844, 26.408144>,  <29.182693, 35.775867, 27.020226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936518, 35.749844, 26.408144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.280146, 35.545593, 26.393917>,  <29.486322, 35.423042, 26.385382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.280146, 35.545593, 26.393917>,  <28.936518, 35.749844, 26.408144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280146, 35.545593, 26.393917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460745, -0.741142, -0.488284,
		0.222969, 0.435857, -0.871959,
		0.859068, -0.510624, -0.035567,
		29.537867, 35.392406, 26.383247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.980944, 36.120602, 25.674377>,  <28.936518, 35.749844, 26.408144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.980944, 36.120602, 25.674377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.611502, 36.249222, 25.590893>,  <28.389837, 36.326393, 25.540802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.611502, 36.249222, 25.590893>,  <28.980944, 36.120602, 25.674377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611502, 36.249222, 25.590893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051281, 0.643193, 0.763985,
		0.379900, 0.694918, -0.610545,
		-0.923605, 0.321547, -0.208713,
		28.334419, 36.345684, 25.528278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.997843, 36.821003, 25.443171>,  <28.980944, 36.120602, 25.674377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.997843, 36.821003, 25.443171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.639050, 36.763149, 25.610266>,  <28.423775, 36.728439, 25.710524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.639050, 36.763149, 25.610266>,  <28.997843, 36.821003, 25.443171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.639050, 36.763149, 25.610266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257516, 0.597125, 0.759689,
		-0.359317, 0.789002, -0.498365,
		-0.896982, -0.144632, 0.417738,
		28.369955, 36.719761, 25.735586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.730927, 37.506744, 25.522955>,  <28.997843, 36.821003, 25.443171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.730927, 37.506744, 25.522955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.492640, 37.285187, 25.755619>,  <28.349669, 37.152252, 25.895218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.492640, 37.285187, 25.755619>,  <28.730927, 37.506744, 25.522955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.492640, 37.285187, 25.755619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262956, 0.549780, 0.792841,
		-0.758932, 0.625259, -0.181864,
		-0.595716, -0.553890, 0.581661,
		28.313925, 37.119019, 25.930117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.219666, 37.937840, 25.877731>,  <28.730927, 37.506744, 25.522955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.219666, 37.937840, 25.877731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.195780, 37.614628, 26.112175>,  <28.181448, 37.420700, 26.252842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.195780, 37.614628, 26.112175>,  <28.219666, 37.937840, 25.877731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.195780, 37.614628, 26.112175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097950, 0.579580, 0.809007,
		-0.993398, 0.105720, 0.044536,
		-0.059717, -0.808029, 0.586109,
		28.177864, 37.372219, 26.288008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.637070, 37.893803, 26.287325>,  <28.219666, 37.937840, 25.877731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.637070, 37.893803, 26.287325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.907703, 37.695217, 26.504858>,  <28.070084, 37.576065, 26.635378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.907703, 37.695217, 26.504858>,  <27.637070, 37.893803, 26.287325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.907703, 37.695217, 26.504858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180468, 0.604218, 0.776113,
		-0.713910, -0.623249, 0.319207,
		0.676583, -0.496468, 0.543834,
		28.110678, 37.546276, 26.668009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.335430, 37.852688, 26.912842>,  <27.637070, 37.893803, 26.287325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.335430, 37.852688, 26.912842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.721163, 37.774353, 26.984077>,  <27.952602, 37.727352, 27.026819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.721163, 37.774353, 26.984077>,  <27.335430, 37.852688, 26.912842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.721163, 37.774353, 26.984077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025376, 0.601280, 0.798635,
		-0.263486, -0.774667, 0.574862,
		0.964329, -0.195841, 0.178087,
		28.010462, 37.715599, 27.037504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321728, 37.544376, 27.496914>,  <27.335430, 37.852688, 26.912842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321728, 37.544376, 27.496914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.694649, 37.683136, 27.455978>,  <27.918402, 37.766392, 27.431417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.694649, 37.683136, 27.455978>,  <27.321728, 37.544376, 27.496914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.694649, 37.683136, 27.455978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100059, 0.519291, 0.848720,
		0.347566, -0.781023, 0.518846,
		0.932302, 0.346901, -0.102340,
		27.974339, 37.787205, 27.425276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.602560, 37.698643, 28.238770>,  <27.321728, 37.544376, 27.496914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.602560, 37.698643, 28.238770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.867754, 37.887981, 28.006771>,  <28.026871, 38.001583, 27.867573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.867754, 37.887981, 28.006771>,  <27.602560, 37.698643, 28.238770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867754, 37.887981, 28.006771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133638, 0.687465, 0.713815,
		0.736608, -0.550758, 0.392522,
		0.662985, 0.473346, -0.579995,
		28.066648, 38.029987, 27.832773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.058258, 38.025566, 28.735001>,  <27.602560, 37.698643, 28.238770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.058258, 38.025566, 28.735001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.150118, 38.205162, 28.389591>,  <28.205235, 38.312920, 28.182346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.150118, 38.205162, 28.389591>,  <28.058258, 38.025566, 28.735001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.150118, 38.205162, 28.389591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002369, 0.886976, 0.461809,
		0.973271, -0.108099, 0.202629,
		0.229649, 0.448985, -0.863524,
		28.219013, 38.339859, 28.130533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.546179, 38.540588, 28.929884>,  <28.058258, 38.025566, 28.735001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.546179, 38.540588, 28.929884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.405716, 38.668430, 28.577852>,  <28.321438, 38.745136, 28.366632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.405716, 38.668430, 28.577852>,  <28.546179, 38.540588, 28.929884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.405716, 38.668430, 28.577852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072069, 0.927924, 0.365737,
		0.933538, 0.191859, -0.302815,
		-0.351159, 0.319606, -0.880079,
		28.300367, 38.764313, 28.313828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986174, 39.033047, 28.694582>,  <28.546179, 38.540588, 28.929884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.986174, 39.033047, 28.694582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.619425, 39.103344, 28.551216>,  <28.399376, 39.145523, 28.465197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.619425, 39.103344, 28.551216>,  <28.986174, 39.033047, 28.694582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.619425, 39.103344, 28.551216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066975, 0.817413, 0.572145,
		0.393523, 0.548589, -0.737692,
		-0.916872, 0.175745, -0.358413,
		28.344364, 39.156067, 28.443693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944313, 39.707951, 28.705515>,  <28.986174, 39.033047, 28.694582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944313, 39.707951, 28.705515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.556990, 39.620758, 28.656748>,  <28.324596, 39.568443, 28.627487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.556990, 39.620758, 28.656748>,  <28.944313, 39.707951, 28.705515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556990, 39.620758, 28.656748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249608, 0.861600, 0.441974,
		0.008703, 0.458399, -0.888704,
		-0.968308, -0.217981, -0.121918,
		28.266497, 39.555363, 28.620173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737358, 40.258305, 28.440132>,  <28.944313, 39.707951, 28.705515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.737358, 40.258305, 28.440132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.414614, 40.070004, 28.582890>,  <28.220968, 39.957024, 28.668545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.414614, 40.070004, 28.582890>,  <28.737358, 40.258305, 28.440132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414614, 40.070004, 28.582890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275831, 0.834457, 0.477074,
		-0.522395, 0.286489, -0.803136,
		-0.806859, -0.470751, 0.356893,
		28.172556, 39.928780, 28.689957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125486, 40.665791, 28.208946>,  <28.737358, 40.258305, 28.440132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.125486, 40.665791, 28.208946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.033197, 40.459061, 28.538712>,  <27.977825, 40.335022, 28.736570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.033197, 40.459061, 28.538712>,  <28.125486, 40.665791, 28.208946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.033197, 40.459061, 28.538712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321297, 0.840217, 0.436811,
		-0.918442, -0.164100, -0.359910,
		-0.230722, -0.516823, 0.824415,
		27.963982, 40.304012, 28.786036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.687634, 40.165924, 27.710035>,  <28.125486, 40.665791, 28.208946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.687634, 40.165924, 27.710035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.803907, 40.447430, 27.450737>,  <27.873672, 40.616333, 27.295158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.803907, 40.447430, 27.450737>,  <27.687634, 40.165924, 27.710035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.803907, 40.447430, 27.450737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502893, -0.464002, -0.729247,
		-0.814003, 0.537978, 0.219039,
		0.290684, 0.703763, -0.648244,
		27.891113, 40.658558, 27.256264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.076859, 40.452572, 27.445007>,  <27.687634, 40.165924, 27.710035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.076859, 40.452572, 27.445007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.412306, 40.440456, 27.227457>,  <27.613575, 40.433186, 27.096928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.412306, 40.440456, 27.227457>,  <27.076859, 40.452572, 27.445007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.412306, 40.440456, 27.227457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479048, -0.516283, -0.709905,
		-0.259289, 0.855882, -0.447476,
		0.838619, -0.030292, -0.543875,
		27.663891, 40.431370, 27.064295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964777, 40.690903, 26.751379>,  <27.076859, 40.452572, 27.445007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.964777, 40.690903, 26.751379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.302214, 40.478870, 26.717049>,  <27.504677, 40.351650, 26.696451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.302214, 40.478870, 26.717049>,  <26.964777, 40.690903, 26.751379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302214, 40.478870, 26.717049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336656, -0.397563, -0.853584,
		0.418346, 0.748972, -0.513836,
		0.843593, -0.530080, -0.085827,
		27.555292, 40.319847, 26.691301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.296446, 40.967785, 26.171795>,  <26.964777, 40.690903, 26.751379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.296446, 40.967785, 26.171795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.441864, 40.602718, 26.246502>,  <27.529116, 40.383678, 26.291327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.441864, 40.602718, 26.246502>,  <27.296446, 40.967785, 26.171795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.441864, 40.602718, 26.246502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299292, -0.304285, -0.904342,
		0.882190, 0.272872, -0.383774,
		0.363546, -0.912662, 0.186769,
		27.550928, 40.328918, 26.302532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676008, 40.840504, 25.574390>,  <27.296446, 40.967785, 26.171795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.676008, 40.840504, 25.574390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.619057, 40.478733, 25.735262>,  <27.584885, 40.261673, 25.831785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.619057, 40.478733, 25.735262>,  <27.676008, 40.840504, 25.574390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.619057, 40.478733, 25.735262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310414, -0.345019, -0.885779,
		0.939878, -0.250959, -0.231622,
		-0.142381, -0.904423, 0.402177,
		27.576342, 40.207405, 25.855915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135077, 40.367188, 25.168545>,  <27.676008, 40.840504, 25.574390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135077, 40.367188, 25.168545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.849733, 40.159130, 25.356405>,  <27.678528, 40.034294, 25.469122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.849733, 40.159130, 25.356405>,  <28.135077, 40.367188, 25.168545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.849733, 40.159130, 25.356405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230812, -0.458394, -0.858255,
		0.661701, -0.720643, 0.206943,
		-0.713356, -0.520144, 0.469653,
		27.635727, 40.003086, 25.497301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.292479, 39.607780, 25.166786>,  <28.135077, 40.367188, 25.168545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.292479, 39.607780, 25.166786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.900356, 39.592422, 25.244274>,  <27.665083, 39.583206, 25.290768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.900356, 39.592422, 25.244274>,  <28.292479, 39.607780, 25.166786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.900356, 39.592422, 25.244274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130347, -0.611109, -0.780740,
		0.148363, -0.790614, 0.594069,
		-0.980305, -0.038398, 0.193720,
		27.606264, 39.580902, 25.302389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088749, 38.891384, 25.292383>,  <28.292479, 39.607780, 25.166786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.088749, 38.891384, 25.292383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.753899, 39.075451, 25.174086>,  <27.552988, 39.185890, 25.103107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.753899, 39.075451, 25.174086>,  <28.088749, 38.891384, 25.292383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.753899, 39.075451, 25.174086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170712, -0.733428, -0.657982,
		-0.519691, -0.500327, 0.692528,
		-0.837125, 0.460170, -0.295744,
		27.502762, 39.213501, 25.085361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.741653, 38.331116, 25.085711>,  <28.088749, 38.891384, 25.292383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.741653, 38.331116, 25.085711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.542835, 38.642952, 24.933296>,  <27.423544, 38.830051, 24.841846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.542835, 38.642952, 24.933296>,  <27.741653, 38.331116, 25.085711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.542835, 38.642952, 24.933296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276002, -0.558357, -0.782342,
		-0.822659, -0.283693, 0.492697,
		-0.497047, 0.779587, -0.381038,
		27.393721, 38.876827, 24.818985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.070158, 38.004391, 25.017534>,  <27.741653, 38.331116, 25.085711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.070158, 38.004391, 25.017534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.120436, 38.322498, 24.780300>,  <27.150602, 38.513363, 24.637959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.120436, 38.322498, 24.780300>,  <27.070158, 38.004391, 25.017534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.120436, 38.322498, 24.780300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130292, -0.579417, -0.804550,
		-0.983476, 0.178401, 0.030788,
		0.125693, 0.795267, -0.593087,
		27.158144, 38.561077, 24.602373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.424696, 38.104359, 24.608562>,  <27.070158, 38.004391, 25.017534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.424696, 38.104359, 24.608562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.729017, 38.273750, 24.411852>,  <26.911610, 38.375385, 24.293825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.729017, 38.273750, 24.411852>,  <26.424696, 38.104359, 24.608562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.729017, 38.273750, 24.411852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183420, -0.586557, -0.788865,
		-0.622525, 0.690371, -0.368579,
		0.760802, 0.423484, -0.491774,
		26.957258, 38.400795, 24.264320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.251579, 38.216560, 23.972824>,  <26.424696, 38.104359, 24.608562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.251579, 38.216560, 23.972824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.639679, 38.274532, 23.895248>,  <26.872540, 38.309315, 23.848703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.639679, 38.274532, 23.895248>,  <26.251579, 38.216560, 23.972824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.639679, 38.274532, 23.895248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122840, -0.395593, -0.910174,
		-0.208634, 0.906918, -0.366020,
		0.970249, 0.144932, -0.193940,
		26.930754, 38.318012, 23.837067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.299479, 38.401070, 23.259743>,  <26.251579, 38.216560, 23.972824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.299479, 38.401070, 23.259743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.671291, 38.278084, 23.341164>,  <26.894379, 38.204292, 23.390017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.671291, 38.278084, 23.341164>,  <26.299479, 38.401070, 23.259743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.671291, 38.278084, 23.341164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017877, -0.513802, -0.857722,
		0.368305, 0.800920, -0.472100,
		0.929533, -0.307464, 0.203554,
		26.950151, 38.185844, 23.402229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.596069, 38.347870, 22.532534>,  <26.299479, 38.401070, 23.259743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.596069, 38.347870, 22.532534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.857960, 38.157257, 22.767225>,  <27.015095, 38.042889, 22.908041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.857960, 38.157257, 22.767225>,  <26.596069, 38.347870, 22.532534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.857960, 38.157257, 22.767225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375499, -0.468620, -0.799622,
		0.655999, 0.743850, -0.127880,
		0.654726, -0.476533, 0.586729,
		27.054377, 38.014297, 22.943245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250679, 38.365002, 22.190544>,  <26.596069, 38.347870, 22.532534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250679, 38.365002, 22.190544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.254105, 38.046616, 22.432657>,  <27.256161, 37.855583, 22.577925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.254105, 38.046616, 22.432657>,  <27.250679, 38.365002, 22.190544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254105, 38.046616, 22.432657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310798, -0.573207, -0.758181,
		0.950437, 0.194615, 0.242475,
		0.008565, -0.795964, 0.605283,
		27.256674, 37.807827, 22.614243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.797129, 38.077770, 21.940094>,  <27.250679, 38.365002, 22.190544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.797129, 38.077770, 21.940094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.568123, 37.813663, 22.134525>,  <27.430719, 37.655197, 22.251184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.568123, 37.813663, 22.134525>,  <27.797129, 38.077770, 21.940094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568123, 37.813663, 22.134525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326469, -0.727410, -0.603566,
		0.752096, -0.186860, 0.632009,
		-0.572512, -0.660271, 0.486078,
		27.396370, 37.615582, 22.280348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.120720, 37.428757, 21.751793>,  <27.797129, 38.077770, 21.940094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.120720, 37.428757, 21.751793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.783268, 37.277691, 21.904453>,  <27.580797, 37.187054, 21.996050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.783268, 37.277691, 21.904453>,  <28.120720, 37.428757, 21.751793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.783268, 37.277691, 21.904453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051342, -0.764299, -0.642815,
		0.534463, -0.522704, 0.664176,
		-0.843631, -0.377661, 0.381653,
		27.530178, 37.164394, 22.018950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258951, 36.733551, 21.922043>,  <28.120720, 37.428757, 21.751793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.258951, 36.733551, 21.922043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.861307, 36.761616, 21.889006>,  <27.622721, 36.778454, 21.869183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.861307, 36.761616, 21.889006>,  <28.258951, 36.733551, 21.922043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861307, 36.761616, 21.889006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000828, -0.767027, -0.641614,
		-0.108371, -0.637767, 0.762568,
		-0.994110, 0.070164, -0.082595,
		27.563074, 36.782665, 21.864227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.093925, 36.092583, 21.916079>,  <28.258951, 36.733551, 21.922043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.093925, 36.092583, 21.916079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.817596, 36.324589, 21.743404>,  <27.651798, 36.463791, 21.639801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.817596, 36.324589, 21.743404>,  <28.093925, 36.092583, 21.916079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.817596, 36.324589, 21.743404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019201, -0.611560, -0.790965,
		-0.722769, -0.538128, 0.433616,
		-0.690823, 0.580011, -0.431684,
		27.610350, 36.498592, 21.613899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.642118, 35.586536, 21.527222>,  <28.093925, 36.092583, 21.916079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.642118, 35.586536, 21.527222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.526726, 35.936920, 21.372572>,  <27.457491, 36.147148, 21.279781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.526726, 35.936920, 21.372572>,  <27.642118, 35.586536, 21.527222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.526726, 35.936920, 21.372572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195779, -0.449225, -0.871704,
		-0.937257, -0.175776, 0.301086,
		-0.288480, 0.875956, -0.386626,
		27.440182, 36.199707, 21.256584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.040730, 35.458549, 21.239683>,  <27.642118, 35.586536, 21.527222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.040730, 35.458549, 21.239683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.153986, 35.802338, 21.069437>,  <27.221941, 36.008610, 20.967289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.153986, 35.802338, 21.069437>,  <27.040730, 35.458549, 21.239683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153986, 35.802338, 21.069437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105555, -0.413152, -0.904524,
		-0.953252, 0.301034, -0.026260,
		0.283142, 0.859467, -0.425613,
		27.238928, 36.060177, 20.941753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.501911, 35.609127, 20.683962>,  <27.040730, 35.458549, 21.239683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.501911, 35.609127, 20.683962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.840233, 35.803543, 20.595980>,  <27.043226, 35.920193, 20.543190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.840233, 35.803543, 20.595980>,  <26.501911, 35.609127, 20.683962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.840233, 35.803543, 20.595980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049099, -0.339625, -0.939279,
		-0.531232, 0.805244, -0.263391,
		0.845802, 0.486042, -0.219957,
		27.093973, 35.949356, 20.529993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.405548, 35.942036, 20.039690>,  <26.501911, 35.609127, 20.683962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.405548, 35.942036, 20.039690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.802044, 35.891521, 20.055162>,  <27.039942, 35.861214, 20.064445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.802044, 35.891521, 20.055162>,  <26.405548, 35.942036, 20.039690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.802044, 35.891521, 20.055162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021254, -0.441562, -0.896979,
		0.130360, 0.888298, -0.440378,
		0.991239, -0.126290, 0.038683,
		27.099415, 35.853634, 20.066767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.711391, 36.118305, 19.323656>,  <26.405548, 35.942036, 20.039690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.711391, 36.118305, 19.323656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.983450, 35.883446, 19.499226>,  <27.146685, 35.742531, 19.604568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.983450, 35.883446, 19.499226>,  <26.711391, 36.118305, 19.323656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.983450, 35.883446, 19.499226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142014, -0.481868, -0.864659,
		0.719190, 0.650427, -0.244356,
		0.680145, -0.587153, 0.438925,
		27.187494, 35.707298, 19.630903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.122284, 35.952789, 18.773348>,  <26.711391, 36.118305, 19.323656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.122284, 35.952789, 18.773348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.238001, 35.690353, 19.052162>,  <27.307432, 35.532890, 19.219450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.238001, 35.690353, 19.052162>,  <27.122284, 35.952789, 18.773348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.238001, 35.690353, 19.052162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132951, -0.693573, -0.708011,
		0.947963, 0.297495, -0.113418,
		0.289293, -0.656089, 0.697034,
		27.324789, 35.493526, 19.261272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714909, 35.729877, 18.507824>,  <27.122284, 35.952789, 18.773348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714909, 35.729877, 18.507824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.586618, 35.464027, 18.777760>,  <27.509644, 35.304516, 18.939720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.586618, 35.464027, 18.777760>,  <27.714909, 35.729877, 18.507824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.586618, 35.464027, 18.777760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223458, -0.745461, -0.627976,
		0.920435, -0.050610, 0.387604,
		-0.320726, -0.664625, 0.674840,
		27.490400, 35.264641, 18.980211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.286242, 35.170200, 18.698645>,  <27.714909, 35.729877, 18.507824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.286242, 35.170200, 18.698645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.929340, 35.003403, 18.767931>,  <27.715200, 34.903324, 18.809504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.929340, 35.003403, 18.767931>,  <28.286242, 35.170200, 18.698645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.929340, 35.003403, 18.767931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298565, -0.832617, -0.466484,
		0.338744, -0.364505, 0.867403,
		-0.892251, -0.416995, 0.173216,
		27.661665, 34.878304, 18.819897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.463575, 34.485653, 18.883368>,  <28.286242, 35.170200, 18.698645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.463575, 34.485653, 18.883368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.071432, 34.482540, 18.804543>,  <27.836145, 34.480671, 18.757248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.071432, 34.482540, 18.804543>,  <28.463575, 34.485653, 18.883368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071432, 34.482540, 18.804543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139813, -0.732153, -0.666637,
		-0.139092, -0.681096, 0.718861,
		-0.980360, -0.007782, -0.197063,
		27.777325, 34.480206, 18.745424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135958, 34.270138, 19.085718>,  <28.463575, 34.485653, 18.883368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.135958, 34.270138, 19.085718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.465191, 34.268707, 18.858555>,  <29.662731, 34.267849, 18.722256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.465191, 34.268707, 18.858555>,  <29.135958, 34.270138, 19.085718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465191, 34.268707, 18.858555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409065, 0.697394, 0.588479,
		0.393955, -0.716679, 0.575475,
		0.823083, -0.003573, -0.567910,
		29.712116, 34.267635, 18.688183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.776913, 34.189968, 19.500256>,  <29.135958, 34.270138, 19.085718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.776913, 34.189968, 19.500256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.943521, 34.344810, 19.171219>,  <30.043488, 34.437717, 18.973797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.943521, 34.344810, 19.171219>,  <29.776913, 34.189968, 19.500256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943521, 34.344810, 19.171219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467508, 0.684807, 0.558994,
		0.779708, -0.617401, 0.104261,
		0.416523, 0.387110, -0.822590,
		30.068478, 34.460941, 18.924442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521917, 34.183193, 19.624620>,  <29.776913, 34.189968, 19.500256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521917, 34.183193, 19.624620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.466246, 34.450081, 19.331923>,  <30.432842, 34.610214, 19.156303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.466246, 34.450081, 19.331923>,  <30.521917, 34.183193, 19.624620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466246, 34.450081, 19.331923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473719, 0.693760, 0.542483,
		0.869609, -0.271139, -0.412631,
		-0.139178, 0.667219, -0.731743,
		30.424492, 34.650246, 19.112400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137863, 34.625031, 19.583557>,  <30.521917, 34.183193, 19.624620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137863, 34.625031, 19.583557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.866919, 34.858833, 19.404884>,  <30.704351, 34.999115, 19.297680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.866919, 34.858833, 19.404884>,  <31.137863, 34.625031, 19.583557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866919, 34.858833, 19.404884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369040, 0.795256, 0.481018,
		0.636388, 0.160980, -0.754385,
		-0.677363, 0.584512, -0.446683,
		30.663710, 35.034187, 19.270880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478247, 35.275284, 19.415392>,  <31.137863, 34.625031, 19.583557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478247, 35.275284, 19.415392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.087055, 35.358761, 19.416553>,  <30.852341, 35.408848, 19.417252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.087055, 35.358761, 19.416553>,  <31.478247, 35.275284, 19.415392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087055, 35.358761, 19.416553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167928, 0.778534, 0.604719,
		0.123938, 0.591889, -0.796434,
		-0.977977, 0.208691, 0.002905,
		30.793661, 35.421368, 19.417425>
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
