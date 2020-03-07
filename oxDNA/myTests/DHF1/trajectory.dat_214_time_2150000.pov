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
	<5.206408, 1.435339, 3.252483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.969589, 1.757530, 3.262962>,  <4.827498, 1.950845, 3.269250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.969589, 1.757530, 3.262962>,  <5.206408, 1.435339, 3.252483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.969589, 1.757530, 3.262962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805160, 0.592584, -0.023687,
		-0.034604, 0.007069, -0.999376,
		-0.592047, 0.805477, 0.026198,
		4.791975, 1.999173, 3.270822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.550404, 1.142359, 3.499556>,  <5.206408, 1.435339, 3.252483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.550404, 1.142359, 3.499556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.174423, 1.074203, 3.381264>,  <3.948835, 1.033310, 3.310288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.174423, 1.074203, 3.381264>,  <4.550404, 1.142359, 3.499556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.174423, 1.074203, 3.381264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341296, 0.462547, 0.818271,
		-0.002636, 0.870068, -0.492925,
		-0.939952, -0.170390, -0.295731,
		3.892437, 1.023087, 3.292544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.152658, 1.719164, 3.664860>,  <4.550404, 1.142359, 3.499556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.152658, 1.719164, 3.664860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.869579, 1.441406, 3.612740>,  <3.699732, 1.274751, 3.581467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.869579, 1.441406, 3.612740>,  <4.152658, 1.719164, 3.664860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.869579, 1.441406, 3.612740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597308, 0.489545, 0.635270,
		-0.377341, 0.527409, -0.761218,
		-0.707698, -0.694396, -0.130300,
		3.657270, 1.233088, 3.573649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.587370, 1.978032, 3.216509>,  <4.152658, 1.719164, 3.664860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.587370, 1.978032, 3.216509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.470013, 1.705505, 3.484756>,  <3.399598, 1.541990, 3.645705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.470013, 1.705505, 3.484756>,  <3.587370, 1.978032, 3.216509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.470013, 1.705505, 3.484756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640267, 0.660962, 0.391391,
		-0.709914, -0.314543, -0.630146,
		-0.293394, -0.681316, 0.670618,
		3.381994, 1.501111, 3.685942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.792512, 1.954433, 3.327757>,  <3.587370, 1.978032, 3.216509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.792512, 1.954433, 3.327757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.945232, 1.793427, 3.660553>,  <3.036865, 1.696823, 3.860231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.945232, 1.793427, 3.660553>,  <2.792512, 1.954433, 3.327757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.945232, 1.793427, 3.660553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683363, 0.483148, 0.547342,
		-0.622289, -0.777527, -0.090598,
		0.381801, -0.402516, 0.831991,
		3.059773, 1.672672, 3.910150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.271193, 1.903376, 3.779733>,  <2.792512, 1.954433, 3.327757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.271193, 1.903376, 3.779733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.578896, 1.875626, 4.033798>,  <2.763517, 1.858975, 4.186237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.578896, 1.875626, 4.033798>,  <2.271193, 1.903376, 3.779733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.578896, 1.875626, 4.033798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494772, 0.564319, 0.660866,
		-0.404282, -0.822637, 0.399781,
		0.769257, -0.069376, 0.635162,
		2.809673, 1.854813, 4.224347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.055958, 1.678423, 4.530928>,  <2.271193, 1.903376, 3.779733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.055958, 1.678423, 4.530928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.396484, 1.888100, 4.539749>,  <2.600800, 2.013906, 4.545042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.396484, 1.888100, 4.539749>,  <2.055958, 1.678423, 4.530928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.396484, 1.888100, 4.539749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418845, 0.653714, 0.630259,
		0.315960, -0.545786, 0.776071,
		0.851315, 0.524191, 0.022052,
		2.651879, 2.045357, 4.546365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.061632, 1.907832, 5.159273>,  <2.055958, 1.678423, 4.530928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.061632, 1.907832, 5.159273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.327110, 2.148041, 4.980888>,  <2.486397, 2.292166, 4.873857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.327110, 2.148041, 4.980888>,  <2.061632, 1.907832, 5.159273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.327110, 2.148041, 4.980888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443257, 0.795998, 0.412202,
		0.602521, -0.075901, 0.794486,
		0.663695, 0.600522, -0.445962,
		2.526219, 2.328197, 4.847100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.755696, 3.555478, 5.588729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.905914, 3.765060, 5.282936>,  <1.996046, 3.890810, 5.099460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.905914, 3.765060, 5.282936>,  <1.755696, 3.555478, 5.588729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.905914, 3.765060, 5.282936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600984, -0.765605, -0.229495,
		-0.705537, -0.373256, -0.602409,
		0.375547, 0.523956, -0.764484,
		2.018578, 3.922247, 5.053591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.776840, 3.037317, 5.106127>,  <1.755696, 3.555478, 5.588729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.776840, 3.037317, 5.106127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.026419, 3.340927, 5.031754>,  <2.176166, 3.523093, 4.987130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.026419, 3.340927, 5.031754>,  <1.776840, 3.037317, 5.106127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.026419, 3.340927, 5.031754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711639, -0.650186, -0.266135,
		-0.322894, 0.033737, -0.945834,
		0.623947, 0.759025, -0.185933,
		2.213603, 3.568635, 4.975974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.020924, 3.004617, 4.392947>,  <1.776840, 3.037317, 5.106127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.020924, 3.004617, 4.392947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.269997, 3.164978, 4.661736>,  <2.419440, 3.261194, 4.823009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.269997, 3.164978, 4.661736>,  <2.020924, 3.004617, 4.392947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.269997, 3.164978, 4.661736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592938, -0.802121, -0.070895,
		0.510582, 0.442583, -0.737175,
		0.622681, 0.400901, 0.671973,
		2.456801, 3.285248, 4.863328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.656965, 3.364191, 4.093399>,  <2.020924, 3.004617, 4.392947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.656965, 3.364191, 4.093399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.666273, 3.167892, 4.441795>,  <2.671858, 3.050114, 4.650834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.666273, 3.167892, 4.441795>,  <2.656965, 3.364191, 4.093399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.666273, 3.167892, 4.441795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604990, -0.686679, -0.403061,
		0.795893, 0.536321, 0.280916,
		0.023271, -0.490745, 0.870992,
		2.673254, 3.020669, 4.703093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.383395, 3.124280, 4.286290>,  <2.656965, 3.364191, 4.093399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.383395, 3.124280, 4.286290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.129547, 2.880569, 4.476463>,  <2.977238, 2.734343, 4.590568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.129547, 2.880569, 4.476463>,  <3.383395, 3.124280, 4.286290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.129547, 2.880569, 4.476463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479664, -0.792888, -0.375833,
		0.605953, -0.010463, 0.795432,
		-0.634621, -0.609277, 0.475434,
		2.939161, 2.697786, 4.619094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.780879, 2.596202, 4.722852>,  <3.383395, 3.124280, 4.286290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.780879, 2.596202, 4.722852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.423588, 2.434036, 4.645103>,  <3.209213, 2.336737, 4.598454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.423588, 2.434036, 4.645103>,  <3.780879, 2.596202, 4.722852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.423588, 2.434036, 4.645103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449593, -0.802817, -0.391600,
		0.002717, -0.437176, 0.899372,
		-0.893230, -0.405415, -0.194370,
		3.155619, 2.312412, 4.586792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.841888, 1.865590, 4.981987>,  <3.780879, 2.596202, 4.722852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.841888, 1.865590, 4.981987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.534662, 1.899185, 4.728050>,  <3.350327, 1.919343, 4.575688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.534662, 1.899185, 4.728050>,  <3.841888, 1.865590, 4.981987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.534662, 1.899185, 4.728050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252451, -0.871363, -0.420709,
		-0.588512, -0.483397, 0.648059,
		-0.768064, 0.083989, -0.634842,
		3.304243, 1.924382, 4.537598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.622381, 1.231040, 4.963039>,  <3.841888, 1.865590, 4.981987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.622381, 1.231040, 4.963039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.481071, 1.402191, 4.630264>,  <3.396286, 1.504882, 4.430600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.481071, 1.402191, 4.630264>,  <3.622381, 1.231040, 4.963039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.481071, 1.402191, 4.630264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445041, -0.705343, -0.551752,
		-0.822883, -0.565165, 0.058755,
		-0.353273, 0.427879, -0.831936,
		3.375089, 1.530555, 4.380683>
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
