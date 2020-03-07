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
	<3.541614, 4.386975, 2.355836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.904011, 4.538300, 2.279881>,  <4.121449, 4.629095, 2.234307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.904011, 4.538300, 2.279881>,  <3.541614, 4.386975, 2.355836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.904011, 4.538300, 2.279881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112144, -0.647087, -0.754123,
		-0.408168, 0.661935, -0.628681,
		0.905992, 0.378312, -0.189888,
		4.175808, 4.651793, 2.222914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.634712, 4.547488, 1.668073>,  <3.541614, 4.386975, 2.355836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.634712, 4.547488, 1.668073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.010807, 4.497528, 1.794788>,  <4.236464, 4.467552, 1.870817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.010807, 4.497528, 1.794788>,  <3.634712, 4.547488, 1.668073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.010807, 4.497528, 1.794788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143015, -0.699437, -0.700239,
		0.309032, 0.703696, -0.639774,
		0.940237, -0.124899, 0.316787,
		4.292878, 4.460058, 1.889825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.077665, 4.668329, 1.107837>,  <3.634712, 4.547488, 1.668073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.077665, 4.668329, 1.107837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.275539, 4.444916, 1.374168>,  <4.394264, 4.310868, 1.533967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.275539, 4.444916, 1.374168>,  <4.077665, 4.668329, 1.107837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.275539, 4.444916, 1.374168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181324, -0.682945, -0.707607,
		0.849946, 0.470774, -0.236568,
		0.494686, -0.558532, 0.665828,
		4.423945, 4.277356, 1.573917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.657836, 4.465693, 0.770214>,  <4.077665, 4.668329, 1.107837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.657836, 4.465693, 0.770214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.552742, 4.213791, 1.062618>,  <4.489686, 4.062650, 1.238061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.552742, 4.213791, 1.062618>,  <4.657836, 4.465693, 0.770214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.552742, 4.213791, 1.062618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098449, -0.736177, -0.669590,
		0.959832, -0.247892, 0.131421,
		-0.262735, -0.629756, 0.731011,
		4.473921, 4.024864, 1.281922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.143508, 3.921499, 0.807406>,  <4.657836, 4.465693, 0.770214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.143508, 3.921499, 0.807406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.797539, 3.789810, 0.958942>,  <4.589957, 3.710797, 1.049864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.797539, 3.789810, 0.958942>,  <5.143508, 3.921499, 0.807406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.797539, 3.789810, 0.958942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020346, -0.731186, -0.681874,
		0.501491, -0.597477, 0.625722,
		-0.864923, -0.329223, 0.378840,
		4.538062, 3.691043, 1.072594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.138328, 3.198590, 0.683745>,  <5.143508, 3.921499, 0.807406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.138328, 3.198590, 0.683745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.753178, 3.301041, 0.717846>,  <4.522087, 3.362511, 0.738306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.753178, 3.301041, 0.717846>,  <5.138328, 3.198590, 0.683745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.753178, 3.301041, 0.717846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241847, -0.678221, -0.693921,
		-0.119912, -0.688779, 0.714986,
		-0.962877, 0.256126, 0.085252,
		4.464314, 3.377879, 0.743422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.740838, 2.554566, 0.851530>,  <5.138328, 3.198590, 0.683745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.740838, 2.554566, 0.851530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.495220, 2.822174, 0.684025>,  <4.347850, 2.982739, 0.583522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.495220, 2.822174, 0.684025>,  <4.740838, 2.554566, 0.851530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.495220, 2.822174, 0.684025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246952, -0.666782, -0.703147,
		-0.749643, -0.328349, 0.574649,
		-0.614044, 0.669021, -0.418762,
		4.311007, 3.022880, 0.558396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.155877, 2.247965, 0.704384>,  <4.740838, 2.554566, 0.851530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.155877, 2.247965, 0.704384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.160221, 2.565353, 0.460979>,  <4.162827, 2.755786, 0.314937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.160221, 2.565353, 0.460979>,  <4.155877, 2.247965, 0.704384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.160221, 2.565353, 0.460979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299174, -0.578093, -0.759146,
		-0.954137, 0.190295, 0.231108,
		0.010860, 0.793471, -0.608511,
		4.163479, 2.803395, 0.278426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.611613, 1.693605, 3.719768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.248986, 1.861786, 3.734505>,  <4.031410, 1.962695, 3.743346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.248986, 1.861786, 3.734505>,  <4.611613, 1.693605, 3.719768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.248986, 1.861786, 3.734505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374195, 0.760301, 0.530962,
		0.195234, 0.495137, -0.846595,
		-0.906566, 0.420453, 0.036841,
		3.977016, 1.987922, 3.745557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.680998, 2.414306, 3.670891>,  <4.611613, 1.693605, 3.719768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.680998, 2.414306, 3.670891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.322987, 2.346909, 3.836075>,  <4.108180, 2.306470, 3.935185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.322987, 2.346909, 3.836075>,  <4.680998, 2.414306, 3.670891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.322987, 2.346909, 3.836075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132713, 0.783347, 0.607252,
		-0.425809, 0.598312, -0.678756,
		-0.895028, -0.168494, 0.412959,
		4.054478, 2.296360, 3.959963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.297542, 3.045630, 3.752035>,  <4.680998, 2.414306, 3.670891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.297542, 3.045630, 3.752035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.214463, 2.769989, 4.029739>,  <4.164616, 2.604604, 4.196362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.214463, 2.769989, 4.029739>,  <4.297542, 3.045630, 3.752035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.214463, 2.769989, 4.029739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279986, 0.638164, 0.717185,
		-0.937267, 0.343340, 0.060395,
		-0.207696, -0.689103, 0.694261,
		4.152154, 2.563258, 4.238018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.534547, 3.647301, 4.214447>,  <4.297542, 3.045630, 3.752035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.534547, 3.647301, 4.214447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.366309, 3.342758, 4.411804>,  <4.265367, 3.160033, 4.530218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.366309, 3.342758, 4.411804>,  <4.534547, 3.647301, 4.214447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.366309, 3.342758, 4.411804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078587, 0.572362, 0.816227,
		-0.903839, 0.304527, -0.300565,
		-0.420595, -0.761357, 0.493391,
		4.240130, 3.114351, 4.559822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.077338, 3.988300, 4.601306>,  <4.534547, 3.647301, 4.214447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.077338, 3.988300, 4.601306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.062693, 3.627838, 4.774086>,  <4.053905, 3.411561, 4.877754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.062693, 3.627838, 4.774086>,  <4.077338, 3.988300, 4.601306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.062693, 3.627838, 4.774086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187542, 0.430755, 0.882767,
		-0.981574, -0.048687, -0.184776,
		-0.036614, -0.901155, 0.431949,
		4.051709, 3.357492, 4.903671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.442557, 3.893743, 4.996684>,  <4.077338, 3.988300, 4.601306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.442557, 3.893743, 4.996684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.713112, 3.636276, 5.139900>,  <3.875445, 3.481796, 5.225830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.713112, 3.636276, 5.139900>,  <3.442557, 3.893743, 4.996684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.713112, 3.636276, 5.139900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077056, 0.545280, 0.834705,
		-0.732505, -0.536994, 0.418418,
		0.676387, -0.643667, 0.358042,
		3.916028, 3.443176, 5.247313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.269542, 3.764515, 5.734002>,  <3.442557, 3.893743, 4.996684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.269542, 3.764515, 5.734002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.659912, 3.677536, 5.727226>,  <3.894134, 3.625349, 5.723161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.659912, 3.677536, 5.727226>,  <3.269542, 3.764515, 5.734002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.659912, 3.677536, 5.727226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114825, 0.446205, 0.887534,
		-0.185434, -0.868112, 0.460431,
		0.975925, -0.217448, -0.016940,
		3.952690, 3.612302, 5.722145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.454304, 3.385501, 6.311201>,  <3.269542, 3.764515, 5.734002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.454304, 3.385501, 6.311201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.755093, 3.610916, 6.174400>,  <3.935566, 3.746165, 6.092320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.755093, 3.610916, 6.174400>,  <3.454304, 3.385501, 6.311201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.755093, 3.610916, 6.174400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031437, 0.487566, 0.872520,
		0.658446, -0.666861, 0.348920,
		0.751971, 0.563538, -0.342001,
		3.980684, 3.779978, 6.071800>
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
